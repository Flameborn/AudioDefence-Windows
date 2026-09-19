// unit TAGPBGeneratedMessage — 192 functions
//   0x10013ba90     180  +[TAGPBGeneratedMessage initialize]
//   0x10013bb44      76  +[TAGPBGeneratedMessage allocWithZone:]
//   0x10013bb90      20  +[TAGPBGeneratedMessage alloc]
//   0x10013bba4     140  +[TAGPBGeneratedMessage descriptor]
//   0x10013bc30      60  +[TAGPBGeneratedMessage message]
//   0x10013bc6c     124  +[TAGPBGeneratedMessage newMessageWithAutocreator:field:]
//   0x10013bce8     124  +[TAGPBGeneratedMessage newMessageWithAutocreator:extension:]
//   0x10013bd64     132  -[TAGPBGeneratedMessage init]
//   0x10013bde8     248  -[TAGPBGeneratedMessage dealloc]
//   0x10013bee0     704  -[TAGPBGeneratedMessage copyFieldsInto:zone:]
//   0x10013c1a0     320  sub_10013c1a0
//   0x10013c2e0      16  -[TAGPBGeneratedMessage copyWithZone:]
//   0x10013c2f0     204  -[TAGPBGeneratedMessage mutableCopyWithZone:]
//   0x10013c3bc     112  -[TAGPBGeneratedMessage clear]
//   0x10013c42c     976  -[TAGPBGeneratedMessage internalClear]
//   0x10013c7fc     216  sub_10013c7fc
//   0x10013c8d4     324  sub_10013c8d4
//   0x10013ca18     772  -[TAGPBGeneratedMessage isInitialized]
//   0x10013cd1c     204  sub_10013cd1c
//   0x10013cde8      44  -[TAGPBGeneratedMessage descriptor]
//   0x10013ce14     184  -[TAGPBGeneratedMessage data]
//   0x10013cecc     236  -[TAGPBGeneratedMessage delimitedData]
//   0x10013cfb8     120  -[TAGPBGeneratedMessage writeToOutputStream:]
//   0x10013d030     544  -[TAGPBGeneratedMessage writeToCodedOutputStream:]
//   0x10013d250     120  -[TAGPBGeneratedMessage writeDelimitedToOutputStream:]
//   0x10013d2c8      92  -[TAGPBGeneratedMessage writeDelimitedToCodedOutputStream:]
//   0x10013d324    2580  -[TAGPBGeneratedMessage writeField:toCodedOutputStream:]
//   0x10013dd38     156  sub_10013dd38
//   0x10013ddd4     144  sub_10013ddd4
//   0x10013de64     144  sub_10013de64
//   0x10013def4     140  sub_10013def4
//   0x10013df80     144  sub_10013df80
//   0x10013e010     140  sub_10013e010
//   0x10013e09c     144  sub_10013e09c
//   0x10013e12c     428  -[TAGPBGeneratedMessage isInitialized:]
//   0x10013e2d8     424  -[TAGPBGeneratedMessage getExtension:]
//   0x10013e480     296  sub_10013e480
//   0x10013e5a8      28  -[TAGPBGeneratedMessage getExistingExtension:]
//   0x10013e5c4      52  -[TAGPBGeneratedMessage hasExtension:]
//   0x10013e5f8      28  -[TAGPBGeneratedMessage extensionsCurrentlySet]
//   0x10013e614     488  -[TAGPBGeneratedMessage writeExtensionsToCodedOutputStream:range:]
//   0x10013e7fc      68  -[TAGPBGeneratedMessage sortedExtensionsInUse]
//   0x10013e840     356  -[TAGPBGeneratedMessage extensionsSerializedSize]
//   0x10013e9a4     444  -[TAGPBGeneratedMessage setExtension:value:]
//   0x10013eb60     300  -[TAGPBGeneratedMessage addExtension:value:]
//   0x10013ec8c     240  -[TAGPBGeneratedMessage setExtension:index:value:]
//   0x10013ed7c     128  -[TAGPBGeneratedMessage clearExtension:]
//   0x10013edfc     116  -[TAGPBGeneratedMessage clearAutocreator]
//   0x10013ee70      24  -[TAGPBGeneratedMessage wasAutocreatedBy:]
//   0x10013ee88     160  -[TAGPBGeneratedMessage mergeFromData:extensionRegistry:]
//   0x10013ef28     132  -[TAGPBGeneratedMessage mergeDelimitedFromCodedInputStream:extensionRegistry:]
//   0x10013efac      20  +[TAGPBGeneratedMessage parseFromData:]
//   0x10013efc0     120  +[TAGPBGeneratedMessage parseFromData:extensionRegistry:]
//   0x10013f038     120  +[TAGPBGeneratedMessage parseFromCodedInputStream:extensionRegistry:]
//   0x10013f0b0     120  +[TAGPBGeneratedMessage parseDelimitedFromCodedInputStream:extensionRegistry:]
//   0x10013f128     120  -[TAGPBGeneratedMessage setUnknownFields:]
//   0x10013f1a0     112  -[TAGPBGeneratedMessage mutableUnknownFields]
//   0x10013f210      84  -[TAGPBGeneratedMessage mergeUnknownFields:]
//   0x10013f264     516  -[TAGPBGeneratedMessage parseMessageSet:extensionRegistry:]
//   0x10013f468     340  -[TAGPBGeneratedMessage parseUnknownField:extensionRegistry:tag:]
//   0x10013f5bc     356  -[TAGPBGeneratedMessage mergeFromCodedInputStream:extensionRegistry:]
//   0x10013f720     364  sub_10013f720
//   0x10013f88c     364  sub_10013f88c
//   0x10013f9f8     364  sub_10013f9f8
//   0x10013fb64     352  sub_10013fb64
//   0x10013fcc4     364  sub_10013fcc4
//   0x10013fe30     364  sub_10013fe30
//   0x10013ff9c     352  sub_10013ff9c
//   0x1001400fc     340  sub_1001400fc
//   0x100140250     364  sub_100140250
//   0x1001403bc     364  sub_1001403bc
//   0x100140528     364  sub_100140528
//   0x100140694     364  sub_100140694
//   0x100140800     364  sub_100140800
//   0x10014096c     116  sub_10014096c
//   0x1001409e0     116  sub_1001409e0
//   0x100140a54     320  sub_100140a54
//   0x100140b94     348  sub_100140b94
//   0x100140cf0     660  sub_100140cf0
//   0x100140f84    1068  -[TAGPBGeneratedMessage mergeFrom:]
//   0x1001413b0     500  sub_1001413b0
//   0x1001415a4     124  sub_1001415a4
//   0x100141620     124  sub_100141620
//   0x10014169c     124  sub_10014169c
//   0x100141718     124  sub_100141718
//   0x100141794     124  sub_100141794
//   0x100141810     120  sub_100141810
//   0x100141888     120  sub_100141888
//   0x100141900     284  sub_100141900
//   0x100141a1c     444  -[TAGPBGeneratedMessage isEqual:]
//   0x100141bd8     380  sub_100141bd8
//   0x100141d54     236  sub_100141d54
//   0x100141e40     232  sub_100141e40
//   0x100141f28     232  sub_100141f28
//   0x100142010     232  sub_100142010
//   0x1001420f8     232  sub_1001420f8
//   0x1001421e0     232  sub_1001421e0
//   0x1001422c8     232  sub_1001422c8
//   0x1001423b0      16  -[TAGPBGeneratedMessage hash]
//   0x1001423c0     124  -[TAGPBGeneratedMessage description]
//   0x10014243c     112  sub_10014243c
//   0x1001424ac     252  -[TAGPBGeneratedMessage serializedSize]
//   0x1001425a8     540  sub_1001425a8
//   0x1001427c4     540  sub_1001427c4
//   0x1001429e0     540  sub_1001429e0
//   0x100142bfc     540  sub_100142bfc
//   0x100142e18     540  sub_100142e18
//   0x100143034     540  sub_100143034
//   0x100143250     540  sub_100143250
//   0x10014346c     580  sub_10014346c
//   0x1001436b0     488  sub_1001436b0
//   0x100143898     556  sub_100143898
//   0x100143ac4     496  sub_100143ac4
//   0x100143cb4     568  sub_100143cb4
//   0x100143eec     488  sub_100143eec
//   0x1001440d4     628  sub_1001440d4
//   0x100144348     532  sub_100144348
//   0x10014455c     628  sub_10014455c
//   0x1001447d0     644  sub_1001447d0
//   0x100144a54     568  sub_100144a54
//   0x100144c8c     224  sub_100144c8c
//   0x100144d6c     852  +[TAGPBGeneratedMessage resolveInstanceMethod:]
//   0x1001450c0     112  sub_1001450c0
//   0x100145130     112  sub_100145130
//   0x1001451a0     112  sub_1001451a0
//   0x100145210     112  sub_100145210
//   0x100145280     112  sub_100145280
//   0x1001452f0     112  sub_1001452f0
//   0x100145360     112  sub_100145360
//   0x1001453d0     112  sub_1001453d0
//   0x100145440     112  sub_100145440
//   0x1001454b0     112  sub_1001454b0
//   0x100145520     112  sub_100145520
//   0x100145590     112  sub_100145590
//   0x100145600     112  sub_100145600
//   0x100145670     112  sub_100145670
//   0x1001456e0     112  sub_1001456e0
//   0x100145750     112  sub_100145750
//   0x1001457c0     112  sub_1001457c0
//   0x100145830     112  sub_100145830
//   0x1001458a0      68  +[TAGPBGeneratedMessage resolveInstanceMethod:]_block_invoke_3
//   0x1001458e4     112  sub_1001458e4
//   0x100145954     112  sub_100145954
//   0x1001459c4     112  sub_1001459c4
//   0x100145a34     112  sub_100145a34
//   0x100145aa4     112  sub_100145aa4
//   0x100145b14     112  sub_100145b14
//   0x100145b84     112  sub_100145b84
//   0x100145bf4     112  sub_100145bf4
//   0x100145c64     112  sub_100145c64
//   0x100145cd4     112  sub_100145cd4
//   0x100145d44     112  sub_100145d44
//   0x100145db4     112  sub_100145db4
//   0x100145e24     112  sub_100145e24
//   0x100145e94     112  sub_100145e94
//   0x100145f04     112  sub_100145f04
//   0x100145f74     112  sub_100145f74
//   0x100145fe4     112  sub_100145fe4
//   0x100146054     112  sub_100146054
//   0x1001460c4     112  sub_1001460c4
//   0x100146134     112  sub_100146134
//   0x1001461a4     112  sub_1001461a4
//   0x100146214     112  sub_100146214
//   0x100146284     112  sub_100146284
//   0x1001462f4     112  sub_1001462f4
//   0x100146364     112  sub_100146364
//   0x1001463d4     112  sub_1001463d4
//   0x100146444     112  sub_100146444
//   0x1001464b4     112  sub_1001464b4
//   0x100146524     112  sub_100146524
//   0x100146594     112  sub_100146594
//   0x100146604     112  sub_100146604
//   0x100146674     112  sub_100146674
//   0x1001466e4     112  sub_1001466e4
//   0x100146754     112  sub_100146754
//   0x1001467c4     112  sub_1001467c4
//   0x100146834     112  sub_100146834
//   0x1001468a4      16  +[TAGPBGeneratedMessage resolveInstanceMethod:]_block_invoke
//   0x1001468b4      16  sub_1001468b4
//   0x1001468c4      12  sub_1001468c4
//   0x1001468d0     324  +[TAGPBGeneratedMessage resolveInstanceMethod:]_block_invoke_2
//   0x100146a14      16  sub_100146a14
//   0x100146a24      12  sub_100146a24
//   0x100146a30     104  -[TAGPBGeneratedMessage initWithCoder:]
//   0x100146a98      64  -[TAGPBGeneratedMessage encodeWithCoder:]
//   0x100146ad8       8  +[TAGPBGeneratedMessage accessInstanceVariablesDirectly]
//   0x100146ae0     448  -[TAGPBGeneratedMessage pbMutableArray:willAddElements:]
//   0x100146ca0      60  sub_100146ca0
//   0x100146cdc      60  +[TAGPBGeneratedMessage builder]
//   0x100146d18      44  -[TAGPBGeneratedMessage builder]
//   0x100146d44      44  -[TAGPBGeneratedMessage build]
//   0x100146d70      16  -[TAGPBGeneratedMessage unknownFields]

; ======================================================================
; +[TAGPBGeneratedMessage initialize]
; address 0x10013ba90  size 180  kind objc
; ======================================================================
  10013ba90  stp     x29, x30, [sp, #-0x10]!
  10013ba94  mov     x29, sp
  10013ba98  stp     x20, x19, [sp, #-0x10]!
  10013ba9c  stp     x22, x21, [sp, #-0x10]!
  10013baa0  mov     x19, x0
  10013baa4  adrp    x8, #0x10041e000
  10013baa8  ldr     x0, [x8, #0x7b8]                         ; class TAGPBGeneratedMessage
  10013baac  adrp    x8, #0x100417000
  10013bab0  nop
  10013bab4  ldr     x21, [x8, #0x2e0]
  10013bab8  mov     x1, x21
  10013babc  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage class]
  10013bac0  mov     x20, x0
  10013bac4  mov     x0, x19
  10013bac8  mov     x1, x21
  10013bacc  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage class]
  10013bad0  cmp     x0, x20
  10013bad4  b.eq    loc_10013bb04                            ; if ([TAGPBGeneratedMessage class] == [TAGPBGeneratedMessage class])
  10013bad8  adrp    x8, #0x10041c000
  10013badc  nop
  10013bae0  ldr     x1, [x8, #0x990]
  10013bae4  mov     x0, x19
  10013bae8  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage superclass]
  10013baec  cmp     x0, x20
  10013baf0  b.eq    loc_10013bb10                            ; if ([TAGPBGeneratedMessage superclass] == [TAGPBGeneratedMessage class])
  10013baf4  ldp     x22, x21, [sp], #0x10
  10013baf8  ldp     x20, x19, [sp], #0x10
  10013bafc  ldp     x29, x30, [sp], #0x10
  10013bb00  ret
loc_10013bb04:
  10013bb04  adrp    x8, #0x10041c000
  10013bb08  add     x8, x8, #0x7e8                           ; &@selector(descriptor)
  10013bb0c  b       loc_10013bb2c
loc_10013bb10:
  10013bb10  adrp    x8, #0x10041c000
  10013bb14  nop
  10013bb18  ldr     x1, [x8, #0x7e8]
  10013bb1c  mov     x0, x19
  10013bb20  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage descriptor]
  10013bb24  adrp    x8, #0x10041c000
  10013bb28  add     x8, x8, #0x4c8                           ; &@selector(extensionRegistry)
loc_10013bb2c:
  10013bb2c  ldr     x1, [x8]                                 ; x1 = one of selectors {descriptor, extensionRegistry}
  10013bb30  mov     x0, x19
  10013bb34  ldp     x22, x21, [sp], #0x10
  10013bb38  ldp     x20, x19, [sp], #0x10
  10013bb3c  ldp     x29, x30, [sp], #0x10
  10013bb40  b       _objc_msgSend                            ; [TAGPBGeneratedMessage descriptor | extensionRegistry]

; ======================================================================
; +[TAGPBGeneratedMessage allocWithZone:]
; address 0x10013bb44  size 76  kind objc
; ======================================================================
  10013bb44  stp     x29, x30, [sp, #-0x10]!
  10013bb48  mov     x29, sp
  10013bb4c  stp     x20, x19, [sp, #-0x10]!
  10013bb50  mov     x19, x2
  10013bb54  mov     x20, x0
  10013bb58  adrp    x8, #0x10041c000
  10013bb5c  nop
  10013bb60  ldr     x1, [x8, #0x7e8]
  10013bb64  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage descriptor]
  10013bb68  adrp    x8, #0x10041c000
  10013bb6c  nop
  10013bb70  ldr     x1, [x8, #0x998]
  10013bb74  bl      _objc_msgSend                            ; [[TAGPBGeneratedMessage descriptor] storageSize]
  10013bb78  mov     x1, x0
  10013bb7c  mov     x0, x20
  10013bb80  mov     x2, x19
  10013bb84  ldp     x20, x19, [sp], #0x10
  10013bb88  ldp     x29, x30, [sp], #0x10
  10013bb8c  b       _NSAllocateObject                        ; NSAllocateObject(TAGPBGeneratedMessage, [[TAGPBGeneratedMessage descriptor] storageSize], arg1)

; ======================================================================
; +[TAGPBGeneratedMessage alloc]
; address 0x10013bb90  size 20  kind objc
; ======================================================================
  10013bb90  mov     x2, #0
  10013bb94  adrp    x8, #0x100416000
  10013bb98  nop
  10013bb9c  ldr     x1, [x8, #0xab0]
  10013bba0  b       _objc_msgSend                            ; [TAGPBGeneratedMessage allocWithZone:0]

; ======================================================================
; +[TAGPBGeneratedMessage descriptor]
; address 0x10013bba4  size 140  kind objc
; ======================================================================
  10013bba4  stp     x29, x30, [sp, #-0x10]!
  10013bba8  mov     x29, sp
  10013bbac  stp     x20, x19, [sp, #-0x10]!
  10013bbb0  sub     sp, sp, #0x20
  10013bbb4  adrp    x20, #0x10042d000
  10013bbb8  add     x20, x20, #0xd00                         ; &g_10042dd00
  10013bbbc  ldr     x0, [x20, #0x138]                        ; load g_10042de38
  10013bbc0  cbnz    x0, loc_10013bc20                        ; if (g_10042de38 != 0)
  10013bbc4  adrp    x8, #0x10041e000
  10013bbc8  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10013bbcc  nop
  10013bbd0  ldr     x0, [x8, #0x7b8]                         ; class TAGPBGeneratedMessage
  10013bbd4  adrp    x8, #0x100417000
  10013bbd8  nop
  10013bbdc  ldr     x1, [x8, #0x2e0]
  10013bbe0  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage class]
  10013bbe4  mov     x2, x0
  10013bbe8  adrp    x8, #0x10041c000
  10013bbec  nop
  10013bbf0  ldr     x1, [x8, #0x4a0]
  10013bbf4  mov     x3, #0
  10013bbf8  mov     x4, #0
  10013bbfc  strb    wzr, [sp, #0x18]
  10013bc00  stp     xzr, xzr, [sp, #8]
  10013bc04  str     xzr, [sp]
  10013bc08  mov     x0, x19
  10013bc0c  mov     x5, #0
  10013bc10  mov     x6, #0
  10013bc14  mov     x7, #0
  10013bc18  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBGeneratedMessage class] rootClass:0 fields:0 fieldCount:0 enums:0 enumCount:0 ranges:&@selector(currentContext) rangeCount:x9 storageSize:x10 wireFormat:x11]
  10013bc1c  str     x0, [x20, #0x138]                        ; store g_10042de38 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBGeneratedMessage class] rootClass:0 fields:0 fieldCount:0 enums:0 enumCount:0 ranges:&@selector(currentContext) rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10013bc20:
  10013bc20  sub     sp, x29, #0x10
  10013bc24  ldp     x20, x19, [sp], #0x10
  10013bc28  ldp     x29, x30, [sp], #0x10
  10013bc2c  ret

; ======================================================================
; +[TAGPBGeneratedMessage message]
; address 0x10013bc30  size 60  kind objc
; ======================================================================
  10013bc30  stp     x29, x30, [sp, #-0x10]!
  10013bc34  mov     x29, sp
  10013bc38  adrp    x8, #0x100416000
  10013bc3c  nop
  10013bc40  ldr     x1, [x8, #0xac8]
  10013bc44  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage alloc]
  10013bc48  adrp    x8, #0x100416000
  10013bc4c  nop
  10013bc50  ldr     x1, [x8, #0xab8]
  10013bc54  bl      _objc_msgSend                            ; [[TAGPBGeneratedMessage alloc] init]
  10013bc58  adrp    x8, #0x10041b000
  10013bc5c  nop
  10013bc60  ldr     x1, [x8, #0xe88]
  10013bc64  ldp     x29, x30, [sp], #0x10
  10013bc68  b       _objc_msgSend                            ; [[[TAGPBGeneratedMessage alloc] init] autorelease]

; ======================================================================
; +[TAGPBGeneratedMessage newMessageWithAutocreator:field:]
; address 0x10013bc6c  size 124  kind objc
; ======================================================================
  10013bc6c  stp     x29, x30, [sp, #-0x10]!
  10013bc70  mov     x29, sp
  10013bc74  stp     x20, x19, [sp, #-0x10]!
  10013bc78  stp     x22, x21, [sp, #-0x10]!
  10013bc7c  mov     x19, x3
  10013bc80  mov     x20, x2
  10013bc84  adrp    x8, #0x100416000
  10013bc88  nop
  10013bc8c  ldr     x1, [x8, #0xac8]
  10013bc90  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage alloc]
  10013bc94  adrp    x8, #0x100416000
  10013bc98  nop
  10013bc9c  ldr     x1, [x8, #0xab8]
  10013bca0  bl      _objc_msgSend                            ; [[TAGPBGeneratedMessage alloc] init]
  10013bca4  mov     x21, x0
  10013bca8  adrp    x8, #0x100420000
  10013bcac  ldrsw   x8, [x8, #0x9d8]                         ; ivar offset TAGPBGeneratedMessage.autocreator_ (+0x20)
  10013bcb0  str     x20, [x21, x8]                           ; [[TAGPBGeneratedMessage alloc] init]->autocreator_ = arg1
  10013bcb4  adrp    x8, #0x10041b000
  10013bcb8  nop
  10013bcbc  ldr     x1, [x8, #0xdb8]
  10013bcc0  mov     x0, x19
  10013bcc4  bl      _objc_msgSend                            ; [arg2 retain]
  10013bcc8  adrp    x8, #0x100420000
  10013bccc  ldrsw   x8, [x8, #0x9dc]                         ; ivar offset TAGPBGeneratedMessage.autocreatorField_ (+0x28)
  10013bcd0  str     x0, [x21, x8]                            ; [[TAGPBGeneratedMessage alloc] init]->autocreatorField_ = [arg2 retain]
  10013bcd4  mov     x0, x21
  10013bcd8  ldp     x22, x21, [sp], #0x10
  10013bcdc  ldp     x20, x19, [sp], #0x10
  10013bce0  ldp     x29, x30, [sp], #0x10
  10013bce4  ret

; ======================================================================
; +[TAGPBGeneratedMessage newMessageWithAutocreator:extension:]
; address 0x10013bce8  size 124  kind objc
; ======================================================================
  10013bce8  stp     x29, x30, [sp, #-0x10]!
  10013bcec  mov     x29, sp
  10013bcf0  stp     x20, x19, [sp, #-0x10]!
  10013bcf4  stp     x22, x21, [sp, #-0x10]!
  10013bcf8  mov     x19, x3
  10013bcfc  mov     x20, x2
  10013bd00  adrp    x8, #0x100416000
  10013bd04  nop
  10013bd08  ldr     x1, [x8, #0xac8]
  10013bd0c  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage alloc]
  10013bd10  adrp    x8, #0x100416000
  10013bd14  nop
  10013bd18  ldr     x1, [x8, #0xab8]
  10013bd1c  bl      _objc_msgSend                            ; [[TAGPBGeneratedMessage alloc] init]
  10013bd20  mov     x21, x0
  10013bd24  adrp    x8, #0x100420000
  10013bd28  ldrsw   x8, [x8, #0x9d8]                         ; ivar offset TAGPBGeneratedMessage.autocreator_ (+0x20)
  10013bd2c  str     x20, [x21, x8]                           ; [[TAGPBGeneratedMessage alloc] init]->autocreator_ = arg1
  10013bd30  adrp    x8, #0x10041b000
  10013bd34  nop
  10013bd38  ldr     x1, [x8, #0xdb8]
  10013bd3c  mov     x0, x19
  10013bd40  bl      _objc_msgSend                            ; [arg2 retain]
  10013bd44  adrp    x8, #0x100420000
  10013bd48  ldrsw   x8, [x8, #0x9e0]                         ; ivar offset TAGPBGeneratedMessage.autocreatorExtension_ (+0x30)
  10013bd4c  str     x0, [x21, x8]                            ; [[TAGPBGeneratedMessage alloc] init]->autocreatorExtension_ = [arg2 retain]
  10013bd50  mov     x0, x21
  10013bd54  ldp     x22, x21, [sp], #0x10
  10013bd58  ldp     x20, x19, [sp], #0x10
  10013bd5c  ldp     x29, x30, [sp], #0x10
  10013bd60  ret

; ======================================================================
; -[TAGPBGeneratedMessage init]
; address 0x10013bd64  size 132  kind objc
; ======================================================================
  10013bd64  stp     x29, x30, [sp, #-0x10]!
  10013bd68  mov     x29, sp
  10013bd6c  stp     x20, x19, [sp, #-0x10]!
  10013bd70  sub     sp, sp, #0x10
  10013bd74  str     x0, [sp]
  10013bd78  adrp    x8, #0x10041f000
  10013bd7c  ldr     x8, [x8, #0x1d8]
  10013bd80  str     x8, [sp, #8]
  10013bd84  adrp    x8, #0x100416000
  10013bd88  nop
  10013bd8c  ldr     x1, [x8, #0xab8]
  10013bd90  mov     x0, sp
  10013bd94  bl      _objc_msgSendSuper2                      ; [super init]
  10013bd98  mov     x19, x0
  10013bd9c  cbz     x19, loc_10013bdd4                       ; if (self == 0)
  10013bda0  adrp    x8, #0x100417000
  10013bda4  nop
  10013bda8  ldr     x1, [x8, #0x2e0]
  10013bdac  mov     x0, x19
  10013bdb0  bl      _objc_msgSend                            ; [self class]
  10013bdb4  bl      _class_getInstanceSize                   ; class_getInstanceSize([self class])
  10013bdb8  add     x8, x19, x0
  10013bdbc  adrp    x9, #0x100420000
  10013bdc0  ldrsw   x9, [x9, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013bdc4  str     x8, [x19, x9]                            ; self->messageStorage_ = (self + class_getInstanceSize([self class]))
  10013bdc8  adrp    x8, #0x100420000
  10013bdcc  ldrsw   x8, [x8, #0x9e8]                         ; ivar offset TAGPBGeneratedMessage.readOnlyMutex_ (+0x40)
  10013bdd0  str     wzr, [x19, x8]                           ; self->readOnlyMutex_ = 0
loc_10013bdd4:
  10013bdd4  mov     x0, x19
  10013bdd8  sub     sp, x29, #0x10
  10013bddc  ldp     x20, x19, [sp], #0x10
  10013bde0  ldp     x29, x30, [sp], #0x10
  10013bde4  ret

; ======================================================================
; -[TAGPBGeneratedMessage dealloc]
; address 0x10013bde8  size 248  kind objc
; ======================================================================
  10013bde8  stp     x29, x30, [sp, #-0x10]!
  10013bdec  mov     x29, sp
  10013bdf0  stp     x20, x19, [sp, #-0x10]!
  10013bdf4  stp     x22, x21, [sp, #-0x10]!
  10013bdf8  stp     x24, x23, [sp, #-0x10]!
  10013bdfc  sub     sp, sp, #0x10
  10013be00  mov     x19, x0
  10013be04  adrp    x8, #0x10041c000
  10013be08  nop
  10013be0c  ldr     x1, [x8, #0x9a0]
  10013be10  bl      _objc_msgSend                            ; [self internalClear]
  10013be14  adrp    x8, #0x100420000
  10013be18  ldrsw   x8, [x8, #0x9d8]                         ; ivar offset TAGPBGeneratedMessage.autocreator_ (+0x20)
  10013be1c  ldr     x8, [x19, x8]                            ; x8 = self->autocreator_
  10013be20  cbz     x8, loc_10013bea4                        ; if (self->autocreator_ == 0)
  10013be24  adrp    x8, #0x10041e000
  10013be28  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  10013be2c  adrp    x8, #0x10041c000
  10013be30  nop
  10013be34  ldr     x1, [x8, #0x470]
  10013be38  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  10013be3c  mov     x20, x0
  10013be40  adrp    x23, #0x10041d000
  10013be44  ldr     x0, [x23, #0xf78]                        ; class NSString
  10013be48  adrp    x8, #0x10041c000
  10013be4c  nop
  10013be50  ldr     x21, [x8, #0x478]
  10013be54  adrp    x2, #0x100394000
  10013be58  add     x2, x2, #0x4c0                           ; "-[TAGPBGeneratedMessage dealloc]"
  10013be5c  mov     x1, x21
  10013be60  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"-[TAGPBGeneratedMessage dealloc]"]
  10013be64  mov     x22, x0
  10013be68  ldr     x0, [x23, #0xf78]                        ; class NSString
  10013be6c  adrp    x2, #0x100394000
  10013be70  add     x2, x2, #0x4e1                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10013be74  mov     x1, x21
  10013be78  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  10013be7c  mov     x3, x0
  10013be80  adrp    x8, #0x10041c000
  10013be84  nop
  10013be88  ldr     x1, [x8, #0x520]
  10013be8c  adrp    x5, #0x1003c7000
  10013be90  add     x5, x5, #0x10                            ; @"Autocreator was not cleared before dealloc."
  10013be94  mov     x4, #0xc0
  10013be98  mov     x0, x20
  10013be9c  mov     x2, x22
  10013bea0  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInFunction:[NSString stringWithUTF8String:"-[TAGPBGeneratedMessage dealloc]"] file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:192 description:@"Autocreator was not cleared before dealloc."]
loc_10013bea4:
  10013bea4  str     x19, [sp]
  10013bea8  adrp    x8, #0x10041f000
  10013beac  ldr     x8, [x8, #0x1d8]
  10013beb0  str     x8, [sp, #8]
  10013beb4  adrp    x8, #0x100416000
  10013beb8  nop
  10013bebc  ldr     x1, [x8, #0xfc8]
  10013bec0  mov     x0, sp
  10013bec4  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10013bec8  sub     sp, x29, #0x30
  10013becc  ldp     x24, x23, [sp], #0x10
  10013bed0  ldp     x22, x21, [sp], #0x10
  10013bed4  ldp     x20, x19, [sp], #0x10
  10013bed8  ldp     x29, x30, [sp], #0x10
  10013bedc  ret

; ======================================================================
; -[TAGPBGeneratedMessage copyFieldsInto:zone:]
; address 0x10013bee0  size 704  kind objc
; ======================================================================
  10013bee0  stp     x29, x30, [sp, #-0x10]!
  10013bee4  mov     x29, sp
  10013bee8  stp     x20, x19, [sp, #-0x10]!
  10013beec  stp     x22, x21, [sp, #-0x10]!
  10013bef0  stp     x24, x23, [sp, #-0x10]!
  10013bef4  stp     x26, x25, [sp, #-0x10]!
  10013bef8  stp     x28, x27, [sp, #-0x10]!
  10013befc  sub     sp, sp, #0x50
  10013bf00  str     x3, [sp, #0x18]
  10013bf04  mov     x20, x2
  10013bf08  str     x20, [sp, #0x48]
  10013bf0c  mov     x21, x0
  10013bf10  adrp    x8, #0x10041c000
  10013bf14  nop
  10013bf18  ldr     x1, [x8, #0x7e8]
  10013bf1c  bl      _objc_msgSend                            ; [self descriptor]
  10013bf20  mov     x19, x0
  10013bf24  adrp    x24, #0x100420000
  10013bf28  ldrsw   x8, [x24, #0x9e4]                        ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013bf2c  str     x8, [sp, #0x40]
  10013bf30  ldr     x22, [x20, x8]                           ; x22 = arg1->messageStorage_
  10013bf34  ldr     x23, [x21, x8]                           ; x23 = self->messageStorage_
  10013bf38  adrp    x8, #0x10041c000
  10013bf3c  nop
  10013bf40  ldr     x1, [x8, #0x998]
  10013bf44  bl      _objc_msgSend                            ; [[self descriptor] storageSize]
  10013bf48  mov     x2, x0
  10013bf4c  mov     x0, x22
  10013bf50  mov     x1, x23
  10013bf54  bl      _memcpy                                  ; memcpy(arg1->messageStorage_, self->messageStorage_, [[self descriptor] storageSize])
  10013bf58  adrp    x8, #0x100420000
  10013bf5c  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  10013bf60  ldr     x0, [x19, x8]                            ; x0 = [self descriptor]->fields_
  10013bf64  cbz     x0, loc_10013c174                        ; if ([self descriptor]->fields_ == 0)
  10013bf68  adrp    x8, #0x100420000
  10013bf6c  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013bf70  ldr     x20, [x0, x8]                            ; x20 = [self descriptor]->fields_->_count
  10013bf74  adrp    x8, #0x10041b000
  10013bf78  nop
  10013bf7c  ldr     x1, [x8, #0xc78]
  10013bf80  bl      _objc_msgSend                            ; [[self descriptor]->fields_ data]
  10013bf84  mov     x22, x0
  10013bf88  cbz     x20, loc_10013c154                       ; if ([self descriptor]->fields_->_count == 0)
  10013bf8c  adrp    x8, #0x10041c000
  10013bf90  nop
  10013bf94  adrp    x9, #0x10041c000
  10013bf98  nop
  10013bf9c  adrp    x10, #0x10041c000
  10013bfa0  add     x10, x10, #0x470                         ; &@selector(currentHandler)
  10013bfa4  adrp    x11, #0x10041c000
  10013bfa8  add     x11, x11, #0x478                         ; &@selector(stringWithUTF8String:)
  10013bfac  ldr     x23, [x8, #0x770]
  10013bfb0  ldr     x8, [x9, #0x9a8]
  10013bfb4  str     x8, [sp, #0x38]
  10013bfb8  ldr     x8, [x10]
  10013bfbc  str     x8, [sp, #0x30]
  10013bfc0  ldr     x27, [x11]
  10013bfc4  adrp    x8, #0x10041c000
  10013bfc8  nop
  10013bfcc  adrp    x9, #0x10041b000
  10013bfd0  nop
  10013bfd4  ldr     x8, [x8, #0x520]
  10013bfd8  str     x8, [sp, #0x28]
  10013bfdc  ldr     x8, [x9, #0xdb8]
  10013bfe0  str     x8, [sp, #0x20]
  10013bfe4  adrp    x8, #0x10041c000
  10013bfe8  nop
  10013bfec  adrp    x9, #0x10041b000
  10013bff0  add     x9, x9, #0xd70                           ; &@selector(release)
  10013bff4  ldr     x8, [x8, #0x590]
  10013bff8  str     x8, [sp, #0x10]
  10013bffc  ldr     x8, [x9]
  10013c000  str     x8, [sp, #8]
  10013c004  adrp    x26, #0x10041d000
  10013c008  b       loc_10013c068
loc_10013c00c:
  10013c00c  mov     x0, x21
  10013c010  mov     x1, x19
  10013c014  bl      sub_10013c1a0                            ; sub_10013c1a0(self)
  10013c018  mov     x25, x0
  10013c01c  cbz     x25, loc_10013c148                       ; if (sub_10013c1a0(self) == 0)
  10013c020  mov     x0, x25
  10013c024  ldr     x1, [sp, #0x20]
  10013c028  bl      _objc_msgSend                            ; [sub_10013c1a0(self) retain]
  10013c02c  cbz     w28, loc_10013c148                       ; if ([x0 isRepeated] == 0)
  10013c030  mov     x0, x25
  10013c034  ldp     x1, x2, [sp, #0x10]
  10013c038  bl      _objc_msgSend                            ; [sub_10013c1a0(self) mutableCopyWithZone:arg2]
  10013c03c  mov     x25, x0
  10013c040  ldr     x1, [sp, #0x20]
  10013c044  bl      _objc_msgSend                            ; [[sub_10013c1a0(self) mutableCopyWithZone:arg2] retain]
  10013c048  mov     x2, x0
  10013c04c  ldr     x0, [sp, #0x48]
  10013c050  mov     x1, x19
  10013c054  bl      sub_1001486ec                            ; sub_1001486ec(arg1, x1, [[sub_10013c1a0(self) mutableCopyWithZone:arg2] retain])
  10013c058  mov     x0, x25
  10013c05c  ldr     x1, [sp, #8]
  10013c060  bl      _objc_msgSend                            ; [[sub_10013c1a0(self) mutableCopyWithZone:arg2] release]
  10013c064  b       loc_10013c148
loc_10013c068:
  10013c068  ldr     x19, [x22]
  10013c06c  mov     x0, x19
  10013c070  mov     x1, x23
  10013c074  bl      _objc_msgSend                            ; [x0 isRepeated]
  10013c078  mov     x28, x0
  10013c07c  adrp    x8, #0x100420000
  10013c080  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013c084  ldr     x8, [x19, x8]                            ; x8 = x19->description_
  10013c088  tbnz    w28, #0, loc_10013c09c                   ; if (([x0 isRepeated] & 1))
  10013c08c  ldr     w9, [x8, #0x14]                          ; w9 = x19->description_[+0x14]
  10013c090  sub     w9, w9, #0xd
  10013c094  cmp     w9, #3
  10013c098  b.hi    loc_10013c148                            ; if ((x19->description_[+0x14] - 13) >u 3)
loc_10013c09c:
  10013c09c  ldrsw   x9, [x24, #0x9e4]                        ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013c0a0  ldr     x9, [x21, x9]                            ; x9 = self->messageStorage_
  10013c0a4  cbz     x9, loc_10013c0c8                        ; if (self->messageStorage_ == 0)
  10013c0a8  ldr     w8, [x8, #0xc]                           ; w8 = x19->description_[+0xc]
  10013c0ac  and     w10, w8, #0x1f
  10013c0b0  mov     w11, #1
  10013c0b4  lsl     w10, w11, w10
  10013c0b8  lsr     w8, w8, #5
  10013c0bc  ldr     w8, [x9, w8, uxtw #2]
  10013c0c0  and     w8, w8, w10
  10013c0c4  cbnz    w8, loc_10013c00c                        ; if ((w8 & (1 << (x19->description_[+0xc] & 31))) != 0)
loc_10013c0c8:
  10013c0c8  ldp     x9, x8, [sp, #0x40]
  10013c0cc  ldr     x25, [x8, x9]                            ; x25 = arg1->messageStorage_
  10013c0d0  mov     x0, x19
  10013c0d4  ldr     x1, [sp, #0x38]
  10013c0d8  bl      _objc_msgSend                            ; [x0 offset]
  10013c0dc  add     x28, x25, x0
  10013c0e0  cbnz    x28, loc_10013c144                       ; if ((arg1->messageStorage_ + [x0 offset]) != 0)
  10013c0e4  adrp    x8, #0x10041e000
  10013c0e8  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  10013c0ec  ldr     x1, [sp, #0x30]
  10013c0f0  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  10013c0f4  mov     x19, x0
  10013c0f8  ldr     x0, [x26, #0xf78]                        ; class NSString
  10013c0fc  mov     x1, x27
  10013c100  adrp    x2, #0x100394000
  10013c104  add     x2, x2, #0x601                           ; "-[TAGPBGeneratedMessage copyFieldsInto:zone:]"
  10013c108  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"-[TAGPBGeneratedMessage copyFieldsInto:zone:]"]
  10013c10c  mov     x25, x0
  10013c110  ldr     x0, [x26, #0xf78]                        ; class NSString
  10013c114  mov     x1, x27
  10013c118  adrp    x2, #0x100394000
  10013c11c  add     x2, x2, #0x4e1                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10013c120  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  10013c124  mov     x3, x0
  10013c128  mov     x4, #0xd6
  10013c12c  mov     x0, x19
  10013c130  ldr     x1, [sp, #0x28]
  10013c134  mov     x2, x25
  10013c138  adrp    x5, #0x1003c7000
  10013c13c  add     x5, x5, #0x30                            ; @"NULL typeptr"
  10013c140  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInFunction:[NSString stringWithUTF8String:"-[TAGPBGeneratedMessage copyFieldsInto:zone:]"] file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:214 description:@"NULL typeptr"]
loc_10013c144:
  10013c144  str     xzr, [x28]                               ; (arg1->messageStorage_ + [x0 offset])[+0x0] = 0
loc_10013c148:
  10013c148  add     x22, x22, #8
  10013c14c  sub     x20, x20, #1
  10013c150  cbnz    x20, loc_10013c068                       ; if ((x20 - 1) != 0)
loc_10013c154:
  10013c154  sub     sp, x29, #0x50
  10013c158  ldp     x28, x27, [sp], #0x10
  10013c15c  ldp     x26, x25, [sp], #0x10
  10013c160  ldp     x24, x23, [sp], #0x10
  10013c164  ldp     x22, x21, [sp], #0x10
  10013c168  ldp     x20, x19, [sp], #0x10
  10013c16c  ldp     x29, x30, [sp], #0x10
  10013c170  ret
loc_10013c174:
  10013c174  adrp    x8, #0x10041b000
  10013c178  nop
  10013c17c  ldr     x1, [x8, #0xc78]
  10013c180  sub     sp, x29, #0x50
  10013c184  ldp     x28, x27, [sp], #0x10
  10013c188  ldp     x26, x25, [sp], #0x10
  10013c18c  ldp     x24, x23, [sp], #0x10
  10013c190  ldp     x22, x21, [sp], #0x10
  10013c194  ldp     x20, x19, [sp], #0x10
  10013c198  ldp     x29, x30, [sp], #0x10
  10013c19c  b       _objc_msgSend                            ; [[self descriptor]->fields_ data]

; ======================================================================
; sub_10013c1a0
; address 0x10013c1a0  size 320  kind sub
; ======================================================================
  10013c1a0  stp     x29, x30, [sp, #-0x10]!
  10013c1a4  mov     x29, sp
  10013c1a8  stp     x20, x19, [sp, #-0x10]!
  10013c1ac  stp     x22, x21, [sp, #-0x10]!
  10013c1b0  mov     x19, x1
  10013c1b4  mov     x20, x0
  10013c1b8  adrp    x8, #0x100420000
  10013c1bc  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013c1c0  ldr     x21, [x20, x8]                           ; x21 = a0->messageStorage_
  10013c1c4  cbz     x21, loc_10013c210                       ; if (a0->messageStorage_ == 0)
  10013c1c8  adrp    x8, #0x100420000
  10013c1cc  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013c1d0  ldr     x8, [x19, x8]                            ; x8 = a1->description_
  10013c1d4  ldr     w8, [x8, #0xc]                           ; w8 = a1->description_[+0xc]
  10013c1d8  and     w9, w8, #0x1f
  10013c1dc  mov     w10, #1
  10013c1e0  lsl     w9, w10, w9
  10013c1e4  lsr     w8, w8, #5
  10013c1e8  ldr     w8, [x21, w8, uxtw #2]
  10013c1ec  and     w8, w8, w9
  10013c1f0  cbz     w8, loc_10013c210                        ; if ((w8 & (1 << (a1->description_[+0xc] & 31))) == 0)
  10013c1f4  adrp    x8, #0x10041c000
  10013c1f8  nop
  10013c1fc  ldr     x1, [x8, #0x9a8]
  10013c200  mov     x0, x19
  10013c204  bl      _objc_msgSend                            ; [a1 offset]
  10013c208  ldr     x21, [x21, x0]
  10013c20c  b       loc_10013c2cc
loc_10013c210:
  10013c210  adrp    x8, #0x10041c000
  10013c214  nop
  10013c218  ldr     x1, [x8, #0x770]
  10013c21c  mov     x0, x19
  10013c220  bl      _objc_msgSend                            ; [a1 isRepeated]
  10013c224  tbnz    w0, #0, loc_10013c2b4                    ; if (([a1 isRepeated] & 1))
  10013c228  adrp    x8, #0x10041c000
  10013c22c  nop
  10013c230  ldr     x1, [x8, #0x780]
  10013c234  mov     x0, x19
  10013c238  bl      _objc_msgSend                            ; [a1 isMessage]
  10013c23c  tbz     w0, #0, loc_10013c2b4                    ; if (!([a1 isMessage] & 1))
  10013c240  adrp    x22, #0x100420000
  10013c244  ldrsw   x8, [x22, #0x9e8]                        ; ivar offset TAGPBGeneratedMessage.readOnlyMutex_ (+0x40)
  10013c248  add     x0, x20, x8
  10013c24c  bl      _OSSpinLockLock                          ; OSSpinLockLock(x0)
  10013c250  mov     x0, x20
  10013c254  mov     x1, x19
  10013c258  bl      sub_10013c7fc                            ; sub_10013c7fc(a0, a1)
  10013c25c  mov     x21, x0
  10013c260  cbnz    x21, loc_10013c2a4                       ; if (sub_10013c7fc(a0, a1) != 0)
  10013c264  adrp    x8, #0x10041c000
  10013c268  nop
  10013c26c  ldr     x1, [x8, #0xaa0]
  10013c270  mov     x0, x19
  10013c274  bl      _objc_msgSend                            ; [a1 msgClass]
  10013c278  adrp    x8, #0x10041c000
  10013c27c  nop
  10013c280  ldr     x1, [x8, #0xc30]
  10013c284  mov     x2, x20
  10013c288  mov     x3, x19
  10013c28c  bl      _objc_msgSend                            ; [[a1 msgClass] newMessageWithAutocreator:a0 field:a1]
  10013c290  mov     x21, x0
  10013c294  mov     x0, x20
  10013c298  mov     x1, x19
  10013c29c  mov     x2, x21
  10013c2a0  bl      sub_1001488dc                            ; sub_1001488dc(a0, a1, [[a1 msgClass] newMessageWithAutocreator:a0 field:a1])
loc_10013c2a4:
  10013c2a4  ldrsw   x8, [x22, #0x9e8]                        ; ivar offset TAGPBGeneratedMessage.readOnlyMutex_ (+0x40)
  10013c2a8  add     x0, x20, x8
  10013c2ac  bl      _OSSpinLockUnlock                        ; OSSpinLockUnlock(x0)
  10013c2b0  b       loc_10013c2cc
loc_10013c2b4:
  10013c2b4  adrp    x8, #0x10041c000
  10013c2b8  nop
  10013c2bc  ldr     x1, [x8, #0xa98]
  10013c2c0  mov     x0, x19
  10013c2c4  bl      _objc_msgSend                            ; [a1 defaultValue]
  10013c2c8  mov     x21, x0
loc_10013c2cc:
  10013c2cc  mov     x0, x21
  10013c2d0  ldp     x22, x21, [sp], #0x10
  10013c2d4  ldp     x20, x19, [sp], #0x10
  10013c2d8  ldp     x29, x30, [sp], #0x10
  10013c2dc  ret

; ======================================================================
; -[TAGPBGeneratedMessage copyWithZone:]
; address 0x10013c2e0  size 16  kind objc
; ======================================================================
  10013c2e0  adrp    x8, #0x10041c000
  10013c2e4  nop
  10013c2e8  ldr     x1, [x8, #0x590]
  10013c2ec  b       _objc_msgSend                            ; [self mutableCopyWithZone:arg1]

; ======================================================================
; -[TAGPBGeneratedMessage mutableCopyWithZone:]
; address 0x10013c2f0  size 204  kind objc
; ======================================================================
  10013c2f0  stp     x29, x30, [sp, #-0x10]!
  10013c2f4  mov     x29, sp
  10013c2f8  stp     x20, x19, [sp, #-0x10]!
  10013c2fc  stp     x22, x21, [sp, #-0x10]!
  10013c300  stp     x24, x23, [sp, #-0x10]!
  10013c304  mov     x19, x2
  10013c308  mov     x20, x0
  10013c30c  adrp    x8, #0x100417000
  10013c310  nop
  10013c314  ldr     x1, [x8, #0x2e0]
  10013c318  bl      _objc_msgSend                            ; [self class]
  10013c31c  adrp    x8, #0x100416000
  10013c320  nop
  10013c324  ldr     x1, [x8, #0xab0]
  10013c328  mov     x2, x19
  10013c32c  bl      _objc_msgSend                            ; [[self class] allocWithZone:arg1]
  10013c330  adrp    x8, #0x100416000
  10013c334  nop
  10013c338  ldr     x1, [x8, #0xab8]
  10013c33c  bl      _objc_msgSend                            ; [[[self class] allocWithZone:arg1] init]
  10013c340  mov     x21, x0
  10013c344  adrp    x8, #0x10041c000
  10013c348  nop
  10013c34c  ldr     x1, [x8, #0x9b0]
  10013c350  mov     x0, x20
  10013c354  mov     x2, x21
  10013c358  mov     x3, x19
  10013c35c  bl      _objc_msgSend                            ; [self copyFieldsInto:[[[self class] allocWithZone:arg1] init] zone:arg1]
  10013c360  adrp    x8, #0x100420000
  10013c364  ldrsw   x23, [x8, #0x9ec]                        ; ivar offset TAGPBGeneratedMessage.unknownFields_ (+0x8)
  10013c368  ldr     x0, [x20, x23]                           ; x0 = self->unknownFields_
  10013c36c  adrp    x8, #0x10041c000
  10013c370  nop
  10013c374  ldr     x22, [x8, #0x590]
  10013c378  mov     x1, x22
  10013c37c  mov     x2, x19
  10013c380  bl      _objc_msgSend                            ; [self->unknownFields_ mutableCopyWithZone:arg1]
  10013c384  str     x0, [x21, x23]                           ; [[[self class] allocWithZone:arg1] init]->unknownFields_ = [self->unknownFields_ mutableCopyWithZone:arg1]
  10013c388  adrp    x8, #0x100420000
  10013c38c  ldrsw   x23, [x8, #0x9f0]                        ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10013c390  ldr     x0, [x20, x23]                           ; x0 = self->extensionMap_
  10013c394  mov     x1, x22
  10013c398  mov     x2, x19
  10013c39c  bl      _objc_msgSend                            ; [self->extensionMap_ mutableCopyWithZone:arg1]
  10013c3a0  str     x0, [x21, x23]                           ; [[[self class] allocWithZone:arg1] init]->extensionMap_ = [self->extensionMap_ mutableCopyWithZone:arg1]
  10013c3a4  mov     x0, x21
  10013c3a8  ldp     x24, x23, [sp], #0x10
  10013c3ac  ldp     x22, x21, [sp], #0x10
  10013c3b0  ldp     x20, x19, [sp], #0x10
  10013c3b4  ldp     x29, x30, [sp], #0x10
  10013c3b8  ret

; ======================================================================
; -[TAGPBGeneratedMessage clear]
; address 0x10013c3bc  size 112  kind objc
; ======================================================================
  10013c3bc  stp     x29, x30, [sp, #-0x10]!
  10013c3c0  mov     x29, sp
  10013c3c4  stp     x20, x19, [sp, #-0x10]!
  10013c3c8  mov     x19, x0
  10013c3cc  adrp    x8, #0x10041c000
  10013c3d0  nop
  10013c3d4  ldr     x1, [x8, #0x9a0]
  10013c3d8  bl      _objc_msgSend                            ; [self internalClear]
  10013c3dc  adrp    x8, #0x100420000
  10013c3e0  ldrsw   x20, [x8, #0x9e4]                        ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013c3e4  ldr     x8, [x19, x20]                           ; x8 = self->messageStorage_
  10013c3e8  cbz     x8, loc_10013c420                        ; if (self->messageStorage_ == 0)
  10013c3ec  adrp    x8, #0x10041c000
  10013c3f0  nop
  10013c3f4  ldr     x1, [x8, #0x7e8]
  10013c3f8  mov     x0, x19
  10013c3fc  bl      _objc_msgSend                            ; [self descriptor]
  10013c400  ldr     x19, [x19, x20]                          ; x19 = self->messageStorage_
  10013c404  adrp    x8, #0x10041c000
  10013c408  nop
  10013c40c  ldr     x1, [x8, #0x998]
  10013c410  bl      _objc_msgSend                            ; [[self descriptor] storageSize]
  10013c414  mov     x1, x0
  10013c418  mov     x0, x19
  10013c41c  bl      _bzero                                   ; bzero(self->messageStorage_, [[self descriptor] storageSize])
loc_10013c420:
  10013c420  ldp     x20, x19, [sp], #0x10
  10013c424  ldp     x29, x30, [sp], #0x10
  10013c428  ret

; ======================================================================
; -[TAGPBGeneratedMessage internalClear]
; address 0x10013c42c  size 976  kind objc
; ======================================================================
  10013c42c  stp     x29, x30, [sp, #-0x10]!
  10013c430  mov     x29, sp
  10013c434  stp     x20, x19, [sp, #-0x10]!
  10013c438  stp     x22, x21, [sp, #-0x10]!
  10013c43c  stp     x24, x23, [sp, #-0x10]!
  10013c440  stp     x26, x25, [sp, #-0x10]!
  10013c444  stp     x28, x27, [sp, #-0x10]!
  10013c448  sub     sp, sp, #0x110
  10013c44c  adrp    x8, #0x1003b0000
  10013c450  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013c454  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013c458  stur    x8, [x29, #-0x58]
  10013c45c  adrp    x8, #0x10041c000
  10013c460  nop
  10013c464  ldr     x1, [x8, #0x7e8]
  10013c468  mov     x28, x0
  10013c46c  bl      _objc_msgSend                            ; [self descriptor]
  10013c470  adrp    x8, #0x100420000
  10013c474  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  10013c478  ldr     x0, [x0, x8]                             ; x0 = [self descriptor]->fields_
  10013c47c  cbz     x0, loc_10013c5cc                        ; if ([self descriptor]->fields_ == 0)
  10013c480  adrp    x8, #0x100420000
  10013c484  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013c488  ldr     x19, [x0, x8]                            ; x19 = [self descriptor]->fields_->_count
  10013c48c  adrp    x8, #0x10041b000
  10013c490  nop
  10013c494  ldr     x1, [x8, #0xc78]
  10013c498  bl      _objc_msgSend                            ; [[self descriptor]->fields_ data]
  10013c49c  mov     x20, x0
  10013c4a0  cbz     x19, loc_10013c5dc                       ; if ([self descriptor]->fields_->_count == 0)
  10013c4a4  adrp    x8, #0x10041c000
  10013c4a8  nop
  10013c4ac  ldr     x21, [x8, #0x770]
  10013c4b0  adrp    x8, #0x100416000
  10013c4b4  nop
  10013c4b8  ldr     x22, [x8, #0xc18]
  10013c4bc  adrp    x8, #0x100417000
  10013c4c0  nop
  10013c4c4  ldr     x23, [x8, #0x7d8]
  10013c4c8  adrp    x8, #0x10041b000
  10013c4cc  nop
  10013c4d0  ldr     x24, [x8, #0xd70]
  10013c4d4  adrp    x8, #0x10041c000
  10013c4d8  add     x8, x8, #0x780                           ; &@selector(isMessage)
  10013c4dc  ldr     x25, [x8]
  10013c4e0  adrp    x27, #0x100420000
  10013c4e4  b       loc_10013c540
loc_10013c4e8:
  10013c4e8  ldrsw   x8, [x27, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013c4ec  ldr     x8, [x26, x8]                            ; x8 = x26->description_
  10013c4f0  ldr     w9, [x8, #0x14]                          ; w9 = x26->description_[+0x14]
  10013c4f4  sub     w9, w9, #0xd
  10013c4f8  cmp     w9, #3
  10013c4fc  b.hi    loc_10013c5bc                            ; if ((x26->description_[+0x14] - 13) >u 3)
  10013c500  adrp    x9, #0x100420000
  10013c504  ldrsw   x9, [x9, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013c508  ldr     x9, [x28, x9]                            ; x9 = self->messageStorage_
  10013c50c  cbz     x9, loc_10013c5bc                        ; if (self->messageStorage_ == 0)
  10013c510  ldr     w8, [x8, #0xc]                           ; w8 = x26->description_[+0xc]
  10013c514  and     w10, w8, #0x1f
  10013c518  mov     w11, #1
  10013c51c  lsl     w10, w11, w10
  10013c520  lsr     w8, w8, #5
  10013c524  ldr     w8, [x9, w8, uxtw #2]
  10013c528  and     w8, w8, w10
  10013c52c  cbz     w8, loc_10013c5bc                        ; if ((w8 & (1 << (x26->description_[+0xc] & 31))) == 0)
  10013c530  mov     x0, x28
  10013c534  mov     x1, x26
  10013c538  bl      sub_10013c1a0                            ; sub_10013c1a0(self)
  10013c53c  b       loc_10013c5b4
loc_10013c540:
  10013c540  ldr     x26, [x20]
  10013c544  mov     x0, x26
  10013c548  mov     x1, x21
  10013c54c  bl      _objc_msgSend                            ; [x0 isRepeated]
  10013c550  cbz     w0, loc_10013c58c                        ; if ([x0 isRepeated] == 0)
  10013c554  mov     x0, x28
  10013c558  mov     x1, x26
  10013c55c  bl      sub_10013c7fc                            ; sub_10013c7fc(self)
  10013c560  mov     x26, x0
  10013c564  mov     x1, x22
  10013c568  bl      _objc_msgSend                            ; [sub_10013c7fc(self) delegate]
  10013c56c  cmp     x0, x28
  10013c570  b.ne    loc_10013c584                            ; if ([sub_10013c7fc(self) delegate] != self)
  10013c574  mov     x2, #0
  10013c578  mov     x0, x26
  10013c57c  mov     x1, x23
  10013c580  bl      _objc_msgSend                            ; [sub_10013c7fc(self) setDelegate:0]
loc_10013c584:
  10013c584  mov     x0, x26
  10013c588  b       loc_10013c5b4
loc_10013c58c:
  10013c58c  mov     x0, x26
  10013c590  mov     x1, x25
  10013c594  bl      _objc_msgSend                            ; [x0 isMessage]
  10013c598  cbz     w0, loc_10013c4e8                        ; if ([x0 isMessage] == 0)
  10013c59c  mov     x0, x28
  10013c5a0  mov     x1, x26
  10013c5a4  bl      sub_10013c8d4                            ; sub_10013c8d4(self)
  10013c5a8  mov     x0, x28
  10013c5ac  mov     x1, x26
  10013c5b0  bl      sub_10013c7fc                            ; sub_10013c7fc(self)
loc_10013c5b4:
  10013c5b4  mov     x1, x24
  10013c5b8  bl      _objc_msgSend                            ; [x0 release]
loc_10013c5bc:
  10013c5bc  add     x20, x20, #8
  10013c5c0  sub     x19, x19, #1
  10013c5c4  cbnz    x19, loc_10013c540                       ; if ((x19 - 1) != 0)
  10013c5c8  b       loc_10013c5dc
loc_10013c5cc:
  10013c5cc  adrp    x8, #0x10041b000
  10013c5d0  nop
  10013c5d4  ldr     x1, [x8, #0xc78]
  10013c5d8  bl      _objc_msgSend                            ; [[self descriptor]->fields_ data]
loc_10013c5dc:
  10013c5dc  str     x28, [sp, #0x40]
  10013c5e0  adrp    x8, #0x100420000
  10013c5e4  ldrsw   x19, [x8, #0x9f4]                        ; ivar offset TAGPBGeneratedMessage.autocreatedExtensionMap_ (+0x18)
  10013c5e8  ldr     x0, [x28, x19]                           ; x0 = self->autocreatedExtensionMap_
  10013c5ec  adrp    x8, #0x10041b000
  10013c5f0  nop
  10013c5f4  ldr     x1, [x8, #0x488]
  10013c5f8  bl      _objc_msgSend                            ; [self->autocreatedExtensionMap_ allValues]
  10013c5fc  mov     x20, x0
  10013c600  str     x20, [sp, #0x38]
  10013c604  ldr     x0, [x28, x19]                           ; x0 = self->autocreatedExtensionMap_
  10013c608  adrp    x8, #0x10041b000
  10013c60c  nop
  10013c610  ldr     x1, [x8, #0xd70]
  10013c614  str     x1, [sp, #8]
  10013c618  bl      _objc_msgSend                            ; [self->autocreatedExtensionMap_ release]
  10013c61c  str     xzr, [x28, x19]                          ; self->autocreatedExtensionMap_ = 0
  10013c620  stp     xzr, xzr, [x29, #-0x68]
  10013c624  stp     xzr, xzr, [x29, #-0x78]
  10013c628  stp     xzr, xzr, [x29, #-0x88]
  10013c62c  stp     xzr, xzr, [x29, #-0x98]
  10013c630  adrp    x8, #0x100416000
  10013c634  nop
  10013c638  ldr     x1, [x8, #0xe00]
  10013c63c  str     x1, [sp, #0x20]
  10013c640  sub     x2, x29, #0x98
  10013c644  add     x3, sp, #0x48
  10013c648  mov     x4, #0x10
  10013c64c  mov     x0, x20
  10013c650  bl      _objc_msgSend                            ; [[self->autocreatedExtensionMap_ allValues] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10013c654  mov     x24, x0
  10013c658  cbz     x24, loc_10013c788                       ; if ([[self->autocreatedExtensionMap_ allValues] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] == 0)
  10013c65c  ldur    x8, [x29, #-0x88]
  10013c660  adrp    x9, #0x10041c000
  10013c664  nop
  10013c668  ldr     x21, [x8]
  10013c66c  ldr     x23, [x9, #0x9b8]
  10013c670  adrp    x8, #0x10041c000
  10013c674  nop
  10013c678  adrp    x9, #0x10041c000
  10013c67c  nop
  10013c680  ldr     x25, [x8, #0x9c0]
  10013c684  ldr     x8, [x9, #0x470]
  10013c688  str     x8, [sp, #0x30]
  10013c68c  adrp    x8, #0x10041c000
  10013c690  nop
  10013c694  adrp    x9, #0x10041c000
  10013c698  add     x9, x9, #0x520                           ; &@selector(handleFailureInFunction:file:lineNumber:description:)
  10013c69c  ldr     x27, [x8, #0x478]
  10013c6a0  sub     x8, x29, #0x98
  10013c6a4  str     x8, [sp, #0x18]
  10013c6a8  ldr     x8, [x9]
  10013c6ac  str     x8, [sp, #0x28]
  10013c6b0  add     x8, sp, #0x48
  10013c6b4  str     x8, [sp, #0x10]
  10013c6b8  adrp    x26, #0x10041d000
loc_10013c6bc:
  10013c6bc  mov     x20, #0
loc_10013c6c0:
  10013c6c0  ldur    x8, [x29, #-0x88]
  10013c6c4  ldr     x8, [x8]
  10013c6c8  cmp     x8, x21
  10013c6cc  b.eq    loc_10013c6d8                            ; if (x8 == x21)
  10013c6d0  ldr     x0, [sp, #0x38]
  10013c6d4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self->autocreatedExtensionMap_ allValues])
loc_10013c6d8:
  10013c6d8  ldur    x8, [x29, #-0x90]
  10013c6dc  ldr     x22, [x8, x20, lsl #3]
  10013c6e0  mov     x0, x22
  10013c6e4  mov     x1, x23
  10013c6e8  ldr     x2, [sp, #0x40]
  10013c6ec  bl      _objc_msgSend                            ; [x0 wasAutocreatedBy:self]
  10013c6f0  tbnz    w0, #0, loc_10013c754                    ; if (([x0 wasAutocreatedBy:self] & 1))
  10013c6f4  adrp    x8, #0x10041e000
  10013c6f8  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  10013c6fc  ldr     x1, [sp, #0x30]
  10013c700  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  10013c704  mov     x28, x0
  10013c708  ldr     x0, [x26, #0xf78]                        ; class NSString
  10013c70c  mov     x1, x27
  10013c710  adrp    x2, #0x100394000
  10013c714  add     x2, x2, #0x63c                           ; "-[TAGPBGeneratedMessage internalClear]"
  10013c718  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"-[TAGPBGeneratedMessage internalClear]"]
  10013c71c  mov     x19, x0
  10013c720  ldr     x0, [x26, #0xf78]                        ; class NSString
  10013c724  mov     x1, x27
  10013c728  adrp    x2, #0x100394000
  10013c72c  add     x2, x2, #0x4e1                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10013c730  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  10013c734  mov     x3, x0
  10013c738  mov     x4, #0x12a
  10013c73c  mov     x0, x28
  10013c740  ldr     x1, [sp, #0x28]
  10013c744  mov     x2, x19
  10013c748  adrp    x5, #0x1003c7000
  10013c74c  add     x5, x5, #0x50                            ; @"Autocreated extension does not refer back to self."
  10013c750  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInFunction:[NSString stringWithUTF8String:"-[TAGPBGeneratedMessage internalClear]"] file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:298 description:@"Autocreated extension does not refer back to self."]
loc_10013c754:
  10013c754  mov     x0, x22
  10013c758  mov     x1, x25
  10013c75c  bl      _objc_msgSend                            ; [x0 clearAutocreator]
  10013c760  add     x20, x20, #1
  10013c764  cmp     x20, x24
  10013c768  b.lo    loc_10013c6c0                            ; if ((x20 + 1) <u [[self->autocreatedExtensionMap_ allValues] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16])
  10013c76c  mov     x4, #0x10
  10013c770  ldr     x0, [sp, #0x38]
  10013c774  ldp     x2, x1, [sp, #0x18]
  10013c778  ldr     x3, [sp, #0x10]
  10013c77c  bl      _objc_msgSend                            ; [[self->autocreatedExtensionMap_ allValues] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10013c780  mov     x24, x0
  10013c784  cbnz    x24, loc_10013c6bc                       ; if ([[self->autocreatedExtensionMap_ allValues] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] != 0)
loc_10013c788:
  10013c788  adrp    x8, #0x100420000
  10013c78c  ldrsw   x19, [x8, #0x9f0]                        ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10013c790  ldr     x26, [sp, #0x40]
  10013c794  ldr     x0, [x26, x19]                           ; x0 = self->extensionMap_
  10013c798  ldr     x20, [sp, #8]
  10013c79c  mov     x1, x20
  10013c7a0  bl      _objc_msgSend                            ; [self->extensionMap_ release]
  10013c7a4  str     xzr, [x26, x19]                          ; self->extensionMap_ = 0
  10013c7a8  adrp    x8, #0x100420000
  10013c7ac  ldrsw   x19, [x8, #0x9ec]                        ; ivar offset TAGPBGeneratedMessage.unknownFields_ (+0x8)
  10013c7b0  ldr     x0, [x26, x19]                           ; x0 = self->unknownFields_
  10013c7b4  mov     x1, x20
  10013c7b8  bl      _objc_msgSend                            ; [self->unknownFields_ release]
  10013c7bc  str     xzr, [x26, x19]                          ; self->unknownFields_ = 0
  10013c7c0  adrp    x8, #0x1003b0000
  10013c7c4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013c7c8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013c7cc  ldur    x9, [x29, #-0x58]
  10013c7d0  sub     x8, x8, x9
  10013c7d4  cbnz    x8, loc_10013c7f8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10013c7d8  sub     sp, x29, #0x50
  10013c7dc  ldp     x28, x27, [sp], #0x10
  10013c7e0  ldp     x26, x25, [sp], #0x10
  10013c7e4  ldp     x24, x23, [sp], #0x10
  10013c7e8  ldp     x22, x21, [sp], #0x10
  10013c7ec  ldp     x20, x19, [sp], #0x10
  10013c7f0  ldp     x29, x30, [sp], #0x10
  10013c7f4  ret
loc_10013c7f8:
  10013c7f8  bl      ___stack_chk_fail                        ; stack_chk_fail([self->unknownFields_ release])

; ======================================================================
; sub_10013c7fc
; address 0x10013c7fc  size 216  kind sub
; ======================================================================
  10013c7fc  stp     x29, x30, [sp, #-0x10]!
  10013c800  mov     x29, sp
  10013c804  stp     x20, x19, [sp, #-0x10]!
  10013c808  stp     x22, x21, [sp, #-0x10]!
  10013c80c  stp     x24, x23, [sp, #-0x10]!
  10013c810  adrp    x8, #0x100420000
  10013c814  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013c818  ldr     x19, [x0, x8]                            ; x19 = a0->messageStorage_
  10013c81c  adrp    x8, #0x10041c000
  10013c820  nop
  10013c824  ldr     x8, [x8, #0x9a8]
  10013c828  mov     x0, x1
  10013c82c  mov     x1, x8
  10013c830  bl      _objc_msgSend                            ; [a1 offset]
  10013c834  add     x22, x19, x0
  10013c838  cbnz    x22, loc_10013c8bc                       ; if ((a0->messageStorage_ + [a1 offset]) != 0)
  10013c83c  adrp    x8, #0x10041e000
  10013c840  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  10013c844  adrp    x8, #0x10041c000
  10013c848  nop
  10013c84c  ldr     x1, [x8, #0x470]
  10013c850  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  10013c854  mov     x19, x0
  10013c858  adrp    x23, #0x10041d000
  10013c85c  ldr     x0, [x23, #0xf78]                        ; class NSString
  10013c860  adrp    x8, #0x10041c000
  10013c864  nop
  10013c868  ldr     x20, [x8, #0x478]
  10013c86c  adrp    x2, #0x100394000
  10013c870  add     x2, x2, #0x9e3                           ; "id TAGPBGetObjectIvarWithFieldNoAutocreate(TAGPBGeneratedMessage *, TAGPBFieldDescriptor *…"
  10013c874  mov     x1, x20
  10013c878  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"id TAGPBGetObjectIvarWithFieldNoAutocreate(TAGPBGeneratedMessage *, TAGPBFieldDescriptor *…"]
  10013c87c  mov     x21, x0
  10013c880  ldr     x0, [x23, #0xf78]                        ; class NSString
  10013c884  adrp    x2, #0x100394000
  10013c888  add     x2, x2, #0x898                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10013c88c  mov     x1, x20
  10013c890  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  10013c894  mov     x3, x0
  10013c898  adrp    x8, #0x10041c000
  10013c89c  nop
  10013c8a0  ldr     x1, [x8, #0x520]
  10013c8a4  adrp    x5, #0x1003c7000
  10013c8a8  add     x5, x5, #0x30                            ; @"NULL typeptr"
  10013c8ac  mov     x4, #0x184
  10013c8b0  mov     x0, x19
  10013c8b4  mov     x2, x21
  10013c8b8  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInFunction:[NSString stringWithUTF8String:"id TAGPBGetObjectIvarWithFieldNoAutocreate(TAGPBGeneratedMessage *, TAGPBFieldDescriptor *…"] file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:388 description:@"NULL typeptr"]
loc_10013c8bc:
  10013c8bc  ldr     x0, [x22]                                ; x0 = (a0->messageStorage_ + [a1 offset])[+0x0]
  10013c8c0  ldp     x24, x23, [sp], #0x10
  10013c8c4  ldp     x22, x21, [sp], #0x10
  10013c8c8  ldp     x20, x19, [sp], #0x10
  10013c8cc  ldp     x29, x30, [sp], #0x10
  10013c8d0  ret

; ======================================================================
; sub_10013c8d4
; address 0x10013c8d4  size 324  kind sub
; ======================================================================
  10013c8d4  stp     x29, x30, [sp, #-0x10]!
  10013c8d8  mov     x29, sp
  10013c8dc  stp     x20, x19, [sp, #-0x10]!
  10013c8e0  stp     x22, x21, [sp, #-0x10]!
  10013c8e4  stp     x24, x23, [sp, #-0x10]!
  10013c8e8  adrp    x8, #0x100420000
  10013c8ec  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013c8f0  ldr     x19, [x0, x8]                            ; x19 = a0->messageStorage_
  10013c8f4  cbz     x19, loc_10013c938                       ; if (a0->messageStorage_ == 0)
  10013c8f8  adrp    x8, #0x100420000
  10013c8fc  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013c900  ldr     x8, [x1, x8]                             ; x8 = a1->description_
  10013c904  ldr     w8, [x8, #0xc]                           ; w8 = a1->description_[+0xc]
  10013c908  and     w9, w8, #0x1f
  10013c90c  mov     w10, #1
  10013c910  lsl     w9, w10, w9
  10013c914  lsr     w8, w8, #5
  10013c918  ldr     w8, [x19, w8, uxtw #2]
  10013c91c  and     w8, w8, w9
  10013c920  cbz     w8, loc_10013c938                        ; if ((w8 & (1 << (a1->description_[+0xc] & 31))) == 0)
  10013c924  ldp     x24, x23, [sp], #0x10
  10013c928  ldp     x22, x21, [sp], #0x10
  10013c92c  ldp     x20, x19, [sp], #0x10
  10013c930  ldp     x29, x30, [sp], #0x10
  10013c934  ret
loc_10013c938:
  10013c938  adrp    x8, #0x10041c000
  10013c93c  nop
  10013c940  ldr     x8, [x8, #0x9a8]
  10013c944  mov     x0, x1
  10013c948  mov     x1, x8
  10013c94c  bl      _objc_msgSend                            ; [a1 offset]
  10013c950  add     x22, x19, x0
  10013c954  cbnz    x22, loc_10013c9d8                       ; if ((a0->messageStorage_ + [a1 offset]) != 0)
  10013c958  adrp    x8, #0x10041e000
  10013c95c  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  10013c960  adrp    x8, #0x10041c000
  10013c964  nop
  10013c968  ldr     x1, [x8, #0x470]
  10013c96c  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  10013c970  mov     x19, x0
  10013c974  adrp    x23, #0x10041d000
  10013c978  ldr     x0, [x23, #0xf78]                        ; class NSString
  10013c97c  adrp    x8, #0x10041c000
  10013c980  nop
  10013c984  ldr     x20, [x8, #0x478]
  10013c988  adrp    x2, #0x100394000
  10013c98c  add     x2, x2, #0x838                           ; "void TAGPBClearAutocreatedMessageIvarWithField(TAGPBGeneratedMessage *, TAGPBFieldDescript…"
  10013c990  mov     x1, x20
  10013c994  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"void TAGPBClearAutocreatedMessageIvarWithField(TAGPBGeneratedMessage *, TAGPBFieldDescript…"]
  10013c998  mov     x21, x0
  10013c99c  ldr     x0, [x23, #0xf78]                        ; class NSString
  10013c9a0  adrp    x2, #0x100394000
  10013c9a4  add     x2, x2, #0x898                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10013c9a8  mov     x1, x20
  10013c9ac  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  10013c9b0  mov     x3, x0
  10013c9b4  adrp    x8, #0x10041c000
  10013c9b8  nop
  10013c9bc  ldr     x1, [x8, #0x520]
  10013c9c0  adrp    x5, #0x1003c7000
  10013c9c4  add     x5, x5, #0x30                            ; @"NULL typeptr"
  10013c9c8  mov     x4, #0x132
  10013c9cc  mov     x0, x19
  10013c9d0  mov     x2, x21
  10013c9d4  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInFunction:[NSString stringWithUTF8String:"void TAGPBClearAutocreatedMessageIvarWithField(TAGPBGeneratedMessage *, TAGPBFieldDescript…"] file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:306 description:@"NULL typeptr"]
loc_10013c9d8:
  10013c9d8  ldr     x19, [x22]                               ; x19 = (a0->messageStorage_ + [a1 offset])[+0x0]
  10013c9dc  str     xzr, [x22]                               ; (a0->messageStorage_ + [a1 offset])[+0x0] = 0
  10013c9e0  adrp    x8, #0x10041c000
  10013c9e4  nop
  10013c9e8  ldr     x1, [x8, #0x9c0]
  10013c9ec  mov     x0, x19
  10013c9f0  bl      _objc_msgSend                            ; [(a0->messageStorage_ + [a1 offset])[+0x0] clearAutocreator]
  10013c9f4  adrp    x8, #0x10041b000
  10013c9f8  nop
  10013c9fc  ldr     x1, [x8, #0xd70]
  10013ca00  mov     x0, x19
  10013ca04  ldp     x24, x23, [sp], #0x10
  10013ca08  ldp     x22, x21, [sp], #0x10
  10013ca0c  ldp     x20, x19, [sp], #0x10
  10013ca10  ldp     x29, x30, [sp], #0x10
  10013ca14  b       _objc_msgSend                            ; [(a0->messageStorage_ + [a1 offset])[+0x0] release]

; ======================================================================
; -[TAGPBGeneratedMessage isInitialized]
; address 0x10013ca18  size 772  kind objc
; ======================================================================
  10013ca18  stp     x29, x30, [sp, #-0x10]!
  10013ca1c  mov     x29, sp
  10013ca20  stp     x20, x19, [sp, #-0x10]!
  10013ca24  stp     x22, x21, [sp, #-0x10]!
  10013ca28  stp     x24, x23, [sp, #-0x10]!
  10013ca2c  stp     x26, x25, [sp, #-0x10]!
  10013ca30  stp     x28, x27, [sp, #-0x10]!
  10013ca34  sub     sp, sp, #0x100
  10013ca38  mov     x19, x0
  10013ca3c  adrp    x8, #0x1003b0000
  10013ca40  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013ca44  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013ca48  stur    x8, [x29, #-0x58]
  10013ca4c  adrp    x8, #0x10041c000
  10013ca50  nop
  10013ca54  ldr     x1, [x8, #0x7e8]
  10013ca58  bl      _objc_msgSend                            ; [self descriptor]
  10013ca5c  adrp    x8, #0x100420000
  10013ca60  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  10013ca64  ldr     x0, [x0, x8]                             ; x0 = [self descriptor]->fields_
  10013ca68  cbz     x0, loc_10013cc94                        ; if ([self descriptor]->fields_ == 0)
  10013ca6c  adrp    x8, #0x100420000
  10013ca70  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013ca74  ldr     x25, [x0, x8]                            ; x25 = [self descriptor]->fields_->_count
  10013ca78  adrp    x8, #0x10041b000
  10013ca7c  nop
  10013ca80  ldr     x1, [x8, #0xc78]
  10013ca84  bl      _objc_msgSend                            ; [[self descriptor]->fields_ data]
  10013ca88  mov     x20, x0
  10013ca8c  cbz     x25, loc_10013cca4                       ; if ([self descriptor]->fields_->_count == 0)
  10013ca90  mov     x26, #0
  10013ca94  adrp    x8, #0x10041c000
  10013ca98  nop
  10013ca9c  ldr     x21, [x8, #0x9c8]
  10013caa0  adrp    x8, #0x10041c000
  10013caa4  nop
  10013caa8  ldr     x22, [x8, #0x780]
  10013caac  str     x22, [sp, #8]
  10013cab0  adrp    x8, #0x10041c000
  10013cab4  nop
  10013cab8  ldr     x23, [x8, #0x9d0]
  10013cabc  adrp    x8, #0x10041c000
  10013cac0  nop
  10013cac4  ldr     x8, [x8, #0x9d8]
  10013cac8  str     x8, [sp, #0x30]
  10013cacc  adrp    x8, #0x10041c000
  10013cad0  nop
  10013cad4  ldr     x8, [x8, #0x770]
  10013cad8  str     x8, [sp, #0x28]
  10013cadc  adrp    x8, #0x100416000
  10013cae0  nop
  10013cae4  ldr     x8, [x8, #0xe00]
  10013cae8  str     x8, [sp, #0x20]
  10013caec  sub     x8, x29, #0x98
  10013caf0  str     x8, [sp, #0x18]
  10013caf4  add     x8, sp, #0x38
  10013caf8  str     x8, [sp, #0x10]
loc_10013cafc:
  10013cafc  ldr     x27, [x20, x26, lsl #3]
  10013cb00  mov     x0, x27
  10013cb04  mov     x1, x21
  10013cb08  bl      _objc_msgSend                            ; [x0 isRequired]
  10013cb0c  cbz     w0, loc_10013cb4c                        ; if ([x0 isRequired] == 0)
  10013cb10  adrp    x8, #0x100420000
  10013cb14  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013cb18  ldr     x8, [x19, x8]                            ; x8 = self->messageStorage_
  10013cb1c  cbz     x8, loc_10013ccdc                        ; if (self->messageStorage_ == 0)
  10013cb20  adrp    x9, #0x100420000
  10013cb24  ldrsw   x9, [x9, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013cb28  ldr     x9, [x27, x9]                            ; x9 = x27->description_
  10013cb2c  ldr     w9, [x9, #0xc]                           ; w9 = x27->description_[+0xc]
  10013cb30  and     w10, w9, #0x1f
  10013cb34  mov     w11, #1
  10013cb38  lsl     w10, w11, w10
  10013cb3c  lsr     w9, w9, #5
  10013cb40  ldr     w8, [x8, w9, uxtw #2]
  10013cb44  and     w8, w8, w10
  10013cb48  cbz     w8, loc_10013ccdc                        ; if ((w8 & (1 << (x27->description_[+0xc] & 31))) == 0)
loc_10013cb4c:
  10013cb4c  mov     x0, x27
  10013cb50  mov     x1, x22
  10013cb54  bl      _objc_msgSend                            ; [x0 isMessage]
  10013cb58  cbz     w0, loc_10013cc84                        ; if ([x0 isMessage] == 0)
  10013cb5c  mov     x0, x27
  10013cb60  mov     x1, x21
  10013cb64  bl      _objc_msgSend                            ; [x0 isRequired]
  10013cb68  cbnz    w0, loc_10013cbb8                        ; if ([x0 isRequired] != 0)
  10013cb6c  mov     x0, x27
  10013cb70  ldr     x1, [sp, #0x30]
  10013cb74  bl      _objc_msgSend                            ; [x0 isOptional]
  10013cb78  cbz     w0, loc_10013cbd4                        ; if ([x0 isOptional] == 0)
  10013cb7c  adrp    x8, #0x100420000
  10013cb80  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013cb84  ldr     x8, [x19, x8]                            ; x8 = self->messageStorage_
  10013cb88  cbz     x8, loc_10013cc84                        ; if (self->messageStorage_ == 0)
  10013cb8c  adrp    x9, #0x100420000
  10013cb90  ldrsw   x9, [x9, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013cb94  ldr     x9, [x27, x9]                            ; x9 = x27->description_
  10013cb98  ldr     w9, [x9, #0xc]                           ; w9 = x27->description_[+0xc]
  10013cb9c  and     w10, w9, #0x1f
  10013cba0  mov     w11, #1
  10013cba4  lsl     w10, w11, w10
  10013cba8  lsr     w9, w9, #5
  10013cbac  ldr     w8, [x8, w9, uxtw #2]
  10013cbb0  and     w8, w8, w10
  10013cbb4  cbz     w8, loc_10013cc84                        ; if ((w8 & (1 << (x27->description_[+0xc] & 31))) == 0)
loc_10013cbb8:
  10013cbb8  mov     x0, x19
  10013cbbc  mov     x1, x27
  10013cbc0  bl      sub_10013c1a0                            ; sub_10013c1a0(self)
  10013cbc4  mov     x1, x23
  10013cbc8  bl      _objc_msgSend                            ; [sub_10013c1a0(self) isInitialized]
  10013cbcc  tbnz    w0, #0, loc_10013cc84                    ; if (([sub_10013c1a0(self) isInitialized] & 1))
  10013cbd0  b       loc_10013ccdc
loc_10013cbd4:
  10013cbd4  mov     x0, x27
  10013cbd8  ldr     x1, [sp, #0x28]
  10013cbdc  bl      _objc_msgSend                            ; [x0 isRepeated]
  10013cbe0  cbz     w0, loc_10013cc84                        ; if ([x0 isRepeated] == 0)
  10013cbe4  mov     x0, x19
  10013cbe8  mov     x1, x27
  10013cbec  bl      sub_10013cd1c                            ; sub_10013cd1c(self)
  10013cbf0  mov     x27, x0
  10013cbf4  stp     xzr, xzr, [x29, #-0x68]
  10013cbf8  stp     xzr, xzr, [x29, #-0x78]
  10013cbfc  stp     xzr, xzr, [x29, #-0x88]
  10013cc00  stp     xzr, xzr, [x29, #-0x98]
  10013cc04  mov     x4, #0x10
  10013cc08  ldp     x2, x1, [sp, #0x18]
  10013cc0c  ldr     x3, [sp, #0x10]
  10013cc10  bl      _objc_msgSend                            ; [sub_10013cd1c(self) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  10013cc14  mov     x28, x0
  10013cc18  cbz     x28, loc_10013cc84                       ; if ([sub_10013cd1c(self) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] == 0)
  10013cc1c  ldur    x8, [x29, #-0x88]
  10013cc20  ldr     x24, [x8]
loc_10013cc24:
  10013cc24  mov     x22, #0
loc_10013cc28:
  10013cc28  ldur    x8, [x29, #-0x88]
  10013cc2c  ldr     x8, [x8]
  10013cc30  cmp     x8, x24
  10013cc34  b.eq    loc_10013cc40                            ; if (x8 == x24)
  10013cc38  mov     x0, x27
  10013cc3c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(sub_10013cd1c(self))
loc_10013cc40:
  10013cc40  ldur    x8, [x29, #-0x90]
  10013cc44  ldr     x0, [x8, x22, lsl #3]
  10013cc48  mov     x1, x23
  10013cc4c  bl      _objc_msgSend                            ; [x0 isInitialized]
  10013cc50  cbz     w0, loc_10013ccdc                        ; if ([x0 isInitialized] == 0)
  10013cc54  add     x22, x22, #1
  10013cc58  cmp     x22, x28
  10013cc5c  b.lo    loc_10013cc28                            ; if ((x22 + 1) <u [sub_10013cd1c(self) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16])
  10013cc60  sub     x2, x29, #0x98
  10013cc64  add     x3, sp, #0x38
  10013cc68  mov     x4, #0x10
  10013cc6c  mov     x0, x27
  10013cc70  ldr     x1, [sp, #0x20]
  10013cc74  bl      _objc_msgSend                            ; [sub_10013cd1c(self) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  10013cc78  mov     x28, x0
  10013cc7c  ldr     x22, [sp, #8]
  10013cc80  cbnz    x28, loc_10013cc24                       ; if ([sub_10013cd1c(self) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] != 0)
loc_10013cc84:
  10013cc84  add     x26, x26, #1
  10013cc88  cmp     x26, x25
  10013cc8c  b.lo    loc_10013cafc                            ; if ((x26 + 1) <u [self descriptor]->fields_->_count)
  10013cc90  b       loc_10013cca4
loc_10013cc94:
  10013cc94  adrp    x8, #0x10041b000
  10013cc98  nop
  10013cc9c  ldr     x1, [x8, #0xc78]
  10013cca0  bl      _objc_msgSend                            ; [[self descriptor]->fields_ data]
loc_10013cca4:
  10013cca4  adrp    x8, #0x100420000
  10013cca8  ldrsw   x8, [x8, #0x9f0]                         ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10013ccac  ldr     x0, [x19, x8]                            ; x0 = self->extensionMap_
  10013ccb0  adrp    x8, #0x10041b000
  10013ccb4  nop
  10013ccb8  ldr     x1, [x8, #0x488]
  10013ccbc  bl      _objc_msgSend                            ; [self->extensionMap_ allValues]
  10013ccc0  mov     x2, x0
  10013ccc4  adrp    x8, #0x10041c000
  10013ccc8  nop
  10013cccc  ldr     x1, [x8, #0x9e0]
  10013ccd0  mov     x0, x19
  10013ccd4  bl      _objc_msgSend                            ; [self isInitialized:[self->extensionMap_ allValues]]
  10013ccd8  b       loc_10013cce0
loc_10013ccdc:
  10013ccdc  mov     w0, #0
loc_10013cce0:
  10013cce0  adrp    x8, #0x1003b0000
  10013cce4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013cce8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013ccec  ldur    x9, [x29, #-0x58]
  10013ccf0  sub     x8, x8, x9
  10013ccf4  cbnz    x8, loc_10013cd18                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10013ccf8  sub     sp, x29, #0x50
  10013ccfc  ldp     x28, x27, [sp], #0x10
  10013cd00  ldp     x26, x25, [sp], #0x10
  10013cd04  ldp     x24, x23, [sp], #0x10
  10013cd08  ldp     x22, x21, [sp], #0x10
  10013cd0c  ldp     x20, x19, [sp], #0x10
  10013cd10  ldp     x29, x30, [sp], #0x10
  10013cd14  ret
loc_10013cd18:
  10013cd18  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; sub_10013cd1c
; address 0x10013cd1c  size 204  kind sub
; ======================================================================
  10013cd1c  stp     x29, x30, [sp, #-0x10]!
  10013cd20  mov     x29, sp
  10013cd24  stp     x20, x19, [sp, #-0x10]!
  10013cd28  stp     x22, x21, [sp, #-0x10]!
  10013cd2c  mov     x20, x1
  10013cd30  mov     x19, x0
  10013cd34  adrp    x22, #0x100420000
  10013cd38  ldrsw   x8, [x22, #0x9e8]                        ; ivar offset TAGPBGeneratedMessage.readOnlyMutex_ (+0x40)
  10013cd3c  add     x0, x19, x8
  10013cd40  bl      _OSSpinLockLock                          ; OSSpinLockLock(x0, a1, a2, a3)
  10013cd44  mov     x0, x19
  10013cd48  mov     x1, x20
  10013cd4c  bl      sub_10013c7fc                            ; sub_10013c7fc(a0, a1)
  10013cd50  mov     x21, x0
  10013cd54  cbnz    x21, loc_10013cdc8                       ; if (sub_10013c7fc(a0, a1) != 0)
  10013cd58  adrp    x8, #0x100420000
  10013cd5c  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013cd60  ldr     x8, [x20, x8]                            ; x8 = a1->description_
  10013cd64  ldr     w8, [x8, #0x14]                          ; w8 = a1->description_[+0x14]
  10013cd68  adrp    x9, #0x1002fa000
  10013cd6c  add     x9, x9, #0xa60                           ; tconst_1002faa60
  10013cd70  ldr     w21, [x9, x8, lsl #2]
  10013cd74  adrp    x8, #0x10041e000
  10013cd78  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  10013cd7c  adrp    x8, #0x100416000
  10013cd80  nop
  10013cd84  ldr     x1, [x8, #0xac8]
  10013cd88  bl      _objc_msgSend                            ; [TAGPBMutableArray alloc]
  10013cd8c  adrp    x8, #0x10041c000
  10013cd90  nop
  10013cd94  ldr     x1, [x8, #0x4f0]
  10013cd98  mov     x2, x21
  10013cd9c  bl      _objc_msgSend                            ; [[TAGPBMutableArray alloc] initWithValueType:x2]
  10013cda0  mov     x21, x0
  10013cda4  adrp    x8, #0x100417000
  10013cda8  nop
  10013cdac  ldr     x1, [x8, #0x7d8]
  10013cdb0  mov     x2, x19
  10013cdb4  bl      _objc_msgSend                            ; [[[TAGPBMutableArray alloc] initWithValueType:x2] setDelegate:a0]
  10013cdb8  mov     x0, x19
  10013cdbc  mov     x1, x20
  10013cdc0  mov     x2, x21
  10013cdc4  bl      sub_1001488dc                            ; sub_1001488dc(a0, a1, [[TAGPBMutableArray alloc] initWithValueType:x2])
loc_10013cdc8:
  10013cdc8  ldrsw   x8, [x22, #0x9e8]                        ; ivar offset TAGPBGeneratedMessage.readOnlyMutex_ (+0x40)
  10013cdcc  add     x0, x19, x8
  10013cdd0  bl      _OSSpinLockUnlock                        ; OSSpinLockUnlock(x0)
  10013cdd4  mov     x0, x21
  10013cdd8  ldp     x22, x21, [sp], #0x10
  10013cddc  ldp     x20, x19, [sp], #0x10
  10013cde0  ldp     x29, x30, [sp], #0x10
  10013cde4  ret

; ======================================================================
; -[TAGPBGeneratedMessage descriptor]
; address 0x10013cde8  size 44  kind objc
; ======================================================================
  10013cde8  stp     x29, x30, [sp, #-0x10]!
  10013cdec  mov     x29, sp
  10013cdf0  adrp    x8, #0x100417000
  10013cdf4  nop
  10013cdf8  ldr     x1, [x8, #0x2e0]
  10013cdfc  bl      _objc_msgSend                            ; [self class]
  10013ce00  adrp    x8, #0x10041c000
  10013ce04  nop
  10013ce08  ldr     x1, [x8, #0x7e8]
  10013ce0c  ldp     x29, x30, [sp], #0x10
  10013ce10  b       _objc_msgSend                            ; [[self class] descriptor]

; ======================================================================
; -[TAGPBGeneratedMessage data]
; address 0x10013ce14  size 184  kind objc
; ======================================================================
  10013ce14  stp     x29, x30, [sp, #-0x10]!
  10013ce18  mov     x29, sp
  10013ce1c  stp     x20, x19, [sp, #-0x10]!
  10013ce20  stp     x22, x21, [sp, #-0x10]!
  10013ce24  mov     x19, x0
  10013ce28  adrp    x8, #0x10041e000
  10013ce2c  ldr     x20, [x8, #0x568]                        ; class NSMutableData
  10013ce30  adrp    x8, #0x10041c000
  10013ce34  nop
  10013ce38  ldr     x1, [x8, #0x610]
  10013ce3c  bl      _objc_msgSend                            ; [self serializedSize]
  10013ce40  mov     x2, x0
  10013ce44  adrp    x8, #0x10041c000
  10013ce48  nop
  10013ce4c  ldr     x1, [x8, #0x5b8]
  10013ce50  mov     x0, x20
  10013ce54  bl      _objc_msgSend                            ; [NSMutableData dataWithLength:[self serializedSize]]
  10013ce58  mov     x20, x0
  10013ce5c  adrp    x8, #0x10041e000
  10013ce60  ldr     x0, [x8, #0x788]                         ; class TAGPBCodedOutputStream
  10013ce64  adrp    x8, #0x100416000
  10013ce68  nop
  10013ce6c  ldr     x1, [x8, #0xac8]
  10013ce70  bl      _objc_msgSend                            ; [TAGPBCodedOutputStream alloc]
  10013ce74  adrp    x8, #0x10041c000
  10013ce78  nop
  10013ce7c  ldr     x1, [x8, #0x550]
  10013ce80  mov     x2, x20
  10013ce84  bl      _objc_msgSend                            ; [[TAGPBCodedOutputStream alloc] initWithData:[NSMutableData dataWithLength:[self serializedSize]]]
  10013ce88  mov     x21, x0
  10013ce8c  adrp    x8, #0x10041c000
  10013ce90  nop
  10013ce94  ldr     x1, [x8, #0x5f8]
  10013ce98  mov     x0, x19
  10013ce9c  mov     x2, x21
  10013cea0  bl      _objc_msgSend                            ; [self writeToCodedOutputStream:[[TAGPBCodedOutputStream alloc] initWithData:[NSMutableData dataWithLength:[self serializedSize]]]]
  10013cea4  adrp    x8, #0x10041b000
  10013cea8  nop
  10013ceac  ldr     x1, [x8, #0xd70]
  10013ceb0  mov     x0, x21
  10013ceb4  bl      _objc_msgSend                            ; [[[TAGPBCodedOutputStream alloc] initWithData:[NSMutableData dataWithLength:[self serializedSize]]] release]
  10013ceb8  mov     x0, x20
  10013cebc  ldp     x22, x21, [sp], #0x10
  10013cec0  ldp     x20, x19, [sp], #0x10
  10013cec4  ldp     x29, x30, [sp], #0x10
  10013cec8  ret

; ======================================================================
; -[TAGPBGeneratedMessage delimitedData]
; address 0x10013cecc  size 236  kind objc
; ======================================================================
  10013cecc  stp     x29, x30, [sp, #-0x10]!
  10013ced0  mov     x29, sp
  10013ced4  stp     x20, x19, [sp, #-0x10]!
  10013ced8  stp     x22, x21, [sp, #-0x10]!
  10013cedc  mov     x19, x0
  10013cee0  adrp    x8, #0x10041c000
  10013cee4  nop
  10013cee8  ldr     x1, [x8, #0x610]
  10013ceec  bl      _objc_msgSend                            ; [self serializedSize]
  10013cef0  mov     x8, #1
  10013cef4  mov     x9, #2
  10013cef8  mov     x10, #3
  10013cefc  lsr     w11, w0, #0x1c
  10013cf00  cmp     w11, #0
  10013cf04  mov     x11, #4
  10013cf08  cinc    x11, x11, ne
  10013cf0c  cmp     w0, #0x200, lsl #12
  10013cf10  csel    x10, x10, x11, lo                        ; t1 = ([self serializedSize] <u 0x200000 ? 3 : (([self serializedSize] >>> 28) != 0 ? 4 + 1 : 4))
  10013cf14  cmp     w0, #4, lsl #12
  10013cf18  csel    x9, x9, x10, lo
  10013cf1c  cmp     w0, #0x80
  10013cf20  csel    x9, x8, x9, lo
  10013cf24  adrp    x8, #0x10041e000
  10013cf28  ldr     x8, [x8, #0x568]                         ; class NSMutableData
  10013cf2c  add     x2, x9, x0                               ; t2 = (([self serializedSize] <u 128 ? 1 : ([self serializedSize] <u 0x4000 ? 2 : t1)) + [self serializedSize])
  10013cf30  adrp    x9, #0x10041c000
  10013cf34  nop
  10013cf38  ldr     x1, [x9, #0x5b8]
  10013cf3c  mov     x0, x8
  10013cf40  bl      _objc_msgSend                            ; [NSMutableData dataWithLength:t2]
  10013cf44  mov     x20, x0
  10013cf48  adrp    x8, #0x10041e000
  10013cf4c  ldr     x0, [x8, #0x788]                         ; class TAGPBCodedOutputStream
  10013cf50  adrp    x8, #0x100416000
  10013cf54  nop
  10013cf58  ldr     x1, [x8, #0xac8]
  10013cf5c  bl      _objc_msgSend                            ; [TAGPBCodedOutputStream alloc]
  10013cf60  adrp    x8, #0x10041c000
  10013cf64  nop
  10013cf68  ldr     x1, [x8, #0x550]
  10013cf6c  mov     x2, x20
  10013cf70  bl      _objc_msgSend                            ; [[TAGPBCodedOutputStream alloc] initWithData:[NSMutableData dataWithLength:t2]]
  10013cf74  mov     x21, x0
  10013cf78  adrp    x8, #0x10041c000
  10013cf7c  nop
  10013cf80  ldr     x1, [x8, #0x9e8]
  10013cf84  mov     x0, x19
  10013cf88  mov     x2, x21
  10013cf8c  bl      _objc_msgSend                            ; [self writeDelimitedToCodedOutputStream:[[TAGPBCodedOutputStream alloc] initWithData:[NSMutableData dataWithLength:t2]]]
  10013cf90  adrp    x8, #0x10041b000
  10013cf94  nop
  10013cf98  ldr     x1, [x8, #0xd70]
  10013cf9c  mov     x0, x21
  10013cfa0  bl      _objc_msgSend                            ; [[[TAGPBCodedOutputStream alloc] initWithData:[NSMutableData dataWithLength:t2]] release]
  10013cfa4  mov     x0, x20
  10013cfa8  ldp     x22, x21, [sp], #0x10
  10013cfac  ldp     x20, x19, [sp], #0x10
  10013cfb0  ldp     x29, x30, [sp], #0x10
  10013cfb4  ret

; ======================================================================
; -[TAGPBGeneratedMessage writeToOutputStream:]
; address 0x10013cfb8  size 120  kind objc
; ======================================================================
  10013cfb8  stp     x29, x30, [sp, #-0x10]!
  10013cfbc  mov     x29, sp
  10013cfc0  stp     x20, x19, [sp, #-0x10]!
  10013cfc4  mov     x19, x2
  10013cfc8  mov     x20, x0
  10013cfcc  adrp    x8, #0x10041e000
  10013cfd0  ldr     x0, [x8, #0x788]                         ; class TAGPBCodedOutputStream
  10013cfd4  adrp    x8, #0x100416000
  10013cfd8  nop
  10013cfdc  ldr     x1, [x8, #0xac8]
  10013cfe0  bl      _objc_msgSend                            ; [TAGPBCodedOutputStream alloc]
  10013cfe4  adrp    x8, #0x10041c000
  10013cfe8  nop
  10013cfec  ldr     x1, [x8, #0x9f0]
  10013cff0  mov     x2, x19
  10013cff4  bl      _objc_msgSend                            ; [[TAGPBCodedOutputStream alloc] initWithOutputStream:arg1]
  10013cff8  mov     x19, x0
  10013cffc  adrp    x8, #0x10041c000
  10013d000  nop
  10013d004  ldr     x1, [x8, #0x5f8]
  10013d008  mov     x0, x20
  10013d00c  mov     x2, x19
  10013d010  bl      _objc_msgSend                            ; [self writeToCodedOutputStream:[[TAGPBCodedOutputStream alloc] initWithOutputStream:arg1]]
  10013d014  adrp    x8, #0x10041b000
  10013d018  nop
  10013d01c  ldr     x1, [x8, #0xd70]
  10013d020  mov     x0, x19
  10013d024  ldp     x20, x19, [sp], #0x10
  10013d028  ldp     x29, x30, [sp], #0x10
  10013d02c  b       _objc_msgSend                            ; [[[TAGPBCodedOutputStream alloc] initWithOutputStream:arg1] release]

; ======================================================================
; -[TAGPBGeneratedMessage writeToCodedOutputStream:]
; address 0x10013d030  size 544  kind objc
; ======================================================================
  10013d030  stp     x29, x30, [sp, #-0x10]!
  10013d034  mov     x29, sp
  10013d038  stp     x20, x19, [sp, #-0x10]!
  10013d03c  stp     x22, x21, [sp, #-0x10]!
  10013d040  stp     x24, x23, [sp, #-0x10]!
  10013d044  stp     x26, x25, [sp, #-0x10]!
  10013d048  stp     x28, x27, [sp, #-0x10]!
  10013d04c  sub     sp, sp, #0x20
  10013d050  mov     x19, x2
  10013d054  mov     x20, x0
  10013d058  adrp    x8, #0x10041c000
  10013d05c  nop
  10013d060  ldr     x1, [x8, #0x7e8]
  10013d064  bl      _objc_msgSend                            ; [self descriptor]
  10013d068  str     x0, [sp, #8]
  10013d06c  adrp    x8, #0x100420000
  10013d070  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  10013d074  ldr     x22, [x0, x8]                            ; x22 = [self descriptor]->fields_
  10013d078  adrp    x8, #0x10041c000
  10013d07c  nop
  10013d080  ldr     x1, [x8, #0x9f8]
  10013d084  bl      _objc_msgSend                            ; [[self descriptor] extensionRanges]
  10013d088  mov     x23, x0
  10013d08c  cbz     x22, loc_10013d0a0                       ; if ([self descriptor]->fields_ == 0)
  10013d090  adrp    x8, #0x100420000
  10013d094  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013d098  ldr     x27, [x22, x8]                           ; x27 = [self descriptor]->fields_->_count
  10013d09c  b       loc_10013d0a4
loc_10013d0a0:
  10013d0a0  mov     x27, #0
loc_10013d0a4:
  10013d0a4  cbz     x23, loc_10013d0b8                       ; if ([[self descriptor] extensionRanges] == 0)
  10013d0a8  adrp    x8, #0x100420000
  10013d0ac  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013d0b0  ldr     x28, [x23, x8]                           ; x28 = [[self descriptor] extensionRanges]->_count
  10013d0b4  b       loc_10013d0bc
loc_10013d0b8:
  10013d0b8  mov     x28, #0
loc_10013d0bc:
  10013d0bc  adrp    x8, #0x10041b000
  10013d0c0  nop
  10013d0c4  ldr     x24, [x8, #0xc78]
  10013d0c8  mov     x0, x22
  10013d0cc  mov     x1, x24
  10013d0d0  bl      _objc_msgSend                            ; [[self descriptor]->fields_ data]
  10013d0d4  mov     x22, x0
  10013d0d8  mov     x0, x23
  10013d0dc  mov     x1, x24
  10013d0e0  bl      _objc_msgSend                            ; [[[self descriptor] extensionRanges] data]
  10013d0e4  str     x0, [sp, #0x18]
  10013d0e8  orr     x8, x27, x28
  10013d0ec  cbz     x8, loc_10013d1ec                        ; if ((x27 | x28) == 0)
  10013d0f0  mov     x21, #0
  10013d0f4  mov     x26, #0
  10013d0f8  cmp     x28, #0
  10013d0fc  cset    w23, ne
  10013d100  adrp    x8, #0x10041c000
  10013d104  nop
  10013d108  adrp    x9, #0x10041b000
  10013d10c  add     x9, x9, #0xc38                           ; &@selector(start)
  10013d110  ldr     x24, [x8, #0xa08]
  10013d114  ldr     x8, [x9]
  10013d118  str     x8, [sp, #0x10]
  10013d11c  adrp    x8, #0x10041c000
  10013d120  nop
  10013d124  ldr     x8, [x8, #0xa00]
  10013d128  str     x8, [sp]
loc_10013d12c:
  10013d12c  cmp     x27, x21
  10013d130  b.eq    loc_10013d198                            ; if (x27 == x21)
  10013d134  cmp     x26, x28
  10013d138  b.eq    loc_10013d164                            ; if (x26 == x28)
  10013d13c  ldr     x8, [x22, x21, lsl #3]
  10013d140  adrp    x9, #0x100420000
  10013d144  ldrsw   x9, [x9, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d148  ldr     x8, [x8, x9]                             ; x8 = x8->description_
  10013d14c  ldr     w25, [x8, #8]                            ; w25 = x8->description_[+0x8]
  10013d150  ldp     x1, x8, [sp, #0x10]
  10013d154  ldr     x0, [x8, x26, lsl #3]
  10013d158  bl      _objc_msgSend                            ; [x0 start]
  10013d15c  cmp     w25, w0
  10013d160  b.hs    loc_10013d1b8                            ; if (x8->description_[+0x8] >=u [x0 start])
loc_10013d164:
  10013d164  add     x25, x21, #1
  10013d168  ldr     x2, [x22, x21, lsl #3]
  10013d16c  mov     x0, x20
  10013d170  mov     x1, x24
  10013d174  mov     x3, x19
  10013d178  bl      _objc_msgSend                            ; [self writeField:x2 toCodedOutputStream:arg1]
  10013d17c  cmp     x25, x27
  10013d180  cset    w8, lo
  10013d184  orr     w8, w8, w23
  10013d188  and     w8, w8, #1
  10013d18c  mov     x21, x25
  10013d190  tbnz    w8, #0, loc_10013d12c                    ; if ((((((x21 + 1) <u x27) | w23) & 1) & 1))
  10013d194  b       loc_10013d1ec
loc_10013d198:
  10013d198  ldr     x8, [sp, #0x18]
  10013d19c  ldr     x3, [x8, x26, lsl #3]
  10013d1a0  mov     x0, x20
  10013d1a4  ldr     x1, [sp]
  10013d1a8  mov     x2, x19
  10013d1ac  bl      _objc_msgSend                            ; [self writeExtensionsToCodedOutputStream:arg1 range:x3]
  10013d1b0  mov     x21, x27
  10013d1b4  b       loc_10013d1d0
loc_10013d1b8:
  10013d1b8  ldr     x8, [sp, #0x18]
  10013d1bc  ldr     x3, [x8, x26, lsl #3]
  10013d1c0  mov     x0, x20
  10013d1c4  ldr     x1, [sp]
  10013d1c8  mov     x2, x19
  10013d1cc  bl      _objc_msgSend                            ; [self writeExtensionsToCodedOutputStream:arg1 range:x3]
loc_10013d1d0:
  10013d1d0  add     x26, x26, #1
  10013d1d4  cmp     x26, x28
  10013d1d8  cset    w23, lo
  10013d1dc  cmp     x21, x27
  10013d1e0  b.lo    loc_10013d12c                            ; if (x21 <u x27)
  10013d1e4  cmp     x26, x28
  10013d1e8  b.lo    loc_10013d12c                            ; if ((x26 + 1) <u x28)
loc_10013d1ec:
  10013d1ec  adrp    x8, #0x10041c000
  10013d1f0  nop
  10013d1f4  ldr     x1, [x8, #0xa10]
  10013d1f8  ldr     x0, [sp, #8]
  10013d1fc  bl      _objc_msgSend                            ; [[self descriptor] isWireFormat]
  10013d200  mov     x8, x0
  10013d204  adrp    x9, #0x100420000
  10013d208  ldrsw   x9, [x9, #0x9ec]                         ; ivar offset TAGPBGeneratedMessage.unknownFields_ (+0x8)
  10013d20c  ldr     x0, [x20, x9]                            ; x0 = self->unknownFields_
  10013d210  cbz     w8, loc_10013d220                        ; if ([[self descriptor] isWireFormat] == 0)
  10013d214  adrp    x8, #0x10041c000
  10013d218  add     x8, x8, #0xa18                           ; &@selector(writeAsMessageSetTo:)
  10013d21c  b       loc_10013d228
loc_10013d220:
  10013d220  adrp    x8, #0x10041c000
  10013d224  add     x8, x8, #0x5f8                           ; &@selector(writeToCodedOutputStream:)
loc_10013d228:
  10013d228  ldr     x1, [x8]                                 ; x1 = one of selectors {writeAsMessageSetTo:, writeToCodedOutputStream:}
  10013d22c  mov     x2, x19
  10013d230  sub     sp, x29, #0x50
  10013d234  ldp     x28, x27, [sp], #0x10
  10013d238  ldp     x26, x25, [sp], #0x10
  10013d23c  ldp     x24, x23, [sp], #0x10
  10013d240  ldp     x22, x21, [sp], #0x10
  10013d244  ldp     x20, x19, [sp], #0x10
  10013d248  ldp     x29, x30, [sp], #0x10
  10013d24c  b       _objc_msgSend                            ; [self->unknownFields_ writeAsMessageSetTo:arg1  | writeToCodedOutputStream:x3]

; ======================================================================
; -[TAGPBGeneratedMessage writeDelimitedToOutputStream:]
; address 0x10013d250  size 120  kind objc
; ======================================================================
  10013d250  stp     x29, x30, [sp, #-0x10]!
  10013d254  mov     x29, sp
  10013d258  stp     x20, x19, [sp, #-0x10]!
  10013d25c  mov     x19, x2
  10013d260  mov     x20, x0
  10013d264  adrp    x8, #0x10041e000
  10013d268  ldr     x0, [x8, #0x788]                         ; class TAGPBCodedOutputStream
  10013d26c  adrp    x8, #0x100416000
  10013d270  nop
  10013d274  ldr     x1, [x8, #0xac8]
  10013d278  bl      _objc_msgSend                            ; [TAGPBCodedOutputStream alloc]
  10013d27c  adrp    x8, #0x10041c000
  10013d280  nop
  10013d284  ldr     x1, [x8, #0x9f0]
  10013d288  mov     x2, x19
  10013d28c  bl      _objc_msgSend                            ; [[TAGPBCodedOutputStream alloc] initWithOutputStream:arg1]
  10013d290  mov     x19, x0
  10013d294  adrp    x8, #0x10041c000
  10013d298  nop
  10013d29c  ldr     x1, [x8, #0x9e8]
  10013d2a0  mov     x0, x20
  10013d2a4  mov     x2, x19
  10013d2a8  bl      _objc_msgSend                            ; [self writeDelimitedToCodedOutputStream:[[TAGPBCodedOutputStream alloc] initWithOutputStream:arg1]]
  10013d2ac  adrp    x8, #0x10041b000
  10013d2b0  nop
  10013d2b4  ldr     x1, [x8, #0xd70]
  10013d2b8  mov     x0, x19
  10013d2bc  ldp     x20, x19, [sp], #0x10
  10013d2c0  ldp     x29, x30, [sp], #0x10
  10013d2c4  b       _objc_msgSend                            ; [[[TAGPBCodedOutputStream alloc] initWithOutputStream:arg1] release]

; ======================================================================
; -[TAGPBGeneratedMessage writeDelimitedToCodedOutputStream:]
; address 0x10013d2c8  size 92  kind objc
; ======================================================================
  10013d2c8  stp     x29, x30, [sp, #-0x10]!
  10013d2cc  mov     x29, sp
  10013d2d0  stp     x20, x19, [sp, #-0x10]!
  10013d2d4  mov     x19, x2
  10013d2d8  mov     x20, x0
  10013d2dc  adrp    x8, #0x10041c000
  10013d2e0  nop
  10013d2e4  ldr     x1, [x8, #0x610]
  10013d2e8  bl      _objc_msgSend                            ; [self serializedSize]
  10013d2ec  mov     x2, x0
  10013d2f0  adrp    x8, #0x10041c000
  10013d2f4  nop
  10013d2f8  ldr     x1, [x8, #0x830]
  10013d2fc  mov     x0, x19
  10013d300  bl      _objc_msgSend                            ; [arg1 writeRawVarintSizeTAs32:[self serializedSize]]
  10013d304  adrp    x8, #0x10041c000
  10013d308  nop
  10013d30c  ldr     x1, [x8, #0x5f8]
  10013d310  mov     x0, x20
  10013d314  mov     x2, x19
  10013d318  ldp     x20, x19, [sp], #0x10
  10013d31c  ldp     x29, x30, [sp], #0x10
  10013d320  b       _objc_msgSend                            ; [self writeToCodedOutputStream:arg1]

; ======================================================================
; -[TAGPBGeneratedMessage writeField:toCodedOutputStream:]
; address 0x10013d324  size 2580  kind objc
; ======================================================================
  10013d324  stp     x29, x30, [sp, #-0x10]!
  10013d328  mov     x29, sp
  10013d32c  stp     x20, x19, [sp, #-0x10]!
  10013d330  stp     x22, x21, [sp, #-0x10]!
  10013d334  stp     x24, x23, [sp, #-0x10]!
  10013d338  mov     x20, x3
  10013d33c  mov     x21, x2
  10013d340  mov     x22, x0
  10013d344  adrp    x8, #0x10041c000
  10013d348  nop
  10013d34c  ldr     x1, [x8, #0x770]
  10013d350  mov     x0, x21
  10013d354  bl      _objc_msgSend                            ; [arg1 isRepeated]
  10013d358  adrp    x23, #0x100420000
  10013d35c  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d360  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d364  ldr     w19, [x8, #8]                            ; w19 = arg1->description_[+0x8]
  10013d368  tbnz    w0, #0, loc_10013d39c                    ; if (([arg1 isRepeated] & 1))
  10013d36c  adrp    x9, #0x100420000
  10013d370  ldrsw   x9, [x9, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013d374  ldr     x9, [x22, x9]                            ; x9 = self->messageStorage_
  10013d378  cbz     x9, loc_10013d3a8                        ; if (self->messageStorage_ == 0)
  10013d37c  ldr     w10, [x8, #0xc]                          ; w10 = arg1->description_[+0xc]
  10013d380  and     w11, w10, #0x1f
  10013d384  mov     w12, #1
  10013d388  lsl     w11, w12, w11
  10013d38c  lsr     w10, w10, #5
  10013d390  ldr     w9, [x9, w10, uxtw #2]
  10013d394  and     w9, w9, w11
  10013d398  cbz     w9, loc_10013d3a8                        ; if ((w9 & (1 << (arg1->description_[+0xc] & 31))) == 0)
loc_10013d39c:
  10013d39c  ldr     w8, [x8, #0x14]                          ; w8 = arg1->description_[+0x14]
  10013d3a0  cmp     w8, #0x11
  10013d3a4  b.ls    loc_10013d3bc                            ; if (arg1->description_[+0x14] <=u 17)
loc_10013d3a8:
  10013d3a8  ldp     x24, x23, [sp], #0x10
  10013d3ac  ldp     x22, x21, [sp], #0x10
  10013d3b0  ldp     x20, x19, [sp], #0x10
  10013d3b4  ldp     x29, x30, [sp], #0x10
  10013d3b8  ret
loc_10013d3bc:
  10013d3bc  adr     x9, #0x10013dcf0                         ; 0x10013dcf0
  10013d3c0  nop
  10013d3c4  ldrsw   x8, [x9, x8, lsl #2]
  10013d3c8  add     x8, x8, x9
  10013d3cc  br      x8                                       ; switch (?) { case 0: goto loc_10013d3d0; case 1: goto loc_10013d404; case 2: goto loc_10013d438; case 3: goto loc_10013d46c; case 4: goto loc_10013d4a0; case 5: goto loc_10013d4d4; case 6: goto loc_10013d508; case 7: goto loc_10013d53c; case 8: goto loc_10013d570; case 9: goto loc_10013d5a4; case 10: goto loc_10013d5d8; case 11: goto loc_10013d60c; case 12: goto loc_10013d640; case 13: goto loc_10013d674; case 14: goto loc_10013d694; case 15: goto loc_10013d6b4; case 16: goto loc_10013d6d4; case 17: goto loc_10013d6f4 }
loc_10013d3d0:  ; case 0
  10013d3d0  cbz     w0, loc_10013d728                        ; if ([arg1 isRepeated] == 0)
  10013d3d4  adrp    x8, #0x10041c000
  10013d3d8  nop
  10013d3dc  ldr     x1, [x8, #0xa20]
  10013d3e0  mov     x0, x21
  10013d3e4  bl      _objc_msgSend                            ; [arg1 isPackable]
  10013d3e8  cbz     w0, loc_10013d988                        ; if ([arg1 isPackable] == 0)
  10013d3ec  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d3f0  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d3f4  ldrb    w9, [x8, #0x10]                          ; w9 = arg1->description_[+0x10]
  10013d3f8  tbz     w9, #3, loc_10013d9f8                    ; if (!(arg1->description_[+0x10] & (1<<3)))
  10013d3fc  mov     w9, #2
  10013d400  b       loc_10013da08
loc_10013d404:  ; case 1
  10013d404  cbz     w0, loc_10013d744                        ; if ([arg1 isRepeated] == 0)
  10013d408  adrp    x8, #0x10041c000
  10013d40c  nop
  10013d410  ldr     x1, [x8, #0xa20]
  10013d414  mov     x0, x21
  10013d418  bl      _objc_msgSend                            ; [arg1 isPackable]
  10013d41c  cbz     w0, loc_10013d990                        ; if ([arg1 isPackable] == 0)
  10013d420  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d424  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d428  ldrb    w9, [x8, #0x10]                          ; w9 = arg1->description_[+0x10]
  10013d42c  tbz     w9, #3, loc_10013da2c                    ; if (!(arg1->description_[+0x10] & (1<<3)))
  10013d430  mov     w9, #2
  10013d434  b       loc_10013da3c
loc_10013d438:  ; case 2
  10013d438  cbz     w0, loc_10013d760                        ; if ([arg1 isRepeated] == 0)
  10013d43c  adrp    x8, #0x10041c000
  10013d440  nop
  10013d444  ldr     x1, [x8, #0xa20]
  10013d448  mov     x0, x21
  10013d44c  bl      _objc_msgSend                            ; [arg1 isPackable]
  10013d450  cbz     w0, loc_10013d998                        ; if ([arg1 isPackable] == 0)
  10013d454  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d458  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d45c  ldrb    w9, [x8, #0x10]                          ; w9 = arg1->description_[+0x10]
  10013d460  tbz     w9, #3, loc_10013da60                    ; if (!(arg1->description_[+0x10] & (1<<3)))
  10013d464  mov     w9, #2
  10013d468  b       loc_10013da70
loc_10013d46c:  ; case 3
  10013d46c  cbz     w0, loc_10013d77c                        ; if ([arg1 isRepeated] == 0)
  10013d470  adrp    x8, #0x10041c000
  10013d474  nop
  10013d478  ldr     x1, [x8, #0xa20]
  10013d47c  mov     x0, x21
  10013d480  bl      _objc_msgSend                            ; [arg1 isPackable]
  10013d484  cbz     w0, loc_10013d9a0                        ; if ([arg1 isPackable] == 0)
  10013d488  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d48c  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d490  ldrb    w9, [x8, #0x10]                          ; w9 = arg1->description_[+0x10]
  10013d494  tbz     w9, #3, loc_10013da94                    ; if (!(arg1->description_[+0x10] & (1<<3)))
  10013d498  mov     w9, #2
  10013d49c  b       loc_10013daa4
loc_10013d4a0:  ; case 4
  10013d4a0  cbz     w0, loc_10013d7b0                        ; if ([arg1 isRepeated] == 0)
  10013d4a4  adrp    x8, #0x10041c000
  10013d4a8  nop
  10013d4ac  ldr     x1, [x8, #0xa20]
  10013d4b0  mov     x0, x21
  10013d4b4  bl      _objc_msgSend                            ; [arg1 isPackable]
  10013d4b8  cbz     w0, loc_10013d9a8                        ; if ([arg1 isPackable] == 0)
  10013d4bc  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d4c0  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d4c4  ldrb    w9, [x8, #0x10]                          ; w9 = arg1->description_[+0x10]
  10013d4c8  tbz     w9, #3, loc_10013dac8                    ; if (!(arg1->description_[+0x10] & (1<<3)))
  10013d4cc  mov     w9, #2
  10013d4d0  b       loc_10013dad8
loc_10013d4d4:  ; case 5
  10013d4d4  cbz     w0, loc_10013d7cc                        ; if ([arg1 isRepeated] == 0)
  10013d4d8  adrp    x8, #0x10041c000
  10013d4dc  nop
  10013d4e0  ldr     x1, [x8, #0xa20]
  10013d4e4  mov     x0, x21
  10013d4e8  bl      _objc_msgSend                            ; [arg1 isPackable]
  10013d4ec  cbz     w0, loc_10013d9b0                        ; if ([arg1 isPackable] == 0)
  10013d4f0  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d4f4  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d4f8  ldrb    w9, [x8, #0x10]                          ; w9 = arg1->description_[+0x10]
  10013d4fc  tbz     w9, #3, loc_10013dafc                    ; if (!(arg1->description_[+0x10] & (1<<3)))
  10013d500  mov     w9, #2
  10013d504  b       loc_10013db0c
loc_10013d508:  ; case 6
  10013d508  cbz     w0, loc_10013d7e8                        ; if ([arg1 isRepeated] == 0)
  10013d50c  adrp    x8, #0x10041c000
  10013d510  nop
  10013d514  ldr     x1, [x8, #0xa20]
  10013d518  mov     x0, x21
  10013d51c  bl      _objc_msgSend                            ; [arg1 isPackable]
  10013d520  cbz     w0, loc_10013d9b8                        ; if ([arg1 isPackable] == 0)
  10013d524  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d528  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d52c  ldrb    w9, [x8, #0x10]                          ; w9 = arg1->description_[+0x10]
  10013d530  tbz     w9, #3, loc_10013db30                    ; if (!(arg1->description_[+0x10] & (1<<3)))
  10013d534  mov     w9, #2
  10013d538  b       loc_10013db40
loc_10013d53c:  ; case 7
  10013d53c  cbz     w0, loc_10013d81c                        ; if ([arg1 isRepeated] == 0)
  10013d540  adrp    x8, #0x10041c000
  10013d544  nop
  10013d548  ldr     x1, [x8, #0xa20]
  10013d54c  mov     x0, x21
  10013d550  bl      _objc_msgSend                            ; [arg1 isPackable]
  10013d554  cbz     w0, loc_10013d9c0                        ; if ([arg1 isPackable] == 0)
  10013d558  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d55c  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d560  ldrb    w9, [x8, #0x10]                          ; w9 = arg1->description_[+0x10]
  10013d564  tbz     w9, #3, loc_10013db64                    ; if (!(arg1->description_[+0x10] & (1<<3)))
  10013d568  mov     w9, #2
  10013d56c  b       loc_10013db74
loc_10013d570:  ; case 8
  10013d570  cbz     w0, loc_10013d838                        ; if ([arg1 isRepeated] == 0)
  10013d574  adrp    x8, #0x10041c000
  10013d578  nop
  10013d57c  ldr     x1, [x8, #0xa20]
  10013d580  mov     x0, x21
  10013d584  bl      _objc_msgSend                            ; [arg1 isPackable]
  10013d588  cbz     w0, loc_10013d9c8                        ; if ([arg1 isPackable] == 0)
  10013d58c  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d590  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d594  ldrb    w9, [x8, #0x10]                          ; w9 = arg1->description_[+0x10]
  10013d598  tbz     w9, #3, loc_10013db98                    ; if (!(arg1->description_[+0x10] & (1<<3)))
  10013d59c  mov     w9, #2
  10013d5a0  b       loc_10013dba8
loc_10013d5a4:  ; case 9
  10013d5a4  cbz     w0, loc_10013d854                        ; if ([arg1 isRepeated] == 0)
  10013d5a8  adrp    x8, #0x10041c000
  10013d5ac  nop
  10013d5b0  ldr     x1, [x8, #0xa20]
  10013d5b4  mov     x0, x21
  10013d5b8  bl      _objc_msgSend                            ; [arg1 isPackable]
  10013d5bc  cbz     w0, loc_10013d9d0                        ; if ([arg1 isPackable] == 0)
  10013d5c0  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d5c4  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d5c8  ldrb    w9, [x8, #0x10]                          ; w9 = arg1->description_[+0x10]
  10013d5cc  tbz     w9, #3, loc_10013dbcc                    ; if (!(arg1->description_[+0x10] & (1<<3)))
  10013d5d0  mov     w9, #2
  10013d5d4  b       loc_10013dbdc
loc_10013d5d8:  ; case 10
  10013d5d8  cbz     w0, loc_10013d870                        ; if ([arg1 isRepeated] == 0)
  10013d5dc  adrp    x8, #0x10041c000
  10013d5e0  nop
  10013d5e4  ldr     x1, [x8, #0xa20]
  10013d5e8  mov     x0, x21
  10013d5ec  bl      _objc_msgSend                            ; [arg1 isPackable]
  10013d5f0  cbz     w0, loc_10013d9d8                        ; if ([arg1 isPackable] == 0)
  10013d5f4  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d5f8  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d5fc  ldrb    w9, [x8, #0x10]                          ; w9 = arg1->description_[+0x10]
  10013d600  tbz     w9, #3, loc_10013dc00                    ; if (!(arg1->description_[+0x10] & (1<<3)))
  10013d604  mov     w9, #2
  10013d608  b       loc_10013dc10
loc_10013d60c:  ; case 11
  10013d60c  cbz     w0, loc_10013d88c                        ; if ([arg1 isRepeated] == 0)
  10013d610  adrp    x8, #0x10041c000
  10013d614  nop
  10013d618  ldr     x1, [x8, #0xa20]
  10013d61c  mov     x0, x21
  10013d620  bl      _objc_msgSend                            ; [arg1 isPackable]
  10013d624  cbz     w0, loc_10013d9e0                        ; if ([arg1 isPackable] == 0)
  10013d628  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d62c  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d630  ldrb    w9, [x8, #0x10]                          ; w9 = arg1->description_[+0x10]
  10013d634  tbz     w9, #3, loc_10013dc34                    ; if (!(arg1->description_[+0x10] & (1<<3)))
  10013d638  mov     w9, #2
  10013d63c  b       loc_10013dc44
loc_10013d640:  ; case 12
  10013d640  cbz     w0, loc_10013d8a8                        ; if ([arg1 isRepeated] == 0)
  10013d644  adrp    x8, #0x10041c000
  10013d648  nop
  10013d64c  ldr     x1, [x8, #0xa20]
  10013d650  mov     x0, x21
  10013d654  bl      _objc_msgSend                            ; [arg1 isPackable]
  10013d658  cbz     w0, loc_10013d9e8                        ; if ([arg1 isPackable] == 0)
  10013d65c  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d660  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d664  ldrb    w9, [x8, #0x10]                          ; w9 = arg1->description_[+0x10]
  10013d668  tbz     w9, #3, loc_10013dc68                    ; if (!(arg1->description_[+0x10] & (1<<3)))
  10013d66c  mov     w9, #2
  10013d670  b       loc_10013dc78
loc_10013d674:  ; case 13
  10013d674  cbz     w0, loc_10013d8c4                        ; if ([arg1 isRepeated] == 0)
  10013d678  mov     x0, x22
  10013d67c  mov     x1, x21
  10013d680  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013d684  mov     x3, x0
  10013d688  adrp    x8, #0x10041c000
  10013d68c  add     x8, x8, #0x940                           ; &@selector(writeDatas:values:)
  10013d690  b       loc_10013d930
loc_10013d694:  ; case 14
  10013d694  cbz     w0, loc_10013d8e0                        ; if ([arg1 isRepeated] == 0)
  10013d698  mov     x0, x22
  10013d69c  mov     x1, x21
  10013d6a0  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013d6a4  mov     x3, x0
  10013d6a8  adrp    x8, #0x10041c000
  10013d6ac  add     x8, x8, #0xa80                           ; &@selector(writeStrings:values:)
  10013d6b0  b       loc_10013d930
loc_10013d6b4:  ; case 15
  10013d6b4  cbz     w0, loc_10013d8fc                        ; if ([arg1 isRepeated] == 0)
  10013d6b8  mov     x0, x22
  10013d6bc  mov     x1, x21
  10013d6c0  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013d6c4  mov     x3, x0
  10013d6c8  adrp    x8, #0x10041c000
  10013d6cc  add     x8, x8, #0xa88                           ; &@selector(writeMessages:values:)
  10013d6d0  b       loc_10013d930
loc_10013d6d4:  ; case 16
  10013d6d4  cbz     w0, loc_10013d918                        ; if ([arg1 isRepeated] == 0)
  10013d6d8  mov     x0, x22
  10013d6dc  mov     x1, x21
  10013d6e0  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013d6e4  mov     x3, x0
  10013d6e8  adrp    x8, #0x10041c000
  10013d6ec  add     x8, x8, #0xa90                           ; &@selector(writeGroups:values:)
  10013d6f0  b       loc_10013d930
loc_10013d6f4:  ; case 17
  10013d6f4  cbz     w0, loc_10013d950                        ; if ([arg1 isRepeated] == 0)
  10013d6f8  adrp    x8, #0x10041c000
  10013d6fc  nop
  10013d700  ldr     x1, [x8, #0xa20]
  10013d704  mov     x0, x21
  10013d708  bl      _objc_msgSend                            ; [arg1 isPackable]
  10013d70c  cbz     w0, loc_10013d9f0                        ; if ([arg1 isPackable] == 0)
  10013d710  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013d714  ldr     x8, [x21, x8]                            ; x8 = arg1->description_
  10013d718  ldrb    w9, [x8, #0x10]                          ; w9 = arg1->description_[+0x10]
  10013d71c  tbz     w9, #3, loc_10013dc9c                    ; if (!(arg1->description_[+0x10] & (1<<3)))
  10013d720  mov     w9, #2
  10013d724  b       loc_10013dcac
loc_10013d728:
  10013d728  mov     x0, x22
  10013d72c  mov     x1, x21
  10013d730  bl      sub_10013dd38                            ; sub_10013dd38(self, arg1)
  10013d734  mov     x3, x0
  10013d738  adrp    x8, #0x10041c000
  10013d73c  add     x8, x8, #0x6f0                           ; &@selector(writeBool:value:)
  10013d740  b       loc_10013d968
loc_10013d744:
  10013d744  mov     x0, x22
  10013d748  mov     x1, x21
  10013d74c  bl      sub_10013e010                            ; sub_10013e010(self, arg1)
  10013d750  mov     x3, x0
  10013d754  adrp    x8, #0x10041c000
  10013d758  add     x8, x8, #0x6a0                           ; &@selector(writeFixed32:value:)
  10013d75c  b       loc_10013d968
loc_10013d760:
  10013d760  mov     x0, x22
  10013d764  mov     x1, x21
  10013d768  bl      sub_10013def4                            ; sub_10013def4(self, arg1)
  10013d76c  mov     x3, x0
  10013d770  adrp    x8, #0x10041c000
  10013d774  add     x8, x8, #0x6e0                           ; &@selector(writeSFixed32:value:)
  10013d778  b       loc_10013d968
loc_10013d77c:
  10013d77c  mov     x0, x22
  10013d780  mov     x1, x21
  10013d784  bl      sub_10013ddd4                            ; sub_10013ddd4(self, arg1)
  10013d788  adrp    x8, #0x10041c000
  10013d78c  nop
  10013d790  ldr     x1, [x8, #0x640]
  10013d794  mov     x0, x20
  10013d798  mov     x2, x19
  10013d79c  ldp     x24, x23, [sp], #0x10
  10013d7a0  ldp     x22, x21, [sp], #0x10
  10013d7a4  ldp     x20, x19, [sp], #0x10
  10013d7a8  ldp     x29, x30, [sp], #0x10
  10013d7ac  b       _objc_msgSend                            ; [arg2 writeFloat:arg1->description_[+0x8] value:d0]
loc_10013d7b0:
  10013d7b0  mov     x0, x22
  10013d7b4  mov     x1, x21
  10013d7b8  bl      sub_10013e09c                            ; sub_10013e09c(self, arg1)
  10013d7bc  mov     x3, x0
  10013d7c0  adrp    x8, #0x10041c000
  10013d7c4  add     x8, x8, #0x690                           ; &@selector(writeFixed64:value:)
  10013d7c8  b       loc_10013d930
loc_10013d7cc:
  10013d7cc  mov     x0, x22
  10013d7d0  mov     x1, x21
  10013d7d4  bl      sub_10013df80                            ; sub_10013df80(self, arg1)
  10013d7d8  mov     x3, x0
  10013d7dc  adrp    x8, #0x10041c000
  10013d7e0  add     x8, x8, #0x6d0                           ; &@selector(writeSFixed64:value:)
  10013d7e4  b       loc_10013d930
loc_10013d7e8:
  10013d7e8  mov     x0, x22
  10013d7ec  mov     x1, x21
  10013d7f0  bl      sub_10013de64                            ; sub_10013de64(self, arg1)
  10013d7f4  adrp    x8, #0x10041c000
  10013d7f8  nop
  10013d7fc  ldr     x1, [x8, #0x630]
  10013d800  mov     x0, x20
  10013d804  mov     x2, x19
  10013d808  ldp     x24, x23, [sp], #0x10
  10013d80c  ldp     x22, x21, [sp], #0x10
  10013d810  ldp     x20, x19, [sp], #0x10
  10013d814  ldp     x29, x30, [sp], #0x10
  10013d818  b       _objc_msgSend                            ; [arg2 writeDouble:arg1->description_[+0x8] value:d0]
loc_10013d81c:
  10013d81c  mov     x0, x22
  10013d820  mov     x1, x21
  10013d824  bl      sub_10013def4                            ; sub_10013def4(self, arg1)
  10013d828  mov     x3, x0
  10013d82c  adrp    x8, #0x10041c000
  10013d830  add     x8, x8, #0x670                           ; &@selector(writeInt32:value:)
  10013d834  b       loc_10013d968
loc_10013d838:
  10013d838  mov     x0, x22
  10013d83c  mov     x1, x21
  10013d840  bl      sub_10013df80                            ; sub_10013df80(self, arg1)
  10013d844  mov     x3, x0
  10013d848  adrp    x8, #0x10041c000
  10013d84c  add     x8, x8, #0x660                           ; &@selector(writeInt64:value:)
  10013d850  b       loc_10013d930
loc_10013d854:
  10013d854  mov     x0, x22
  10013d858  mov     x1, x21
  10013d85c  bl      sub_10013def4                            ; sub_10013def4(self, arg1)
  10013d860  mov     x3, x0
  10013d864  adrp    x8, #0x10041c000
  10013d868  add     x8, x8, #0x6b0                           ; &@selector(writeSInt32:value:)
  10013d86c  b       loc_10013d968
loc_10013d870:
  10013d870  mov     x0, x22
  10013d874  mov     x1, x21
  10013d878  bl      sub_10013df80                            ; sub_10013df80(self, arg1)
  10013d87c  mov     x3, x0
  10013d880  adrp    x8, #0x10041c000
  10013d884  add     x8, x8, #0x6c0                           ; &@selector(writeSInt64:value:)
  10013d888  b       loc_10013d930
loc_10013d88c:
  10013d88c  mov     x0, x22
  10013d890  mov     x1, x21
  10013d894  bl      sub_10013e010                            ; sub_10013e010(self, arg1)
  10013d898  mov     x3, x0
  10013d89c  adrp    x8, #0x10041c000
  10013d8a0  add     x8, x8, #0x680                           ; &@selector(writeUInt32:value:)
  10013d8a4  b       loc_10013d968
loc_10013d8a8:
  10013d8a8  mov     x0, x22
  10013d8ac  mov     x1, x21
  10013d8b0  bl      sub_10013e09c                            ; sub_10013e09c(self, arg1)
  10013d8b4  mov     x3, x0
  10013d8b8  adrp    x8, #0x10041c000
  10013d8bc  add     x8, x8, #0x650                           ; &@selector(writeUInt64:value:)
  10013d8c0  b       loc_10013d930
loc_10013d8c4:
  10013d8c4  mov     x0, x22
  10013d8c8  mov     x1, x21
  10013d8cc  bl      sub_10013c1a0                            ; sub_10013c1a0(self, arg1)
  10013d8d0  mov     x3, x0
  10013d8d4  adrp    x8, #0x10041c000
  10013d8d8  add     x8, x8, #0x718                           ; &@selector(writeData:value:)
  10013d8dc  b       loc_10013d930
loc_10013d8e0:
  10013d8e0  mov     x0, x22
  10013d8e4  mov     x1, x21
  10013d8e8  bl      sub_10013c1a0                            ; sub_10013c1a0(self, arg1)
  10013d8ec  mov     x3, x0
  10013d8f0  adrp    x8, #0x10041c000
  10013d8f4  add     x8, x8, #0x708                           ; &@selector(writeString:value:)
  10013d8f8  b       loc_10013d930
loc_10013d8fc:
  10013d8fc  mov     x0, x22
  10013d900  mov     x1, x21
  10013d904  bl      sub_10013c1a0                            ; sub_10013c1a0(self, arg1)
  10013d908  mov     x3, x0
  10013d90c  adrp    x8, #0x10041c000
  10013d910  add     x8, x8, #0x710                           ; &@selector(writeMessage:value:)
  10013d914  b       loc_10013d930
loc_10013d918:
  10013d918  mov     x0, x22
  10013d91c  mov     x1, x21
  10013d920  bl      sub_10013c1a0                            ; sub_10013c1a0(self, arg1)
  10013d924  mov     x3, x0
  10013d928  adrp    x8, #0x10041c000
  10013d92c  add     x8, x8, #0x720                           ; &@selector(writeGroup:value:)
loc_10013d930:
  10013d930  ldr     x1, [x8]
  10013d934  mov     x0, x20
  10013d938  mov     x2, x19
  10013d93c  ldp     x24, x23, [sp], #0x10
  10013d940  ldp     x22, x21, [sp], #0x10
  10013d944  ldp     x20, x19, [sp], #0x10
  10013d948  ldp     x29, x30, [sp], #0x10
  10013d94c  b       _objc_msgSend                            ; [arg2 <sel x1>]
loc_10013d950:
  10013d950  mov     x0, x22
  10013d954  mov     x1, x21
  10013d958  bl      sub_10013def4                            ; sub_10013def4(self, arg1)
  10013d95c  mov     x3, x0
  10013d960  adrp    x8, #0x10041c000
  10013d964  add     x8, x8, #0x700                           ; &@selector(writeEnum:value:)
loc_10013d968:
  10013d968  ldr     x1, [x8]                                 ; x1 = one of selectors {writeBool:value:, writeEnum:value:, writeFixed32:value:, writeInt32:value:, writeSFixed32:value:, writeSInt32:value:, writeUInt32:value:}
  10013d96c  mov     x0, x20
  10013d970  mov     x2, x19
  10013d974  ldp     x24, x23, [sp], #0x10
  10013d978  ldp     x22, x21, [sp], #0x10
  10013d97c  ldp     x20, x19, [sp], #0x10
  10013d980  ldp     x29, x30, [sp], #0x10
  10013d984  b       _objc_msgSend                            ; [arg2 writeBool:arg1->description_[+0x8] value:x3  | writeEnum:x4 value:x5  | writeFixed32:x6 value:x7  | writeInt32:one of {&@selector(writeInt32:value:), &@selector(writeUInt32:value:), &@selector(writeFixed32:value:), &@selector(writeSInt32:value:), &@selector(writeSFixed32:value:), &@selector(writeBool:value:), &@selector(writeEnum:value:)} value:x9  | writeSFixed32:x10 value:x11  | writeSInt32:x12 value:x13  | writeUInt32:x14 value:x15]
loc_10013d988:
  10013d988  mov     w23, #0
  10013d98c  b       loc_10013da10
loc_10013d990:
  10013d990  mov     w23, #0
  10013d994  b       loc_10013da44
loc_10013d998:
  10013d998  mov     w23, #0
  10013d99c  b       loc_10013da78
loc_10013d9a0:
  10013d9a0  mov     w23, #0
  10013d9a4  b       loc_10013daac
loc_10013d9a8:
  10013d9a8  mov     w23, #0
  10013d9ac  b       loc_10013dae0
loc_10013d9b0:
  10013d9b0  mov     w23, #0
  10013d9b4  b       loc_10013db14
loc_10013d9b8:
  10013d9b8  mov     w23, #0
  10013d9bc  b       loc_10013db48
loc_10013d9c0:
  10013d9c0  mov     w23, #0
  10013d9c4  b       loc_10013db7c
loc_10013d9c8:
  10013d9c8  mov     w23, #0
  10013d9cc  b       loc_10013dbb0
loc_10013d9d0:
  10013d9d0  mov     w23, #0
  10013d9d4  b       loc_10013dbe4
loc_10013d9d8:
  10013d9d8  mov     w23, #0
  10013d9dc  b       loc_10013dc18
loc_10013d9e0:
  10013d9e0  mov     w23, #0
  10013d9e4  b       loc_10013dc4c
loc_10013d9e8:
  10013d9e8  mov     w23, #0
  10013d9ec  b       loc_10013dc80
loc_10013d9f0:
  10013d9f0  mov     w23, #0
  10013d9f4  b       loc_10013dcb4
loc_10013d9f8:
  10013d9f8  ldr     w9, [x8, #0x14]                          ; w9 = arg1->description_[+0x14]
  10013d9fc  adrp    x10, #0x1002fa000
  10013da00  add     x10, x10, #0xaa8                         ; tconst_1002faaa8
  10013da04  ldr     w9, [x10, x9, lsl #2]
loc_10013da08:
  10013da08  ldr     w8, [x8, #8]                             ; w8 = arg1->description_[+0x8]
  10013da0c  orr     w23, w9, w8, lsl #3
loc_10013da10:
  10013da10  mov     x0, x22
  10013da14  mov     x1, x21
  10013da18  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013da1c  mov     x3, x0
  10013da20  adrp    x8, #0x10041c000
  10013da24  add     x8, x8, #0xa28                           ; &@selector(writeBools:values:tag:)
  10013da28  b       loc_10013dccc
loc_10013da2c:
  10013da2c  ldr     w9, [x8, #0x14]                          ; w9 = arg1->description_[+0x14]
  10013da30  adrp    x10, #0x1002fa000
  10013da34  add     x10, x10, #0xaa8                         ; tconst_1002faaa8
  10013da38  ldr     w9, [x10, x9, lsl #2]
loc_10013da3c:
  10013da3c  ldr     w8, [x8, #8]                             ; w8 = arg1->description_[+0x8]
  10013da40  orr     w23, w9, w8, lsl #3
loc_10013da44:
  10013da44  mov     x0, x22
  10013da48  mov     x1, x21
  10013da4c  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013da50  mov     x3, x0
  10013da54  adrp    x8, #0x10041c000
  10013da58  add     x8, x8, #0x930                           ; &@selector(writeFixed32s:values:tag:)
  10013da5c  b       loc_10013dccc
loc_10013da60:
  10013da60  ldr     w9, [x8, #0x14]                          ; w9 = arg1->description_[+0x14]
  10013da64  adrp    x10, #0x1002fa000
  10013da68  add     x10, x10, #0xaa8                         ; tconst_1002faaa8
  10013da6c  ldr     w9, [x10, x9, lsl #2]
loc_10013da70:
  10013da70  ldr     w8, [x8, #8]                             ; w8 = arg1->description_[+0x8]
  10013da74  orr     w23, w9, w8, lsl #3
loc_10013da78:
  10013da78  mov     x0, x22
  10013da7c  mov     x1, x21
  10013da80  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013da84  mov     x3, x0
  10013da88  adrp    x8, #0x10041c000
  10013da8c  add     x8, x8, #0xa30                           ; &@selector(writeSFixed32s:values:tag:)
  10013da90  b       loc_10013dccc
loc_10013da94:
  10013da94  ldr     w9, [x8, #0x14]                          ; w9 = arg1->description_[+0x14]
  10013da98  adrp    x10, #0x1002fa000
  10013da9c  add     x10, x10, #0xaa8                         ; tconst_1002faaa8
  10013daa0  ldr     w9, [x10, x9, lsl #2]
loc_10013daa4:
  10013daa4  ldr     w8, [x8, #8]                             ; w8 = arg1->description_[+0x8]
  10013daa8  orr     w23, w9, w8, lsl #3
loc_10013daac:
  10013daac  mov     x0, x22
  10013dab0  mov     x1, x21
  10013dab4  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013dab8  mov     x3, x0
  10013dabc  adrp    x8, #0x10041c000
  10013dac0  add     x8, x8, #0xa38                           ; &@selector(writeFloats:values:tag:)
  10013dac4  b       loc_10013dccc
loc_10013dac8:
  10013dac8  ldr     w9, [x8, #0x14]                          ; w9 = arg1->description_[+0x14]
  10013dacc  adrp    x10, #0x1002fa000
  10013dad0  add     x10, x10, #0xaa8                         ; tconst_1002faaa8
  10013dad4  ldr     w9, [x10, x9, lsl #2]
loc_10013dad8:
  10013dad8  ldr     w8, [x8, #8]                             ; w8 = arg1->description_[+0x8]
  10013dadc  orr     w23, w9, w8, lsl #3
loc_10013dae0:
  10013dae0  mov     x0, x22
  10013dae4  mov     x1, x21
  10013dae8  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013daec  mov     x3, x0
  10013daf0  adrp    x8, #0x10041c000
  10013daf4  add     x8, x8, #0x938                           ; &@selector(writeFixed64s:values:tag:)
  10013daf8  b       loc_10013dccc
loc_10013dafc:
  10013dafc  ldr     w9, [x8, #0x14]                          ; w9 = arg1->description_[+0x14]
  10013db00  adrp    x10, #0x1002fa000
  10013db04  add     x10, x10, #0xaa8                         ; tconst_1002faaa8
  10013db08  ldr     w9, [x10, x9, lsl #2]
loc_10013db0c:
  10013db0c  ldr     w8, [x8, #8]                             ; w8 = arg1->description_[+0x8]
  10013db10  orr     w23, w9, w8, lsl #3
loc_10013db14:
  10013db14  mov     x0, x22
  10013db18  mov     x1, x21
  10013db1c  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013db20  mov     x3, x0
  10013db24  adrp    x8, #0x10041c000
  10013db28  add     x8, x8, #0xa40                           ; &@selector(writeSFixed64s:values:tag:)
  10013db2c  b       loc_10013dccc
loc_10013db30:
  10013db30  ldr     w9, [x8, #0x14]                          ; w9 = arg1->description_[+0x14]
  10013db34  adrp    x10, #0x1002fa000
  10013db38  add     x10, x10, #0xaa8                         ; tconst_1002faaa8
  10013db3c  ldr     w9, [x10, x9, lsl #2]
loc_10013db40:
  10013db40  ldr     w8, [x8, #8]                             ; w8 = arg1->description_[+0x8]
  10013db44  orr     w23, w9, w8, lsl #3
loc_10013db48:
  10013db48  mov     x0, x22
  10013db4c  mov     x1, x21
  10013db50  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013db54  mov     x3, x0
  10013db58  adrp    x8, #0x10041c000
  10013db5c  add     x8, x8, #0xa48                           ; &@selector(writeDoubles:values:tag:)
  10013db60  b       loc_10013dccc
loc_10013db64:
  10013db64  ldr     w9, [x8, #0x14]                          ; w9 = arg1->description_[+0x14]
  10013db68  adrp    x10, #0x1002fa000
  10013db6c  add     x10, x10, #0xaa8                         ; tconst_1002faaa8
  10013db70  ldr     w9, [x10, x9, lsl #2]
loc_10013db74:
  10013db74  ldr     w8, [x8, #8]                             ; w8 = arg1->description_[+0x8]
  10013db78  orr     w23, w9, w8, lsl #3
loc_10013db7c:
  10013db7c  mov     x0, x22
  10013db80  mov     x1, x21
  10013db84  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013db88  mov     x3, x0
  10013db8c  adrp    x8, #0x10041c000
  10013db90  add     x8, x8, #0xa50                           ; &@selector(writeInt32s:values:tag:)
  10013db94  b       loc_10013dccc
loc_10013db98:
  10013db98  ldr     w9, [x8, #0x14]                          ; w9 = arg1->description_[+0x14]
  10013db9c  adrp    x10, #0x1002fa000
  10013dba0  add     x10, x10, #0xaa8                         ; tconst_1002faaa8
  10013dba4  ldr     w9, [x10, x9, lsl #2]
loc_10013dba8:
  10013dba8  ldr     w8, [x8, #8]                             ; w8 = arg1->description_[+0x8]
  10013dbac  orr     w23, w9, w8, lsl #3
loc_10013dbb0:
  10013dbb0  mov     x0, x22
  10013dbb4  mov     x1, x21
  10013dbb8  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013dbbc  mov     x3, x0
  10013dbc0  adrp    x8, #0x10041c000
  10013dbc4  add     x8, x8, #0xa58                           ; &@selector(writeInt64s:values:tag:)
  10013dbc8  b       loc_10013dccc
loc_10013dbcc:
  10013dbcc  ldr     w9, [x8, #0x14]                          ; w9 = arg1->description_[+0x14]
  10013dbd0  adrp    x10, #0x1002fa000
  10013dbd4  add     x10, x10, #0xaa8                         ; tconst_1002faaa8
  10013dbd8  ldr     w9, [x10, x9, lsl #2]
loc_10013dbdc:
  10013dbdc  ldr     w8, [x8, #8]                             ; w8 = arg1->description_[+0x8]
  10013dbe0  orr     w23, w9, w8, lsl #3
loc_10013dbe4:
  10013dbe4  mov     x0, x22
  10013dbe8  mov     x1, x21
  10013dbec  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013dbf0  mov     x3, x0
  10013dbf4  adrp    x8, #0x10041c000
  10013dbf8  add     x8, x8, #0xa60                           ; &@selector(writeSInt32s:values:tag:)
  10013dbfc  b       loc_10013dccc
loc_10013dc00:
  10013dc00  ldr     w9, [x8, #0x14]                          ; w9 = arg1->description_[+0x14]
  10013dc04  adrp    x10, #0x1002fa000
  10013dc08  add     x10, x10, #0xaa8                         ; tconst_1002faaa8
  10013dc0c  ldr     w9, [x10, x9, lsl #2]
loc_10013dc10:
  10013dc10  ldr     w8, [x8, #8]                             ; w8 = arg1->description_[+0x8]
  10013dc14  orr     w23, w9, w8, lsl #3
loc_10013dc18:
  10013dc18  mov     x0, x22
  10013dc1c  mov     x1, x21
  10013dc20  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013dc24  mov     x3, x0
  10013dc28  adrp    x8, #0x10041c000
  10013dc2c  add     x8, x8, #0xa68                           ; &@selector(writeSInt64s:values:tag:)
  10013dc30  b       loc_10013dccc
loc_10013dc34:
  10013dc34  ldr     w9, [x8, #0x14]                          ; w9 = arg1->description_[+0x14]
  10013dc38  adrp    x10, #0x1002fa000
  10013dc3c  add     x10, x10, #0xaa8                         ; tconst_1002faaa8
  10013dc40  ldr     w9, [x10, x9, lsl #2]
loc_10013dc44:
  10013dc44  ldr     w8, [x8, #8]                             ; w8 = arg1->description_[+0x8]
  10013dc48  orr     w23, w9, w8, lsl #3
loc_10013dc4c:
  10013dc4c  mov     x0, x22
  10013dc50  mov     x1, x21
  10013dc54  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013dc58  mov     x3, x0
  10013dc5c  adrp    x8, #0x10041c000
  10013dc60  add     x8, x8, #0xa70                           ; &@selector(writeUInt32s:values:tag:)
  10013dc64  b       loc_10013dccc
loc_10013dc68:
  10013dc68  ldr     w9, [x8, #0x14]                          ; w9 = arg1->description_[+0x14]
  10013dc6c  adrp    x10, #0x1002fa000
  10013dc70  add     x10, x10, #0xaa8                         ; tconst_1002faaa8
  10013dc74  ldr     w9, [x10, x9, lsl #2]
loc_10013dc78:
  10013dc78  ldr     w8, [x8, #8]                             ; w8 = arg1->description_[+0x8]
  10013dc7c  orr     w23, w9, w8, lsl #3
loc_10013dc80:
  10013dc80  mov     x0, x22
  10013dc84  mov     x1, x21
  10013dc88  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013dc8c  mov     x3, x0
  10013dc90  adrp    x8, #0x10041c000
  10013dc94  add     x8, x8, #0x928                           ; &@selector(writeUInt64s:values:tag:)
  10013dc98  b       loc_10013dccc
loc_10013dc9c:
  10013dc9c  ldr     w9, [x8, #0x14]                          ; w9 = arg1->description_[+0x14]
  10013dca0  adrp    x10, #0x1002fa000
  10013dca4  add     x10, x10, #0xaa8                         ; tconst_1002faaa8
  10013dca8  ldr     w9, [x10, x9, lsl #2]
loc_10013dcac:
  10013dcac  ldr     w8, [x8, #8]                             ; w8 = arg1->description_[+0x8]
  10013dcb0  orr     w23, w9, w8, lsl #3
loc_10013dcb4:
  10013dcb4  mov     x0, x22
  10013dcb8  mov     x1, x21
  10013dcbc  bl      sub_10013cd1c                            ; sub_10013cd1c(self, arg1)
  10013dcc0  mov     x3, x0
  10013dcc4  adrp    x8, #0x10041c000
  10013dcc8  add     x8, x8, #0xa78                           ; &@selector(writeEnums:values:tag:)
loc_10013dccc:
  10013dccc  ldr     x1, [x8]
  10013dcd0  mov     x0, x20
  10013dcd4  mov     x2, x19
  10013dcd8  mov     x4, x23
  10013dcdc  ldp     x24, x23, [sp], #0x10
  10013dce0  ldp     x22, x21, [sp], #0x10
  10013dce4  ldp     x20, x19, [sp], #0x10
  10013dce8  ldp     x29, x30, [sp], #0x10
  10013dcec  b       _objc_msgSend                            ; [arg2 <sel x1>]
  10013dcf0  .word   jump table of 10013d3cc, case 0 -> loc_10013d3d0
  10013dcf4  .word   jump table of 10013d3cc, case 1 -> loc_10013d404
  10013dcf8  .word   jump table of 10013d3cc, case 2 -> loc_10013d438
  10013dcfc  .word   jump table of 10013d3cc, case 3 -> loc_10013d46c
  10013dd00  .word   jump table of 10013d3cc, case 4 -> loc_10013d4a0
  10013dd04  .word   jump table of 10013d3cc, case 5 -> loc_10013d4d4
  10013dd08  .word   jump table of 10013d3cc, case 6 -> loc_10013d508
  10013dd0c  .word   jump table of 10013d3cc, case 7 -> loc_10013d53c
  10013dd10  .word   jump table of 10013d3cc, case 8 -> loc_10013d570
  10013dd14  .word   jump table of 10013d3cc, case 9 -> loc_10013d5a4
  10013dd18  .word   jump table of 10013d3cc, case 10 -> loc_10013d5d8
  10013dd1c  .word   jump table of 10013d3cc, case 11 -> loc_10013d60c
  10013dd20  .word   jump table of 10013d3cc, case 12 -> loc_10013d640
  10013dd24  .word   jump table of 10013d3cc, case 13 -> loc_10013d674
  10013dd28  .word   jump table of 10013d3cc, case 14 -> loc_10013d694
  10013dd2c  .word   jump table of 10013d3cc, case 15 -> loc_10013d6b4
  10013dd30  .word   jump table of 10013d3cc, case 16 -> loc_10013d6d4
  10013dd34  .word   jump table of 10013d3cc, case 17 -> loc_10013d6f4

; ======================================================================
; sub_10013dd38
; address 0x10013dd38  size 156  kind sub
; ======================================================================
  10013dd38  stp     x29, x30, [sp, #-0x10]!
  10013dd3c  mov     x29, sp
  10013dd40  stp     x20, x19, [sp, #-0x10]!
  10013dd44  adrp    x8, #0x100420000
  10013dd48  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013dd4c  ldr     x19, [x0, x8]                            ; x19 = a0->messageStorage_
  10013dd50  cbz     x19, loc_10013dda8                       ; if (a0->messageStorage_ == 0)
  10013dd54  adrp    x8, #0x100420000
  10013dd58  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013dd5c  ldr     x8, [x1, x8]                             ; x8 = a1->description_
  10013dd60  ldr     w8, [x8, #0xc]                           ; w8 = a1->description_[+0xc]
  10013dd64  and     w9, w8, #0x1f
  10013dd68  mov     w10, #1
  10013dd6c  lsl     w9, w10, w9
  10013dd70  lsr     w8, w8, #5
  10013dd74  ldr     w8, [x19, w8, uxtw #2]
  10013dd78  and     w8, w8, w9
  10013dd7c  cbz     w8, loc_10013dda8                        ; if ((w8 & (1 << (a1->description_[+0xc] & 31))) == 0)
  10013dd80  adrp    x8, #0x10041c000
  10013dd84  nop
  10013dd88  ldr     x8, [x8, #0x9a8]
  10013dd8c  mov     x0, x1
  10013dd90  mov     x1, x8
  10013dd94  bl      _objc_msgSend                            ; [a1 offset]
  10013dd98  ldrb    w8, [x19, x0]
  10013dd9c  cmp     w8, #0
  10013dda0  cset    w8, ne
  10013dda4  b       loc_10013ddc4
loc_10013dda8:
  10013dda8  adrp    x8, #0x10041c000
  10013ddac  nop
  10013ddb0  ldr     x8, [x8, #0xa98]
  10013ddb4  mov     x0, x1
  10013ddb8  mov     x1, x8
  10013ddbc  bl      _objc_msgSend                            ; [a1 defaultValue]
  10013ddc0  and     w8, w0, #1
loc_10013ddc4:
  10013ddc4  and     w0, w8, #1
  10013ddc8  ldp     x20, x19, [sp], #0x10
  10013ddcc  ldp     x29, x30, [sp], #0x10
  10013ddd0  ret

; ======================================================================
; sub_10013ddd4
; address 0x10013ddd4  size 144  kind sub
; ======================================================================
  10013ddd4  stp     x29, x30, [sp, #-0x10]!
  10013ddd8  mov     x29, sp
  10013dddc  stp     x20, x19, [sp, #-0x10]!
  10013dde0  adrp    x8, #0x100420000
  10013dde4  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013dde8  ldr     x19, [x0, x8]                            ; x19 = a0->messageStorage_
  10013ddec  cbz     x19, loc_10013de3c                       ; if (a0->messageStorage_ == 0)
  10013ddf0  adrp    x8, #0x100420000
  10013ddf4  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013ddf8  ldr     x8, [x1, x8]                             ; x8 = a1->description_
  10013ddfc  ldr     w8, [x8, #0xc]                           ; w8 = a1->description_[+0xc]
  10013de00  and     w9, w8, #0x1f
  10013de04  mov     w10, #1
  10013de08  lsl     w9, w10, w9
  10013de0c  lsr     w8, w8, #5
  10013de10  ldr     w8, [x19, w8, uxtw #2]
  10013de14  and     w8, w8, w9
  10013de18  cbz     w8, loc_10013de3c                        ; if ((w8 & (1 << (a1->description_[+0xc] & 31))) == 0)
  10013de1c  adrp    x8, #0x10041c000
  10013de20  nop
  10013de24  ldr     x8, [x8, #0x9a8]
  10013de28  mov     x0, x1
  10013de2c  mov     x1, x8
  10013de30  bl      _objc_msgSend                            ; [a1 offset]
  10013de34  ldr     s0, [x19, x0]
  10013de38  b       loc_10013de58
loc_10013de3c:
  10013de3c  adrp    x8, #0x10041c000
  10013de40  nop
  10013de44  ldr     x8, [x8, #0xa98]
  10013de48  mov     x0, x1
  10013de4c  mov     x1, x8
  10013de50  bl      _objc_msgSend                            ; [a1 defaultValue]
  10013de54  fmov    s0, w0
loc_10013de58:
  10013de58  ldp     x20, x19, [sp], #0x10
  10013de5c  ldp     x29, x30, [sp], #0x10
  10013de60  ret

; ======================================================================
; sub_10013de64
; address 0x10013de64  size 144  kind sub
; ======================================================================
  10013de64  stp     x29, x30, [sp, #-0x10]!
  10013de68  mov     x29, sp
  10013de6c  stp     x20, x19, [sp, #-0x10]!
  10013de70  adrp    x8, #0x100420000
  10013de74  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013de78  ldr     x19, [x0, x8]                            ; x19 = a0->messageStorage_
  10013de7c  cbz     x19, loc_10013decc                       ; if (a0->messageStorage_ == 0)
  10013de80  adrp    x8, #0x100420000
  10013de84  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013de88  ldr     x8, [x1, x8]                             ; x8 = a1->description_
  10013de8c  ldr     w8, [x8, #0xc]                           ; w8 = a1->description_[+0xc]
  10013de90  and     w9, w8, #0x1f
  10013de94  mov     w10, #1
  10013de98  lsl     w9, w10, w9
  10013de9c  lsr     w8, w8, #5
  10013dea0  ldr     w8, [x19, w8, uxtw #2]
  10013dea4  and     w8, w8, w9
  10013dea8  cbz     w8, loc_10013decc                        ; if ((w8 & (1 << (a1->description_[+0xc] & 31))) == 0)
  10013deac  adrp    x8, #0x10041c000
  10013deb0  nop
  10013deb4  ldr     x8, [x8, #0x9a8]
  10013deb8  mov     x0, x1
  10013debc  mov     x1, x8
  10013dec0  bl      _objc_msgSend                            ; [a1 offset]
  10013dec4  ldr     d0, [x19, x0]
  10013dec8  b       loc_10013dee8
loc_10013decc:
  10013decc  adrp    x8, #0x10041c000
  10013ded0  nop
  10013ded4  ldr     x8, [x8, #0xa98]
  10013ded8  mov     x0, x1
  10013dedc  mov     x1, x8
  10013dee0  bl      _objc_msgSend                            ; [a1 defaultValue]
  10013dee4  fmov    d0, x0
loc_10013dee8:
  10013dee8  ldp     x20, x19, [sp], #0x10
  10013deec  ldp     x29, x30, [sp], #0x10
  10013def0  ret

; ======================================================================
; sub_10013def4
; address 0x10013def4  size 140  kind sub
; ======================================================================
  10013def4  stp     x29, x30, [sp, #-0x10]!
  10013def8  mov     x29, sp
  10013defc  stp     x20, x19, [sp, #-0x10]!
  10013df00  adrp    x8, #0x100420000
  10013df04  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013df08  ldr     x19, [x0, x8]                            ; x19 = a0->messageStorage_
  10013df0c  cbz     x19, loc_10013df5c                       ; if (a0->messageStorage_ == 0)
  10013df10  adrp    x8, #0x100420000
  10013df14  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013df18  ldr     x8, [x1, x8]                             ; x8 = a1->description_
  10013df1c  ldr     w8, [x8, #0xc]                           ; w8 = a1->description_[+0xc]
  10013df20  and     w9, w8, #0x1f
  10013df24  mov     w10, #1
  10013df28  lsl     w9, w10, w9
  10013df2c  lsr     w8, w8, #5
  10013df30  ldr     w8, [x19, w8, uxtw #2]
  10013df34  and     w8, w8, w9
  10013df38  cbz     w8, loc_10013df5c                        ; if ((w8 & (1 << (a1->description_[+0xc] & 31))) == 0)
  10013df3c  adrp    x8, #0x10041c000
  10013df40  nop
  10013df44  ldr     x8, [x8, #0x9a8]
  10013df48  mov     x0, x1
  10013df4c  mov     x1, x8
  10013df50  bl      _objc_msgSend                            ; [a1 offset]
  10013df54  ldr     w0, [x19, x0]
  10013df58  b       loc_10013df74
loc_10013df5c:
  10013df5c  adrp    x8, #0x10041c000
  10013df60  nop
  10013df64  ldr     x8, [x8, #0xa98]
  10013df68  mov     x0, x1
  10013df6c  mov     x1, x8
  10013df70  bl      _objc_msgSend                            ; [a1 defaultValue]
loc_10013df74:
  10013df74  ldp     x20, x19, [sp], #0x10
  10013df78  ldp     x29, x30, [sp], #0x10
  10013df7c  ret

; ======================================================================
; sub_10013df80
; address 0x10013df80  size 144  kind sub
; ======================================================================
  10013df80  stp     x29, x30, [sp, #-0x10]!
  10013df84  mov     x29, sp
  10013df88  stp     x20, x19, [sp, #-0x10]!
  10013df8c  adrp    x8, #0x100420000
  10013df90  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013df94  ldr     x19, [x0, x8]                            ; x19 = a0->messageStorage_
  10013df98  cbz     x19, loc_10013dff0                       ; if (a0->messageStorage_ == 0)
  10013df9c  adrp    x8, #0x100420000
  10013dfa0  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013dfa4  ldr     x8, [x1, x8]                             ; x8 = a1->description_
  10013dfa8  ldr     w8, [x8, #0xc]                           ; w8 = a1->description_[+0xc]
  10013dfac  and     w9, w8, #0x1f
  10013dfb0  mov     w10, #1
  10013dfb4  lsl     w9, w10, w9
  10013dfb8  lsr     w8, w8, #5
  10013dfbc  ldr     w8, [x19, w8, uxtw #2]
  10013dfc0  and     w8, w8, w9
  10013dfc4  cbz     w8, loc_10013dff0                        ; if ((w8 & (1 << (a1->description_[+0xc] & 31))) == 0)
  10013dfc8  adrp    x8, #0x10041c000
  10013dfcc  nop
  10013dfd0  ldr     x8, [x8, #0x9a8]
  10013dfd4  mov     x0, x1
  10013dfd8  mov     x1, x8
  10013dfdc  bl      _objc_msgSend                            ; [a1 offset]
  10013dfe0  ldr     x0, [x19, x0]
  10013dfe4  ldp     x20, x19, [sp], #0x10
  10013dfe8  ldp     x29, x30, [sp], #0x10
  10013dfec  ret
loc_10013dff0:
  10013dff0  adrp    x8, #0x10041c000
  10013dff4  nop
  10013dff8  ldr     x8, [x8, #0xa98]
  10013dffc  mov     x0, x1
  10013e000  mov     x1, x8
  10013e004  ldp     x20, x19, [sp], #0x10
  10013e008  ldp     x29, x30, [sp], #0x10
  10013e00c  b       _objc_msgSend                            ; [a1 defaultValue]

; ======================================================================
; sub_10013e010
; address 0x10013e010  size 140  kind sub
; ======================================================================
  10013e010  stp     x29, x30, [sp, #-0x10]!
  10013e014  mov     x29, sp
  10013e018  stp     x20, x19, [sp, #-0x10]!
  10013e01c  adrp    x8, #0x100420000
  10013e020  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013e024  ldr     x19, [x0, x8]                            ; x19 = a0->messageStorage_
  10013e028  cbz     x19, loc_10013e078                       ; if (a0->messageStorage_ == 0)
  10013e02c  adrp    x8, #0x100420000
  10013e030  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013e034  ldr     x8, [x1, x8]                             ; x8 = a1->description_
  10013e038  ldr     w8, [x8, #0xc]                           ; w8 = a1->description_[+0xc]
  10013e03c  and     w9, w8, #0x1f
  10013e040  mov     w10, #1
  10013e044  lsl     w9, w10, w9
  10013e048  lsr     w8, w8, #5
  10013e04c  ldr     w8, [x19, w8, uxtw #2]
  10013e050  and     w8, w8, w9
  10013e054  cbz     w8, loc_10013e078                        ; if ((w8 & (1 << (a1->description_[+0xc] & 31))) == 0)
  10013e058  adrp    x8, #0x10041c000
  10013e05c  nop
  10013e060  ldr     x8, [x8, #0x9a8]
  10013e064  mov     x0, x1
  10013e068  mov     x1, x8
  10013e06c  bl      _objc_msgSend                            ; [a1 offset]
  10013e070  ldr     w0, [x19, x0]
  10013e074  b       loc_10013e090
loc_10013e078:
  10013e078  adrp    x8, #0x10041c000
  10013e07c  nop
  10013e080  ldr     x8, [x8, #0xa98]
  10013e084  mov     x0, x1
  10013e088  mov     x1, x8
  10013e08c  bl      _objc_msgSend                            ; [a1 defaultValue]
loc_10013e090:
  10013e090  ldp     x20, x19, [sp], #0x10
  10013e094  ldp     x29, x30, [sp], #0x10
  10013e098  ret

; ======================================================================
; sub_10013e09c
; address 0x10013e09c  size 144  kind sub
; ======================================================================
  10013e09c  stp     x29, x30, [sp, #-0x10]!
  10013e0a0  mov     x29, sp
  10013e0a4  stp     x20, x19, [sp, #-0x10]!
  10013e0a8  adrp    x8, #0x100420000
  10013e0ac  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10013e0b0  ldr     x19, [x0, x8]                            ; x19 = a0->messageStorage_
  10013e0b4  cbz     x19, loc_10013e10c                       ; if (a0->messageStorage_ == 0)
  10013e0b8  adrp    x8, #0x100420000
  10013e0bc  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10013e0c0  ldr     x8, [x1, x8]                             ; x8 = a1->description_
  10013e0c4  ldr     w8, [x8, #0xc]                           ; w8 = a1->description_[+0xc]
  10013e0c8  and     w9, w8, #0x1f
  10013e0cc  mov     w10, #1
  10013e0d0  lsl     w9, w10, w9
  10013e0d4  lsr     w8, w8, #5
  10013e0d8  ldr     w8, [x19, w8, uxtw #2]
  10013e0dc  and     w8, w8, w9
  10013e0e0  cbz     w8, loc_10013e10c                        ; if ((w8 & (1 << (a1->description_[+0xc] & 31))) == 0)
  10013e0e4  adrp    x8, #0x10041c000
  10013e0e8  nop
  10013e0ec  ldr     x8, [x8, #0x9a8]
  10013e0f0  mov     x0, x1
  10013e0f4  mov     x1, x8
  10013e0f8  bl      _objc_msgSend                            ; [a1 offset]
  10013e0fc  ldr     x0, [x19, x0]
  10013e100  ldp     x20, x19, [sp], #0x10
  10013e104  ldp     x29, x30, [sp], #0x10
  10013e108  ret
loc_10013e10c:
  10013e10c  adrp    x8, #0x10041c000
  10013e110  nop
  10013e114  ldr     x8, [x8, #0xa98]
  10013e118  mov     x0, x1
  10013e11c  mov     x1, x8
  10013e120  ldp     x20, x19, [sp], #0x10
  10013e124  ldp     x29, x30, [sp], #0x10
  10013e128  b       _objc_msgSend                            ; [a1 defaultValue]

; ======================================================================
; -[TAGPBGeneratedMessage isInitialized:]
; address 0x10013e12c  size 428  kind objc
; ======================================================================
  10013e12c  stp     x29, x30, [sp, #-0x10]!
  10013e130  mov     x29, sp
  10013e134  stp     x20, x19, [sp, #-0x10]!
  10013e138  stp     x22, x21, [sp, #-0x10]!
  10013e13c  stp     x24, x23, [sp, #-0x10]!
  10013e140  stp     x26, x25, [sp, #-0x10]!
  10013e144  stp     x28, x27, [sp, #-0x10]!
  10013e148  sub     sp, sp, #0xd0
  10013e14c  mov     x19, x2
  10013e150  mov     x20, x0
  10013e154  adrp    x26, #0x1003b0000
  10013e158  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  10013e15c  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  10013e160  stur    x8, [x29, #-0x58]
  10013e164  adrp    x8, #0x10041d000
  10013e168  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10013e16c  adrp    x8, #0x100417000
  10013e170  nop
  10013e174  ldr     x21, [x8, #0x2e0]
  10013e178  mov     x1, x21
  10013e17c  bl      _objc_msgSend                            ; [NSArray class]
  10013e180  mov     x2, x0
  10013e184  adrp    x8, #0x100417000
  10013e188  nop
  10013e18c  ldr     x22, [x8, #0x3b8]
  10013e190  mov     x0, x19
  10013e194  mov     x1, x22
  10013e198  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSArray class]]
  10013e19c  cbz     w0, loc_10013e25c                        ; if ([arg1 isKindOfClass:[NSArray class]] == 0)
  10013e1a0  stp     xzr, xzr, [sp, #0xb8]
  10013e1a4  stp     xzr, xzr, [sp, #0xa8]
  10013e1a8  stp     xzr, xzr, [sp, #0x98]
  10013e1ac  stp     xzr, xzr, [sp, #0x88]
  10013e1b0  adrp    x8, #0x100416000
  10013e1b4  nop
  10013e1b8  ldr     x21, [x8, #0xe00]
  10013e1bc  add     x2, sp, #0x88
  10013e1c0  add     x3, sp, #8
  10013e1c4  mov     x4, #0x10
  10013e1c8  mov     x0, x19
  10013e1cc  mov     x1, x21
  10013e1d0  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  10013e1d4  mov     x23, x0
  10013e1d8  cbz     x23, loc_10013e298                       ; if ([arg1 countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] == 0)
  10013e1dc  ldr     x8, [sp, #0x98]
  10013e1e0  ldr     x27, [x8]
  10013e1e4  adrp    x8, #0x10041c000
  10013e1e8  add     x8, x8, #0x9e0                           ; &@selector(isInitialized:)
  10013e1ec  ldr     x22, [x8]
  10013e1f0  add     x24, sp, #0x88
  10013e1f4  add     x25, sp, #8
loc_10013e1f8:
  10013e1f8  mov     x28, #0
loc_10013e1fc:
  10013e1fc  ldr     x8, [sp, #0x98]
  10013e200  ldr     x8, [x8]
  10013e204  cmp     x8, x27
  10013e208  b.eq    loc_10013e214                            ; if (x8 == x27)
  10013e20c  mov     x0, x19
  10013e210  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10013e214:
  10013e214  ldr     x8, [sp, #0x90]
  10013e218  ldr     x2, [x8, x28, lsl #3]
  10013e21c  mov     x0, x20
  10013e220  mov     x1, x22
  10013e224  bl      _objc_msgSend                            ; [self isInitialized:x2]
  10013e228  cbz     w0, loc_10013e2a0                        ; if ([self isInitialized:x2] == 0)
  10013e22c  add     x28, x28, #1
  10013e230  cmp     x28, x23
  10013e234  b.lo    loc_10013e1fc                            ; if ((x28 + 1) <u [arg1 countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16])
  10013e238  mov     x4, #0x10
  10013e23c  mov     x0, x19
  10013e240  mov     x1, x21
  10013e244  mov     x2, x24
  10013e248  mov     x3, x25
  10013e24c  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  10013e250  mov     x23, x0
  10013e254  cbnz    x23, loc_10013e1f8                       ; if ([arg1 countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] != 0)
  10013e258  b       loc_10013e298
loc_10013e25c:
  10013e25c  adrp    x8, #0x10041e000
  10013e260  ldr     x0, [x8, #0x7b8]                         ; class TAGPBGeneratedMessage
  10013e264  mov     x1, x21
  10013e268  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage class]
  10013e26c  mov     x2, x0
  10013e270  mov     x0, x19
  10013e274  mov     x1, x22
  10013e278  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[TAGPBGeneratedMessage class]]
  10013e27c  cbz     w0, loc_10013e298                        ; if ([arg1 isKindOfClass:[TAGPBGeneratedMessage class]] == 0)
  10013e280  adrp    x8, #0x10041c000
  10013e284  nop
  10013e288  ldr     x1, [x8, #0x9d0]
  10013e28c  mov     x0, x19
  10013e290  bl      _objc_msgSend                            ; [arg1 isInitialized]
  10013e294  b       loc_10013e2a4
loc_10013e298:
  10013e298  mov     w0, #1
  10013e29c  b       loc_10013e2a4
loc_10013e2a0:
  10013e2a0  mov     w0, #0
loc_10013e2a4:
  10013e2a4  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  10013e2a8  ldur    x9, [x29, #-0x58]
  10013e2ac  sub     x8, x8, x9
  10013e2b0  cbnz    x8, loc_10013e2d4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10013e2b4  sub     sp, x29, #0x50
  10013e2b8  ldp     x28, x27, [sp], #0x10
  10013e2bc  ldp     x26, x25, [sp], #0x10
  10013e2c0  ldp     x24, x23, [sp], #0x10
  10013e2c4  ldp     x22, x21, [sp], #0x10
  10013e2c8  ldp     x20, x19, [sp], #0x10
  10013e2cc  ldp     x29, x30, [sp], #0x10
  10013e2d0  ret
loc_10013e2d4:
  10013e2d4  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[TAGPBGeneratedMessage getExtension:]
; address 0x10013e2d8  size 424  kind objc
; ======================================================================
  10013e2d8  stp     x29, x30, [sp, #-0x10]!
  10013e2dc  mov     x29, sp
  10013e2e0  stp     x20, x19, [sp, #-0x10]!
  10013e2e4  stp     x22, x21, [sp, #-0x10]!
  10013e2e8  stp     x24, x23, [sp, #-0x10]!
  10013e2ec  stp     x26, x25, [sp, #-0x10]!
  10013e2f0  mov     x19, x2
  10013e2f4  mov     x20, x0
  10013e2f8  mov     x1, x19
  10013e2fc  bl      sub_10013e480                            ; sub_10013e480(self, arg1, arg1)
  10013e300  adrp    x8, #0x100420000
  10013e304  ldrsw   x8, [x8, #0x9f0]                         ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10013e308  ldr     x0, [x20, x8]                            ; x0 = self->extensionMap_
  10013e30c  adrp    x8, #0x100417000
  10013e310  nop
  10013e314  ldr     x23, [x8, #0x40]
  10013e318  mov     x1, x23
  10013e31c  mov     x2, x19
  10013e320  bl      _objc_msgSend                            ; [self->extensionMap_ objectForKey:arg1]
  10013e324  mov     x22, x0
  10013e328  cbnz    x22, loc_10013e43c                       ; if ([self->extensionMap_ objectForKey:arg1] != 0)
  10013e32c  adrp    x8, #0x10041c000
  10013e330  nop
  10013e334  ldr     x1, [x8, #0x7e8]
  10013e338  mov     x0, x19
  10013e33c  bl      _objc_msgSend                            ; [arg1 descriptor]
  10013e340  mov     x24, x0
  10013e344  adrp    x8, #0x10041c000
  10013e348  nop
  10013e34c  ldr     x1, [x8, #0x770]
  10013e350  bl      _objc_msgSend                            ; [[arg1 descriptor] isRepeated]
  10013e354  tbnz    w0, #0, loc_10013e458                    ; if (([[arg1 descriptor] isRepeated] & 1))
  10013e358  adrp    x8, #0x10041c000
  10013e35c  nop
  10013e360  ldr     x1, [x8, #0x780]
  10013e364  mov     x0, x24
  10013e368  bl      _objc_msgSend                            ; [[arg1 descriptor] isMessage]
  10013e36c  tbz     w0, #0, loc_10013e458                    ; if (!([[arg1 descriptor] isMessage] & 1))
  10013e370  adrp    x8, #0x100420000
  10013e374  ldrsw   x8, [x8, #0x9e8]                         ; ivar offset TAGPBGeneratedMessage.readOnlyMutex_ (+0x40)
  10013e378  add     x21, x20, x8
  10013e37c  mov     x0, x21
  10013e380  bl      _OSSpinLockLock                          ; OSSpinLockLock(x0)
  10013e384  adrp    x8, #0x100420000
  10013e388  ldrsw   x25, [x8, #0x9f4]                        ; ivar offset TAGPBGeneratedMessage.autocreatedExtensionMap_ (+0x18)
  10013e38c  ldr     x0, [x20, x25]                           ; x0 = self->autocreatedExtensionMap_
  10013e390  mov     x1, x23
  10013e394  mov     x2, x19
  10013e398  bl      _objc_msgSend                            ; [self->autocreatedExtensionMap_ objectForKey:arg1]
  10013e39c  mov     x22, x0
  10013e3a0  cbnz    x22, loc_10013e434                       ; if ([self->autocreatedExtensionMap_ objectForKey:arg1] != 0)
  10013e3a4  adrp    x8, #0x10041c000
  10013e3a8  nop
  10013e3ac  ldr     x1, [x8, #0xaa0]
  10013e3b0  mov     x0, x24
  10013e3b4  bl      _objc_msgSend                            ; [[arg1 descriptor] msgClass]
  10013e3b8  adrp    x8, #0x10041c000
  10013e3bc  nop
  10013e3c0  ldr     x1, [x8, #0xaa8]
  10013e3c4  mov     x2, x20
  10013e3c8  mov     x3, x19
  10013e3cc  bl      _objc_msgSend                            ; [[[arg1 descriptor] msgClass] newMessageWithAutocreator:self extension:arg1]
  10013e3d0  mov     x22, x0
  10013e3d4  ldr     x0, [x20, x25]                           ; x0 = self->autocreatedExtensionMap_
  10013e3d8  cbnz    x0, loc_10013e408                        ; if (self->autocreatedExtensionMap_ != 0)
  10013e3dc  adrp    x8, #0x10041d000
  10013e3e0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10013e3e4  adrp    x8, #0x100416000
  10013e3e8  nop
  10013e3ec  ldr     x1, [x8, #0xac8]
  10013e3f0  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  10013e3f4  adrp    x8, #0x100416000
  10013e3f8  nop
  10013e3fc  ldr     x1, [x8, #0xab8]
  10013e400  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  10013e404  str     x0, [x20, x25]                           ; self->autocreatedExtensionMap_ = [[NSMutableDictionary alloc] init]
loc_10013e408:
  10013e408  adrp    x8, #0x100416000
  10013e40c  nop
  10013e410  ldr     x1, [x8, #0xdc8]
  10013e414  mov     x2, x22
  10013e418  mov     x3, x19
  10013e41c  bl      _objc_msgSend                            ; [x0 setObject:[[[arg1 descriptor] msgClass] newMessageWithAutocreator:self extension:arg1] forKey:arg1]
  10013e420  adrp    x8, #0x10041b000
  10013e424  nop
  10013e428  ldr     x1, [x8, #0xd70]
  10013e42c  mov     x0, x22
  10013e430  bl      _objc_msgSend                            ; [[[[arg1 descriptor] msgClass] newMessageWithAutocreator:self extension:arg1] release]
loc_10013e434:
  10013e434  mov     x0, x21
  10013e438  bl      _OSSpinLockUnlock                        ; OSSpinLockUnlock(x0)
loc_10013e43c:
  10013e43c  mov     x0, x22
  10013e440  ldp     x26, x25, [sp], #0x10
  10013e444  ldp     x24, x23, [sp], #0x10
  10013e448  ldp     x22, x21, [sp], #0x10
  10013e44c  ldp     x20, x19, [sp], #0x10
  10013e450  ldp     x29, x30, [sp], #0x10
  10013e454  ret
loc_10013e458:
  10013e458  adrp    x8, #0x10041c000
  10013e45c  nop
  10013e460  ldr     x1, [x8, #0xa98]
  10013e464  mov     x0, x19
  10013e468  ldp     x26, x25, [sp], #0x10
  10013e46c  ldp     x24, x23, [sp], #0x10
  10013e470  ldp     x22, x21, [sp], #0x10
  10013e474  ldp     x20, x19, [sp], #0x10
  10013e478  ldp     x29, x30, [sp], #0x10
  10013e47c  b       _objc_msgSend                            ; [arg1 defaultValue]

; ======================================================================
; sub_10013e480
; address 0x10013e480  size 296  kind sub
; ======================================================================
  10013e480  stp     x29, x30, [sp, #-0x10]!
  10013e484  mov     x29, sp
  10013e488  stp     x20, x19, [sp, #-0x10]!
  10013e48c  stp     x22, x21, [sp, #-0x10]!
  10013e490  stp     x24, x23, [sp, #-0x10]!
  10013e494  stp     x26, x25, [sp, #-0x10]!
  10013e498  sub     sp, sp, #0x20
  10013e49c  mov     x19, x1
  10013e4a0  mov     x21, x0
  10013e4a4  adrp    x8, #0x100417000
  10013e4a8  nop
  10013e4ac  ldr     x22, [x8, #0x2e0]
  10013e4b0  mov     x1, x22
  10013e4b4  bl      _objc_msgSend                            ; [a0 class]
  10013e4b8  adrp    x8, #0x10041c000
  10013e4bc  nop
  10013e4c0  ldr     x23, [x8, #0x7e8]
  10013e4c4  mov     x1, x23
  10013e4c8  bl      _objc_msgSend                            ; [[a0 class] descriptor]
  10013e4cc  mov     x24, x0
  10013e4d0  adrp    x8, #0x10041c000
  10013e4d4  nop
  10013e4d8  ldr     x20, [x8, #0x868]
  10013e4dc  mov     x0, x19
  10013e4e0  mov     x1, x20
  10013e4e4  bl      _objc_msgSend                            ; [a1 containingType]
  10013e4e8  cmp     x24, x0
  10013e4ec  b.eq    loc_10013e58c                            ; if ([[a0 class] descriptor] == [a1 containingType])
  10013e4f0  adrp    x8, #0x10041d000
  10013e4f4  ldr     x24, [x8, #0xfc8]                        ; class NSException
  10013e4f8  adrp    x8, #0x1003b0000
  10013e4fc  ldr     x8, [x8, #0x40]                          ; _NSInvalidArgumentException
  10013e500  ldr     x25, [x8]                                ; x25 = _NSInvalidArgumentException[+0x0]
  10013e504  mov     x0, x19
  10013e508  mov     x1, x23
  10013e50c  bl      _objc_msgSend                            ; [a1 descriptor]
  10013e510  adrp    x8, #0x10041c000
  10013e514  nop
  10013e518  ldr     x1, [x8, #0xc60]
  10013e51c  bl      _objc_msgSend                            ; [[a1 descriptor] singletonName]
  10013e520  mov     x26, x0
  10013e524  mov     x0, x21
  10013e528  mov     x1, x22
  10013e52c  bl      _objc_msgSend                            ; [a0 class]
  10013e530  mov     x1, x23
  10013e534  bl      _objc_msgSend                            ; [[a0 class] descriptor]
  10013e538  adrp    x8, #0x100417000
  10013e53c  nop
  10013e540  ldr     x21, [x8, #0x450]
  10013e544  mov     x1, x21
  10013e548  bl      _objc_msgSend                            ; [[[a0 class] descriptor] name]
  10013e54c  mov     x22, x0
  10013e550  mov     x0, x19
  10013e554  mov     x1, x20
  10013e558  bl      _objc_msgSend                            ; [a1 containingType]
  10013e55c  mov     x1, x21
  10013e560  bl      _objc_msgSend                            ; [[a1 containingType] name]
  10013e564  adrp    x8, #0x100417000
  10013e568  nop
  10013e56c  ldr     x1, [x8, #0x260]
  10013e570  stp     x22, x0, [sp, #8]
  10013e574  str     x26, [sp]
  10013e578  adrp    x3, #0x1003c7000
  10013e57c  add     x3, x3, #0x5b0                           ; @"Extension %@ used on wrong class (%@ instead of %@)"
  10013e580  mov     x0, x24
  10013e584  mov     x2, x25
  10013e588  bl      _objc_msgSend                            ; [NSException raise:_NSInvalidArgumentException[+0x0] format:@"Extension %@ used on wrong class (%@ instead of %@)", [[a1 descriptor] singletonName], [[[a0 class] descriptor] name], [[a1 containingType] name]]
loc_10013e58c:
  10013e58c  sub     sp, x29, #0x40
  10013e590  ldp     x26, x25, [sp], #0x10
  10013e594  ldp     x24, x23, [sp], #0x10
  10013e598  ldp     x22, x21, [sp], #0x10
  10013e59c  ldp     x20, x19, [sp], #0x10
  10013e5a0  ldp     x29, x30, [sp], #0x10
  10013e5a4  ret

; ======================================================================
; -[TAGPBGeneratedMessage getExistingExtension:]
; address 0x10013e5a8  size 28  kind objc
; ======================================================================
  10013e5a8  adrp    x8, #0x100420000
  10013e5ac  ldrsw   x8, [x8, #0x9f0]                         ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10013e5b0  ldr     x0, [x0, x8]                             ; x0 = self->extensionMap_
  10013e5b4  adrp    x8, #0x100417000
  10013e5b8  nop
  10013e5bc  ldr     x1, [x8, #0x40]
  10013e5c0  b       _objc_msgSend                            ; [self->extensionMap_ objectForKey:arg1]

; ======================================================================
; -[TAGPBGeneratedMessage hasExtension:]
; address 0x10013e5c4  size 52  kind objc
; ======================================================================
  10013e5c4  stp     x29, x30, [sp, #-0x10]!
  10013e5c8  mov     x29, sp
  10013e5cc  adrp    x8, #0x100420000
  10013e5d0  ldrsw   x8, [x8, #0x9f0]                         ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10013e5d4  ldr     x0, [x0, x8]                             ; x0 = self->extensionMap_
  10013e5d8  adrp    x8, #0x100417000
  10013e5dc  nop
  10013e5e0  ldr     x1, [x8, #0x40]
  10013e5e4  bl      _objc_msgSend                            ; [self->extensionMap_ objectForKey:arg1]
  10013e5e8  cmp     x0, #0
  10013e5ec  cset    w0, ne
  10013e5f0  ldp     x29, x30, [sp], #0x10
  10013e5f4  ret

; ======================================================================
; -[TAGPBGeneratedMessage extensionsCurrentlySet]
; address 0x10013e5f8  size 28  kind objc
; ======================================================================
  10013e5f8  adrp    x8, #0x100420000
  10013e5fc  ldrsw   x8, [x8, #0x9f0]                         ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10013e600  ldr     x0, [x0, x8]                             ; x0 = self->extensionMap_
  10013e604  adrp    x8, #0x100417000
  10013e608  nop
  10013e60c  ldr     x1, [x8, #0x248]
  10013e610  b       _objc_msgSend                            ; [self->extensionMap_ allKeys]

; ======================================================================
; -[TAGPBGeneratedMessage writeExtensionsToCodedOutputStream:range:]
; address 0x10013e614  size 488  kind objc
; ======================================================================
  10013e614  stp     x29, x30, [sp, #-0x10]!
  10013e618  mov     x29, sp
  10013e61c  stp     x20, x19, [sp, #-0x10]!
  10013e620  stp     x22, x21, [sp, #-0x10]!
  10013e624  stp     x24, x23, [sp, #-0x10]!
  10013e628  stp     x26, x25, [sp, #-0x10]!
  10013e62c  stp     x28, x27, [sp, #-0x10]!
  10013e630  sub     sp, sp, #0x100
  10013e634  mov     x23, x3
  10013e638  stp     x0, x2, [sp, #0x28]
  10013e63c  adrp    x8, #0x1003b0000
  10013e640  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013e644  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013e648  stur    x8, [x29, #-0x58]
  10013e64c  adrp    x8, #0x100420000
  10013e650  ldrsw   x8, [x8, #0x9f0]                         ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10013e654  str     x8, [sp, #0x20]
  10013e658  ldr     x0, [x0, x8]                             ; x0 = self->extensionMap_
  10013e65c  adrp    x8, #0x100417000
  10013e660  nop
  10013e664  ldr     x1, [x8, #0x248]
  10013e668  bl      _objc_msgSend                            ; [self->extensionMap_ allKeys]
  10013e66c  adrp    x8, #0x10041c000
  10013e670  nop
  10013e674  ldr     x2, [x8, #0xab0]
  10013e678  adrp    x8, #0x10041c000
  10013e67c  nop
  10013e680  ldr     x1, [x8, #0x448]
  10013e684  bl      _objc_msgSend                            ; [[self->extensionMap_ allKeys] sortedArrayUsingSelector:@selector(compareByFieldNumber:)]
  10013e688  mov     x21, x0
  10013e68c  adrp    x8, #0x10041b000
  10013e690  nop
  10013e694  ldr     x1, [x8, #0xc38]
  10013e698  mov     x0, x23
  10013e69c  bl      _objc_msgSend                            ; [arg2 start]
  10013e6a0  mov     x22, x0
  10013e6a4  adrp    x8, #0x10041c000
  10013e6a8  nop
  10013e6ac  ldr     x1, [x8, #0xab8]
  10013e6b0  mov     x0, x23
  10013e6b4  bl      _objc_msgSend                            ; [arg2 end]
  10013e6b8  mov     x23, x0
  10013e6bc  stp     xzr, xzr, [x29, #-0x68]
  10013e6c0  stp     xzr, xzr, [x29, #-0x78]
  10013e6c4  stp     xzr, xzr, [x29, #-0x88]
  10013e6c8  stp     xzr, xzr, [x29, #-0x98]
  10013e6cc  adrp    x8, #0x100416000
  10013e6d0  nop
  10013e6d4  ldr     x1, [x8, #0xe00]
  10013e6d8  str     x1, [sp, #0x18]
  10013e6dc  sub     x2, x29, #0x98
  10013e6e0  add     x3, sp, #0x38
  10013e6e4  mov     x4, #0x10
  10013e6e8  mov     x0, x21
  10013e6ec  bl      _objc_msgSend                            ; [[[self->extensionMap_ allKeys] sortedArrayUsingSelector:@selector(compareByFieldNumber:)] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  10013e6f0  mov     x26, x0
  10013e6f4  cbz     x26, loc_10013e7c0                       ; if ([[[self->extensionMap_ allKeys] sortedArrayUsingSelector:@selector(compareByFieldNumber:)] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] == 0)
  10013e6f8  ldur    x8, [x29, #-0x88]
  10013e6fc  ldr     x20, [x8]
  10013e700  adrp    x8, #0x10041c000
  10013e704  nop
  10013e708  ldr     x25, [x8, #0x860]
  10013e70c  adrp    x8, #0x100417000
  10013e710  nop
  10013e714  ldr     x27, [x8, #0x40]
  10013e718  adrp    x8, #0x10041c000
  10013e71c  nop
  10013e720  ldr     x28, [x8, #0xac0]
  10013e724  sub     x8, x29, #0x98
  10013e728  str     x8, [sp, #0x10]
  10013e72c  add     x8, sp, #0x38
  10013e730  str     x8, [sp, #8]
loc_10013e734:
  10013e734  mov     x19, #0
loc_10013e738:
  10013e738  ldur    x8, [x29, #-0x88]
  10013e73c  ldr     x8, [x8]
  10013e740  cmp     x8, x20
  10013e744  b.eq    loc_10013e750                            ; if (x8 == x20)
  10013e748  mov     x0, x21
  10013e74c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self->extensionMap_ allKeys] sortedArrayUsingSelector:@selector(compareByFieldNumber:)])
loc_10013e750:
  10013e750  ldur    x8, [x29, #-0x90]
  10013e754  ldr     x24, [x8, x19, lsl #3]
  10013e758  mov     x0, x24
  10013e75c  mov     x1, x25
  10013e760  bl      _objc_msgSend                            ; [x0 fieldNumber]
  10013e764  cmp     w0, w22
  10013e768  ccmp    w0, w23, #2, hs
  10013e76c  b.hs    loc_10013e798                            ; if (flags >=u)
  10013e770  ldp     x9, x8, [sp, #0x20]
  10013e774  ldr     x0, [x8, x9]                             ; x0 = self->extensionMap_
  10013e778  mov     x1, x27
  10013e77c  mov     x2, x24
  10013e780  bl      _objc_msgSend                            ; [self->extensionMap_ objectForKey:x2]
  10013e784  mov     x2, x0
  10013e788  mov     x0, x24
  10013e78c  mov     x1, x28
  10013e790  ldr     x3, [sp, #0x30]
  10013e794  bl      _objc_msgSend                            ; [x0 writeValue:[self->extensionMap_ objectForKey:x2] includingTagToCodedOutputStream:arg1]
loc_10013e798:
  10013e798  add     x19, x19, #1
  10013e79c  cmp     x19, x26
  10013e7a0  b.lo    loc_10013e738                            ; if ((x19 + 1) <u [[[self->extensionMap_ allKeys] sortedArrayUsingSelector:@selector(compareByFieldNumber:)] countByEnumeratingWithState:&…)
  10013e7a4  mov     x4, #0x10
  10013e7a8  mov     x0, x21
  10013e7ac  ldp     x2, x1, [sp, #0x10]
  10013e7b0  ldr     x3, [sp, #8]
  10013e7b4  bl      _objc_msgSend                            ; [[[self->extensionMap_ allKeys] sortedArrayUsingSelector:@selector(compareByFieldNumber:)] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  10013e7b8  mov     x26, x0
  10013e7bc  cbnz    x26, loc_10013e734                       ; if ([[[self->extensionMap_ allKeys] sortedArrayUsingSelector:@selector(compareByFieldNumber:)] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] != 0)
loc_10013e7c0:
  10013e7c0  adrp    x8, #0x1003b0000
  10013e7c4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013e7c8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013e7cc  ldur    x9, [x29, #-0x58]
  10013e7d0  sub     x8, x8, x9
  10013e7d4  cbnz    x8, loc_10013e7f8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10013e7d8  sub     sp, x29, #0x50
  10013e7dc  ldp     x28, x27, [sp], #0x10
  10013e7e0  ldp     x26, x25, [sp], #0x10
  10013e7e4  ldp     x24, x23, [sp], #0x10
  10013e7e8  ldp     x22, x21, [sp], #0x10
  10013e7ec  ldp     x20, x19, [sp], #0x10
  10013e7f0  ldp     x29, x30, [sp], #0x10
  10013e7f4  ret
loc_10013e7f8:
  10013e7f8  bl      ___stack_chk_fail                        ; stack_chk_fail([[[self->extensionMap_ allKeys] sortedArrayUsingSelector:@selector(compareByFieldNumber:)] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16])

; ======================================================================
; -[TAGPBGeneratedMessage sortedExtensionsInUse]
; address 0x10013e7fc  size 68  kind objc
; ======================================================================
  10013e7fc  stp     x29, x30, [sp, #-0x10]!
  10013e800  mov     x29, sp
  10013e804  adrp    x8, #0x100420000
  10013e808  ldrsw   x8, [x8, #0x9f0]                         ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10013e80c  ldr     x0, [x0, x8]                             ; x0 = self->extensionMap_
  10013e810  adrp    x8, #0x100417000
  10013e814  nop
  10013e818  ldr     x1, [x8, #0x248]
  10013e81c  bl      _objc_msgSend                            ; [self->extensionMap_ allKeys]
  10013e820  adrp    x8, #0x10041c000
  10013e824  nop
  10013e828  ldr     x2, [x8, #0xab0]
  10013e82c  adrp    x8, #0x10041c000
  10013e830  nop
  10013e834  ldr     x1, [x8, #0x448]
  10013e838  ldp     x29, x30, [sp], #0x10
  10013e83c  b       _objc_msgSend                            ; [[self->extensionMap_ allKeys] sortedArrayUsingSelector:@selector(compareByFieldNumber:)]

; ======================================================================
; -[TAGPBGeneratedMessage extensionsSerializedSize]
; address 0x10013e840  size 356  kind objc
; ======================================================================
  10013e840  stp     x29, x30, [sp, #-0x10]!
  10013e844  mov     x29, sp
  10013e848  stp     x20, x19, [sp, #-0x10]!
  10013e84c  stp     x22, x21, [sp, #-0x10]!
  10013e850  stp     x24, x23, [sp, #-0x10]!
  10013e854  stp     x26, x25, [sp, #-0x10]!
  10013e858  stp     x28, x27, [sp, #-0x10]!
  10013e85c  sub     sp, sp, #0xf0
  10013e860  mov     x19, x0
  10013e864  adrp    x8, #0x1003b0000
  10013e868  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013e86c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013e870  stur    x8, [x29, #-0x58]
  10013e874  stp     xzr, xzr, [x29, #-0x68]
  10013e878  stp     xzr, xzr, [x29, #-0x78]
  10013e87c  stp     xzr, xzr, [x29, #-0x88]
  10013e880  stp     xzr, xzr, [x29, #-0x98]
  10013e884  adrp    x8, #0x100420000
  10013e888  ldrsw   x21, [x8, #0x9f0]                        ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10013e88c  ldr     x20, [x19, x21]                          ; x20 = self->extensionMap_
  10013e890  adrp    x8, #0x100416000
  10013e894  nop
  10013e898  ldr     x1, [x8, #0xe00]
  10013e89c  str     x1, [sp, #0x20]
  10013e8a0  sub     x2, x29, #0x98
  10013e8a4  add     x3, sp, #0x28
  10013e8a8  mov     x4, #0x10
  10013e8ac  mov     x0, x20
  10013e8b0  bl      _objc_msgSend                            ; [self->extensionMap_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  10013e8b4  mov     x23, x0
  10013e8b8  mov     x22, #0
  10013e8bc  cbz     x23, loc_10013e964                       ; if ([self->extensionMap_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] == 0)
  10013e8c0  mov     x22, #0
  10013e8c4  ldur    x8, [x29, #-0x88]
  10013e8c8  ldr     x26, [x8]
  10013e8cc  adrp    x8, #0x100417000
  10013e8d0  nop
  10013e8d4  ldr     x24, [x8, #0x40]
  10013e8d8  adrp    x8, #0x10041c000
  10013e8dc  nop
  10013e8e0  ldr     x25, [x8, #0xac8]
  10013e8e4  sub     x8, x29, #0x98
  10013e8e8  str     x8, [sp, #0x18]
  10013e8ec  add     x8, sp, #0x28
  10013e8f0  str     x8, [sp, #0x10]
loc_10013e8f4:
  10013e8f4  mov     x27, #0
loc_10013e8f8:
  10013e8f8  ldur    x8, [x29, #-0x88]
  10013e8fc  ldr     x8, [x8]
  10013e900  cmp     x8, x26
  10013e904  b.eq    loc_10013e910                            ; if (x8 == x26)
  10013e908  mov     x0, x20
  10013e90c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->extensionMap_)
loc_10013e910:
  10013e910  ldur    x8, [x29, #-0x90]
  10013e914  ldr     x28, [x8, x27, lsl #3]
  10013e918  ldr     x0, [x19, x21]                           ; x0 = self->extensionMap_
  10013e91c  mov     x1, x24
  10013e920  mov     x2, x28
  10013e924  bl      _objc_msgSend                            ; [self->extensionMap_ objectForKey:x2]
  10013e928  mov     x2, x0
  10013e92c  mov     x0, x28
  10013e930  mov     x1, x25
  10013e934  bl      _objc_msgSend                            ; [x0 computeSerializedSizeIncludingTag:[self->extensionMap_ objectForKey:x2]]
  10013e938  add     x22, x0, x22
  10013e93c  add     x27, x27, #1
  10013e940  cmp     x27, x23
  10013e944  b.lo    loc_10013e8f8                            ; if ((x27 + 1) <u [self->extensionMap_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16])
  10013e948  mov     x4, #0x10
  10013e94c  mov     x0, x20
  10013e950  ldp     x2, x1, [sp, #0x18]
  10013e954  ldr     x3, [sp, #0x10]
  10013e958  bl      _objc_msgSend                            ; [self->extensionMap_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  10013e95c  mov     x23, x0
  10013e960  cbnz    x23, loc_10013e8f4                       ; if ([self->extensionMap_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] != 0)
loc_10013e964:
  10013e964  adrp    x8, #0x1003b0000
  10013e968  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013e96c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013e970  ldur    x9, [x29, #-0x58]
  10013e974  sub     x8, x8, x9
  10013e978  cbnz    x8, loc_10013e9a0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10013e97c  mov     x0, x22
  10013e980  sub     sp, x29, #0x50
  10013e984  ldp     x28, x27, [sp], #0x10
  10013e988  ldp     x26, x25, [sp], #0x10
  10013e98c  ldp     x24, x23, [sp], #0x10
  10013e990  ldp     x22, x21, [sp], #0x10
  10013e994  ldp     x20, x19, [sp], #0x10
  10013e998  ldp     x29, x30, [sp], #0x10
  10013e99c  ret
loc_10013e9a0:
  10013e9a0  bl      ___stack_chk_fail                        ; stack_chk_fail([self->extensionMap_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16])

; ======================================================================
; -[TAGPBGeneratedMessage setExtension:value:]
; address 0x10013e9a4  size 444  kind objc
; ======================================================================
  10013e9a4  stp     x29, x30, [sp, #-0x10]!
  10013e9a8  mov     x29, sp
  10013e9ac  stp     x20, x19, [sp, #-0x10]!
  10013e9b0  stp     x22, x21, [sp, #-0x10]!
  10013e9b4  stp     x24, x23, [sp, #-0x10]!
  10013e9b8  mov     x22, x3
  10013e9bc  mov     x20, x2
  10013e9c0  mov     x19, x0
  10013e9c4  cbz     x22, loc_10013eb38                       ; if (arg2 == 0)
  10013e9c8  mov     x0, x19
  10013e9cc  mov     x1, x20
  10013e9d0  bl      sub_10013e480                            ; sub_10013e480(self, arg1, arg1, arg2)
  10013e9d4  adrp    x8, #0x10041c000
  10013e9d8  nop
  10013e9dc  ldr     x21, [x8, #0x770]
  10013e9e0  mov     x0, x20
  10013e9e4  mov     x1, x21
  10013e9e8  bl      _objc_msgSend                            ; [arg1 isRepeated]
  10013e9ec  cbz     w0, loc_10013ea1c                        ; if ([arg1 isRepeated] == 0)
  10013e9f0  adrp    x8, #0x10041d000
  10013e9f4  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10013e9f8  adrp    x8, #0x1003b0000
  10013e9fc  ldr     x8, [x8, #0x40]                          ; _NSInvalidArgumentException
  10013ea00  ldr     x2, [x8]                                 ; x2 = _NSInvalidArgumentException[+0x0]
  10013ea04  adrp    x8, #0x100417000
  10013ea08  nop
  10013ea0c  ldr     x1, [x8, #0x260]
  10013ea10  adrp    x3, #0x1003c7000
  10013ea14  add     x3, x3, #0x70                            ; @"Must call addExtension() for repeated types."
  10013ea18  bl      _objc_msgSend                            ; [NSException raise:_NSInvalidArgumentException[+0x0] format:@"Must call addExtension() for repeated types."]
loc_10013ea1c:
  10013ea1c  adrp    x8, #0x100420000
  10013ea20  ldrsw   x23, [x8, #0x9f0]                        ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10013ea24  ldr     x0, [x19, x23]                           ; x0 = self->extensionMap_
  10013ea28  cbnz    x0, loc_10013ea58                        ; if (self->extensionMap_ != 0)
  10013ea2c  adrp    x8, #0x10041d000
  10013ea30  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10013ea34  adrp    x8, #0x100416000
  10013ea38  nop
  10013ea3c  ldr     x1, [x8, #0xac8]
  10013ea40  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  10013ea44  adrp    x8, #0x100416000
  10013ea48  nop
  10013ea4c  ldr     x1, [x8, #0xab8]
  10013ea50  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  10013ea54  str     x0, [x19, x23]                           ; self->extensionMap_ = [[NSMutableDictionary alloc] init]
loc_10013ea58:
  10013ea58  adrp    x8, #0x100416000
  10013ea5c  nop
  10013ea60  ldr     x1, [x8, #0xdc8]
  10013ea64  mov     x2, x22
  10013ea68  mov     x3, x20
  10013ea6c  bl      _objc_msgSend                            ; [x0 setObject:arg2 forKey:arg1]
  10013ea70  adrp    x8, #0x10041c000
  10013ea74  nop
  10013ea78  ldr     x1, [x8, #0x7e8]
  10013ea7c  mov     x0, x20
  10013ea80  bl      _objc_msgSend                            ; [arg1 descriptor]
  10013ea84  mov     x22, x0
  10013ea88  adrp    x8, #0x10041c000
  10013ea8c  nop
  10013ea90  ldr     x1, [x8, #0x780]
  10013ea94  bl      _objc_msgSend                            ; [[arg1 descriptor] isMessage]
  10013ea98  cbz     w0, loc_10013eb20                        ; if ([[arg1 descriptor] isMessage] == 0)
  10013ea9c  mov     x0, x22
  10013eaa0  mov     x1, x21
  10013eaa4  bl      _objc_msgSend                            ; [[arg1 descriptor] isRepeated]
  10013eaa8  tbnz    w0, #0, loc_10013eb20                    ; if (([[arg1 descriptor] isRepeated] & 1))
  10013eaac  adrp    x8, #0x100420000
  10013eab0  ldrsw   x22, [x8, #0x9f4]                        ; ivar offset TAGPBGeneratedMessage.autocreatedExtensionMap_ (+0x18)
  10013eab4  ldr     x0, [x19, x22]                           ; x0 = self->autocreatedExtensionMap_
  10013eab8  adrp    x8, #0x100417000
  10013eabc  nop
  10013eac0  ldr     x1, [x8, #0x40]
  10013eac4  mov     x2, x20
  10013eac8  bl      _objc_msgSend                            ; [self->autocreatedExtensionMap_ objectForKey:arg1]
  10013eacc  adrp    x8, #0x10041b000
  10013ead0  nop
  10013ead4  ldr     x1, [x8, #0xdb8]
  10013ead8  bl      _objc_msgSend                            ; [[self->autocreatedExtensionMap_ objectForKey:arg1] retain]
  10013eadc  mov     x21, x0
  10013eae0  ldr     x0, [x19, x22]                           ; x0 = self->autocreatedExtensionMap_
  10013eae4  adrp    x8, #0x10041b000
  10013eae8  nop
  10013eaec  ldr     x1, [x8, #0x1e0]
  10013eaf0  mov     x2, x20
  10013eaf4  bl      _objc_msgSend                            ; [self->autocreatedExtensionMap_ removeObjectForKey:arg1]
  10013eaf8  adrp    x8, #0x10041c000
  10013eafc  nop
  10013eb00  ldr     x1, [x8, #0x9c0]
  10013eb04  mov     x0, x21
  10013eb08  bl      _objc_msgSend                            ; [[[self->autocreatedExtensionMap_ objectForKey:arg1] retain] clearAutocreator]
  10013eb0c  adrp    x8, #0x10041b000
  10013eb10  nop
  10013eb14  ldr     x1, [x8, #0xd70]
  10013eb18  mov     x0, x21
  10013eb1c  bl      _objc_msgSend                            ; [[[self->autocreatedExtensionMap_ objectForKey:arg1] retain] release]
loc_10013eb20:
  10013eb20  mov     x0, x19
  10013eb24  ldp     x24, x23, [sp], #0x10
  10013eb28  ldp     x22, x21, [sp], #0x10
  10013eb2c  ldp     x20, x19, [sp], #0x10
  10013eb30  ldp     x29, x30, [sp], #0x10
  10013eb34  b       sub_10013b9fc                            ; sub_10013b9fc(self)
loc_10013eb38:
  10013eb38  adrp    x8, #0x10041c000
  10013eb3c  nop
  10013eb40  ldr     x1, [x8, #0xad0]
  10013eb44  mov     x0, x19
  10013eb48  mov     x2, x20
  10013eb4c  ldp     x24, x23, [sp], #0x10
  10013eb50  ldp     x22, x21, [sp], #0x10
  10013eb54  ldp     x20, x19, [sp], #0x10
  10013eb58  ldp     x29, x30, [sp], #0x10
  10013eb5c  b       _objc_msgSend                            ; [self clearExtension:arg1]

; ======================================================================
; -[TAGPBGeneratedMessage addExtension:value:]
; address 0x10013eb60  size 300  kind objc
; ======================================================================
  10013eb60  stp     x29, x30, [sp, #-0x10]!
  10013eb64  mov     x29, sp
  10013eb68  stp     x20, x19, [sp, #-0x10]!
  10013eb6c  stp     x22, x21, [sp, #-0x10]!
  10013eb70  stp     x24, x23, [sp, #-0x10]!
  10013eb74  mov     x20, x3
  10013eb78  mov     x21, x2
  10013eb7c  mov     x19, x0
  10013eb80  mov     x1, x21
  10013eb84  bl      sub_10013e480                            ; sub_10013e480(self, arg1, arg1, arg2)
  10013eb88  adrp    x8, #0x10041c000
  10013eb8c  nop
  10013eb90  ldr     x1, [x8, #0x770]
  10013eb94  mov     x0, x21
  10013eb98  bl      _objc_msgSend                            ; [arg1 isRepeated]
  10013eb9c  tbnz    w0, #0, loc_10013ebcc                    ; if (([arg1 isRepeated] & 1))
  10013eba0  adrp    x8, #0x10041d000
  10013eba4  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10013eba8  adrp    x8, #0x1003b0000
  10013ebac  ldr     x8, [x8, #0x40]                          ; _NSInvalidArgumentException
  10013ebb0  ldr     x2, [x8]                                 ; x2 = _NSInvalidArgumentException[+0x0]
  10013ebb4  adrp    x8, #0x100417000
  10013ebb8  nop
  10013ebbc  ldr     x1, [x8, #0x260]
  10013ebc0  adrp    x3, #0x1003c7000
  10013ebc4  add     x3, x3, #0x90                            ; @"Must call setExtension() for singular types."
  10013ebc8  bl      _objc_msgSend                            ; [NSException raise:_NSInvalidArgumentException[+0x0] format:@"Must call setExtension() for singular types."]
loc_10013ebcc:
  10013ebcc  adrp    x8, #0x100420000
  10013ebd0  ldrsw   x23, [x8, #0x9f0]                        ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10013ebd4  ldr     x0, [x19, x23]                           ; x0 = self->extensionMap_
  10013ebd8  cbnz    x0, loc_10013ec08                        ; if (self->extensionMap_ != 0)
  10013ebdc  adrp    x8, #0x10041d000
  10013ebe0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10013ebe4  adrp    x8, #0x100416000
  10013ebe8  nop
  10013ebec  ldr     x1, [x8, #0xac8]
  10013ebf0  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  10013ebf4  adrp    x8, #0x100416000
  10013ebf8  nop
  10013ebfc  ldr     x1, [x8, #0xab8]
  10013ec00  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  10013ec04  str     x0, [x19, x23]                           ; self->extensionMap_ = [[NSMutableDictionary alloc] init]
loc_10013ec08:
  10013ec08  adrp    x8, #0x100417000
  10013ec0c  nop
  10013ec10  ldr     x1, [x8, #0x40]
  10013ec14  mov     x2, x21
  10013ec18  bl      _objc_msgSend                            ; [x0 objectForKey:arg1]
  10013ec1c  mov     x22, x0
  10013ec20  cbnz    x22, loc_10013ec5c                       ; if ([x0 objectForKey:arg1] != 0)
  10013ec24  adrp    x8, #0x10041d000
  10013ec28  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10013ec2c  adrp    x8, #0x100418000
  10013ec30  nop
  10013ec34  ldr     x1, [x8, #0x50]
  10013ec38  bl      _objc_msgSend                            ; [NSMutableArray array]
  10013ec3c  mov     x22, x0
  10013ec40  ldr     x0, [x19, x23]                           ; x0 = self->extensionMap_
  10013ec44  adrp    x8, #0x100416000
  10013ec48  nop
  10013ec4c  ldr     x1, [x8, #0xdc8]
  10013ec50  mov     x2, x22
  10013ec54  mov     x3, x21
  10013ec58  bl      _objc_msgSend                            ; [self->extensionMap_ setObject:[NSMutableArray array] forKey:arg1]
loc_10013ec5c:
  10013ec5c  adrp    x8, #0x100416000
  10013ec60  nop
  10013ec64  ldr     x1, [x8, #0xd90]
  10013ec68  mov     x0, x22
  10013ec6c  mov     x2, x20
  10013ec70  bl      _objc_msgSend                            ; [x0 addObject:arg2]
  10013ec74  mov     x0, x19
  10013ec78  ldp     x24, x23, [sp], #0x10
  10013ec7c  ldp     x22, x21, [sp], #0x10
  10013ec80  ldp     x20, x19, [sp], #0x10
  10013ec84  ldp     x29, x30, [sp], #0x10
  10013ec88  b       sub_10013b9fc                            ; sub_10013b9fc(self)

; ======================================================================
; -[TAGPBGeneratedMessage setExtension:index:value:]
; address 0x10013ec8c  size 240  kind objc
; ======================================================================
  10013ec8c  stp     x29, x30, [sp, #-0x10]!
  10013ec90  mov     x29, sp
  10013ec94  stp     x20, x19, [sp, #-0x10]!
  10013ec98  stp     x22, x21, [sp, #-0x10]!
  10013ec9c  stp     x24, x23, [sp, #-0x10]!
  10013eca0  mov     x20, x4
  10013eca4  mov     x21, x3
  10013eca8  mov     x22, x2
  10013ecac  mov     x19, x0
  10013ecb0  mov     x1, x22
  10013ecb4  bl      sub_10013e480                            ; sub_10013e480(self, arg1, arg1, arg2)
  10013ecb8  adrp    x8, #0x10041c000
  10013ecbc  nop
  10013ecc0  ldr     x1, [x8, #0x770]
  10013ecc4  mov     x0, x22
  10013ecc8  bl      _objc_msgSend                            ; [arg1 isRepeated]
  10013eccc  tbnz    w0, #0, loc_10013ecfc                    ; if (([arg1 isRepeated] & 1))
  10013ecd0  adrp    x8, #0x10041d000
  10013ecd4  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10013ecd8  adrp    x8, #0x1003b0000
  10013ecdc  ldr     x8, [x8, #0x40]                          ; _NSInvalidArgumentException
  10013ece0  ldr     x2, [x8]                                 ; x2 = _NSInvalidArgumentException[+0x0]
  10013ece4  adrp    x8, #0x100417000
  10013ece8  nop
  10013ecec  ldr     x1, [x8, #0x260]
  10013ecf0  adrp    x3, #0x1003c7000
  10013ecf4  add     x3, x3, #0x90                            ; @"Must call setExtension() for singular types."
  10013ecf8  bl      _objc_msgSend                            ; [NSException raise:_NSInvalidArgumentException[+0x0] format:@"Must call setExtension() for singular types."]
loc_10013ecfc:
  10013ecfc  adrp    x8, #0x100420000
  10013ed00  ldrsw   x23, [x8, #0x9f0]                        ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10013ed04  ldr     x0, [x19, x23]                           ; x0 = self->extensionMap_
  10013ed08  cbnz    x0, loc_10013ed38                        ; if (self->extensionMap_ != 0)
  10013ed0c  adrp    x8, #0x10041d000
  10013ed10  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10013ed14  adrp    x8, #0x100416000
  10013ed18  nop
  10013ed1c  ldr     x1, [x8, #0xac8]
  10013ed20  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  10013ed24  adrp    x8, #0x100416000
  10013ed28  nop
  10013ed2c  ldr     x1, [x8, #0xab8]
  10013ed30  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  10013ed34  str     x0, [x19, x23]                           ; self->extensionMap_ = [[NSMutableDictionary alloc] init]
loc_10013ed38:
  10013ed38  adrp    x8, #0x100417000
  10013ed3c  nop
  10013ed40  ldr     x1, [x8, #0x40]
  10013ed44  mov     x2, x22
  10013ed48  bl      _objc_msgSend                            ; [x0 objectForKey:arg1]
  10013ed4c  adrp    x8, #0x100418000
  10013ed50  nop
  10013ed54  ldr     x1, [x8, #0x4b8]
  10013ed58  mov     x2, x21
  10013ed5c  mov     x3, x20
  10013ed60  bl      _objc_msgSend                            ; [[x0 objectForKey:arg1] replaceObjectAtIndex:arg2 withObject:arg3]
  10013ed64  mov     x0, x19
  10013ed68  ldp     x24, x23, [sp], #0x10
  10013ed6c  ldp     x22, x21, [sp], #0x10
  10013ed70  ldp     x20, x19, [sp], #0x10
  10013ed74  ldp     x29, x30, [sp], #0x10
  10013ed78  b       sub_10013b9fc                            ; sub_10013b9fc(self)

; ======================================================================
; -[TAGPBGeneratedMessage clearExtension:]
; address 0x10013ed7c  size 128  kind objc
; ======================================================================
  10013ed7c  stp     x29, x30, [sp, #-0x10]!
  10013ed80  mov     x29, sp
  10013ed84  stp     x20, x19, [sp, #-0x10]!
  10013ed88  stp     x22, x21, [sp, #-0x10]!
  10013ed8c  mov     x20, x2
  10013ed90  mov     x19, x0
  10013ed94  mov     x1, x20
  10013ed98  bl      sub_10013e480                            ; sub_10013e480(self, arg1, arg1)
  10013ed9c  adrp    x8, #0x100420000
  10013eda0  ldrsw   x21, [x8, #0x9f0]                        ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10013eda4  ldr     x0, [x19, x21]                           ; x0 = self->extensionMap_
  10013eda8  adrp    x8, #0x100417000
  10013edac  nop
  10013edb0  ldr     x1, [x8, #0x40]
  10013edb4  mov     x2, x20
  10013edb8  bl      _objc_msgSend                            ; [self->extensionMap_ objectForKey:arg1]
  10013edbc  cbz     x0, loc_10013edec                        ; if ([self->extensionMap_ objectForKey:arg1] == 0)
  10013edc0  ldr     x0, [x19, x21]                           ; x0 = self->extensionMap_
  10013edc4  adrp    x8, #0x10041b000
  10013edc8  nop
  10013edcc  ldr     x1, [x8, #0x1e0]
  10013edd0  mov     x2, x20
  10013edd4  bl      _objc_msgSend                            ; [self->extensionMap_ removeObjectForKey:arg1]
  10013edd8  mov     x0, x19
  10013eddc  ldp     x22, x21, [sp], #0x10
  10013ede0  ldp     x20, x19, [sp], #0x10
  10013ede4  ldp     x29, x30, [sp], #0x10
  10013ede8  b       sub_10013b9fc                            ; sub_10013b9fc(self)
loc_10013edec:
  10013edec  ldp     x22, x21, [sp], #0x10
  10013edf0  ldp     x20, x19, [sp], #0x10
  10013edf4  ldp     x29, x30, [sp], #0x10
  10013edf8  ret

; ======================================================================
; -[TAGPBGeneratedMessage clearAutocreator]
; address 0x10013edfc  size 116  kind objc
; ======================================================================
  10013edfc  stp     x29, x30, [sp, #-0x10]!
  10013ee00  mov     x29, sp
  10013ee04  stp     x20, x19, [sp, #-0x10]!
  10013ee08  stp     x22, x21, [sp, #-0x10]!
  10013ee0c  mov     x19, x0
  10013ee10  adrp    x8, #0x100420000
  10013ee14  ldrsw   x8, [x8, #0x9d8]                         ; ivar offset TAGPBGeneratedMessage.autocreator_ (+0x20)
  10013ee18  ldr     x9, [x19, x8]                            ; x9 = self->autocreator_
  10013ee1c  cbz     x9, loc_10013ee60                        ; if (self->autocreator_ == 0)
  10013ee20  str     xzr, [x19, x8]                           ; self->autocreator_ = 0
  10013ee24  adrp    x8, #0x100420000
  10013ee28  ldrsw   x21, [x8, #0x9dc]                        ; ivar offset TAGPBGeneratedMessage.autocreatorField_ (+0x28)
  10013ee2c  ldr     x0, [x19, x21]                           ; x0 = self->autocreatorField_
  10013ee30  adrp    x8, #0x10041b000
  10013ee34  nop
  10013ee38  ldr     x20, [x8, #0xd70]
  10013ee3c  mov     x1, x20
  10013ee40  bl      _objc_msgSend                            ; [self->autocreatorField_ release]
  10013ee44  str     xzr, [x19, x21]                          ; self->autocreatorField_ = 0
  10013ee48  adrp    x8, #0x100420000
  10013ee4c  ldrsw   x21, [x8, #0x9e0]                        ; ivar offset TAGPBGeneratedMessage.autocreatorExtension_ (+0x30)
  10013ee50  ldr     x0, [x19, x21]                           ; x0 = self->autocreatorExtension_
  10013ee54  mov     x1, x20
  10013ee58  bl      _objc_msgSend                            ; [self->autocreatorExtension_ release]
  10013ee5c  str     xzr, [x19, x21]                          ; self->autocreatorExtension_ = 0
loc_10013ee60:
  10013ee60  ldp     x22, x21, [sp], #0x10
  10013ee64  ldp     x20, x19, [sp], #0x10
  10013ee68  ldp     x29, x30, [sp], #0x10
  10013ee6c  ret

; ======================================================================
; -[TAGPBGeneratedMessage wasAutocreatedBy:]
; address 0x10013ee70  size 24  kind objc
; ======================================================================
  10013ee70  adrp    x8, #0x100420000
  10013ee74  ldrsw   x8, [x8, #0x9d8]                         ; ivar offset TAGPBGeneratedMessage.autocreator_ (+0x20)
  10013ee78  ldr     x8, [x0, x8]                             ; x8 = self->autocreator_
  10013ee7c  cmp     x8, x2
  10013ee80  cset    w0, eq
  10013ee84  ret

; ======================================================================
; -[TAGPBGeneratedMessage mergeFromData:extensionRegistry:]
; address 0x10013ee88  size 160  kind objc
; ======================================================================
  10013ee88  stp     x29, x30, [sp, #-0x10]!
  10013ee8c  mov     x29, sp
  10013ee90  stp     x20, x19, [sp, #-0x10]!
  10013ee94  stp     x22, x21, [sp, #-0x10]!
  10013ee98  mov     x19, x3
  10013ee9c  mov     x20, x2
  10013eea0  mov     x21, x0
  10013eea4  adrp    x8, #0x10041e000
  10013eea8  ldr     x0, [x8, #0x778]                         ; class TAGPBCodedInputStream
  10013eeac  adrp    x8, #0x100416000
  10013eeb0  nop
  10013eeb4  ldr     x1, [x8, #0xac8]
  10013eeb8  bl      _objc_msgSend                            ; [TAGPBCodedInputStream alloc]
  10013eebc  adrp    x8, #0x10041c000
  10013eec0  nop
  10013eec4  ldr     x1, [x8, #0x550]
  10013eec8  mov     x2, x20
  10013eecc  bl      _objc_msgSend                            ; [[TAGPBCodedInputStream alloc] initWithData:arg1]
  10013eed0  mov     x20, x0
  10013eed4  adrp    x8, #0x10041c000
  10013eed8  nop
  10013eedc  ldr     x1, [x8, #0x578]
  10013eee0  mov     x0, x21
  10013eee4  mov     x2, x20
  10013eee8  mov     x3, x19
  10013eeec  bl      _objc_msgSend                            ; [self mergeFromCodedInputStream:[[TAGPBCodedInputStream alloc] initWithData:arg1] extensionRegistry:arg2]
  10013eef0  adrp    x8, #0x10041c000
  10013eef4  nop
  10013eef8  ldr     x1, [x8, #0x568]
  10013eefc  mov     w2, #0
  10013ef00  mov     x0, x20
  10013ef04  bl      _objc_msgSend                            ; [[[TAGPBCodedInputStream alloc] initWithData:arg1] checkLastTagWas:0]
  10013ef08  adrp    x8, #0x10041b000
  10013ef0c  nop
  10013ef10  ldr     x1, [x8, #0xd70]
  10013ef14  mov     x0, x20
  10013ef18  ldp     x22, x21, [sp], #0x10
  10013ef1c  ldp     x20, x19, [sp], #0x10
  10013ef20  ldp     x29, x30, [sp], #0x10
  10013ef24  b       _objc_msgSend                            ; [[[TAGPBCodedInputStream alloc] initWithData:arg1] release]

; ======================================================================
; -[TAGPBGeneratedMessage mergeDelimitedFromCodedInputStream:extensionRegistry:]
; address 0x10013ef28  size 132  kind objc
; ======================================================================
  10013ef28  stp     x29, x30, [sp, #-0x10]!
  10013ef2c  mov     x29, sp
  10013ef30  stp     x20, x19, [sp, #-0x10]!
  10013ef34  mov     x19, x3
  10013ef38  mov     x20, x0
  10013ef3c  adrp    x8, #0x100420000
  10013ef40  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  10013ef44  add     x8, x8, x2
  10013ef48  ldp     x10, x9, [x8, #8]
  10013ef4c  cmp     x9, x10
  10013ef50  b.eq    loc_10013efa0                            ; if (arg1->state_[+0x10] == arg1->state_[+0x8])
  10013ef54  ldr     x8, [x8, #0x18]                          ; x8 = arg1->state_[+0x18]
  10013ef58  cmp     x9, x8
  10013ef5c  b.eq    loc_10013efa0                            ; if (arg1->state_[+0x10] == arg1->state_[+0x18])
  10013ef60  adrp    x8, #0x10041c000
  10013ef64  nop
  10013ef68  ldr     x1, [x8, #0x8d0]
  10013ef6c  mov     x0, x2
  10013ef70  bl      _objc_msgSend                            ; [arg1 readData]
  10013ef74  mov     x8, x0
  10013ef78  cbz     x8, loc_10013efa0                        ; if ([arg1 readData] == 0)
  10013ef7c  adrp    x9, #0x10041c000
  10013ef80  nop
  10013ef84  ldr     x1, [x9, #0xad8]
  10013ef88  mov     x0, x20
  10013ef8c  mov     x2, x8
  10013ef90  mov     x3, x19
  10013ef94  ldp     x20, x19, [sp], #0x10
  10013ef98  ldp     x29, x30, [sp], #0x10
  10013ef9c  b       _objc_msgSend                            ; [self mergeFromData:[arg1 readData] extensionRegistry:arg2]
loc_10013efa0:
  10013efa0  ldp     x20, x19, [sp], #0x10
  10013efa4  ldp     x29, x30, [sp], #0x10
  10013efa8  ret

; ======================================================================
; +[TAGPBGeneratedMessage parseFromData:]
; address 0x10013efac  size 20  kind objc
; ======================================================================
  10013efac  mov     x3, #0
  10013efb0  adrp    x8, #0x10041c000
  10013efb4  nop
  10013efb8  ldr     x1, [x8, #0x768]
  10013efbc  b       _objc_msgSend                            ; [TAGPBGeneratedMessage parseFromData:arg1 extensionRegistry:0]

; ======================================================================
; +[TAGPBGeneratedMessage parseFromData:extensionRegistry:]
; address 0x10013efc0  size 120  kind objc
; ======================================================================
  10013efc0  stp     x29, x30, [sp, #-0x10]!
  10013efc4  mov     x29, sp
  10013efc8  stp     x20, x19, [sp, #-0x10]!
  10013efcc  stp     x22, x21, [sp, #-0x10]!
  10013efd0  mov     x19, x3
  10013efd4  mov     x20, x2
  10013efd8  adrp    x8, #0x100416000
  10013efdc  nop
  10013efe0  ldr     x1, [x8, #0xac8]
  10013efe4  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage alloc]
  10013efe8  adrp    x8, #0x100416000
  10013efec  nop
  10013eff0  ldr     x1, [x8, #0xab8]
  10013eff4  bl      _objc_msgSend                            ; [[TAGPBGeneratedMessage alloc] init]
  10013eff8  adrp    x8, #0x10041b000
  10013effc  nop
  10013f000  ldr     x1, [x8, #0xe88]
  10013f004  bl      _objc_msgSend                            ; [[[TAGPBGeneratedMessage alloc] init] autorelease]
  10013f008  mov     x21, x0
  10013f00c  adrp    x8, #0x10041c000
  10013f010  nop
  10013f014  ldr     x1, [x8, #0xad8]
  10013f018  mov     x2, x20
  10013f01c  mov     x3, x19
  10013f020  bl      _objc_msgSend                            ; [[[[TAGPBGeneratedMessage alloc] init] autorelease] mergeFromData:arg1 extensionRegistry:arg2]
  10013f024  mov     x0, x21
  10013f028  ldp     x22, x21, [sp], #0x10
  10013f02c  ldp     x20, x19, [sp], #0x10
  10013f030  ldp     x29, x30, [sp], #0x10
  10013f034  ret

; ======================================================================
; +[TAGPBGeneratedMessage parseFromCodedInputStream:extensionRegistry:]
; address 0x10013f038  size 120  kind objc
; ======================================================================
  10013f038  stp     x29, x30, [sp, #-0x10]!
  10013f03c  mov     x29, sp
  10013f040  stp     x20, x19, [sp, #-0x10]!
  10013f044  stp     x22, x21, [sp, #-0x10]!
  10013f048  mov     x19, x3
  10013f04c  mov     x20, x2
  10013f050  adrp    x8, #0x100416000
  10013f054  nop
  10013f058  ldr     x1, [x8, #0xac8]
  10013f05c  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage alloc]
  10013f060  adrp    x8, #0x100416000
  10013f064  nop
  10013f068  ldr     x1, [x8, #0xab8]
  10013f06c  bl      _objc_msgSend                            ; [[TAGPBGeneratedMessage alloc] init]
  10013f070  adrp    x8, #0x10041b000
  10013f074  nop
  10013f078  ldr     x1, [x8, #0xe88]
  10013f07c  bl      _objc_msgSend                            ; [[[TAGPBGeneratedMessage alloc] init] autorelease]
  10013f080  mov     x21, x0
  10013f084  adrp    x8, #0x10041c000
  10013f088  nop
  10013f08c  ldr     x1, [x8, #0x578]
  10013f090  mov     x2, x20
  10013f094  mov     x3, x19
  10013f098  bl      _objc_msgSend                            ; [[[[TAGPBGeneratedMessage alloc] init] autorelease] mergeFromCodedInputStream:arg1 extensionRegistry:arg2]
  10013f09c  mov     x0, x21
  10013f0a0  ldp     x22, x21, [sp], #0x10
  10013f0a4  ldp     x20, x19, [sp], #0x10
  10013f0a8  ldp     x29, x30, [sp], #0x10
  10013f0ac  ret

; ======================================================================
; +[TAGPBGeneratedMessage parseDelimitedFromCodedInputStream:extensionRegistry:]
; address 0x10013f0b0  size 120  kind objc
; ======================================================================
  10013f0b0  stp     x29, x30, [sp, #-0x10]!
  10013f0b4  mov     x29, sp
  10013f0b8  stp     x20, x19, [sp, #-0x10]!
  10013f0bc  stp     x22, x21, [sp, #-0x10]!
  10013f0c0  mov     x19, x3
  10013f0c4  mov     x20, x2
  10013f0c8  adrp    x8, #0x100416000
  10013f0cc  nop
  10013f0d0  ldr     x1, [x8, #0xac8]
  10013f0d4  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage alloc]
  10013f0d8  adrp    x8, #0x100416000
  10013f0dc  nop
  10013f0e0  ldr     x1, [x8, #0xab8]
  10013f0e4  bl      _objc_msgSend                            ; [[TAGPBGeneratedMessage alloc] init]
  10013f0e8  adrp    x8, #0x10041b000
  10013f0ec  nop
  10013f0f0  ldr     x1, [x8, #0xe88]
  10013f0f4  bl      _objc_msgSend                            ; [[[TAGPBGeneratedMessage alloc] init] autorelease]
  10013f0f8  mov     x21, x0
  10013f0fc  adrp    x8, #0x10041c000
  10013f100  nop
  10013f104  ldr     x1, [x8, #0xae0]
  10013f108  mov     x2, x20
  10013f10c  mov     x3, x19
  10013f110  bl      _objc_msgSend                            ; [[[[TAGPBGeneratedMessage alloc] init] autorelease] mergeDelimitedFromCodedInputStream:arg1 extensionRegistry:arg2]
  10013f114  mov     x0, x21
  10013f118  ldp     x22, x21, [sp], #0x10
  10013f11c  ldp     x20, x19, [sp], #0x10
  10013f120  ldp     x29, x30, [sp], #0x10
  10013f124  ret

; ======================================================================
; -[TAGPBGeneratedMessage setUnknownFields:]
; address 0x10013f128  size 120  kind objc
; ======================================================================
  10013f128  stp     x29, x30, [sp, #-0x10]!
  10013f12c  mov     x29, sp
  10013f130  stp     x20, x19, [sp, #-0x10]!
  10013f134  stp     x22, x21, [sp, #-0x10]!
  10013f138  mov     x20, x2
  10013f13c  mov     x19, x0
  10013f140  adrp    x8, #0x100420000
  10013f144  ldrsw   x21, [x8, #0x9ec]                        ; ivar offset TAGPBGeneratedMessage.unknownFields_ (+0x8)
  10013f148  ldr     x0, [x19, x21]                           ; x0 = self->unknownFields_
  10013f14c  cmp     x0, x20
  10013f150  b.eq    loc_10013f190                            ; if (self->unknownFields_ == arg1)
  10013f154  adrp    x8, #0x10041b000
  10013f158  nop
  10013f15c  ldr     x1, [x8, #0xd70]
  10013f160  bl      _objc_msgSend                            ; [self->unknownFields_ release]
  10013f164  adrp    x8, #0x10041b000
  10013f168  nop
  10013f16c  ldr     x1, [x8, #0x1d8]
  10013f170  mov     x0, x20
  10013f174  bl      _objc_msgSend                            ; [arg1 mutableCopy]
  10013f178  str     x0, [x19, x21]                           ; self->unknownFields_ = [arg1 mutableCopy]
  10013f17c  mov     x0, x19
  10013f180  ldp     x22, x21, [sp], #0x10
  10013f184  ldp     x20, x19, [sp], #0x10
  10013f188  ldp     x29, x30, [sp], #0x10
  10013f18c  b       sub_10013b9fc                            ; sub_10013b9fc(self)
loc_10013f190:
  10013f190  ldp     x22, x21, [sp], #0x10
  10013f194  ldp     x20, x19, [sp], #0x10
  10013f198  ldp     x29, x30, [sp], #0x10
  10013f19c  ret

; ======================================================================
; -[TAGPBGeneratedMessage mutableUnknownFields]
; address 0x10013f1a0  size 112  kind objc
; ======================================================================
  10013f1a0  stp     x29, x30, [sp, #-0x10]!
  10013f1a4  mov     x29, sp
  10013f1a8  stp     x20, x19, [sp, #-0x10]!
  10013f1ac  stp     x22, x21, [sp, #-0x10]!
  10013f1b0  mov     x19, x0
  10013f1b4  adrp    x20, #0x100420000
  10013f1b8  ldrsw   x21, [x20, #0x9ec]                       ; ivar offset TAGPBGeneratedMessage.unknownFields_ (+0x8)
  10013f1bc  ldr     x0, [x19, x21]                           ; x0 = self->unknownFields_
  10013f1c0  cbnz    x0, loc_10013f200                        ; if (self->unknownFields_ != 0)
  10013f1c4  adrp    x8, #0x10041e000
  10013f1c8  ldr     x0, [x8, #0x7c0]                         ; class TAGPBUnknownFieldSet
  10013f1cc  adrp    x8, #0x100416000
  10013f1d0  nop
  10013f1d4  ldr     x1, [x8, #0xac8]
  10013f1d8  bl      _objc_msgSend                            ; [TAGPBUnknownFieldSet alloc]
  10013f1dc  adrp    x8, #0x100416000
  10013f1e0  nop
  10013f1e4  ldr     x1, [x8, #0xab8]
  10013f1e8  bl      _objc_msgSend                            ; [[TAGPBUnknownFieldSet alloc] init]
  10013f1ec  str     x0, [x19, x21]                           ; self->unknownFields_ = [[TAGPBUnknownFieldSet alloc] init]
  10013f1f0  mov     x0, x19
  10013f1f4  bl      sub_10013b9fc                            ; sub_10013b9fc(self)
  10013f1f8  ldrsw   x8, [x20, #0x9ec]                        ; ivar offset TAGPBGeneratedMessage.unknownFields_ (+0x8)
  10013f1fc  ldr     x0, [x19, x8]                            ; x0 = self->unknownFields_
loc_10013f200:
  10013f200  ldp     x22, x21, [sp], #0x10
  10013f204  ldp     x20, x19, [sp], #0x10
  10013f208  ldp     x29, x30, [sp], #0x10
  10013f20c  ret

; ======================================================================
; -[TAGPBGeneratedMessage mergeUnknownFields:]
; address 0x10013f210  size 84  kind objc
; ======================================================================
  10013f210  stp     x29, x30, [sp, #-0x10]!
  10013f214  mov     x29, sp
  10013f218  stp     x20, x19, [sp, #-0x10]!
  10013f21c  mov     x19, x0
  10013f220  adrp    x8, #0x100420000
  10013f224  ldrsw   x8, [x8, #0x9ec]                         ; ivar offset TAGPBGeneratedMessage.unknownFields_ (+0x8)
  10013f228  ldr     x0, [x19, x8]                            ; x0 = self->unknownFields_
  10013f22c  cbz     x0, loc_10013f240                        ; if (self->unknownFields_ == 0)
  10013f230  adrp    x8, #0x10041c000
  10013f234  add     x8, x8, #0xaf0                           ; &@selector(mergeUnknownFields:)
  10013f238  ldr     x1, [x8]
  10013f23c  b       loc_10013f250
loc_10013f240:
  10013f240  adrp    x8, #0x10041c000
  10013f244  add     x8, x8, #0xae8                           ; &@selector(setUnknownFields:)
  10013f248  ldr     x1, [x8]
  10013f24c  mov     x0, x19
loc_10013f250:
  10013f250  bl      _objc_msgSend                            ; [x0 <sel x1>]
  10013f254  mov     x0, x19
  10013f258  ldp     x20, x19, [sp], #0x10
  10013f25c  ldp     x29, x30, [sp], #0x10
  10013f260  b       sub_10013b9fc                            ; sub_10013b9fc(self)

; ======================================================================
; -[TAGPBGeneratedMessage parseMessageSet:extensionRegistry:]
; address 0x10013f264  size 516  kind objc
; ======================================================================
  10013f264  stp     x29, x30, [sp, #-0x10]!
  10013f268  mov     x29, sp
  10013f26c  stp     x20, x19, [sp, #-0x10]!
  10013f270  stp     x22, x21, [sp, #-0x10]!
  10013f274  stp     x24, x23, [sp, #-0x10]!
  10013f278  stp     x26, x25, [sp, #-0x10]!
  10013f27c  stp     x28, x27, [sp, #-0x10]!
  10013f280  sub     sp, sp, #0x10
  10013f284  str     x3, [sp, #8]
  10013f288  mov     x23, x2
  10013f28c  mov     x19, x0
  10013f290  mov     x22, #0
  10013f294  mov     x21, #0
  10013f298  mov     w24, #0
  10013f29c  adrp    x8, #0x10041c000
  10013f2a0  nop
  10013f2a4  ldr     x25, [x8, #0x570]
  10013f2a8  adrp    x8, #0x10041c000
  10013f2ac  nop
  10013f2b0  ldr     x26, [x8, #0x8c0]
  10013f2b4  adrp    x8, #0x10041c000
  10013f2b8  nop
  10013f2bc  ldr     x27, [x8, #0x8d0]
  10013f2c0  adrp    x8, #0x10041c000
  10013f2c4  nop
  10013f2c8  ldr     x28, [x8, #0x7e8]
  10013f2cc  adrp    x8, #0x10041c000
  10013f2d0  add     x8, x8, #0xaf8                           ; &@selector(getExtension:fieldNumber:)
  10013f2d4  ldr     x20, [x8]
  10013f2d8  b       loc_10013f2e8
loc_10013f2dc:
  10013f2dc  mov     x1, x27
  10013f2e0  bl      _objc_msgSend                            ; [arg1 readData]
  10013f2e4  mov     x21, x0
loc_10013f2e8:
  10013f2e8  mov     x0, x23
  10013f2ec  bl      sub_100130f90                            ; sub_100130f90(arg1)
  10013f2f0  mov     x8, x0
  10013f2f4  cbz     w8, loc_10013f35c                        ; if (sub_100130f90(arg1) == 0)
  10013f2f8  mov     x0, x23
  10013f2fc  cmp     w8, #0x1a
  10013f300  b.eq    loc_10013f2dc                            ; if (sub_100130f90(arg1) == 26)
  10013f304  cmp     w8, #0x10
  10013f308  b.eq    loc_10013f320                            ; if (sub_100130f90(arg1) == 16)
  10013f30c  mov     x1, x25
  10013f310  mov     x2, x8
  10013f314  bl      _objc_msgSend                            ; [arg1 skipField:sub_100130f90(arg1)]
  10013f318  tbnz    w0, #0, loc_10013f2e8                    ; if (([arg1 skipField:sub_100130f90(arg1)] & 1))
  10013f31c  b       loc_10013f35c
loc_10013f320:
  10013f320  mov     x1, x26
  10013f324  bl      _objc_msgSend                            ; [arg1 readUInt32]
  10013f328  mov     w24, #0
  10013f32c  cbz     w0, loc_10013f2e8                        ; if ([arg1 readUInt32] == 0)
  10013f330  mov     x24, x0
  10013f334  mov     x0, x19
  10013f338  mov     x1, x28
  10013f33c  bl      _objc_msgSend                            ; [self descriptor]
  10013f340  mov     x2, x0
  10013f344  ubfx    x3, x24, #0, #0x20
  10013f348  ldr     x0, [sp, #8]
  10013f34c  mov     x1, x20
  10013f350  bl      _objc_msgSend                            ; [arg2 getExtension:[self descriptor] fieldNumber:x3]
  10013f354  mov     x22, x0
  10013f358  b       loc_10013f2e8
loc_10013f35c:
  10013f35c  adrp    x8, #0x10041c000
  10013f360  nop
  10013f364  ldr     x1, [x8, #0x568]
  10013f368  mov     w2, #0xc
  10013f36c  mov     x0, x23
  10013f370  bl      _objc_msgSend                            ; [arg1 checkLastTagWas:12]
  10013f374  cbz     x21, loc_10013f400                       ; if (x21 == 0)
  10013f378  cbz     w24, loc_10013f400                       ; if (w24 == 0)
  10013f37c  cbz     x22, loc_10013f420                       ; if (x22 == 0)
  10013f380  adrp    x8, #0x10041e000
  10013f384  ldr     x0, [x8, #0x778]                         ; class TAGPBCodedInputStream
  10013f388  adrp    x8, #0x100416000
  10013f38c  nop
  10013f390  ldr     x1, [x8, #0xac8]
  10013f394  bl      _objc_msgSend                            ; [TAGPBCodedInputStream alloc]
  10013f398  adrp    x8, #0x10041c000
  10013f39c  nop
  10013f3a0  ldr     x1, [x8, #0x550]
  10013f3a4  mov     x2, x21
  10013f3a8  bl      _objc_msgSend                            ; [[TAGPBCodedInputStream alloc] initWithData:x2]
  10013f3ac  mov     x20, x0
  10013f3b0  adrp    x8, #0x10041c000
  10013f3b4  nop
  10013f3b8  ldr     x1, [x8, #0xb00]
  10013f3bc  mov     x0, x22
  10013f3c0  mov     x2, x20
  10013f3c4  ldr     x3, [sp, #8]
  10013f3c8  mov     x4, x19
  10013f3cc  bl      _objc_msgSend                            ; [x0 mergeFromCodedInputStream:[[TAGPBCodedInputStream alloc] initWithData:x2] extensionRegistry:arg2 builder:self]
  10013f3d0  adrp    x8, #0x10041b000
  10013f3d4  nop
  10013f3d8  ldr     x1, [x8, #0xd70]
  10013f3dc  mov     x0, x20
  10013f3e0  sub     sp, x29, #0x50
  10013f3e4  ldp     x28, x27, [sp], #0x10
  10013f3e8  ldp     x26, x25, [sp], #0x10
  10013f3ec  ldp     x24, x23, [sp], #0x10
  10013f3f0  ldp     x22, x21, [sp], #0x10
  10013f3f4  ldp     x20, x19, [sp], #0x10
  10013f3f8  ldp     x29, x30, [sp], #0x10
  10013f3fc  b       _objc_msgSend                            ; [[[TAGPBCodedInputStream alloc] initWithData:x2] release]
loc_10013f400:
  10013f400  sub     sp, x29, #0x50
  10013f404  ldp     x28, x27, [sp], #0x10
  10013f408  ldp     x26, x25, [sp], #0x10
  10013f40c  ldp     x24, x23, [sp], #0x10
  10013f410  ldp     x22, x21, [sp], #0x10
  10013f414  ldp     x20, x19, [sp], #0x10
  10013f418  ldp     x29, x30, [sp], #0x10
  10013f41c  ret
loc_10013f420:
  10013f420  adrp    x8, #0x10041c000
  10013f424  nop
  10013f428  ldr     x1, [x8, #0xb08]
  10013f42c  mov     x0, x19
  10013f430  bl      _objc_msgSend                            ; [self mutableUnknownFields]
  10013f434  adrp    x8, #0x10041c000
  10013f438  nop
  10013f43c  ldr     x1, [x8, #0xb10]
  10013f440  mov     x2, x24
  10013f444  mov     x3, x21
  10013f448  sub     sp, x29, #0x50
  10013f44c  ldp     x28, x27, [sp], #0x10
  10013f450  ldp     x26, x25, [sp], #0x10
  10013f454  ldp     x24, x23, [sp], #0x10
  10013f458  ldp     x22, x21, [sp], #0x10
  10013f45c  ldp     x20, x19, [sp], #0x10
  10013f460  ldp     x29, x30, [sp], #0x10
  10013f464  b       _objc_msgSend                            ; [[self mutableUnknownFields] mergeMessageSetMessage:x2 data:x3]

; ======================================================================
; -[TAGPBGeneratedMessage parseUnknownField:extensionRegistry:tag:]
; address 0x10013f468  size 340  kind objc
; ======================================================================
  10013f468  stp     x29, x30, [sp, #-0x10]!
  10013f46c  mov     x29, sp
  10013f470  stp     x20, x19, [sp, #-0x10]!
  10013f474  stp     x22, x21, [sp, #-0x10]!
  10013f478  stp     x24, x23, [sp, #-0x10]!
  10013f47c  mov     x20, x4
  10013f480  mov     x22, x3
  10013f484  mov     x19, x2
  10013f488  mov     x21, x0
  10013f48c  lsr     w23, w20, #3
  10013f490  adrp    x8, #0x10041c000
  10013f494  nop
  10013f498  ldr     x1, [x8, #0x7e8]
  10013f49c  bl      _objc_msgSend                            ; [self descriptor]
  10013f4a0  mov     x24, x0
  10013f4a4  adrp    x8, #0x10041c000
  10013f4a8  nop
  10013f4ac  ldr     x1, [x8, #0xaf8]
  10013f4b0  mov     x0, x22
  10013f4b4  mov     x2, x24
  10013f4b8  mov     x3, x23
  10013f4bc  bl      _objc_msgSend                            ; [arg2 getExtension:[self descriptor] fieldNumber:(arg3 >>> 3)]
  10013f4c0  mov     x23, x0
  10013f4c4  cbz     x23, loc_10013f510                       ; if ([arg2 getExtension:[self descriptor] fieldNumber:(arg3 >>> 3)] == 0)
  10013f4c8  and     w24, w20, #7
  10013f4cc  adrp    x8, #0x10041c000
  10013f4d0  nop
  10013f4d4  ldr     x1, [x8, #0xb20]
  10013f4d8  mov     x0, x23
  10013f4dc  bl      _objc_msgSend                            ; [[arg2 getExtension:[self descriptor] fieldNumber:(arg3 >>> 3)] wireType]
  10013f4e0  cmp     w0, w24
  10013f4e4  b.ne    loc_10013f530                            ; if ([[arg2 getExtension:[self descriptor] fieldNumber:(arg3 >>> 3)] wireType] != (arg3 & 7))
  10013f4e8  adrp    x8, #0x10041c000
  10013f4ec  nop
  10013f4f0  ldr     x1, [x8, #0xb00]
  10013f4f4  mov     x0, x23
  10013f4f8  mov     x2, x19
  10013f4fc  mov     x3, x22
  10013f500  mov     x4, x21
  10013f504  bl      _objc_msgSend                            ; [[arg2 getExtension:[self descriptor] fieldNumber:(arg3 >>> 3)] mergeFromCodedInputStream:arg1 extensionRegistry:arg2 builder:self]
  10013f508  mov     w0, #1
  10013f50c  b       loc_10013f5a8
loc_10013f510:
  10013f510  adrp    x8, #0x10041c000
  10013f514  nop
  10013f518  ldr     x1, [x8, #0xa10]
  10013f51c  mov     x0, x24
  10013f520  bl      _objc_msgSend                            ; [[self descriptor] isWireFormat]
  10013f524  cmp     w0, #0
  10013f528  ccmp    w20, #0xb, #0, ne
  10013f52c  b.eq    loc_10013f588                            ; if (flags ==)
loc_10013f530:
  10013f530  adrp    x8, #0x10041e000
  10013f534  ldr     x0, [x8, #0x7c0]                         ; class TAGPBUnknownFieldSet
  10013f538  adrp    x8, #0x10041c000
  10013f53c  nop
  10013f540  ldr     x1, [x8, #0xb28]
  10013f544  mov     x2, x20
  10013f548  bl      _objc_msgSend                            ; [TAGPBUnknownFieldSet isFieldTag:arg3]
  10013f54c  cbz     w0, loc_10013f580                        ; if ([TAGPBUnknownFieldSet isFieldTag:arg3] == 0)
  10013f550  adrp    x8, #0x10041c000
  10013f554  nop
  10013f558  ldr     x1, [x8, #0xb08]
  10013f55c  mov     x0, x21
  10013f560  bl      _objc_msgSend                            ; [self mutableUnknownFields]
  10013f564  adrp    x8, #0x10041c000
  10013f568  nop
  10013f56c  ldr     x1, [x8, #0xb30]
  10013f570  mov     x2, x20
  10013f574  mov     x3, x19
  10013f578  bl      _objc_msgSend                            ; [[self mutableUnknownFields] mergeFieldFrom:arg3 input:arg1]
  10013f57c  b       loc_10013f5a8
loc_10013f580:
  10013f580  mov     w0, #0
  10013f584  b       loc_10013f5a8
loc_10013f588:
  10013f588  adrp    x8, #0x10041c000
  10013f58c  nop
  10013f590  ldr     x1, [x8, #0xb18]
  10013f594  mov     x0, x21
  10013f598  mov     x2, x19
  10013f59c  mov     x3, x22
  10013f5a0  bl      _objc_msgSend                            ; [self parseMessageSet:arg1 extensionRegistry:arg2]
  10013f5a4  mov     w0, #1
loc_10013f5a8:
  10013f5a8  ldp     x24, x23, [sp], #0x10
  10013f5ac  ldp     x22, x21, [sp], #0x10
  10013f5b0  ldp     x20, x19, [sp], #0x10
  10013f5b4  ldp     x29, x30, [sp], #0x10
  10013f5b8  ret

; ======================================================================
; -[TAGPBGeneratedMessage mergeFromCodedInputStream:extensionRegistry:]
; address 0x10013f5bc  size 356  kind objc
; ======================================================================
  10013f5bc  stp     x29, x30, [sp, #-0x10]!
  10013f5c0  mov     x29, sp
  10013f5c4  stp     x20, x19, [sp, #-0x10]!
  10013f5c8  stp     x22, x21, [sp, #-0x10]!
  10013f5cc  stp     x24, x23, [sp, #-0x10]!
  10013f5d0  stp     x26, x25, [sp, #-0x10]!
  10013f5d4  stp     x28, x27, [sp, #-0x10]!
  10013f5d8  sub     sp, sp, #0x30
  10013f5dc  mov     x19, x3
  10013f5e0  mov     x20, x2
  10013f5e4  mov     x21, x0
  10013f5e8  stp     x21, x20, [sp, #8]
  10013f5ec  stp     x21, x19, [sp, #0x18]
  10013f5f0  str     wzr, [sp, #0x28]
  10013f5f4  adrp    x8, #0x10041c000
  10013f5f8  nop
  10013f5fc  ldr     x1, [x8, #0x7e8]
  10013f600  bl      _objc_msgSend                            ; [self descriptor]
  10013f604  adrp    x8, #0x100420000
  10013f608  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  10013f60c  ldr     x23, [x0, x8]                            ; x23 = [self descriptor]->fields_
  10013f610  adrp    x8, #0x10041b000
  10013f614  nop
  10013f618  ldr     x1, [x8, #0xc78]
  10013f61c  mov     x0, x23
  10013f620  bl      _objc_msgSend                            ; [[self descriptor]->fields_ data]
  10013f624  mov     x22, x0
  10013f628  cbz     x23, loc_10013f63c                       ; if ([self descriptor]->fields_ == 0)
  10013f62c  adrp    x8, #0x100420000
  10013f630  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10013f634  ldr     x25, [x23, x8]                           ; x25 = [self descriptor]->fields_->_count
  10013f638  b       loc_10013f640
loc_10013f63c:
  10013f63c  mov     x25, #0
loc_10013f640:
  10013f640  mov     x26, #0
  10013f644  adrp    x8, #0x10041c000
  10013f648  add     x8, x8, #0xb38                           ; &@selector(parseUnknownField:extensionRegistry:tag:)
  10013f64c  ldr     x23, [x8]
  10013f650  adrp    x27, #0x100420000
  10013f654  adrp    x28, #0x1002fa000
  10013f658  add     x28, x28, #0xaa8                         ; tconst_1002faaa8
  10013f65c  add     x24, sp, #8
  10013f660  b       loc_10013f67c
loc_10013f664:
  10013f664  ldr     w8, [x11, #0x14]                         ; w8 = x0->description_[+0x14]
  10013f668  adrp    x9, #0x1003b8000
  10013f66c  add     x9, x9, #0x718                           ; &d_1003b8718
  10013f670  ldr     x8, [x9, x8, lsl #3]
  10013f674  mov     x1, x24
  10013f678  blr     x8
loc_10013f67c:
  10013f67c  mov     x0, x20
  10013f680  bl      sub_100130f90                            ; sub_100130f90(arg1)
  10013f684  mov     x8, x0
  10013f688  str     w8, [sp, #0x28]
  10013f68c  cbz     x25, loc_10013f6e0                       ; if (x25 == 0)
  10013f690  mov     x9, #0
  10013f694  ldrsw   x10, [x27, #0x94c]                       ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
loc_10013f698:
  10013f698  cmp     x26, x25
  10013f69c  csel    x26, x26, xzr, lo
  10013f6a0  ldr     x0, [x22, x26, lsl #3]
  10013f6a4  ldr     x11, [x0, x10]                           ; x11 = x0->description_
  10013f6a8  ldrb    w12, [x11, #0x10]                        ; w12 = x0->description_[+0x10]
  10013f6ac  tbnz    w12, #3, loc_10013f6bc                   ; if ((x0->description_[+0x10] & (1<<3)))
  10013f6b0  ldr     w12, [x11, #0x14]                        ; w12 = x0->description_[+0x14]
  10013f6b4  ldr     w12, [x28, x12, lsl #2]
  10013f6b8  b       loc_10013f6c0
loc_10013f6bc:
  10013f6bc  mov     w12, #2
loc_10013f6c0:
  10013f6c0  ldr     w13, [x11, #8]                           ; w13 = x0->description_[+0x8]
  10013f6c4  orr     w12, w12, w13, lsl #3
  10013f6c8  cmp     w12, w8
  10013f6cc  b.eq    loc_10013f664                            ; if ((w12 | (x0->description_[+0x8] << 3)) == sub_100130f90(arg1))
  10013f6d0  add     x26, x26, #1
  10013f6d4  add     x9, x9, #1
  10013f6d8  cmp     x9, x25
  10013f6dc  b.lo    loc_10013f698                            ; if ((x9 + 1) <u x25)
loc_10013f6e0:
  10013f6e0  cbz     w8, loc_10013f700                        ; if (sub_100130f90(arg1) == 0)
  10013f6e4  mov     x0, x21
  10013f6e8  mov     x1, x23
  10013f6ec  mov     x2, x20
  10013f6f0  mov     x3, x19
  10013f6f4  mov     x4, x8
  10013f6f8  bl      _objc_msgSend                            ; [self parseUnknownField:arg1 extensionRegistry:arg2 tag:sub_100130f90(arg1)]
  10013f6fc  tbnz    w0, #0, loc_10013f67c                    ; if (([self parseUnknownField:arg1 extensionRegistry:arg2 tag:sub_100130f90(arg1)] & 1))
loc_10013f700:
  10013f700  sub     sp, x29, #0x50
  10013f704  ldp     x28, x27, [sp], #0x10
  10013f708  ldp     x26, x25, [sp], #0x10
  10013f70c  ldp     x24, x23, [sp], #0x10
  10013f710  ldp     x22, x21, [sp], #0x10
  10013f714  ldp     x20, x19, [sp], #0x10
  10013f718  ldp     x29, x30, [sp], #0x10
  10013f71c  ret

; ======================================================================
; sub_10013f720
; address 0x10013f720  size 364  kind sub
; ======================================================================
  10013f720  stp     x29, x30, [sp, #-0x10]!
  10013f724  mov     x29, sp
  10013f728  stp     x20, x19, [sp, #-0x10]!
  10013f72c  stp     x22, x21, [sp, #-0x10]!
  10013f730  stp     x24, x23, [sp, #-0x10]!
  10013f734  mov     x19, x1
  10013f738  mov     x21, x0
  10013f73c  adrp    x8, #0x10041c000
  10013f740  nop
  10013f744  ldr     x1, [x8, #0x770]
  10013f748  bl      _objc_msgSend                            ; [a0 isRepeated]
  10013f74c  cbz     w0, loc_10013f824                        ; if ([a0 isRepeated] == 0)
  10013f750  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  10013f754  mov     x1, x21
  10013f758  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  10013f75c  mov     x20, x0
  10013f760  adrp    x8, #0x10041c000
  10013f764  nop
  10013f768  ldr     x1, [x8, #0xa20]
  10013f76c  mov     x0, x21
  10013f770  bl      _objc_msgSend                            ; [a0 isPackable]
  10013f774  mov     x8, x0
  10013f778  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013f77c  cbz     w8, loc_10013f84c                        ; if ([a0 isPackable] == 0)
  10013f780  adrp    x8, #0x10041c000
  10013f784  nop
  10013f788  ldr     x1, [x8, #0x558]
  10013f78c  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  10013f790  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  10013f794  sxtw    x1, w0
  10013f798  mov     x0, x8
  10013f79c  bl      sub_100131850                            ; sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  10013f7a0  mov     x21, x0
  10013f7a4  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013f7a8  adrp    x8, #0x10041c000
  10013f7ac  nop
  10013f7b0  ldr     x22, [x8, #0x8f8]
  10013f7b4  mov     x1, x22
  10013f7b8  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10013f7bc  mov     x8, x0
  10013f7c0  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013f7c4  cbz     x8, loc_10013f810                        ; if ([a1[+0x8] bytesUntilLimit] == 0)
  10013f7c8  adrp    x8, #0x10041c000
  10013f7cc  nop
  10013f7d0  ldr     x23, [x8, #0x870]
  10013f7d4  adrp    x8, #0x10041c000
  10013f7d8  add     x8, x8, #0xdc8                           ; &@selector(addBool:)
  10013f7dc  ldr     x24, [x8]
loc_10013f7e0:
  10013f7e0  mov     x1, x23
  10013f7e4  bl      _objc_msgSend                            ; [a1[+0x8] readBool]
  10013f7e8  mov     x2, x0
  10013f7ec  mov     x0, x20
  10013f7f0  mov     x1, x24
  10013f7f4  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addBool:[a1[+0x8] readBool]]
  10013f7f8  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013f7fc  mov     x1, x22
  10013f800  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10013f804  mov     x8, x0
  10013f808  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013f80c  cbnz    x8, loc_10013f7e0                        ; if ([a1[+0x8] bytesUntilLimit] != 0)
loc_10013f810:
  10013f810  adrp    x8, #0x100420000
  10013f814  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  10013f818  add     x8, x8, x0
  10013f81c  str     x21, [x8, #0x18]                         ; a1[+0x8]->state_[+0x18] = sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  10013f820  b       loc_10013f874
loc_10013f824:
  10013f824  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013f828  adrp    x8, #0x10041c000
  10013f82c  nop
  10013f830  ldr     x1, [x8, #0x870]
  10013f834  bl      _objc_msgSend                            ; [a1[+0x8] readBool]
  10013f838  mov     x2, x0
  10013f83c  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  10013f840  mov     x1, x21
  10013f844  bl      sub_100148ae4                            ; sub_100148ae4(a1[+0x10], a0, [a1[+0x8] readBool])
  10013f848  b       loc_10013f874
loc_10013f84c:
  10013f84c  adrp    x8, #0x10041c000
  10013f850  nop
  10013f854  ldr     x1, [x8, #0x870]
  10013f858  bl      _objc_msgSend                            ; [a1[+0x8] readBool]
  10013f85c  mov     x2, x0
  10013f860  adrp    x8, #0x10041c000
  10013f864  nop
  10013f868  ldr     x1, [x8, #0xdc8]
  10013f86c  mov     x0, x20
  10013f870  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addBool:[a1[+0x8] readBool]]
loc_10013f874:
  10013f874  mov     w0, #0
  10013f878  ldp     x24, x23, [sp], #0x10
  10013f87c  ldp     x22, x21, [sp], #0x10
  10013f880  ldp     x20, x19, [sp], #0x10
  10013f884  ldp     x29, x30, [sp], #0x10
  10013f888  ret

; ======================================================================
; sub_10013f88c
; address 0x10013f88c  size 364  kind sub
; ======================================================================
  10013f88c  stp     x29, x30, [sp, #-0x10]!
  10013f890  mov     x29, sp
  10013f894  stp     x20, x19, [sp, #-0x10]!
  10013f898  stp     x22, x21, [sp, #-0x10]!
  10013f89c  stp     x24, x23, [sp, #-0x10]!
  10013f8a0  mov     x19, x1
  10013f8a4  mov     x21, x0
  10013f8a8  adrp    x8, #0x10041c000
  10013f8ac  nop
  10013f8b0  ldr     x1, [x8, #0x770]
  10013f8b4  bl      _objc_msgSend                            ; [a0 isRepeated]
  10013f8b8  cbz     w0, loc_10013f990                        ; if ([a0 isRepeated] == 0)
  10013f8bc  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  10013f8c0  mov     x1, x21
  10013f8c4  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  10013f8c8  mov     x20, x0
  10013f8cc  adrp    x8, #0x10041c000
  10013f8d0  nop
  10013f8d4  ldr     x1, [x8, #0xa20]
  10013f8d8  mov     x0, x21
  10013f8dc  bl      _objc_msgSend                            ; [a0 isPackable]
  10013f8e0  mov     x8, x0
  10013f8e4  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013f8e8  cbz     w8, loc_10013f9b8                        ; if ([a0 isPackable] == 0)
  10013f8ec  adrp    x8, #0x10041c000
  10013f8f0  nop
  10013f8f4  ldr     x1, [x8, #0x558]
  10013f8f8  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  10013f8fc  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  10013f900  sxtw    x1, w0
  10013f904  mov     x0, x8
  10013f908  bl      sub_100131850                            ; sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  10013f90c  mov     x21, x0
  10013f910  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013f914  adrp    x8, #0x10041c000
  10013f918  nop
  10013f91c  ldr     x22, [x8, #0x8f8]
  10013f920  mov     x1, x22
  10013f924  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10013f928  mov     x8, x0
  10013f92c  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013f930  cbz     x8, loc_10013f97c                        ; if ([a1[+0x8] bytesUntilLimit] == 0)
  10013f934  adrp    x8, #0x10041c000
  10013f938  nop
  10013f93c  ldr     x23, [x8, #0x878]
  10013f940  adrp    x8, #0x10041c000
  10013f944  add     x8, x8, #0x988                           ; &@selector(addUInt32:)
  10013f948  ldr     x24, [x8]
loc_10013f94c:
  10013f94c  mov     x1, x23
  10013f950  bl      _objc_msgSend                            ; [a1[+0x8] readFixed32]
  10013f954  mov     x2, x0
  10013f958  mov     x0, x20
  10013f95c  mov     x1, x24
  10013f960  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addUInt32:[a1[+0x8] readFixed32]]
  10013f964  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013f968  mov     x1, x22
  10013f96c  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10013f970  mov     x8, x0
  10013f974  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013f978  cbnz    x8, loc_10013f94c                        ; if ([a1[+0x8] bytesUntilLimit] != 0)
loc_10013f97c:
  10013f97c  adrp    x8, #0x100420000
  10013f980  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  10013f984  add     x8, x8, x0
  10013f988  str     x21, [x8, #0x18]                         ; a1[+0x8]->state_[+0x18] = sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  10013f98c  b       loc_10013f9e0
loc_10013f990:
  10013f990  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013f994  adrp    x8, #0x10041c000
  10013f998  nop
  10013f99c  ldr     x1, [x8, #0x878]
  10013f9a0  bl      _objc_msgSend                            ; [a1[+0x8] readFixed32]
  10013f9a4  mov     x2, x0
  10013f9a8  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  10013f9ac  mov     x1, x21
  10013f9b0  bl      sub_100148d44                            ; sub_100148d44(a1[+0x10], a0, [a1[+0x8] readFixed32])
  10013f9b4  b       loc_10013f9e0
loc_10013f9b8:
  10013f9b8  adrp    x8, #0x10041c000
  10013f9bc  nop
  10013f9c0  ldr     x1, [x8, #0x878]
  10013f9c4  bl      _objc_msgSend                            ; [a1[+0x8] readFixed32]
  10013f9c8  mov     x2, x0
  10013f9cc  adrp    x8, #0x10041c000
  10013f9d0  nop
  10013f9d4  ldr     x1, [x8, #0x988]
  10013f9d8  mov     x0, x20
  10013f9dc  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addUInt32:[a1[+0x8] readFixed32]]
loc_10013f9e0:
  10013f9e0  mov     w0, #0
  10013f9e4  ldp     x24, x23, [sp], #0x10
  10013f9e8  ldp     x22, x21, [sp], #0x10
  10013f9ec  ldp     x20, x19, [sp], #0x10
  10013f9f0  ldp     x29, x30, [sp], #0x10
  10013f9f4  ret

; ======================================================================
; sub_10013f9f8
; address 0x10013f9f8  size 364  kind sub
; ======================================================================
  10013f9f8  stp     x29, x30, [sp, #-0x10]!
  10013f9fc  mov     x29, sp
  10013fa00  stp     x20, x19, [sp, #-0x10]!
  10013fa04  stp     x22, x21, [sp, #-0x10]!
  10013fa08  stp     x24, x23, [sp, #-0x10]!
  10013fa0c  mov     x19, x1
  10013fa10  mov     x21, x0
  10013fa14  adrp    x8, #0x10041c000
  10013fa18  nop
  10013fa1c  ldr     x1, [x8, #0x770]
  10013fa20  bl      _objc_msgSend                            ; [a0 isRepeated]
  10013fa24  cbz     w0, loc_10013fafc                        ; if ([a0 isRepeated] == 0)
  10013fa28  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  10013fa2c  mov     x1, x21
  10013fa30  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  10013fa34  mov     x20, x0
  10013fa38  adrp    x8, #0x10041c000
  10013fa3c  nop
  10013fa40  ldr     x1, [x8, #0xa20]
  10013fa44  mov     x0, x21
  10013fa48  bl      _objc_msgSend                            ; [a0 isPackable]
  10013fa4c  mov     x8, x0
  10013fa50  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fa54  cbz     w8, loc_10013fb24                        ; if ([a0 isPackable] == 0)
  10013fa58  adrp    x8, #0x10041c000
  10013fa5c  nop
  10013fa60  ldr     x1, [x8, #0x558]
  10013fa64  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  10013fa68  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  10013fa6c  sxtw    x1, w0
  10013fa70  mov     x0, x8
  10013fa74  bl      sub_100131850                            ; sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  10013fa78  mov     x21, x0
  10013fa7c  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fa80  adrp    x8, #0x10041c000
  10013fa84  nop
  10013fa88  ldr     x22, [x8, #0x8f8]
  10013fa8c  mov     x1, x22
  10013fa90  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10013fa94  mov     x8, x0
  10013fa98  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fa9c  cbz     x8, loc_10013fae8                        ; if ([a1[+0x8] bytesUntilLimit] == 0)
  10013faa0  adrp    x8, #0x10041c000
  10013faa4  nop
  10013faa8  ldr     x23, [x8, #0x880]
  10013faac  adrp    x8, #0x10041c000
  10013fab0  add     x8, x8, #0x510                           ; &@selector(addInt32:)
  10013fab4  ldr     x24, [x8]
loc_10013fab8:
  10013fab8  mov     x1, x23
  10013fabc  bl      _objc_msgSend                            ; [a1[+0x8] readSFixed32]
  10013fac0  mov     x2, x0
  10013fac4  mov     x0, x20
  10013fac8  mov     x1, x24
  10013facc  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addInt32:[a1[+0x8] readSFixed32]]
  10013fad0  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fad4  mov     x1, x22
  10013fad8  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10013fadc  mov     x8, x0
  10013fae0  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fae4  cbnz    x8, loc_10013fab8                        ; if ([a1[+0x8] bytesUntilLimit] != 0)
loc_10013fae8:
  10013fae8  adrp    x8, #0x100420000
  10013faec  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  10013faf0  add     x8, x8, x0
  10013faf4  str     x21, [x8, #0x18]                         ; a1[+0x8]->state_[+0x18] = sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  10013faf8  b       loc_10013fb4c
loc_10013fafc:
  10013fafc  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fb00  adrp    x8, #0x10041c000
  10013fb04  nop
  10013fb08  ldr     x1, [x8, #0x880]
  10013fb0c  bl      _objc_msgSend                            ; [a1[+0x8] readSFixed32]
  10013fb10  mov     x2, x0
  10013fb14  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  10013fb18  mov     x1, x21
  10013fb1c  bl      sub_100148c14                            ; sub_100148c14(a1[+0x10], a0, [a1[+0x8] readSFixed32])
  10013fb20  b       loc_10013fb4c
loc_10013fb24:
  10013fb24  adrp    x8, #0x10041c000
  10013fb28  nop
  10013fb2c  ldr     x1, [x8, #0x880]
  10013fb30  bl      _objc_msgSend                            ; [a1[+0x8] readSFixed32]
  10013fb34  mov     x2, x0
  10013fb38  adrp    x8, #0x10041c000
  10013fb3c  nop
  10013fb40  ldr     x1, [x8, #0x510]
  10013fb44  mov     x0, x20
  10013fb48  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addInt32:[a1[+0x8] readSFixed32]]
loc_10013fb4c:
  10013fb4c  mov     w0, #0
  10013fb50  ldp     x24, x23, [sp], #0x10
  10013fb54  ldp     x22, x21, [sp], #0x10
  10013fb58  ldp     x20, x19, [sp], #0x10
  10013fb5c  ldp     x29, x30, [sp], #0x10
  10013fb60  ret

; ======================================================================
; sub_10013fb64
; address 0x10013fb64  size 352  kind sub
; ======================================================================
  10013fb64  stp     x29, x30, [sp, #-0x10]!
  10013fb68  mov     x29, sp
  10013fb6c  stp     x20, x19, [sp, #-0x10]!
  10013fb70  stp     x22, x21, [sp, #-0x10]!
  10013fb74  stp     x24, x23, [sp, #-0x10]!
  10013fb78  mov     x19, x1
  10013fb7c  mov     x21, x0
  10013fb80  adrp    x8, #0x10041c000
  10013fb84  nop
  10013fb88  ldr     x1, [x8, #0x770]
  10013fb8c  bl      _objc_msgSend                            ; [a0 isRepeated]
  10013fb90  cbz     w0, loc_10013fc64                        ; if ([a0 isRepeated] == 0)
  10013fb94  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  10013fb98  mov     x1, x21
  10013fb9c  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  10013fba0  mov     x20, x0
  10013fba4  adrp    x8, #0x10041c000
  10013fba8  nop
  10013fbac  ldr     x1, [x8, #0xa20]
  10013fbb0  mov     x0, x21
  10013fbb4  bl      _objc_msgSend                            ; [a0 isPackable]
  10013fbb8  mov     x8, x0
  10013fbbc  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fbc0  cbz     w8, loc_10013fc88                        ; if ([a0 isPackable] == 0)
  10013fbc4  adrp    x8, #0x10041c000
  10013fbc8  nop
  10013fbcc  ldr     x1, [x8, #0x558]
  10013fbd0  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  10013fbd4  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  10013fbd8  sxtw    x1, w0
  10013fbdc  mov     x0, x8
  10013fbe0  bl      sub_100131850                            ; sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  10013fbe4  mov     x21, x0
  10013fbe8  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fbec  adrp    x8, #0x10041c000
  10013fbf0  nop
  10013fbf4  ldr     x22, [x8, #0x8f8]
  10013fbf8  mov     x1, x22
  10013fbfc  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10013fc00  mov     x8, x0
  10013fc04  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fc08  cbz     x8, loc_10013fc50                        ; if ([a1[+0x8] bytesUntilLimit] == 0)
  10013fc0c  adrp    x8, #0x10041c000
  10013fc10  nop
  10013fc14  ldr     x23, [x8, #0x888]
  10013fc18  adrp    x8, #0x10041c000
  10013fc1c  add     x8, x8, #0xdc0                           ; &@selector(addFloat:)
  10013fc20  ldr     x24, [x8]
loc_10013fc24:
  10013fc24  mov     x1, x23
  10013fc28  bl      _objc_msgSend                            ; [a1[+0x8] readFloat]
  10013fc2c  mov     x0, x20
  10013fc30  mov     x1, x24
  10013fc34  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addFloat:[a1[+0x8] readFloat]]
  10013fc38  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fc3c  mov     x1, x22
  10013fc40  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10013fc44  mov     x8, x0
  10013fc48  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fc4c  cbnz    x8, loc_10013fc24                        ; if ([a1[+0x8] bytesUntilLimit] != 0)
loc_10013fc50:
  10013fc50  adrp    x8, #0x100420000
  10013fc54  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  10013fc58  add     x8, x8, x0
  10013fc5c  str     x21, [x8, #0x18]                         ; a1[+0x8]->state_[+0x18] = sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  10013fc60  b       loc_10013fcac
loc_10013fc64:
  10013fc64  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fc68  adrp    x8, #0x10041c000
  10013fc6c  nop
  10013fc70  ldr     x1, [x8, #0x888]
  10013fc74  bl      _objc_msgSend                            ; [a1[+0x8] readFloat]
  10013fc78  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  10013fc7c  mov     x1, x21
  10013fc80  bl      sub_1001490d4                            ; sub_1001490d4(a1[+0x10], a0)
  10013fc84  b       loc_10013fcac
loc_10013fc88:
  10013fc88  adrp    x8, #0x10041c000
  10013fc8c  nop
  10013fc90  ldr     x1, [x8, #0x888]
  10013fc94  bl      _objc_msgSend                            ; [a1[+0x8] readFloat]
  10013fc98  adrp    x8, #0x10041c000
  10013fc9c  nop
  10013fca0  ldr     x1, [x8, #0xdc0]
  10013fca4  mov     x0, x20
  10013fca8  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addFloat:[a1[+0x8] readFloat]]
loc_10013fcac:
  10013fcac  mov     w0, #0
  10013fcb0  ldp     x24, x23, [sp], #0x10
  10013fcb4  ldp     x22, x21, [sp], #0x10
  10013fcb8  ldp     x20, x19, [sp], #0x10
  10013fcbc  ldp     x29, x30, [sp], #0x10
  10013fcc0  ret

; ======================================================================
; sub_10013fcc4
; address 0x10013fcc4  size 364  kind sub
; ======================================================================
  10013fcc4  stp     x29, x30, [sp, #-0x10]!
  10013fcc8  mov     x29, sp
  10013fccc  stp     x20, x19, [sp, #-0x10]!
  10013fcd0  stp     x22, x21, [sp, #-0x10]!
  10013fcd4  stp     x24, x23, [sp, #-0x10]!
  10013fcd8  mov     x19, x1
  10013fcdc  mov     x21, x0
  10013fce0  adrp    x8, #0x10041c000
  10013fce4  nop
  10013fce8  ldr     x1, [x8, #0x770]
  10013fcec  bl      _objc_msgSend                            ; [a0 isRepeated]
  10013fcf0  cbz     w0, loc_10013fdc8                        ; if ([a0 isRepeated] == 0)
  10013fcf4  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  10013fcf8  mov     x1, x21
  10013fcfc  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  10013fd00  mov     x20, x0
  10013fd04  adrp    x8, #0x10041c000
  10013fd08  nop
  10013fd0c  ldr     x1, [x8, #0xa20]
  10013fd10  mov     x0, x21
  10013fd14  bl      _objc_msgSend                            ; [a0 isPackable]
  10013fd18  mov     x8, x0
  10013fd1c  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fd20  cbz     w8, loc_10013fdf0                        ; if ([a0 isPackable] == 0)
  10013fd24  adrp    x8, #0x10041c000
  10013fd28  nop
  10013fd2c  ldr     x1, [x8, #0x558]
  10013fd30  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  10013fd34  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  10013fd38  sxtw    x1, w0
  10013fd3c  mov     x0, x8
  10013fd40  bl      sub_100131850                            ; sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  10013fd44  mov     x21, x0
  10013fd48  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fd4c  adrp    x8, #0x10041c000
  10013fd50  nop
  10013fd54  ldr     x22, [x8, #0x8f8]
  10013fd58  mov     x1, x22
  10013fd5c  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10013fd60  mov     x8, x0
  10013fd64  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fd68  cbz     x8, loc_10013fdb4                        ; if ([a1[+0x8] bytesUntilLimit] == 0)
  10013fd6c  adrp    x8, #0x10041c000
  10013fd70  nop
  10013fd74  ldr     x23, [x8, #0x890]
  10013fd78  adrp    x8, #0x10041c000
  10013fd7c  add     x8, x8, #0x980                           ; &@selector(addUInt64:)
  10013fd80  ldr     x24, [x8]
loc_10013fd84:
  10013fd84  mov     x1, x23
  10013fd88  bl      _objc_msgSend                            ; [a1[+0x8] readFixed64]
  10013fd8c  mov     x2, x0
  10013fd90  mov     x0, x20
  10013fd94  mov     x1, x24
  10013fd98  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addUInt64:[a1[+0x8] readFixed64]]
  10013fd9c  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fda0  mov     x1, x22
  10013fda4  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10013fda8  mov     x8, x0
  10013fdac  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fdb0  cbnz    x8, loc_10013fd84                        ; if ([a1[+0x8] bytesUntilLimit] != 0)
loc_10013fdb4:
  10013fdb4  adrp    x8, #0x100420000
  10013fdb8  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  10013fdbc  add     x8, x8, x0
  10013fdc0  str     x21, [x8, #0x18]                         ; a1[+0x8]->state_[+0x18] = sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  10013fdc4  b       loc_10013fe18
loc_10013fdc8:
  10013fdc8  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fdcc  adrp    x8, #0x10041c000
  10013fdd0  nop
  10013fdd4  ldr     x1, [x8, #0x890]
  10013fdd8  bl      _objc_msgSend                            ; [a1[+0x8] readFixed64]
  10013fddc  mov     x2, x0
  10013fde0  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  10013fde4  mov     x1, x21
  10013fde8  bl      sub_100148fa4                            ; sub_100148fa4(a1[+0x10], a0, [a1[+0x8] readFixed64])
  10013fdec  b       loc_10013fe18
loc_10013fdf0:
  10013fdf0  adrp    x8, #0x10041c000
  10013fdf4  nop
  10013fdf8  ldr     x1, [x8, #0x890]
  10013fdfc  bl      _objc_msgSend                            ; [a1[+0x8] readFixed64]
  10013fe00  mov     x2, x0
  10013fe04  adrp    x8, #0x10041c000
  10013fe08  nop
  10013fe0c  ldr     x1, [x8, #0x980]
  10013fe10  mov     x0, x20
  10013fe14  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addUInt64:[a1[+0x8] readFixed64]]
loc_10013fe18:
  10013fe18  mov     w0, #0
  10013fe1c  ldp     x24, x23, [sp], #0x10
  10013fe20  ldp     x22, x21, [sp], #0x10
  10013fe24  ldp     x20, x19, [sp], #0x10
  10013fe28  ldp     x29, x30, [sp], #0x10
  10013fe2c  ret

; ======================================================================
; sub_10013fe30
; address 0x10013fe30  size 364  kind sub
; ======================================================================
  10013fe30  stp     x29, x30, [sp, #-0x10]!
  10013fe34  mov     x29, sp
  10013fe38  stp     x20, x19, [sp, #-0x10]!
  10013fe3c  stp     x22, x21, [sp, #-0x10]!
  10013fe40  stp     x24, x23, [sp, #-0x10]!
  10013fe44  mov     x19, x1
  10013fe48  mov     x21, x0
  10013fe4c  adrp    x8, #0x10041c000
  10013fe50  nop
  10013fe54  ldr     x1, [x8, #0x770]
  10013fe58  bl      _objc_msgSend                            ; [a0 isRepeated]
  10013fe5c  cbz     w0, loc_10013ff34                        ; if ([a0 isRepeated] == 0)
  10013fe60  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  10013fe64  mov     x1, x21
  10013fe68  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  10013fe6c  mov     x20, x0
  10013fe70  adrp    x8, #0x10041c000
  10013fe74  nop
  10013fe78  ldr     x1, [x8, #0xa20]
  10013fe7c  mov     x0, x21
  10013fe80  bl      _objc_msgSend                            ; [a0 isPackable]
  10013fe84  mov     x8, x0
  10013fe88  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fe8c  cbz     w8, loc_10013ff5c                        ; if ([a0 isPackable] == 0)
  10013fe90  adrp    x8, #0x10041c000
  10013fe94  nop
  10013fe98  ldr     x1, [x8, #0x558]
  10013fe9c  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  10013fea0  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  10013fea4  sxtw    x1, w0
  10013fea8  mov     x0, x8
  10013feac  bl      sub_100131850                            ; sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  10013feb0  mov     x21, x0
  10013feb4  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013feb8  adrp    x8, #0x10041c000
  10013febc  nop
  10013fec0  ldr     x22, [x8, #0x8f8]
  10013fec4  mov     x1, x22
  10013fec8  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10013fecc  mov     x8, x0
  10013fed0  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fed4  cbz     x8, loc_10013ff20                        ; if ([a1[+0x8] bytesUntilLimit] == 0)
  10013fed8  adrp    x8, #0x10041c000
  10013fedc  nop
  10013fee0  ldr     x23, [x8, #0x898]
  10013fee4  adrp    x8, #0x10041c000
  10013fee8  add     x8, x8, #0xdb0                           ; &@selector(addInt64:)
  10013feec  ldr     x24, [x8]
loc_10013fef0:
  10013fef0  mov     x1, x23
  10013fef4  bl      _objc_msgSend                            ; [a1[+0x8] readSFixed64]
  10013fef8  mov     x2, x0
  10013fefc  mov     x0, x20
  10013ff00  mov     x1, x24
  10013ff04  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addInt64:[a1[+0x8] readSFixed64]]
  10013ff08  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013ff0c  mov     x1, x22
  10013ff10  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10013ff14  mov     x8, x0
  10013ff18  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013ff1c  cbnz    x8, loc_10013fef0                        ; if ([a1[+0x8] bytesUntilLimit] != 0)
loc_10013ff20:
  10013ff20  adrp    x8, #0x100420000
  10013ff24  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  10013ff28  add     x8, x8, x0
  10013ff2c  str     x21, [x8, #0x18]                         ; a1[+0x8]->state_[+0x18] = sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  10013ff30  b       loc_10013ff84
loc_10013ff34:
  10013ff34  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013ff38  adrp    x8, #0x10041c000
  10013ff3c  nop
  10013ff40  ldr     x1, [x8, #0x898]
  10013ff44  bl      _objc_msgSend                            ; [a1[+0x8] readSFixed64]
  10013ff48  mov     x2, x0
  10013ff4c  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  10013ff50  mov     x1, x21
  10013ff54  bl      sub_100148e74                            ; sub_100148e74(a1[+0x10], a0, [a1[+0x8] readSFixed64])
  10013ff58  b       loc_10013ff84
loc_10013ff5c:
  10013ff5c  adrp    x8, #0x10041c000
  10013ff60  nop
  10013ff64  ldr     x1, [x8, #0x898]
  10013ff68  bl      _objc_msgSend                            ; [a1[+0x8] readSFixed64]
  10013ff6c  mov     x2, x0
  10013ff70  adrp    x8, #0x10041c000
  10013ff74  nop
  10013ff78  ldr     x1, [x8, #0xdb0]
  10013ff7c  mov     x0, x20
  10013ff80  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addInt64:[a1[+0x8] readSFixed64]]
loc_10013ff84:
  10013ff84  mov     w0, #0
  10013ff88  ldp     x24, x23, [sp], #0x10
  10013ff8c  ldp     x22, x21, [sp], #0x10
  10013ff90  ldp     x20, x19, [sp], #0x10
  10013ff94  ldp     x29, x30, [sp], #0x10
  10013ff98  ret

; ======================================================================
; sub_10013ff9c
; address 0x10013ff9c  size 352  kind sub
; ======================================================================
  10013ff9c  stp     x29, x30, [sp, #-0x10]!
  10013ffa0  mov     x29, sp
  10013ffa4  stp     x20, x19, [sp, #-0x10]!
  10013ffa8  stp     x22, x21, [sp, #-0x10]!
  10013ffac  stp     x24, x23, [sp, #-0x10]!
  10013ffb0  mov     x19, x1
  10013ffb4  mov     x21, x0
  10013ffb8  adrp    x8, #0x10041c000
  10013ffbc  nop
  10013ffc0  ldr     x1, [x8, #0x770]
  10013ffc4  bl      _objc_msgSend                            ; [a0 isRepeated]
  10013ffc8  cbz     w0, loc_10014009c                        ; if ([a0 isRepeated] == 0)
  10013ffcc  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  10013ffd0  mov     x1, x21
  10013ffd4  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  10013ffd8  mov     x20, x0
  10013ffdc  adrp    x8, #0x10041c000
  10013ffe0  nop
  10013ffe4  ldr     x1, [x8, #0xa20]
  10013ffe8  mov     x0, x21
  10013ffec  bl      _objc_msgSend                            ; [a0 isPackable]
  10013fff0  mov     x8, x0
  10013fff4  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10013fff8  cbz     w8, loc_1001400c0                        ; if ([a0 isPackable] == 0)
  10013fffc  adrp    x8, #0x10041c000
  100140000  nop
  100140004  ldr     x1, [x8, #0x558]
  100140008  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  10014000c  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100140010  sxtw    x1, w0
  100140014  mov     x0, x8
  100140018  bl      sub_100131850                            ; sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  10014001c  mov     x21, x0
  100140020  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140024  adrp    x8, #0x10041c000
  100140028  nop
  10014002c  ldr     x22, [x8, #0x8f8]
  100140030  mov     x1, x22
  100140034  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  100140038  mov     x8, x0
  10014003c  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140040  cbz     x8, loc_100140088                        ; if ([a1[+0x8] bytesUntilLimit] == 0)
  100140044  adrp    x8, #0x10041c000
  100140048  nop
  10014004c  ldr     x23, [x8, #0x8a0]
  100140050  adrp    x8, #0x10041c000
  100140054  add     x8, x8, #0xdb8                           ; &@selector(addDouble:)
  100140058  ldr     x24, [x8]
loc_10014005c:
  10014005c  mov     x1, x23
  100140060  bl      _objc_msgSend                            ; [a1[+0x8] readDouble]
  100140064  mov     x0, x20
  100140068  mov     x1, x24
  10014006c  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addDouble:[a1[+0x8] readDouble]]
  100140070  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140074  mov     x1, x22
  100140078  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10014007c  mov     x8, x0
  100140080  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140084  cbnz    x8, loc_10014005c                        ; if ([a1[+0x8] bytesUntilLimit] != 0)
loc_100140088:
  100140088  adrp    x8, #0x100420000
  10014008c  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100140090  add     x8, x8, x0
  100140094  str     x21, [x8, #0x18]                         ; a1[+0x8]->state_[+0x18] = sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  100140098  b       loc_1001400e4
loc_10014009c:
  10014009c  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001400a0  adrp    x8, #0x10041c000
  1001400a4  nop
  1001400a8  ldr     x1, [x8, #0x8a0]
  1001400ac  bl      _objc_msgSend                            ; [a1[+0x8] readDouble]
  1001400b0  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  1001400b4  mov     x1, x21
  1001400b8  bl      sub_100149204                            ; sub_100149204(a1[+0x10], a0)
  1001400bc  b       loc_1001400e4
loc_1001400c0:
  1001400c0  adrp    x8, #0x10041c000
  1001400c4  nop
  1001400c8  ldr     x1, [x8, #0x8a0]
  1001400cc  bl      _objc_msgSend                            ; [a1[+0x8] readDouble]
  1001400d0  adrp    x8, #0x10041c000
  1001400d4  nop
  1001400d8  ldr     x1, [x8, #0xdb8]
  1001400dc  mov     x0, x20
  1001400e0  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addDouble:[a1[+0x8] readDouble]]
loc_1001400e4:
  1001400e4  mov     w0, #0
  1001400e8  ldp     x24, x23, [sp], #0x10
  1001400ec  ldp     x22, x21, [sp], #0x10
  1001400f0  ldp     x20, x19, [sp], #0x10
  1001400f4  ldp     x29, x30, [sp], #0x10
  1001400f8  ret

; ======================================================================
; sub_1001400fc
; address 0x1001400fc  size 340  kind sub
; ======================================================================
  1001400fc  stp     x29, x30, [sp, #-0x10]!
  100140100  mov     x29, sp
  100140104  stp     x20, x19, [sp, #-0x10]!
  100140108  stp     x22, x21, [sp, #-0x10]!
  10014010c  stp     x24, x23, [sp, #-0x10]!
  100140110  mov     x19, x1
  100140114  mov     x21, x0
  100140118  adrp    x8, #0x10041c000
  10014011c  nop
  100140120  ldr     x1, [x8, #0x770]
  100140124  bl      _objc_msgSend                            ; [a0 isRepeated]
  100140128  cbz     w0, loc_1001401f8                        ; if ([a0 isRepeated] == 0)
  10014012c  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  100140130  mov     x1, x21
  100140134  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  100140138  mov     x20, x0
  10014013c  adrp    x8, #0x10041c000
  100140140  nop
  100140144  ldr     x1, [x8, #0xa20]
  100140148  mov     x0, x21
  10014014c  bl      _objc_msgSend                            ; [a0 isPackable]
  100140150  mov     x22, x0
  100140154  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140158  adrp    x8, #0x10041c000
  10014015c  nop
  100140160  ldr     x21, [x8, #0x558]
  100140164  mov     x1, x21
  100140168  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  10014016c  mov     x8, x0
  100140170  cbz     w22, loc_100140220                       ; if ([a0 isPackable] == 0)
  100140174  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140178  sxtw    x1, w8
  10014017c  bl      sub_100131850                            ; sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  100140180  mov     x22, x0
  100140184  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140188  adrp    x8, #0x10041c000
  10014018c  nop
  100140190  ldr     x23, [x8, #0x8f8]
  100140194  mov     x1, x23
  100140198  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10014019c  mov     x8, x0
  1001401a0  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001401a4  cbz     x8, loc_1001401e4                        ; if ([a1[+0x8] bytesUntilLimit] == 0)
  1001401a8  adrp    x8, #0x10041c000
  1001401ac  add     x8, x8, #0x510                           ; &@selector(addInt32:)
  1001401b0  ldr     x24, [x8]
loc_1001401b4:
  1001401b4  mov     x1, x21
  1001401b8  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  1001401bc  mov     x2, x0
  1001401c0  mov     x0, x20
  1001401c4  mov     x1, x24
  1001401c8  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addInt32:[a1[+0x8] readInt32]]
  1001401cc  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001401d0  mov     x1, x23
  1001401d4  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  1001401d8  mov     x8, x0
  1001401dc  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001401e0  cbnz    x8, loc_1001401b4                        ; if ([a1[+0x8] bytesUntilLimit] != 0)
loc_1001401e4:
  1001401e4  adrp    x8, #0x100420000
  1001401e8  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  1001401ec  add     x8, x8, x0
  1001401f0  str     x22, [x8, #0x18]                         ; a1[+0x8]->state_[+0x18] = sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  1001401f4  b       loc_100140238
loc_1001401f8:
  1001401f8  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001401fc  adrp    x8, #0x10041c000
  100140200  nop
  100140204  ldr     x1, [x8, #0x558]
  100140208  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  10014020c  mov     x2, x0
  100140210  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  100140214  mov     x1, x21
  100140218  bl      sub_100148c14                            ; sub_100148c14(a1[+0x10], a0, [a1[+0x8] readInt32])
  10014021c  b       loc_100140238
loc_100140220:
  100140220  adrp    x9, #0x10041c000
  100140224  nop
  100140228  ldr     x1, [x9, #0x510]
  10014022c  mov     x0, x20
  100140230  mov     x2, x8
  100140234  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addInt32:[a1[+0x8] readInt32]]
loc_100140238:
  100140238  mov     w0, #0
  10014023c  ldp     x24, x23, [sp], #0x10
  100140240  ldp     x22, x21, [sp], #0x10
  100140244  ldp     x20, x19, [sp], #0x10
  100140248  ldp     x29, x30, [sp], #0x10
  10014024c  ret

; ======================================================================
; sub_100140250
; address 0x100140250  size 364  kind sub
; ======================================================================
  100140250  stp     x29, x30, [sp, #-0x10]!
  100140254  mov     x29, sp
  100140258  stp     x20, x19, [sp, #-0x10]!
  10014025c  stp     x22, x21, [sp, #-0x10]!
  100140260  stp     x24, x23, [sp, #-0x10]!
  100140264  mov     x19, x1
  100140268  mov     x21, x0
  10014026c  adrp    x8, #0x10041c000
  100140270  nop
  100140274  ldr     x1, [x8, #0x770]
  100140278  bl      _objc_msgSend                            ; [a0 isRepeated]
  10014027c  cbz     w0, loc_100140354                        ; if ([a0 isRepeated] == 0)
  100140280  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  100140284  mov     x1, x21
  100140288  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  10014028c  mov     x20, x0
  100140290  adrp    x8, #0x10041c000
  100140294  nop
  100140298  ldr     x1, [x8, #0xa20]
  10014029c  mov     x0, x21
  1001402a0  bl      _objc_msgSend                            ; [a0 isPackable]
  1001402a4  mov     x8, x0
  1001402a8  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001402ac  cbz     w8, loc_10014037c                        ; if ([a0 isPackable] == 0)
  1001402b0  adrp    x8, #0x10041c000
  1001402b4  nop
  1001402b8  ldr     x1, [x8, #0x558]
  1001402bc  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  1001402c0  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  1001402c4  sxtw    x1, w0
  1001402c8  mov     x0, x8
  1001402cc  bl      sub_100131850                            ; sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  1001402d0  mov     x21, x0
  1001402d4  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001402d8  adrp    x8, #0x10041c000
  1001402dc  nop
  1001402e0  ldr     x22, [x8, #0x8f8]
  1001402e4  mov     x1, x22
  1001402e8  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  1001402ec  mov     x8, x0
  1001402f0  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001402f4  cbz     x8, loc_100140340                        ; if ([a1[+0x8] bytesUntilLimit] == 0)
  1001402f8  adrp    x8, #0x10041c000
  1001402fc  nop
  100140300  ldr     x23, [x8, #0x8a8]
  100140304  adrp    x8, #0x10041c000
  100140308  add     x8, x8, #0xdb0                           ; &@selector(addInt64:)
  10014030c  ldr     x24, [x8]
loc_100140310:
  100140310  mov     x1, x23
  100140314  bl      _objc_msgSend                            ; [a1[+0x8] readInt64]
  100140318  mov     x2, x0
  10014031c  mov     x0, x20
  100140320  mov     x1, x24
  100140324  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addInt64:[a1[+0x8] readInt64]]
  100140328  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10014032c  mov     x1, x22
  100140330  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  100140334  mov     x8, x0
  100140338  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10014033c  cbnz    x8, loc_100140310                        ; if ([a1[+0x8] bytesUntilLimit] != 0)
loc_100140340:
  100140340  adrp    x8, #0x100420000
  100140344  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100140348  add     x8, x8, x0
  10014034c  str     x21, [x8, #0x18]                         ; a1[+0x8]->state_[+0x18] = sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  100140350  b       loc_1001403a4
loc_100140354:
  100140354  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140358  adrp    x8, #0x10041c000
  10014035c  nop
  100140360  ldr     x1, [x8, #0x8a8]
  100140364  bl      _objc_msgSend                            ; [a1[+0x8] readInt64]
  100140368  mov     x2, x0
  10014036c  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  100140370  mov     x1, x21
  100140374  bl      sub_100148e74                            ; sub_100148e74(a1[+0x10], a0, [a1[+0x8] readInt64])
  100140378  b       loc_1001403a4
loc_10014037c:
  10014037c  adrp    x8, #0x10041c000
  100140380  nop
  100140384  ldr     x1, [x8, #0x8a8]
  100140388  bl      _objc_msgSend                            ; [a1[+0x8] readInt64]
  10014038c  mov     x2, x0
  100140390  adrp    x8, #0x10041c000
  100140394  nop
  100140398  ldr     x1, [x8, #0xdb0]
  10014039c  mov     x0, x20
  1001403a0  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addInt64:[a1[+0x8] readInt64]]
loc_1001403a4:
  1001403a4  mov     w0, #0
  1001403a8  ldp     x24, x23, [sp], #0x10
  1001403ac  ldp     x22, x21, [sp], #0x10
  1001403b0  ldp     x20, x19, [sp], #0x10
  1001403b4  ldp     x29, x30, [sp], #0x10
  1001403b8  ret

; ======================================================================
; sub_1001403bc
; address 0x1001403bc  size 364  kind sub
; ======================================================================
  1001403bc  stp     x29, x30, [sp, #-0x10]!
  1001403c0  mov     x29, sp
  1001403c4  stp     x20, x19, [sp, #-0x10]!
  1001403c8  stp     x22, x21, [sp, #-0x10]!
  1001403cc  stp     x24, x23, [sp, #-0x10]!
  1001403d0  mov     x19, x1
  1001403d4  mov     x21, x0
  1001403d8  adrp    x8, #0x10041c000
  1001403dc  nop
  1001403e0  ldr     x1, [x8, #0x770]
  1001403e4  bl      _objc_msgSend                            ; [a0 isRepeated]
  1001403e8  cbz     w0, loc_1001404c0                        ; if ([a0 isRepeated] == 0)
  1001403ec  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  1001403f0  mov     x1, x21
  1001403f4  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  1001403f8  mov     x20, x0
  1001403fc  adrp    x8, #0x10041c000
  100140400  nop
  100140404  ldr     x1, [x8, #0xa20]
  100140408  mov     x0, x21
  10014040c  bl      _objc_msgSend                            ; [a0 isPackable]
  100140410  mov     x8, x0
  100140414  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140418  cbz     w8, loc_1001404e8                        ; if ([a0 isPackable] == 0)
  10014041c  adrp    x8, #0x10041c000
  100140420  nop
  100140424  ldr     x1, [x8, #0x558]
  100140428  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  10014042c  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100140430  sxtw    x1, w0
  100140434  mov     x0, x8
  100140438  bl      sub_100131850                            ; sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  10014043c  mov     x21, x0
  100140440  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140444  adrp    x8, #0x10041c000
  100140448  nop
  10014044c  ldr     x22, [x8, #0x8f8]
  100140450  mov     x1, x22
  100140454  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  100140458  mov     x8, x0
  10014045c  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140460  cbz     x8, loc_1001404ac                        ; if ([a1[+0x8] bytesUntilLimit] == 0)
  100140464  adrp    x8, #0x10041c000
  100140468  nop
  10014046c  ldr     x23, [x8, #0x8b0]
  100140470  adrp    x8, #0x10041c000
  100140474  add     x8, x8, #0x510                           ; &@selector(addInt32:)
  100140478  ldr     x24, [x8]
loc_10014047c:
  10014047c  mov     x1, x23
  100140480  bl      _objc_msgSend                            ; [a1[+0x8] readSInt32]
  100140484  mov     x2, x0
  100140488  mov     x0, x20
  10014048c  mov     x1, x24
  100140490  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addInt32:[a1[+0x8] readSInt32]]
  100140494  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140498  mov     x1, x22
  10014049c  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  1001404a0  mov     x8, x0
  1001404a4  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001404a8  cbnz    x8, loc_10014047c                        ; if ([a1[+0x8] bytesUntilLimit] != 0)
loc_1001404ac:
  1001404ac  adrp    x8, #0x100420000
  1001404b0  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  1001404b4  add     x8, x8, x0
  1001404b8  str     x21, [x8, #0x18]                         ; a1[+0x8]->state_[+0x18] = sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  1001404bc  b       loc_100140510
loc_1001404c0:
  1001404c0  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001404c4  adrp    x8, #0x10041c000
  1001404c8  nop
  1001404cc  ldr     x1, [x8, #0x8b0]
  1001404d0  bl      _objc_msgSend                            ; [a1[+0x8] readSInt32]
  1001404d4  mov     x2, x0
  1001404d8  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  1001404dc  mov     x1, x21
  1001404e0  bl      sub_100148c14                            ; sub_100148c14(a1[+0x10], a0, [a1[+0x8] readSInt32])
  1001404e4  b       loc_100140510
loc_1001404e8:
  1001404e8  adrp    x8, #0x10041c000
  1001404ec  nop
  1001404f0  ldr     x1, [x8, #0x8b0]
  1001404f4  bl      _objc_msgSend                            ; [a1[+0x8] readSInt32]
  1001404f8  mov     x2, x0
  1001404fc  adrp    x8, #0x10041c000
  100140500  nop
  100140504  ldr     x1, [x8, #0x510]
  100140508  mov     x0, x20
  10014050c  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addInt32:[a1[+0x8] readSInt32]]
loc_100140510:
  100140510  mov     w0, #0
  100140514  ldp     x24, x23, [sp], #0x10
  100140518  ldp     x22, x21, [sp], #0x10
  10014051c  ldp     x20, x19, [sp], #0x10
  100140520  ldp     x29, x30, [sp], #0x10
  100140524  ret

; ======================================================================
; sub_100140528
; address 0x100140528  size 364  kind sub
; ======================================================================
  100140528  stp     x29, x30, [sp, #-0x10]!
  10014052c  mov     x29, sp
  100140530  stp     x20, x19, [sp, #-0x10]!
  100140534  stp     x22, x21, [sp, #-0x10]!
  100140538  stp     x24, x23, [sp, #-0x10]!
  10014053c  mov     x19, x1
  100140540  mov     x21, x0
  100140544  adrp    x8, #0x10041c000
  100140548  nop
  10014054c  ldr     x1, [x8, #0x770]
  100140550  bl      _objc_msgSend                            ; [a0 isRepeated]
  100140554  cbz     w0, loc_10014062c                        ; if ([a0 isRepeated] == 0)
  100140558  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  10014055c  mov     x1, x21
  100140560  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  100140564  mov     x20, x0
  100140568  adrp    x8, #0x10041c000
  10014056c  nop
  100140570  ldr     x1, [x8, #0xa20]
  100140574  mov     x0, x21
  100140578  bl      _objc_msgSend                            ; [a0 isPackable]
  10014057c  mov     x8, x0
  100140580  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140584  cbz     w8, loc_100140654                        ; if ([a0 isPackable] == 0)
  100140588  adrp    x8, #0x10041c000
  10014058c  nop
  100140590  ldr     x1, [x8, #0x558]
  100140594  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  100140598  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  10014059c  sxtw    x1, w0
  1001405a0  mov     x0, x8
  1001405a4  bl      sub_100131850                            ; sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  1001405a8  mov     x21, x0
  1001405ac  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001405b0  adrp    x8, #0x10041c000
  1001405b4  nop
  1001405b8  ldr     x22, [x8, #0x8f8]
  1001405bc  mov     x1, x22
  1001405c0  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  1001405c4  mov     x8, x0
  1001405c8  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001405cc  cbz     x8, loc_100140618                        ; if ([a1[+0x8] bytesUntilLimit] == 0)
  1001405d0  adrp    x8, #0x10041c000
  1001405d4  nop
  1001405d8  ldr     x23, [x8, #0x8b8]
  1001405dc  adrp    x8, #0x10041c000
  1001405e0  add     x8, x8, #0xdb0                           ; &@selector(addInt64:)
  1001405e4  ldr     x24, [x8]
loc_1001405e8:
  1001405e8  mov     x1, x23
  1001405ec  bl      _objc_msgSend                            ; [a1[+0x8] readSInt64]
  1001405f0  mov     x2, x0
  1001405f4  mov     x0, x20
  1001405f8  mov     x1, x24
  1001405fc  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addInt64:[a1[+0x8] readSInt64]]
  100140600  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140604  mov     x1, x22
  100140608  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10014060c  mov     x8, x0
  100140610  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140614  cbnz    x8, loc_1001405e8                        ; if ([a1[+0x8] bytesUntilLimit] != 0)
loc_100140618:
  100140618  adrp    x8, #0x100420000
  10014061c  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100140620  add     x8, x8, x0
  100140624  str     x21, [x8, #0x18]                         ; a1[+0x8]->state_[+0x18] = sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  100140628  b       loc_10014067c
loc_10014062c:
  10014062c  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140630  adrp    x8, #0x10041c000
  100140634  nop
  100140638  ldr     x1, [x8, #0x8b8]
  10014063c  bl      _objc_msgSend                            ; [a1[+0x8] readSInt64]
  100140640  mov     x2, x0
  100140644  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  100140648  mov     x1, x21
  10014064c  bl      sub_100148e74                            ; sub_100148e74(a1[+0x10], a0, [a1[+0x8] readSInt64])
  100140650  b       loc_10014067c
loc_100140654:
  100140654  adrp    x8, #0x10041c000
  100140658  nop
  10014065c  ldr     x1, [x8, #0x8b8]
  100140660  bl      _objc_msgSend                            ; [a1[+0x8] readSInt64]
  100140664  mov     x2, x0
  100140668  adrp    x8, #0x10041c000
  10014066c  nop
  100140670  ldr     x1, [x8, #0xdb0]
  100140674  mov     x0, x20
  100140678  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addInt64:[a1[+0x8] readSInt64]]
loc_10014067c:
  10014067c  mov     w0, #0
  100140680  ldp     x24, x23, [sp], #0x10
  100140684  ldp     x22, x21, [sp], #0x10
  100140688  ldp     x20, x19, [sp], #0x10
  10014068c  ldp     x29, x30, [sp], #0x10
  100140690  ret

; ======================================================================
; sub_100140694
; address 0x100140694  size 364  kind sub
; ======================================================================
  100140694  stp     x29, x30, [sp, #-0x10]!
  100140698  mov     x29, sp
  10014069c  stp     x20, x19, [sp, #-0x10]!
  1001406a0  stp     x22, x21, [sp, #-0x10]!
  1001406a4  stp     x24, x23, [sp, #-0x10]!
  1001406a8  mov     x19, x1
  1001406ac  mov     x21, x0
  1001406b0  adrp    x8, #0x10041c000
  1001406b4  nop
  1001406b8  ldr     x1, [x8, #0x770]
  1001406bc  bl      _objc_msgSend                            ; [a0 isRepeated]
  1001406c0  cbz     w0, loc_100140798                        ; if ([a0 isRepeated] == 0)
  1001406c4  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  1001406c8  mov     x1, x21
  1001406cc  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  1001406d0  mov     x20, x0
  1001406d4  adrp    x8, #0x10041c000
  1001406d8  nop
  1001406dc  ldr     x1, [x8, #0xa20]
  1001406e0  mov     x0, x21
  1001406e4  bl      _objc_msgSend                            ; [a0 isPackable]
  1001406e8  mov     x8, x0
  1001406ec  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001406f0  cbz     w8, loc_1001407c0                        ; if ([a0 isPackable] == 0)
  1001406f4  adrp    x8, #0x10041c000
  1001406f8  nop
  1001406fc  ldr     x1, [x8, #0x558]
  100140700  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  100140704  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100140708  sxtw    x1, w0
  10014070c  mov     x0, x8
  100140710  bl      sub_100131850                            ; sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  100140714  mov     x21, x0
  100140718  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10014071c  adrp    x8, #0x10041c000
  100140720  nop
  100140724  ldr     x22, [x8, #0x8f8]
  100140728  mov     x1, x22
  10014072c  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  100140730  mov     x8, x0
  100140734  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140738  cbz     x8, loc_100140784                        ; if ([a1[+0x8] bytesUntilLimit] == 0)
  10014073c  adrp    x8, #0x10041c000
  100140740  nop
  100140744  ldr     x23, [x8, #0x8c0]
  100140748  adrp    x8, #0x10041c000
  10014074c  add     x8, x8, #0x988                           ; &@selector(addUInt32:)
  100140750  ldr     x24, [x8]
loc_100140754:
  100140754  mov     x1, x23
  100140758  bl      _objc_msgSend                            ; [a1[+0x8] readUInt32]
  10014075c  mov     x2, x0
  100140760  mov     x0, x20
  100140764  mov     x1, x24
  100140768  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addUInt32:[a1[+0x8] readUInt32]]
  10014076c  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140770  mov     x1, x22
  100140774  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  100140778  mov     x8, x0
  10014077c  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140780  cbnz    x8, loc_100140754                        ; if ([a1[+0x8] bytesUntilLimit] != 0)
loc_100140784:
  100140784  adrp    x8, #0x100420000
  100140788  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  10014078c  add     x8, x8, x0
  100140790  str     x21, [x8, #0x18]                         ; a1[+0x8]->state_[+0x18] = sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  100140794  b       loc_1001407e8
loc_100140798:
  100140798  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10014079c  adrp    x8, #0x10041c000
  1001407a0  nop
  1001407a4  ldr     x1, [x8, #0x8c0]
  1001407a8  bl      _objc_msgSend                            ; [a1[+0x8] readUInt32]
  1001407ac  mov     x2, x0
  1001407b0  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  1001407b4  mov     x1, x21
  1001407b8  bl      sub_100148d44                            ; sub_100148d44(a1[+0x10], a0, [a1[+0x8] readUInt32])
  1001407bc  b       loc_1001407e8
loc_1001407c0:
  1001407c0  adrp    x8, #0x10041c000
  1001407c4  nop
  1001407c8  ldr     x1, [x8, #0x8c0]
  1001407cc  bl      _objc_msgSend                            ; [a1[+0x8] readUInt32]
  1001407d0  mov     x2, x0
  1001407d4  adrp    x8, #0x10041c000
  1001407d8  nop
  1001407dc  ldr     x1, [x8, #0x988]
  1001407e0  mov     x0, x20
  1001407e4  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addUInt32:[a1[+0x8] readUInt32]]
loc_1001407e8:
  1001407e8  mov     w0, #0
  1001407ec  ldp     x24, x23, [sp], #0x10
  1001407f0  ldp     x22, x21, [sp], #0x10
  1001407f4  ldp     x20, x19, [sp], #0x10
  1001407f8  ldp     x29, x30, [sp], #0x10
  1001407fc  ret

; ======================================================================
; sub_100140800
; address 0x100140800  size 364  kind sub
; ======================================================================
  100140800  stp     x29, x30, [sp, #-0x10]!
  100140804  mov     x29, sp
  100140808  stp     x20, x19, [sp, #-0x10]!
  10014080c  stp     x22, x21, [sp, #-0x10]!
  100140810  stp     x24, x23, [sp, #-0x10]!
  100140814  mov     x19, x1
  100140818  mov     x21, x0
  10014081c  adrp    x8, #0x10041c000
  100140820  nop
  100140824  ldr     x1, [x8, #0x770]
  100140828  bl      _objc_msgSend                            ; [a0 isRepeated]
  10014082c  cbz     w0, loc_100140904                        ; if ([a0 isRepeated] == 0)
  100140830  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  100140834  mov     x1, x21
  100140838  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  10014083c  mov     x20, x0
  100140840  adrp    x8, #0x10041c000
  100140844  nop
  100140848  ldr     x1, [x8, #0xa20]
  10014084c  mov     x0, x21
  100140850  bl      _objc_msgSend                            ; [a0 isPackable]
  100140854  mov     x8, x0
  100140858  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10014085c  cbz     w8, loc_10014092c                        ; if ([a0 isPackable] == 0)
  100140860  adrp    x8, #0x10041c000
  100140864  nop
  100140868  ldr     x1, [x8, #0x558]
  10014086c  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  100140870  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100140874  sxtw    x1, w0
  100140878  mov     x0, x8
  10014087c  bl      sub_100131850                            ; sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  100140880  mov     x21, x0
  100140884  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140888  adrp    x8, #0x10041c000
  10014088c  nop
  100140890  ldr     x22, [x8, #0x8f8]
  100140894  mov     x1, x22
  100140898  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  10014089c  mov     x8, x0
  1001408a0  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001408a4  cbz     x8, loc_1001408f0                        ; if ([a1[+0x8] bytesUntilLimit] == 0)
  1001408a8  adrp    x8, #0x10041c000
  1001408ac  nop
  1001408b0  ldr     x23, [x8, #0x8c8]
  1001408b4  adrp    x8, #0x10041c000
  1001408b8  add     x8, x8, #0x980                           ; &@selector(addUInt64:)
  1001408bc  ldr     x24, [x8]
loc_1001408c0:
  1001408c0  mov     x1, x23
  1001408c4  bl      _objc_msgSend                            ; [a1[+0x8] readUInt64]
  1001408c8  mov     x2, x0
  1001408cc  mov     x0, x20
  1001408d0  mov     x1, x24
  1001408d4  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addUInt64:[a1[+0x8] readUInt64]]
  1001408d8  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001408dc  mov     x1, x22
  1001408e0  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  1001408e4  mov     x8, x0
  1001408e8  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001408ec  cbnz    x8, loc_1001408c0                        ; if ([a1[+0x8] bytesUntilLimit] != 0)
loc_1001408f0:
  1001408f0  adrp    x8, #0x100420000
  1001408f4  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  1001408f8  add     x8, x8, x0
  1001408fc  str     x21, [x8, #0x18]                         ; a1[+0x8]->state_[+0x18] = sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  100140900  b       loc_100140954
loc_100140904:
  100140904  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140908  adrp    x8, #0x10041c000
  10014090c  nop
  100140910  ldr     x1, [x8, #0x8c8]
  100140914  bl      _objc_msgSend                            ; [a1[+0x8] readUInt64]
  100140918  mov     x2, x0
  10014091c  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  100140920  mov     x1, x21
  100140924  bl      sub_100148fa4                            ; sub_100148fa4(a1[+0x10], a0, [a1[+0x8] readUInt64])
  100140928  b       loc_100140954
loc_10014092c:
  10014092c  adrp    x8, #0x10041c000
  100140930  nop
  100140934  ldr     x1, [x8, #0x8c8]
  100140938  bl      _objc_msgSend                            ; [a1[+0x8] readUInt64]
  10014093c  mov     x2, x0
  100140940  adrp    x8, #0x10041c000
  100140944  nop
  100140948  ldr     x1, [x8, #0x980]
  10014094c  mov     x0, x20
  100140950  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addUInt64:[a1[+0x8] readUInt64]]
loc_100140954:
  100140954  mov     w0, #0
  100140958  ldp     x24, x23, [sp], #0x10
  10014095c  ldp     x22, x21, [sp], #0x10
  100140960  ldp     x20, x19, [sp], #0x10
  100140964  ldp     x29, x30, [sp], #0x10
  100140968  ret

; ======================================================================
; sub_10014096c
; address 0x10014096c  size 116  kind sub
; ======================================================================
  10014096c  stp     x29, x30, [sp, #-0x10]!
  100140970  mov     x29, sp
  100140974  stp     x20, x19, [sp, #-0x10]!
  100140978  stp     x22, x21, [sp, #-0x10]!
  10014097c  mov     x21, x1
  100140980  mov     x20, x0
  100140984  ldr     x0, [x21, #8]                            ; x0 = a1[+0x8]
  100140988  bl      sub_100131730                            ; sub_100131730(a1[+0x8], a1, a2, a3)
  10014098c  mov     x19, x0
  100140990  adrp    x8, #0x10041c000
  100140994  nop
  100140998  ldr     x1, [x8, #0x770]
  10014099c  mov     x0, x20
  1001409a0  bl      _objc_msgSend                            ; [a0 isRepeated]
  1001409a4  mov     x8, x0
  1001409a8  ldr     x0, [x21, #0x10]                         ; x0 = a1[+0x10]
  1001409ac  mov     x1, x20
  1001409b0  cbz     w8, loc_1001409c4                        ; if ([a0 isRepeated] == 0)
  1001409b4  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  1001409b8  mov     x1, x19
  1001409bc  bl      sub_10012f4c4                            ; sub_10012f4c4(sub_10013cd1c(a1[+0x10], a0), sub_100131730(a1[+0x8], a1, a2, a3))
  1001409c0  b       loc_1001409cc
loc_1001409c4:
  1001409c4  mov     x2, x19
  1001409c8  bl      sub_1001486ec                            ; sub_1001486ec(a1[+0x10], a0, sub_100131730(a1[+0x8], a1, a2, a3))
loc_1001409cc:
  1001409cc  mov     w0, #0
  1001409d0  ldp     x22, x21, [sp], #0x10
  1001409d4  ldp     x20, x19, [sp], #0x10
  1001409d8  ldp     x29, x30, [sp], #0x10
  1001409dc  ret

; ======================================================================
; sub_1001409e0
; address 0x1001409e0  size 116  kind sub
; ======================================================================
  1001409e0  stp     x29, x30, [sp, #-0x10]!
  1001409e4  mov     x29, sp
  1001409e8  stp     x20, x19, [sp, #-0x10]!
  1001409ec  stp     x22, x21, [sp, #-0x10]!
  1001409f0  mov     x21, x1
  1001409f4  mov     x20, x0
  1001409f8  ldr     x0, [x21, #8]                            ; x0 = a1[+0x8]
  1001409fc  bl      sub_100131450                            ; sub_100131450(a1[+0x8], a1, a2, a3)
  100140a00  mov     x19, x0
  100140a04  adrp    x8, #0x10041c000
  100140a08  nop
  100140a0c  ldr     x1, [x8, #0x770]
  100140a10  mov     x0, x20
  100140a14  bl      _objc_msgSend                            ; [a0 isRepeated]
  100140a18  mov     x8, x0
  100140a1c  ldr     x0, [x21, #0x10]                         ; x0 = a1[+0x10]
  100140a20  mov     x1, x20
  100140a24  cbz     w8, loc_100140a38                        ; if ([a0 isRepeated] == 0)
  100140a28  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  100140a2c  mov     x1, x19
  100140a30  bl      sub_10012f4c4                            ; sub_10012f4c4(sub_10013cd1c(a1[+0x10], a0), sub_100131450(a1[+0x8], a1, a2, a3))
  100140a34  b       loc_100140a40
loc_100140a38:
  100140a38  mov     x2, x19
  100140a3c  bl      sub_1001486ec                            ; sub_1001486ec(a1[+0x10], a0, sub_100131450(a1[+0x8], a1, a2, a3))
loc_100140a40:
  100140a40  mov     w0, #0
  100140a44  ldp     x22, x21, [sp], #0x10
  100140a48  ldp     x20, x19, [sp], #0x10
  100140a4c  ldp     x29, x30, [sp], #0x10
  100140a50  ret

; ======================================================================
; sub_100140a54
; address 0x100140a54  size 320  kind sub
; ======================================================================
  100140a54  stp     x29, x30, [sp, #-0x10]!
  100140a58  mov     x29, sp
  100140a5c  stp     x20, x19, [sp, #-0x10]!
  100140a60  stp     x22, x21, [sp, #-0x10]!
  100140a64  mov     x19, x1
  100140a68  mov     x20, x0
  100140a6c  adrp    x8, #0x10041c000
  100140a70  nop
  100140a74  ldr     x1, [x8, #0xaa0]
  100140a78  bl      _objc_msgSend                            ; [a0 msgClass]
  100140a7c  adrp    x8, #0x100416000
  100140a80  nop
  100140a84  ldr     x1, [x8, #0xac8]
  100140a88  bl      _objc_msgSend                            ; [[a0 msgClass] alloc]
  100140a8c  adrp    x8, #0x100416000
  100140a90  nop
  100140a94  ldr     x1, [x8, #0xab8]
  100140a98  bl      _objc_msgSend                            ; [[[a0 msgClass] alloc] init]
  100140a9c  mov     x21, x0
  100140aa0  adrp    x8, #0x10041c000
  100140aa4  nop
  100140aa8  ldr     x1, [x8, #0x770]
  100140aac  mov     x0, x20
  100140ab0  bl      _objc_msgSend                            ; [a0 isRepeated]
  100140ab4  cbz     w0, loc_100140af4                        ; if ([a0 isRepeated] == 0)
  100140ab8  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  100140abc  mov     x1, x20
  100140ac0  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  100140ac4  mov     x20, x0
  100140ac8  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140acc  ldr     x3, [x19, #0x18]                         ; x3 = a1[+0x18]
  100140ad0  adrp    x8, #0x10041c000
  100140ad4  nop
  100140ad8  ldr     x1, [x8, #0x8f0]
  100140adc  mov     x2, x21
  100140ae0  bl      _objc_msgSend                            ; [a1[+0x8] readMessage:[[[a0 msgClass] alloc] init] extensionRegistry:a1[+0x18]]
  100140ae4  mov     x0, x20
  100140ae8  mov     x1, x21
  100140aec  bl      sub_10012f4c4                            ; sub_10012f4c4(sub_10013cd1c(a1[+0x10], a0), [[[a0 msgClass] alloc] init])
  100140af0  b       loc_100140b80
loc_100140af4:
  100140af4  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  100140af8  adrp    x8, #0x100420000
  100140afc  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100140b00  ldr     x8, [x0, x8]                             ; x8 = a1[+0x10]->messageStorage_
  100140b04  cbz     x8, loc_100140b54                        ; if (a1[+0x10]->messageStorage_ == 0)
  100140b08  adrp    x9, #0x100420000
  100140b0c  ldrsw   x9, [x9, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100140b10  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  100140b14  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100140b18  and     w10, w9, #0x1f
  100140b1c  mov     w11, #1
  100140b20  lsl     w10, w11, w10
  100140b24  lsr     w9, w9, #5
  100140b28  ldr     w8, [x8, w9, uxtw #2]
  100140b2c  and     w8, w8, w10
  100140b30  cbz     w8, loc_100140b54                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100140b34  mov     x1, x20
  100140b38  bl      sub_10013c1a0                            ; sub_10013c1a0(a1[+0x10], a0)
  100140b3c  mov     x2, x0
  100140b40  adrp    x8, #0x10041c000
  100140b44  nop
  100140b48  ldr     x1, [x8, #0xb48]
  100140b4c  mov     x0, x21
  100140b50  bl      _objc_msgSend                            ; [[[[a0 msgClass] alloc] init] mergeFrom:sub_10013c1a0(a1[+0x10], a0)]
loc_100140b54:
  100140b54  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140b58  ldr     x3, [x19, #0x18]                         ; x3 = a1[+0x18]
  100140b5c  adrp    x8, #0x10041c000
  100140b60  nop
  100140b64  ldr     x1, [x8, #0x8f0]
  100140b68  mov     x2, x21
  100140b6c  bl      _objc_msgSend                            ; [a1[+0x8] readMessage:[[[a0 msgClass] alloc] init] extensionRegistry:a1[+0x18]]
  100140b70  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  100140b74  mov     x1, x20
  100140b78  mov     x2, x21
  100140b7c  bl      sub_1001486ec                            ; sub_1001486ec(a1[+0x10], a0, [[[a0 msgClass] alloc] init])
loc_100140b80:
  100140b80  mov     w0, #0
  100140b84  ldp     x22, x21, [sp], #0x10
  100140b88  ldp     x20, x19, [sp], #0x10
  100140b8c  ldp     x29, x30, [sp], #0x10
  100140b90  ret

; ======================================================================
; sub_100140b94
; address 0x100140b94  size 348  kind sub
; ======================================================================
  100140b94  stp     x29, x30, [sp, #-0x10]!
  100140b98  mov     x29, sp
  100140b9c  stp     x20, x19, [sp, #-0x10]!
  100140ba0  stp     x22, x21, [sp, #-0x10]!
  100140ba4  stp     x24, x23, [sp, #-0x10]!
  100140ba8  mov     x19, x1
  100140bac  mov     x20, x0
  100140bb0  adrp    x23, #0x100420000
  100140bb4  ldrsw   x8, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100140bb8  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100140bbc  ldr     w21, [x8, #8]                            ; w21 = a0->description_[+0x8]
  100140bc0  adrp    x8, #0x10041c000
  100140bc4  nop
  100140bc8  ldr     x1, [x8, #0xaa0]
  100140bcc  bl      _objc_msgSend                            ; [a0 msgClass]
  100140bd0  adrp    x8, #0x100416000
  100140bd4  nop
  100140bd8  ldr     x1, [x8, #0xac8]
  100140bdc  bl      _objc_msgSend                            ; [[a0 msgClass] alloc]
  100140be0  adrp    x8, #0x100416000
  100140be4  nop
  100140be8  ldr     x1, [x8, #0xab8]
  100140bec  bl      _objc_msgSend                            ; [[[a0 msgClass] alloc] init]
  100140bf0  mov     x22, x0
  100140bf4  adrp    x8, #0x10041c000
  100140bf8  nop
  100140bfc  ldr     x1, [x8, #0x770]
  100140c00  mov     x0, x20
  100140c04  bl      _objc_msgSend                            ; [a0 isRepeated]
  100140c08  cbz     w0, loc_100140c4c                        ; if ([a0 isRepeated] == 0)
  100140c0c  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  100140c10  mov     x1, x20
  100140c14  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  100140c18  mov     x20, x0
  100140c1c  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140c20  ldr     x4, [x19, #0x18]                         ; x4 = a1[+0x18]
  100140c24  adrp    x8, #0x10041c000
  100140c28  nop
  100140c2c  ldr     x1, [x8, #0x8e8]
  100140c30  mov     x2, x21
  100140c34  mov     x3, x22
  100140c38  bl      _objc_msgSend                            ; [a1[+0x8] readGroup:a0->description_[+0x8] builder:[[[a0 msgClass] alloc] init] extensionRegistry:a1[+0x18]]
  100140c3c  mov     x0, x20
  100140c40  mov     x1, x22
  100140c44  bl      sub_10012f4c4                            ; sub_10012f4c4(sub_10013cd1c(a1[+0x10], a0), [[[a0 msgClass] alloc] init])
  100140c48  b       loc_100140cd8
loc_100140c4c:
  100140c4c  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  100140c50  adrp    x8, #0x100420000
  100140c54  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100140c58  ldr     x8, [x0, x8]                             ; x8 = a1[+0x10]->messageStorage_
  100140c5c  cbz     x8, loc_100140ca8                        ; if (a1[+0x10]->messageStorage_ == 0)
  100140c60  ldrsw   x9, [x23, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100140c64  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  100140c68  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100140c6c  and     w10, w9, #0x1f
  100140c70  mov     w11, #1
  100140c74  lsl     w10, w11, w10
  100140c78  lsr     w9, w9, #5
  100140c7c  ldr     w8, [x8, w9, uxtw #2]
  100140c80  and     w8, w8, w10
  100140c84  cbz     w8, loc_100140ca8                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100140c88  mov     x1, x20
  100140c8c  bl      sub_10013c1a0                            ; sub_10013c1a0(a1[+0x10], a0)
  100140c90  mov     x2, x0
  100140c94  adrp    x8, #0x10041c000
  100140c98  nop
  100140c9c  ldr     x1, [x8, #0xb48]
  100140ca0  mov     x0, x22
  100140ca4  bl      _objc_msgSend                            ; [[[[a0 msgClass] alloc] init] mergeFrom:sub_10013c1a0(a1[+0x10], a0)]
loc_100140ca8:
  100140ca8  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100140cac  ldr     x4, [x19, #0x18]                         ; x4 = a1[+0x18]
  100140cb0  adrp    x8, #0x10041c000
  100140cb4  nop
  100140cb8  ldr     x1, [x8, #0x8e8]
  100140cbc  mov     x2, x21
  100140cc0  mov     x3, x22
  100140cc4  bl      _objc_msgSend                            ; [a1[+0x8] readGroup:a0->description_[+0x8] builder:[[[a0 msgClass] alloc] init] extensionRegistry:a1[+0x18]]
  100140cc8  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  100140ccc  mov     x1, x20
  100140cd0  mov     x2, x22
  100140cd4  bl      sub_1001486ec                            ; sub_1001486ec(a1[+0x10], a0, [[[a0 msgClass] alloc] init])
loc_100140cd8:
  100140cd8  mov     w0, #0
  100140cdc  ldp     x24, x23, [sp], #0x10
  100140ce0  ldp     x22, x21, [sp], #0x10
  100140ce4  ldp     x20, x19, [sp], #0x10
  100140ce8  ldp     x29, x30, [sp], #0x10
  100140cec  ret

; ======================================================================
; sub_100140cf0
; address 0x100140cf0  size 660  kind sub
; ======================================================================
  100140cf0  stp     x29, x30, [sp, #-0x10]!
  100140cf4  mov     x29, sp
  100140cf8  stp     x20, x19, [sp, #-0x10]!
  100140cfc  stp     x22, x21, [sp, #-0x10]!
  100140d00  stp     x24, x23, [sp, #-0x10]!
  100140d04  stp     x26, x25, [sp, #-0x10]!
  100140d08  stp     x28, x27, [sp, #-0x10]!
  100140d0c  sub     sp, sp, #0x10
  100140d10  mov     x20, x1
  100140d14  mov     x21, x0
  100140d18  adrp    x8, #0x100420000
  100140d1c  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100140d20  ldr     x8, [x21, x8]                            ; x8 = a0->description_
  100140d24  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100140d28  str     w8, [sp, #0xc]
  100140d2c  adrp    x8, #0x10041c000
  100140d30  nop
  100140d34  ldr     x1, [x8, #0x770]
  100140d38  bl      _objc_msgSend                            ; [a0 isRepeated]
  100140d3c  cbz     w0, loc_100140e74                        ; if ([a0 isRepeated] == 0)
  100140d40  ldr     x0, [x20, #0x10]                         ; x0 = a1[+0x10]
  100140d44  mov     x1, x21
  100140d48  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x10], a0)
  100140d4c  mov     x22, x0
  100140d50  adrp    x8, #0x10041c000
  100140d54  nop
  100140d58  ldr     x1, [x8, #0xa20]
  100140d5c  mov     x0, x21
  100140d60  bl      _objc_msgSend                            ; [a0 isPackable]
  100140d64  mov     x8, x0
  100140d68  ldr     x0, [x20, #8]                            ; x0 = a1[+0x8]
  100140d6c  cbz     w8, loc_100140ebc                        ; if ([a0 isPackable] == 0)
  100140d70  adrp    x8, #0x10041c000
  100140d74  nop
  100140d78  ldr     x1, [x8, #0x558]
  100140d7c  bl      _objc_msgSend                            ; [a1[+0x8] readInt32]
  100140d80  ldr     x8, [x20, #8]                            ; x8 = a1[+0x8]
  100140d84  sxtw    x1, w0
  100140d88  mov     x0, x8
  100140d8c  bl      sub_100131850                            ; sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  100140d90  str     x0, [sp]
  100140d94  ldr     x0, [x20, #8]                            ; x0 = a1[+0x8]
  100140d98  adrp    x8, #0x10041c000
  100140d9c  nop
  100140da0  ldr     x24, [x8, #0x8f8]
  100140da4  mov     x1, x24
  100140da8  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  100140dac  mov     x8, x0
  100140db0  ldr     x0, [x20, #8]                            ; x0 = a1[+0x8]
  100140db4  cbz     x8, loc_100140e5c                        ; if ([a1[+0x8] bytesUntilLimit] == 0)
  100140db8  adrp    x8, #0x10041c000
  100140dbc  nop
  100140dc0  ldr     x25, [x8, #0x8e0]
  100140dc4  adrp    x8, #0x10041c000
  100140dc8  nop
  100140dcc  ldr     x26, [x8, #0xda0]
  100140dd0  adrp    x8, #0x10041c000
  100140dd4  nop
  100140dd8  ldr     x27, [x8, #0x510]
  100140ddc  adrp    x8, #0x10041c000
  100140de0  nop
  100140de4  ldr     x28, [x8, #0xb08]
  100140de8  adrp    x8, #0x10041c000
  100140dec  add     x8, x8, #0xda8                           ; &@selector(mergeVarintField:value:)
  100140df0  ldr     x23, [x8]
loc_100140df4:
  100140df4  mov     x1, x25
  100140df8  bl      _objc_msgSend                            ; [a1[+0x8] readEnum]
  100140dfc  mov     x19, x0
  100140e00  mov     x0, x21
  100140e04  mov     x1, x26
  100140e08  mov     x2, x19
  100140e0c  bl      _objc_msgSend                            ; [a0 isValidEnumValue:[a1[+0x8] readEnum]]
  100140e10  cbz     w0, loc_100140e28                        ; if ([a0 isValidEnumValue:[a1[+0x8] readEnum]] == 0)
  100140e14  mov     x0, x22
  100140e18  mov     x1, x27
  100140e1c  mov     x2, x19
  100140e20  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addInt32:[a1[+0x8] readEnum]]
  100140e24  b       loc_100140e44
loc_100140e28:
  100140e28  ldr     x0, [x20]                                ; x0 = a1[+0x0]
  100140e2c  mov     x1, x28
  100140e30  bl      _objc_msgSend                            ; [a1[+0x0] mutableUnknownFields]
  100140e34  mov     x1, x23
  100140e38  ldr     w2, [sp, #0xc]
  100140e3c  mov     x3, x19
  100140e40  bl      _objc_msgSend                            ; [[a1[+0x0] mutableUnknownFields] mergeVarintField:a0->description_[+0x8] value:[a1[+0x8] readEnum]]
loc_100140e44:
  100140e44  ldr     x0, [x20, #8]                            ; x0 = a1[+0x8]
  100140e48  mov     x1, x24
  100140e4c  bl      _objc_msgSend                            ; [a1[+0x8] bytesUntilLimit]
  100140e50  mov     x8, x0
  100140e54  ldr     x0, [x20, #8]                            ; x0 = a1[+0x8]
  100140e58  cbnz    x8, loc_100140df4                        ; if ([a1[+0x8] bytesUntilLimit] != 0)
loc_100140e5c:
  100140e5c  adrp    x8, #0x100420000
  100140e60  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100140e64  add     x8, x8, x0
  100140e68  ldr     x9, [sp]
  100140e6c  str     x9, [x8, #0x18]                          ; a1[+0x8]->state_[+0x18] = sub_100131850(a1[+0x8], [a1[+0x8] readInt32])
  100140e70  b       loc_100140f60
loc_100140e74:
  100140e74  ldr     x0, [x20, #8]                            ; x0 = a1[+0x8]
  100140e78  adrp    x8, #0x10041c000
  100140e7c  nop
  100140e80  ldr     x1, [x8, #0x8e0]
  100140e84  bl      _objc_msgSend                            ; [a1[+0x8] readEnum]
  100140e88  mov     x22, x0
  100140e8c  adrp    x8, #0x10041c000
  100140e90  nop
  100140e94  ldr     x1, [x8, #0xda0]
  100140e98  mov     x0, x21
  100140e9c  mov     x2, x22
  100140ea0  bl      _objc_msgSend                            ; [a0 isValidEnumValue:[a1[+0x8] readEnum]]
  100140ea4  cbz     w0, loc_100140f08                        ; if ([a0 isValidEnumValue:[a1[+0x8] readEnum]] == 0)
  100140ea8  ldr     x0, [x20, #0x10]                         ; x0 = a1[+0x10]
  100140eac  mov     x1, x21
  100140eb0  mov     x2, x22
  100140eb4  bl      sub_100148c14                            ; sub_100148c14(a1[+0x10], a0, [a1[+0x8] readEnum])
  100140eb8  b       loc_100140f60
loc_100140ebc:
  100140ebc  adrp    x8, #0x10041c000
  100140ec0  nop
  100140ec4  ldr     x1, [x8, #0x8e0]
  100140ec8  bl      _objc_msgSend                            ; [a1[+0x8] readEnum]
  100140ecc  mov     x23, x0
  100140ed0  adrp    x8, #0x10041c000
  100140ed4  nop
  100140ed8  ldr     x1, [x8, #0xda0]
  100140edc  mov     x0, x21
  100140ee0  mov     x2, x23
  100140ee4  bl      _objc_msgSend                            ; [a0 isValidEnumValue:[a1[+0x8] readEnum]]
  100140ee8  cbz     w0, loc_100140f34                        ; if ([a0 isValidEnumValue:[a1[+0x8] readEnum]] == 0)
  100140eec  adrp    x8, #0x10041c000
  100140ef0  nop
  100140ef4  ldr     x1, [x8, #0x510]
  100140ef8  mov     x0, x22
  100140efc  mov     x2, x23
  100140f00  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x10], a0) addInt32:[a1[+0x8] readEnum]]
  100140f04  b       loc_100140f60
loc_100140f08:
  100140f08  ldr     x0, [x20]                                ; x0 = a1[+0x0]
  100140f0c  adrp    x8, #0x10041c000
  100140f10  nop
  100140f14  ldr     x1, [x8, #0xb08]
  100140f18  bl      _objc_msgSend                            ; [a1[+0x0] mutableUnknownFields]
  100140f1c  adrp    x8, #0x10041c000
  100140f20  add     x8, x8, #0xda8                           ; &@selector(mergeVarintField:value:)
  100140f24  ldr     x1, [x8]
  100140f28  ldr     w2, [sp, #0xc]
  100140f2c  mov     x3, x22
  100140f30  b       loc_100140f5c
loc_100140f34:
  100140f34  ldr     x0, [x20]                                ; x0 = a1[+0x0]
  100140f38  adrp    x8, #0x10041c000
  100140f3c  nop
  100140f40  ldr     x1, [x8, #0xb08]
  100140f44  bl      _objc_msgSend                            ; [a1[+0x0] mutableUnknownFields]
  100140f48  adrp    x8, #0x10041c000
  100140f4c  add     x8, x8, #0xda8                           ; &@selector(mergeVarintField:value:)
  100140f50  ldr     x1, [x8]
  100140f54  ldr     w2, [sp, #0xc]
  100140f58  mov     x3, x23
loc_100140f5c:
  100140f5c  bl      _objc_msgSend                            ; [[a1[+0x0] mutableUnknownFields] mergeVarintField:a0->description_[+0x8] value:[a1[+0x8] readEnum]]
loc_100140f60:
  100140f60  mov     w0, #0
  100140f64  sub     sp, x29, #0x50
  100140f68  ldp     x28, x27, [sp], #0x10
  100140f6c  ldp     x26, x25, [sp], #0x10
  100140f70  ldp     x24, x23, [sp], #0x10
  100140f74  ldp     x22, x21, [sp], #0x10
  100140f78  ldp     x20, x19, [sp], #0x10
  100140f7c  ldp     x29, x30, [sp], #0x10
  100140f80  ret

; ======================================================================
; -[TAGPBGeneratedMessage mergeFrom:]
; address 0x100140f84  size 1068  kind objc
; ======================================================================
  100140f84  stp     x29, x30, [sp, #-0x10]!
  100140f88  mov     x29, sp
  100140f8c  stp     x20, x19, [sp, #-0x10]!
  100140f90  stp     x22, x21, [sp, #-0x10]!
  100140f94  stp     x24, x23, [sp, #-0x10]!
  100140f98  stp     x26, x25, [sp, #-0x10]!
  100140f9c  stp     x28, x27, [sp, #-0x10]!
  100140fa0  sub     sp, sp, #0x1b0
  100140fa4  mov     x24, x2
  100140fa8  mov     x19, x0
  100140fac  adrp    x8, #0x1003b0000
  100140fb0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100140fb4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100140fb8  stur    x8, [x29, #-0x58]
  100140fbc  adrp    x8, #0x100417000
  100140fc0  nop
  100140fc4  ldr     x20, [x8, #0x2e0]
  100140fc8  str     x20, [sp, #0x70]
  100140fcc  mov     x1, x20
  100140fd0  bl      _objc_msgSend                            ; [self class]
  100140fd4  mov     x21, x0
  100140fd8  mov     x0, x24
  100140fdc  mov     x1, x20
  100140fe0  bl      _objc_msgSend                            ; [arg1 class]
  100140fe4  mov     x22, x0
  100140fe8  adrp    x8, #0x100417000
  100140fec  nop
  100140ff0  ldr     x23, [x8, #0xec0]
  100140ff4  mov     x0, x21
  100140ff8  mov     x1, x23
  100140ffc  mov     x2, x22
  100141000  bl      _objc_msgSend                            ; [[self class] isSubclassOfClass:[arg1 class]]
  100141004  tbnz    w0, #0, loc_100141074                    ; if (([[self class] isSubclassOfClass:[arg1 class]] & 1))
  100141008  mov     x0, x22
  10014100c  mov     x1, x23
  100141010  mov     x2, x21
  100141014  bl      _objc_msgSend                            ; [[arg1 class] isSubclassOfClass:[self class]]
  100141018  tbnz    w0, #0, loc_100141074                    ; if (([[arg1 class] isSubclassOfClass:[self class]] & 1))
  10014101c  adrp    x8, #0x10041d000
  100141020  ldr     x21, [x8, #0xfc8]                        ; class NSException
  100141024  adrp    x8, #0x1003b0000
  100141028  ldr     x8, [x8, #0x40]                          ; _NSInvalidArgumentException
  10014102c  ldr     x22, [x8]                                ; x22 = _NSInvalidArgumentException[+0x0]
  100141030  mov     x0, x19
  100141034  ldr     x20, [sp, #0x70]
  100141038  mov     x1, x20
  10014103c  bl      _objc_msgSend                            ; [self class]
  100141040  mov     x23, x0
  100141044  mov     x0, x24
  100141048  mov     x1, x20
  10014104c  bl      _objc_msgSend                            ; [arg1 class]
  100141050  adrp    x8, #0x100417000
  100141054  nop
  100141058  ldr     x1, [x8, #0x260]
  10014105c  stp     x23, x0, [sp]
  100141060  adrp    x3, #0x1003c7000
  100141064  add     x3, x3, #0xb0                            ; @"Classes must match %@ != %@"
  100141068  mov     x0, x21
  10014106c  mov     x2, x22
  100141070  bl      _objc_msgSend                            ; [NSException raise:_NSInvalidArgumentException[+0x0] format:@"Classes must match %@ != %@", [self class], [arg1 class]]
loc_100141074:
  100141074  adrp    x8, #0x1003b8000
  100141078  add     x8, x8, #0x7a8                           ; &d_1003b87a8
  10014107c  ldr     q0, [x8, #0x30]                          ; [&d_1003b87d8] -> &sub_100141810
  100141080  stur    q0, [x29, #-0x70]
  100141084  ldr     q0, [x8, #0x20]                          ; [&d_1003b87c8] -> &sub_100141718
  100141088  stur    q0, [x29, #-0x80]
  10014108c  ldr     q0, [x8, #0x10]                          ; [&d_1003b87b8] -> &sub_100141620
  100141090  stur    q0, [x29, #-0x90]
  100141094  ldr     q0, [x8]                                 ; [&d_1003b87a8] -> &sub_1001413b0
  100141098  stur    q0, [x29, #-0xa0]
  10014109c  stp     x24, x19, [x29, #-0xb0]
  1001410a0  sub     x0, x29, #0xa0
  1001410a4  sub     x2, x29, #0xb0
  1001410a8  mov     x1, x19
  1001410ac  bl      sub_100141900                            ; sub_100141900(^{sub_100141620 captures +0x20=&sub_100141718, +0x30=&sub_100141810, +0x48=___stack_chk_guard[+0x0]}, self, ^{sub_1001413b0 captures +0x20=&sub_100141620, +0x30=&sub_100141718, +0x40=&sub_100141810, +0x58=___stack_chk_guard[+0x0]})
  1001410b0  ldur    x0, [x29, #-0xb0]
  1001410b4  adrp    x8, #0x10041c000
  1001410b8  nop
  1001410bc  ldr     x1, [x8, #0xb40]
  1001410c0  bl      _objc_msgSend                            ; [arg1 unknownFields]
  1001410c4  mov     x2, x0
  1001410c8  adrp    x8, #0x10041c000
  1001410cc  nop
  1001410d0  ldr     x1, [x8, #0xaf0]
  1001410d4  mov     x0, x19
  1001410d8  bl      _objc_msgSend                            ; [self mergeUnknownFields:[arg1 unknownFields]]
  1001410dc  adrp    x20, #0x100420000
  1001410e0  ldrsw   x21, [x20, #0x9f0]                       ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  1001410e4  ldr     x0, [x24, x21]                           ; x0 = arg1->extensionMap_
  1001410e8  str     x24, [sp, #0x88]
  1001410ec  adrp    x8, #0x100416000
  1001410f0  nop
  1001410f4  ldr     x1, [x8, #0xe30]
  1001410f8  bl      _objc_msgSend                            ; [arg1->extensionMap_ count]
  1001410fc  cbz     x0, loc_100141374                        ; if ([arg1->extensionMap_ count] == 0)
  100141100  ldr     x8, [x19, x21]                           ; x8 = self->extensionMap_
  100141104  cbz     x8, loc_100141358                        ; if (self->extensionMap_ == 0)
  100141108  stp     xzr, xzr, [x29, #-0xc0]
  10014110c  stp     xzr, xzr, [x29, #-0xd0]
  100141110  stp     xzr, xzr, [x29, #-0xe0]
  100141114  stp     xzr, xzr, [x29, #-0xf0]
  100141118  ldr     x8, [sp, #0x88]
  10014111c  ldr     x0, [x8, x21]                            ; x0 = arg1->extensionMap_
  100141120  str     x0, [sp, #0x78]
  100141124  adrp    x8, #0x100416000
  100141128  nop
  10014112c  ldr     x1, [x8, #0xe00]
  100141130  str     x1, [sp, #0x30]
  100141134  sub     x2, x29, #0xf0
  100141138  add     x3, sp, #0x90
  10014113c  mov     x4, #0x10
  100141140  bl      _objc_msgSend                            ; [arg1->extensionMap_ countByEnumeratingWithState:&x29[-0xf0] objects:&sp[0x90] count:16]
  100141144  mov     x24, x0
  100141148  cbz     x24, loc_100141374                       ; if ([arg1->extensionMap_ countByEnumeratingWithState:&x29[-0xf0] objects:&sp[0x90] count:16] == 0)
  10014114c  ldur    x8, [x29, #-0xe0]
  100141150  adrp    x9, #0x100417000
  100141154  nop
  100141158  adrp    x10, #0x10041c000
  10014115c  add     x10, x10, #0x770                         ; &@selector(isRepeated)
  100141160  adrp    x11, #0x100416000
  100141164  add     x11, x11, #0xac8                         ; &@selector(alloc)
  100141168  ldrsw   x28, [x20, #0x9f0]                       ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  10014116c  adrp    x12, #0x100418000
  100141170  add     x12, x12, #0xbb0                         ; &@selector(initWithArray:)
  100141174  ldr     x25, [x9, #0x40]
  100141178  ldr     x26, [x10]
  10014117c  ldr     x20, [x8]
  100141180  ldr     x8, [x11]
  100141184  str     x8, [sp, #0x58]
  100141188  ldr     x8, [x12]
  10014118c  str     x8, [sp, #0x50]
  100141190  adrp    x8, #0x100416000
  100141194  nop
  100141198  adrp    x9, #0x10041b000
  10014119c  nop
  1001411a0  ldr     x8, [x8, #0xdc8]
  1001411a4  str     x8, [sp, #0x80]
  1001411a8  ldr     x8, [x9, #0xd70]
  1001411ac  str     x8, [sp, #0x68]
  1001411b0  adrp    x8, #0x10041a000
  1001411b4  nop
  1001411b8  adrp    x9, #0x100417000
  1001411bc  nop
  1001411c0  ldr     x8, [x8, #0xb28]
  1001411c4  str     x8, [sp, #0x48]
  1001411c8  adrp    x8, #0x10041b000
  1001411cc  nop
  1001411d0  ldr     x9, [x9, #0x3b8]
  1001411d4  str     x9, [sp, #0x60]
  1001411d8  adrp    x9, #0x10041c000
  1001411dc  add     x9, x9, #0xb48                           ; &@selector(mergeFrom:)
  1001411e0  ldr     x8, [x8, #0x1d8]
  1001411e4  str     x8, [sp, #0x40]
  1001411e8  sub     x8, x29, #0xf0
  1001411ec  str     x8, [sp, #0x28]
  1001411f0  add     x8, sp, #0x90
  1001411f4  str     x8, [sp, #0x20]
  1001411f8  ldr     x8, [x9]
  1001411fc  str     x8, [sp, #0x38]
loc_100141200:
  100141200  mov     x23, #0
loc_100141204:
  100141204  ldur    x8, [x29, #-0xe0]
  100141208  ldr     x8, [x8]
  10014120c  cmp     x8, x20
  100141210  b.eq    loc_10014121c                            ; if (x8 == x20)
  100141214  ldr     x0, [sp, #0x78]
  100141218  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1->extensionMap_)
loc_10014121c:
  10014121c  ldur    x8, [x29, #-0xe8]
  100141220  ldr     x21, [x8, x23, lsl #3]
  100141224  ldr     x0, [x19, x28]                           ; x0 = self->extensionMap_
  100141228  mov     x1, x25
  10014122c  mov     x2, x21
  100141230  bl      _objc_msgSend                            ; [self->extensionMap_ objectForKey:x2]
  100141234  mov     x27, x0
  100141238  ldr     x8, [sp, #0x88]
  10014123c  ldr     x0, [x8, x28]                            ; x0 = arg1->extensionMap_
  100141240  mov     x1, x25
  100141244  mov     x2, x21
  100141248  bl      _objc_msgSend                            ; [arg1->extensionMap_ objectForKey:x2]
  10014124c  mov     x22, x0
  100141250  mov     x0, x21
  100141254  mov     x1, x26
  100141258  bl      _objc_msgSend                            ; [x0 isRepeated]
  10014125c  cbz     w0, loc_1001412a0                        ; if ([x0 isRepeated] == 0)
  100141260  cbnz    x27, loc_100141304                       ; if ([self->extensionMap_ objectForKey:x2] != 0)
  100141264  adrp    x8, #0x10041d000
  100141268  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10014126c  ldr     x1, [sp, #0x58]
  100141270  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100141274  ldr     x1, [sp, #0x50]
  100141278  mov     x2, x22
  10014127c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithArray:[arg1->extensionMap_ objectForKey:x2]]
  100141280  mov     x22, x0
  100141284  ldr     x0, [x19, x28]                           ; x0 = self->extensionMap_
  100141288  ldr     x1, [sp, #0x80]
  10014128c  mov     x2, x22
  100141290  mov     x3, x21
  100141294  bl      _objc_msgSend                            ; [self->extensionMap_ setObject:[[NSMutableArray alloc] initWithArray:[arg1->extensionMap_ objectForKey:x2]] forKey:x3]
  100141298  mov     x0, x22
  10014129c  b       loc_1001412f8
loc_1001412a0:
  1001412a0  adrp    x8, #0x10041e000
  1001412a4  ldr     x0, [x8, #0x7b8]                         ; class TAGPBGeneratedMessage
  1001412a8  ldr     x1, [sp, #0x70]
  1001412ac  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage class]
  1001412b0  mov     x2, x0
  1001412b4  mov     x0, x27
  1001412b8  ldr     x1, [sp, #0x60]
  1001412bc  bl      _objc_msgSend                            ; [[self->extensionMap_ objectForKey:x2] isKindOfClass:[TAGPBGeneratedMessage class]]
  1001412c0  cbz     w0, loc_100141318                        ; if ([[self->extensionMap_ objectForKey:x2] isKindOfClass:[TAGPBGeneratedMessage class]] == 0)
  1001412c4  mov     x0, x27
  1001412c8  ldr     x1, [sp, #0x40]
  1001412cc  bl      _objc_msgSend                            ; [[self->extensionMap_ objectForKey:x2] mutableCopy]
  1001412d0  mov     x27, x0
  1001412d4  ldr     x1, [sp, #0x38]
  1001412d8  mov     x2, x22
  1001412dc  bl      _objc_msgSend                            ; [[[self->extensionMap_ objectForKey:x2] mutableCopy] mergeFrom:[arg1->extensionMap_ objectForKey:x2]]
  1001412e0  ldr     x0, [x19, x28]                           ; x0 = self->extensionMap_
  1001412e4  ldr     x1, [sp, #0x80]
  1001412e8  mov     x2, x27
  1001412ec  mov     x3, x21
  1001412f0  bl      _objc_msgSend                            ; [self->extensionMap_ setObject:[[self->extensionMap_ objectForKey:x2] mutableCopy] forKey:x3]
  1001412f4  mov     x0, x27
loc_1001412f8:
  1001412f8  ldr     x1, [sp, #0x68]
  1001412fc  bl      _objc_msgSend                            ; [x0 release]
  100141300  b       loc_10014132c
loc_100141304:
  100141304  mov     x0, x27
  100141308  ldr     x1, [sp, #0x48]
  10014130c  mov     x2, x22
  100141310  bl      _objc_msgSend                            ; [[self->extensionMap_ objectForKey:x2] addObjectsFromArray:[arg1->extensionMap_ objectForKey:x2]]
  100141314  b       loc_10014132c
loc_100141318:
  100141318  ldr     x0, [x19, x28]                           ; x0 = self->extensionMap_
  10014131c  ldr     x1, [sp, #0x80]
  100141320  mov     x2, x22
  100141324  mov     x3, x21
  100141328  bl      _objc_msgSend                            ; [self->extensionMap_ setObject:[arg1->extensionMap_ objectForKey:x2] forKey:x3]
loc_10014132c:
  10014132c  add     x23, x23, #1
  100141330  cmp     x23, x24
  100141334  b.lo    loc_100141204                            ; if ((x23 + 1) <u [arg1->extensionMap_ countByEnumeratingWithState:&x29[-0xf0] objects:&sp[0x90] count:16])
  100141338  mov     x4, #0x10
  10014133c  ldr     x0, [sp, #0x78]
  100141340  ldp     x2, x1, [sp, #0x28]
  100141344  ldr     x3, [sp, #0x20]
  100141348  bl      _objc_msgSend                            ; [arg1->extensionMap_ countByEnumeratingWithState:&x29[-0xf0] objects:&sp[0x90] count:16]
  10014134c  mov     x24, x0
  100141350  cbnz    x24, loc_100141200                       ; if ([arg1->extensionMap_ countByEnumeratingWithState:&x29[-0xf0] objects:&sp[0x90] count:16] != 0)
  100141354  b       loc_100141374
loc_100141358:
  100141358  ldr     x8, [sp, #0x88]
  10014135c  ldr     x0, [x8, x21]                            ; x0 = arg1->extensionMap_
  100141360  adrp    x8, #0x10041b000
  100141364  nop
  100141368  ldr     x1, [x8, #0x1d8]
  10014136c  bl      _objc_msgSend                            ; [arg1->extensionMap_ mutableCopy]
  100141370  str     x0, [x19, x21]                           ; self->extensionMap_ = [arg1->extensionMap_ mutableCopy]
loc_100141374:
  100141374  adrp    x8, #0x1003b0000
  100141378  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10014137c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100141380  ldur    x9, [x29, #-0x58]
  100141384  sub     x8, x8, x9
  100141388  cbnz    x8, loc_1001413ac                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10014138c  sub     sp, x29, #0x50
  100141390  ldp     x28, x27, [sp], #0x10
  100141394  ldp     x26, x25, [sp], #0x10
  100141398  ldp     x24, x23, [sp], #0x10
  10014139c  ldp     x22, x21, [sp], #0x10
  1001413a0  ldp     x20, x19, [sp], #0x10
  1001413a4  ldp     x29, x30, [sp], #0x10
  1001413a8  ret
loc_1001413ac:
  1001413ac  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; sub_1001413b0
; address 0x1001413b0  size 500  kind sub
; ======================================================================
  1001413b0  stp     x29, x30, [sp, #-0x10]!
  1001413b4  mov     x29, sp
  1001413b8  stp     x20, x19, [sp, #-0x10]!
  1001413bc  stp     x22, x21, [sp, #-0x10]!
  1001413c0  stp     x24, x23, [sp, #-0x10]!
  1001413c4  stp     x26, x25, [sp, #-0x10]!
  1001413c8  mov     x20, x1
  1001413cc  mov     x19, x0
  1001413d0  adrp    x8, #0x10041c000
  1001413d4  nop
  1001413d8  ldr     x1, [x8, #0x770]
  1001413dc  bl      _objc_msgSend                            ; [a0 isRepeated]
  1001413e0  cbz     w0, loc_10014141c                        ; if ([a0 isRepeated] == 0)
  1001413e4  ldr     x0, [x20, #8]                            ; x0 = a1[+0x8]
  1001413e8  mov     x1, x19
  1001413ec  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x8], a0)
  1001413f0  mov     x21, x0
  1001413f4  ldr     x0, [x20]                                ; x0 = a1[+0x0]
  1001413f8  mov     x1, x19
  1001413fc  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  100141400  mov     x2, x0
  100141404  adrp    x8, #0x10041c000
  100141408  nop
  10014140c  ldr     x1, [x8, #0x540]
  100141410  mov     x0, x21
  100141414  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x8], a0) appendArray:sub_10013cd1c(a1[+0x0], a0)]
  100141418  b       loc_100141588
loc_10014141c:
  10014141c  ldr     x0, [x20]                                ; x0 = a1[+0x0]
  100141420  adrp    x23, #0x100420000
  100141424  ldrsw   x8, [x23, #0x9e4]                        ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100141428  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  10014142c  cbz     x8, loc_100141588                        ; if (a1[+0x0]->messageStorage_ == 0)
  100141430  adrp    x9, #0x100420000
  100141434  ldrsw   x9, [x9, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100141438  ldr     x9, [x19, x9]                            ; x9 = a0->description_
  10014143c  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100141440  and     w10, w9, #0x1f
  100141444  mov     w11, #1
  100141448  lsl     w24, w11, w10
  10014144c  lsr     w25, w9, #5
  100141450  ldr     w8, [x8, w25, uxtw #2]
  100141454  and     w8, w8, w24
  100141458  cbz     w8, loc_100141588                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  10014145c  mov     x1, x19
  100141460  bl      sub_10013c1a0                            ; sub_10013c1a0(a1[+0x0], a0)
  100141464  mov     x21, x0
  100141468  adrp    x8, #0x10041c000
  10014146c  nop
  100141470  ldr     x1, [x8, #0x780]
  100141474  mov     x0, x19
  100141478  bl      _objc_msgSend                            ; [a0 isMessage]
  10014147c  ldr     x22, [x20, #8]                           ; x22 = a1[+0x8]
  100141480  cbz     w0, loc_100141510                        ; if ([a0 isMessage] == 0)
  100141484  ldrsw   x8, [x23, #0x9e4]                        ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100141488  ldr     x8, [x22, x8]                            ; x8 = a1[+0x8]->messageStorage_
  10014148c  cbz     x8, loc_100141538                        ; if (a1[+0x8]->messageStorage_ == 0)
  100141490  ldr     w8, [x8, x25, lsl #2]
  100141494  and     w8, w8, w24
  100141498  cbz     w8, loc_100141538                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  10014149c  mov     x0, x22
  1001414a0  mov     x1, x19
  1001414a4  bl      sub_10013c1a0                            ; sub_10013c1a0(a1[+0x8], a0)
  1001414a8  adrp    x8, #0x10041b000
  1001414ac  nop
  1001414b0  ldr     x1, [x8, #0x1d8]
  1001414b4  bl      _objc_msgSend                            ; [sub_10013c1a0(a1[+0x8], a0) mutableCopy]
  1001414b8  mov     x22, x0
  1001414bc  adrp    x8, #0x10041c000
  1001414c0  nop
  1001414c4  ldr     x1, [x8, #0xb48]
  1001414c8  mov     x2, x21
  1001414cc  bl      _objc_msgSend                            ; [[sub_10013c1a0(a1[+0x8], a0) mutableCopy] mergeFrom:sub_10013c1a0(a1[+0x0], a0)]
  1001414d0  ldr     x20, [x20, #8]                           ; x20 = a1[+0x8]
  1001414d4  adrp    x8, #0x10041b000
  1001414d8  nop
  1001414dc  ldr     x1, [x8, #0xdb8]
  1001414e0  mov     x0, x22
  1001414e4  bl      _objc_msgSend                            ; [[sub_10013c1a0(a1[+0x8], a0) mutableCopy] retain]
  1001414e8  mov     x2, x0
  1001414ec  mov     x0, x20
  1001414f0  mov     x1, x19
  1001414f4  bl      sub_1001486ec                            ; sub_1001486ec(a1[+0x8], a0, [[sub_10013c1a0(a1[+0x8], a0) mutableCopy] retain])
  1001414f8  adrp    x8, #0x10041b000
  1001414fc  nop
  100141500  ldr     x1, [x8, #0xd70]
  100141504  mov     x0, x22
  100141508  bl      _objc_msgSend                            ; [[sub_10013c1a0(a1[+0x8], a0) mutableCopy] release]
  10014150c  b       loc_100141588
loc_100141510:
  100141510  adrp    x8, #0x10041b000
  100141514  nop
  100141518  ldr     x1, [x8, #0xdb8]
  10014151c  mov     x0, x21
  100141520  bl      _objc_msgSend                            ; [sub_10013c1a0(a1[+0x0], a0) retain]
  100141524  mov     x2, x0
  100141528  mov     x0, x22
  10014152c  mov     x1, x19
  100141530  bl      sub_1001486ec                            ; sub_1001486ec(a1[+0x8], a0, [sub_10013c1a0(a1[+0x0], a0) retain])
  100141534  b       loc_100141588
loc_100141538:
  100141538  adrp    x8, #0x10041b000
  10014153c  nop
  100141540  ldr     x1, [x8, #0x1d8]
  100141544  mov     x0, x21
  100141548  bl      _objc_msgSend                            ; [sub_10013c1a0(a1[+0x0], a0) mutableCopy]
  10014154c  mov     x21, x0
  100141550  ldr     x20, [x20, #8]                           ; x20 = a1[+0x8]
  100141554  adrp    x8, #0x10041b000
  100141558  nop
  10014155c  ldr     x1, [x8, #0xdb8]
  100141560  bl      _objc_msgSend                            ; [[sub_10013c1a0(a1[+0x0], a0) mutableCopy] retain]
  100141564  mov     x2, x0
  100141568  mov     x0, x20
  10014156c  mov     x1, x19
  100141570  bl      sub_1001486ec                            ; sub_1001486ec(a1[+0x8], a0, [[sub_10013c1a0(a1[+0x0], a0) mutableCopy] retain])
  100141574  adrp    x8, #0x10041b000
  100141578  nop
  10014157c  ldr     x1, [x8, #0xd70]
  100141580  mov     x0, x21
  100141584  bl      _objc_msgSend                            ; [[sub_10013c1a0(a1[+0x0], a0) mutableCopy] release]
loc_100141588:
  100141588  mov     w0, #1
  10014158c  ldp     x26, x25, [sp], #0x10
  100141590  ldp     x24, x23, [sp], #0x10
  100141594  ldp     x22, x21, [sp], #0x10
  100141598  ldp     x20, x19, [sp], #0x10
  10014159c  ldp     x29, x30, [sp], #0x10
  1001415a0  ret

; ======================================================================
; sub_1001415a4
; address 0x1001415a4  size 124  kind sub
; ======================================================================
  1001415a4  stp     x29, x30, [sp, #-0x10]!
  1001415a8  mov     x29, sp
  1001415ac  stp     x20, x19, [sp, #-0x10]!
  1001415b0  mov     x19, x0
  1001415b4  ldr     x0, [x1]                                 ; x0 = a1[+0x0]
  1001415b8  adrp    x8, #0x100420000
  1001415bc  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  1001415c0  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  1001415c4  cbz     x8, loc_100141610                        ; if (a1[+0x0]->messageStorage_ == 0)
  1001415c8  adrp    x9, #0x100420000
  1001415cc  ldrsw   x9, [x9, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001415d0  ldr     x9, [x19, x9]                            ; x9 = a0->description_
  1001415d4  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  1001415d8  and     w10, w9, #0x1f
  1001415dc  mov     w11, #1
  1001415e0  lsl     w10, w11, w10
  1001415e4  lsr     w9, w9, #5
  1001415e8  ldr     w8, [x8, w9, uxtw #2]
  1001415ec  and     w8, w8, w10
  1001415f0  cbz     w8, loc_100141610                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  1001415f4  ldr     x20, [x1, #8]                            ; x20 = a1[+0x8]
  1001415f8  mov     x1, x19
  1001415fc  bl      sub_10013dd38                            ; sub_10013dd38(a1[+0x0], a0, a2, a3)
  100141600  mov     x2, x0
  100141604  mov     x0, x20
  100141608  mov     x1, x19
  10014160c  bl      sub_100148ae4                            ; sub_100148ae4(a1[+0x8], a0, sub_10013dd38(a1[+0x0], a0, a2, a3))
loc_100141610:
  100141610  mov     w0, #1
  100141614  ldp     x20, x19, [sp], #0x10
  100141618  ldp     x29, x30, [sp], #0x10
  10014161c  ret

; ======================================================================
; sub_100141620
; address 0x100141620  size 124  kind sub
; ======================================================================
  100141620  stp     x29, x30, [sp, #-0x10]!
  100141624  mov     x29, sp
  100141628  stp     x20, x19, [sp, #-0x10]!
  10014162c  mov     x19, x0
  100141630  ldr     x0, [x1]                                 ; x0 = a1[+0x0]
  100141634  adrp    x8, #0x100420000
  100141638  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10014163c  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  100141640  cbz     x8, loc_10014168c                        ; if (a1[+0x0]->messageStorage_ == 0)
  100141644  adrp    x9, #0x100420000
  100141648  ldrsw   x9, [x9, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10014164c  ldr     x9, [x19, x9]                            ; x9 = a0->description_
  100141650  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100141654  and     w10, w9, #0x1f
  100141658  mov     w11, #1
  10014165c  lsl     w10, w11, w10
  100141660  lsr     w9, w9, #5
  100141664  ldr     w8, [x8, w9, uxtw #2]
  100141668  and     w8, w8, w10
  10014166c  cbz     w8, loc_10014168c                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100141670  ldr     x20, [x1, #8]                            ; x20 = a1[+0x8]
  100141674  mov     x1, x19
  100141678  bl      sub_10013def4                            ; sub_10013def4(a1[+0x0], a0, a2, a3)
  10014167c  mov     x2, x0
  100141680  mov     x0, x20
  100141684  mov     x1, x19
  100141688  bl      sub_100148c14                            ; sub_100148c14(a1[+0x8], a0, sub_10013def4(a1[+0x0], a0, a2, a3))
loc_10014168c:
  10014168c  mov     w0, #1
  100141690  ldp     x20, x19, [sp], #0x10
  100141694  ldp     x29, x30, [sp], #0x10
  100141698  ret

; ======================================================================
; sub_10014169c
; address 0x10014169c  size 124  kind sub
; ======================================================================
  10014169c  stp     x29, x30, [sp, #-0x10]!
  1001416a0  mov     x29, sp
  1001416a4  stp     x20, x19, [sp, #-0x10]!
  1001416a8  mov     x19, x0
  1001416ac  ldr     x0, [x1]                                 ; x0 = a1[+0x0]
  1001416b0  adrp    x8, #0x100420000
  1001416b4  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  1001416b8  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  1001416bc  cbz     x8, loc_100141708                        ; if (a1[+0x0]->messageStorage_ == 0)
  1001416c0  adrp    x9, #0x100420000
  1001416c4  ldrsw   x9, [x9, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001416c8  ldr     x9, [x19, x9]                            ; x9 = a0->description_
  1001416cc  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  1001416d0  and     w10, w9, #0x1f
  1001416d4  mov     w11, #1
  1001416d8  lsl     w10, w11, w10
  1001416dc  lsr     w9, w9, #5
  1001416e0  ldr     w8, [x8, w9, uxtw #2]
  1001416e4  and     w8, w8, w10
  1001416e8  cbz     w8, loc_100141708                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  1001416ec  ldr     x20, [x1, #8]                            ; x20 = a1[+0x8]
  1001416f0  mov     x1, x19
  1001416f4  bl      sub_10013e010                            ; sub_10013e010(a1[+0x0], a0, a2, a3)
  1001416f8  mov     x2, x0
  1001416fc  mov     x0, x20
  100141700  mov     x1, x19
  100141704  bl      sub_100148d44                            ; sub_100148d44(a1[+0x8], a0, sub_10013e010(a1[+0x0], a0, a2, a3))
loc_100141708:
  100141708  mov     w0, #1
  10014170c  ldp     x20, x19, [sp], #0x10
  100141710  ldp     x29, x30, [sp], #0x10
  100141714  ret

; ======================================================================
; sub_100141718
; address 0x100141718  size 124  kind sub
; ======================================================================
  100141718  stp     x29, x30, [sp, #-0x10]!
  10014171c  mov     x29, sp
  100141720  stp     x20, x19, [sp, #-0x10]!
  100141724  mov     x19, x0
  100141728  ldr     x0, [x1]                                 ; x0 = a1[+0x0]
  10014172c  adrp    x8, #0x100420000
  100141730  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100141734  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  100141738  cbz     x8, loc_100141784                        ; if (a1[+0x0]->messageStorage_ == 0)
  10014173c  adrp    x9, #0x100420000
  100141740  ldrsw   x9, [x9, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100141744  ldr     x9, [x19, x9]                            ; x9 = a0->description_
  100141748  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  10014174c  and     w10, w9, #0x1f
  100141750  mov     w11, #1
  100141754  lsl     w10, w11, w10
  100141758  lsr     w9, w9, #5
  10014175c  ldr     w8, [x8, w9, uxtw #2]
  100141760  and     w8, w8, w10
  100141764  cbz     w8, loc_100141784                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100141768  ldr     x20, [x1, #8]                            ; x20 = a1[+0x8]
  10014176c  mov     x1, x19
  100141770  bl      sub_10013df80                            ; sub_10013df80(a1[+0x0], a0, a2, a3)
  100141774  mov     x2, x0
  100141778  mov     x0, x20
  10014177c  mov     x1, x19
  100141780  bl      sub_100148e74                            ; sub_100148e74(a1[+0x8], a0, sub_10013df80(a1[+0x0], a0, a2, a3))
loc_100141784:
  100141784  mov     w0, #1
  100141788  ldp     x20, x19, [sp], #0x10
  10014178c  ldp     x29, x30, [sp], #0x10
  100141790  ret

; ======================================================================
; sub_100141794
; address 0x100141794  size 124  kind sub
; ======================================================================
  100141794  stp     x29, x30, [sp, #-0x10]!
  100141798  mov     x29, sp
  10014179c  stp     x20, x19, [sp, #-0x10]!
  1001417a0  mov     x19, x0
  1001417a4  ldr     x0, [x1]                                 ; x0 = a1[+0x0]
  1001417a8  adrp    x8, #0x100420000
  1001417ac  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  1001417b0  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  1001417b4  cbz     x8, loc_100141800                        ; if (a1[+0x0]->messageStorage_ == 0)
  1001417b8  adrp    x9, #0x100420000
  1001417bc  ldrsw   x9, [x9, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001417c0  ldr     x9, [x19, x9]                            ; x9 = a0->description_
  1001417c4  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  1001417c8  and     w10, w9, #0x1f
  1001417cc  mov     w11, #1
  1001417d0  lsl     w10, w11, w10
  1001417d4  lsr     w9, w9, #5
  1001417d8  ldr     w8, [x8, w9, uxtw #2]
  1001417dc  and     w8, w8, w10
  1001417e0  cbz     w8, loc_100141800                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  1001417e4  ldr     x20, [x1, #8]                            ; x20 = a1[+0x8]
  1001417e8  mov     x1, x19
  1001417ec  bl      sub_10013e09c                            ; sub_10013e09c(a1[+0x0], a0, a2, a3)
  1001417f0  mov     x2, x0
  1001417f4  mov     x0, x20
  1001417f8  mov     x1, x19
  1001417fc  bl      sub_100148fa4                            ; sub_100148fa4(a1[+0x8], a0, sub_10013e09c(a1[+0x0], a0, a2, a3))
loc_100141800:
  100141800  mov     w0, #1
  100141804  ldp     x20, x19, [sp], #0x10
  100141808  ldp     x29, x30, [sp], #0x10
  10014180c  ret

; ======================================================================
; sub_100141810
; address 0x100141810  size 120  kind sub
; ======================================================================
  100141810  stp     x29, x30, [sp, #-0x10]!
  100141814  mov     x29, sp
  100141818  stp     x20, x19, [sp, #-0x10]!
  10014181c  mov     x19, x0
  100141820  ldr     x0, [x1]                                 ; x0 = a1[+0x0]
  100141824  adrp    x8, #0x100420000
  100141828  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10014182c  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  100141830  cbz     x8, loc_100141878                        ; if (a1[+0x0]->messageStorage_ == 0)
  100141834  adrp    x9, #0x100420000
  100141838  ldrsw   x9, [x9, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10014183c  ldr     x9, [x19, x9]                            ; x9 = a0->description_
  100141840  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100141844  and     w10, w9, #0x1f
  100141848  mov     w11, #1
  10014184c  lsl     w10, w11, w10
  100141850  lsr     w9, w9, #5
  100141854  ldr     w8, [x8, w9, uxtw #2]
  100141858  and     w8, w8, w10
  10014185c  cbz     w8, loc_100141878                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100141860  ldr     x20, [x1, #8]                            ; x20 = a1[+0x8]
  100141864  mov     x1, x19
  100141868  bl      sub_10013ddd4                            ; sub_10013ddd4(a1[+0x0], a0, a2, a3)
  10014186c  mov     x0, x20
  100141870  mov     x1, x19
  100141874  bl      sub_1001490d4                            ; sub_1001490d4(a1[+0x8], a0)
loc_100141878:
  100141878  mov     w0, #1
  10014187c  ldp     x20, x19, [sp], #0x10
  100141880  ldp     x29, x30, [sp], #0x10
  100141884  ret

; ======================================================================
; sub_100141888
; address 0x100141888  size 120  kind sub
; ======================================================================
  100141888  stp     x29, x30, [sp, #-0x10]!
  10014188c  mov     x29, sp
  100141890  stp     x20, x19, [sp, #-0x10]!
  100141894  mov     x19, x0
  100141898  ldr     x0, [x1]                                 ; x0 = a1[+0x0]
  10014189c  adrp    x8, #0x100420000
  1001418a0  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  1001418a4  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  1001418a8  cbz     x8, loc_1001418f0                        ; if (a1[+0x0]->messageStorage_ == 0)
  1001418ac  adrp    x9, #0x100420000
  1001418b0  ldrsw   x9, [x9, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001418b4  ldr     x9, [x19, x9]                            ; x9 = a0->description_
  1001418b8  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  1001418bc  and     w10, w9, #0x1f
  1001418c0  mov     w11, #1
  1001418c4  lsl     w10, w11, w10
  1001418c8  lsr     w9, w9, #5
  1001418cc  ldr     w8, [x8, w9, uxtw #2]
  1001418d0  and     w8, w8, w10
  1001418d4  cbz     w8, loc_1001418f0                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  1001418d8  ldr     x20, [x1, #8]                            ; x20 = a1[+0x8]
  1001418dc  mov     x1, x19
  1001418e0  bl      sub_10013de64                            ; sub_10013de64(a1[+0x0], a0, a2, a3)
  1001418e4  mov     x0, x20
  1001418e8  mov     x1, x19
  1001418ec  bl      sub_100149204                            ; sub_100149204(a1[+0x8], a0)
loc_1001418f0:
  1001418f0  mov     w0, #1
  1001418f4  ldp     x20, x19, [sp], #0x10
  1001418f8  ldp     x29, x30, [sp], #0x10
  1001418fc  ret

; ======================================================================
; sub_100141900
; address 0x100141900  size 284  kind sub
; ======================================================================
  100141900  stp     x29, x30, [sp, #-0x10]!
  100141904  mov     x29, sp
  100141908  stp     x20, x19, [sp, #-0x10]!
  10014190c  stp     x22, x21, [sp, #-0x10]!
  100141910  stp     x24, x23, [sp, #-0x10]!
  100141914  stp     x26, x25, [sp, #-0x10]!
  100141918  stp     x28, x27, [sp, #-0x10]!
  10014191c  mov     x19, x2
  100141920  mov     x20, x0
  100141924  adrp    x8, #0x100417000
  100141928  nop
  10014192c  ldr     x8, [x8, #0x2e0]
  100141930  mov     x0, x1
  100141934  mov     x1, x8
  100141938  bl      _objc_msgSend                            ; [a1 class]
  10014193c  adrp    x8, #0x10041c000
  100141940  nop
  100141944  ldr     x1, [x8, #0x7e8]
  100141948  bl      _objc_msgSend                            ; [[a1 class] descriptor]
  10014194c  adrp    x8, #0x100420000
  100141950  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  100141954  ldr     x22, [x0, x8]                            ; x22 = [[a1 class] descriptor]->fields_
  100141958  adrp    x8, #0x10041b000
  10014195c  nop
  100141960  ldr     x1, [x8, #0xc78]
  100141964  mov     x0, x22
  100141968  bl      _objc_msgSend                            ; [[[a1 class] descriptor]->fields_ data]
  10014196c  mov     x21, x0
  100141970  cbz     x22, loc_100141a00                       ; if ([[a1 class] descriptor]->fields_ == 0)
  100141974  adrp    x8, #0x100420000
  100141978  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10014197c  ldr     x24, [x22, x8]                           ; x24 = [[a1 class] descriptor]->fields_->_count
  100141980  cbz     x24, loc_100141a00                       ; if ([[a1 class] descriptor]->fields_->_count == 0)
  100141984  mov     x25, #0
  100141988  adrp    x8, #0x10041c000
  10014198c  add     x8, x8, #0x770                           ; &@selector(isRepeated)
  100141990  ldr     x22, [x8]
  100141994  adrp    x26, #0x100420000
  100141998  adrp    x27, #0x1002fa000
  10014199c  add     x27, x27, #0xa60                         ; tconst_1002faa60
loc_1001419a0:
  1001419a0  ldr     x23, [x21, x25, lsl #3]
  1001419a4  mov     x0, x23
  1001419a8  mov     x1, x22
  1001419ac  bl      _objc_msgSend                            ; [x0 isRepeated]
  1001419b0  cbz     w0, loc_1001419cc                        ; if ([x0 isRepeated] == 0)
  1001419b4  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1001419b8  mov     x0, x23
  1001419bc  mov     x1, x19
  1001419c0  blr     x8                                       ; call a0[+0x0]
  1001419c4  tbnz    w0, #0, loc_1001419f4                    ; if ((a0[+0x0](…) & 1))
  1001419c8  b       loc_100141a00
loc_1001419cc:
  1001419cc  ldrsw   x8, [x26, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001419d0  ldr     x8, [x23, x8]                            ; x8 = x23->description_
  1001419d4  ldr     w8, [x8, #0x14]                          ; w8 = x23->description_[+0x14]
  1001419d8  add     x8, x27, x8, lsl #2
  1001419dc  ldr     w8, [x8]                                 ; w8 = (tconst_1002faa60 + (x23->description_[+0x14] << 2))[+0x0]
  1001419e0  ldr     x8, [x20, x8, lsl #3]
  1001419e4  mov     x0, x23
  1001419e8  mov     x1, x19
  1001419ec  blr     x8
  1001419f0  cbz     w0, loc_100141a00                        ; if (x8(…) == 0)
loc_1001419f4:
  1001419f4  add     x25, x25, #1
  1001419f8  cmp     x25, x24
  1001419fc  b.lo    loc_1001419a0                            ; if ((x25 + 1) <u [[a1 class] descriptor]->fields_->_count)
loc_100141a00:
  100141a00  ldp     x28, x27, [sp], #0x10
  100141a04  ldp     x26, x25, [sp], #0x10
  100141a08  ldp     x24, x23, [sp], #0x10
  100141a0c  ldp     x22, x21, [sp], #0x10
  100141a10  ldp     x20, x19, [sp], #0x10
  100141a14  ldp     x29, x30, [sp], #0x10
  100141a18  ret

; ======================================================================
; -[TAGPBGeneratedMessage isEqual:]
; address 0x100141a1c  size 444  kind objc
; ======================================================================
  100141a1c  stp     x29, x30, [sp, #-0x10]!
  100141a20  mov     x29, sp
  100141a24  stp     x20, x19, [sp, #-0x10]!
  100141a28  stp     x22, x21, [sp, #-0x10]!
  100141a2c  stp     x24, x23, [sp, #-0x10]!
  100141a30  sub     sp, sp, #0x70
  100141a34  mov     x20, x2
  100141a38  mov     x19, x0
  100141a3c  adrp    x23, #0x1003b0000
  100141a40  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100141a44  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  100141a48  stur    x8, [x29, #-0x38]
  100141a4c  cmp     x20, x19
  100141a50  b.eq    loc_100141ba0                            ; if (arg1 == self)
  100141a54  adrp    x8, #0x100417000
  100141a58  nop
  100141a5c  ldr     x21, [x8, #0x2e0]
  100141a60  mov     x0, x19
  100141a64  mov     x1, x21
  100141a68  bl      _objc_msgSend                            ; [self class]
  100141a6c  mov     x2, x0
  100141a70  adrp    x8, #0x100417000
  100141a74  nop
  100141a78  ldr     x22, [x8, #0x3b8]
  100141a7c  mov     x0, x20
  100141a80  mov     x1, x22
  100141a84  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[self class]]
  100141a88  tbnz    w0, #0, loc_100141aac                    ; if (([arg1 isKindOfClass:[self class]] & 1))
  100141a8c  mov     x0, x20
  100141a90  mov     x1, x21
  100141a94  bl      _objc_msgSend                            ; [arg1 class]
  100141a98  mov     x2, x0
  100141a9c  mov     x0, x19
  100141aa0  mov     x1, x22
  100141aa4  bl      _objc_msgSend                            ; [self isKindOfClass:[arg1 class]]
  100141aa8  cbz     w0, loc_100141ba8                        ; if ([self isKindOfClass:[arg1 class]] == 0)
loc_100141aac:
  100141aac  adrp    x8, #0x1003b8000
  100141ab0  add     x8, x8, #0x7e8                           ; &d_1003b87e8
  100141ab4  ldp     q0, q1, [x8, #0x20]
  100141ab8  ldp     q2, q3, [x8]
  100141abc  stp     q0, q1, [sp, #0x40]
  100141ac0  stp     q2, q3, [sp, #0x20]
  100141ac4  stp     x20, x19, [sp, #8]
  100141ac8  mov     w8, #1
  100141acc  strb    w8, [sp, #0x18]
  100141ad0  add     x0, sp, #0x20
  100141ad4  add     x2, sp, #8
  100141ad8  mov     x1, x19
  100141adc  bl      sub_100141900                            ; sub_100141900(&sp[0x20], self, &sp[0x8])
  100141ae0  ldrb    w8, [sp, #0x18]
  100141ae4  cbz     w8, loc_100141ba8                        ; if (1 == 0)
  100141ae8  adrp    x8, #0x100420000
  100141aec  ldrsw   x22, [x8, #0x9f0]                        ; ivar offset TAGPBGeneratedMessage.extensionMap_ (+0x10)
  100141af0  ldr     x0, [x19, x22]                           ; x0 = self->extensionMap_
  100141af4  adrp    x8, #0x100416000
  100141af8  nop
  100141afc  ldr     x21, [x8, #0xe30]
  100141b00  mov     x1, x21
  100141b04  bl      _objc_msgSend                            ; [self->extensionMap_ count]
  100141b08  cbnz    x0, loc_100141b1c                        ; if ([self->extensionMap_ count] != 0)
  100141b0c  ldr     x0, [x20, x22]                           ; x0 = arg1->extensionMap_
  100141b10  mov     x1, x21
  100141b14  bl      _objc_msgSend                            ; [arg1->extensionMap_ count]
  100141b18  cbz     x0, loc_100141b38                        ; if ([arg1->extensionMap_ count] == 0)
loc_100141b1c:
  100141b1c  ldr     x0, [x19, x22]                           ; x0 = self->extensionMap_
  100141b20  ldr     x2, [x20, x22]                           ; x2 = arg1->extensionMap_
  100141b24  adrp    x8, #0x100417000
  100141b28  nop
  100141b2c  ldr     x1, [x8, #0x218]
  100141b30  bl      _objc_msgSend                            ; [self->extensionMap_ isEqual:arg1->extensionMap_]
  100141b34  cbz     w0, loc_100141ba8                        ; if ([self->extensionMap_ isEqual:arg1->extensionMap_] == 0)
loc_100141b38:
  100141b38  adrp    x8, #0x10041c000
  100141b3c  nop
  100141b40  ldr     x1, [x8, #0xb40]
  100141b44  mov     x0, x20
  100141b48  bl      _objc_msgSend                            ; [arg1 unknownFields]
  100141b4c  mov     x20, x0
  100141b50  adrp    x8, #0x100420000
  100141b54  ldrsw   x22, [x8, #0x9ec]                        ; ivar offset TAGPBGeneratedMessage.unknownFields_ (+0x8)
  100141b58  ldr     x0, [x19, x22]                           ; x0 = self->unknownFields_
  100141b5c  adrp    x8, #0x10041c000
  100141b60  nop
  100141b64  ldr     x21, [x8, #0xb50]
  100141b68  mov     x1, x21
  100141b6c  bl      _objc_msgSend                            ; [self->unknownFields_ countOfFields]
  100141b70  cbnz    x0, loc_100141b84                        ; if ([self->unknownFields_ countOfFields] != 0)
  100141b74  mov     x0, x20
  100141b78  mov     x1, x21
  100141b7c  bl      _objc_msgSend                            ; [[arg1 unknownFields] countOfFields]
  100141b80  cbz     x0, loc_100141ba0                        ; if ([[arg1 unknownFields] countOfFields] == 0)
loc_100141b84:
  100141b84  ldr     x0, [x19, x22]                           ; x0 = self->unknownFields_
  100141b88  adrp    x8, #0x100417000
  100141b8c  nop
  100141b90  ldr     x1, [x8, #0x218]
  100141b94  mov     x2, x20
  100141b98  bl      _objc_msgSend                            ; [self->unknownFields_ isEqual:[arg1 unknownFields]]
  100141b9c  cbz     w0, loc_100141ba8                        ; if ([self->unknownFields_ isEqual:[arg1 unknownFields]] == 0)
loc_100141ba0:
  100141ba0  mov     w0, #1
  100141ba4  b       loc_100141bac
loc_100141ba8:
  100141ba8  mov     w0, #0
loc_100141bac:
  100141bac  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  100141bb0  ldur    x9, [x29, #-0x38]
  100141bb4  sub     x8, x8, x9
  100141bb8  cbnz    x8, loc_100141bd4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100141bbc  sub     sp, x29, #0x30
  100141bc0  ldp     x24, x23, [sp], #0x10
  100141bc4  ldp     x22, x21, [sp], #0x10
  100141bc8  ldp     x20, x19, [sp], #0x10
  100141bcc  ldp     x29, x30, [sp], #0x10
  100141bd0  ret
loc_100141bd4:
  100141bd4  bl      ___stack_chk_fail                        ; stack_chk_fail(one of {0, 1})

; ======================================================================
; sub_100141bd8
; address 0x100141bd8  size 380  kind sub
; ======================================================================
  100141bd8  stp     x29, x30, [sp, #-0x10]!
  100141bdc  mov     x29, sp
  100141be0  stp     x20, x19, [sp, #-0x10]!
  100141be4  stp     x22, x21, [sp, #-0x10]!
  100141be8  mov     x19, x1
  100141bec  mov     x20, x0
  100141bf0  adrp    x8, #0x10041c000
  100141bf4  nop
  100141bf8  ldr     x1, [x8, #0x770]
  100141bfc  bl      _objc_msgSend                            ; [a0 isRepeated]
  100141c00  cbz     w0, loc_100141c5c                        ; if ([a0 isRepeated] == 0)
  100141c04  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100141c08  mov     x1, x20
  100141c0c  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x8], a0)
  100141c10  mov     x21, x0
  100141c14  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100141c18  mov     x1, x20
  100141c1c  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  100141c20  mov     x8, x0
  100141c24  adrp    x9, #0x100420000
  100141c28  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100141c2c  ldr     x10, [x21, x9]                           ; x10 = sub_10013cd1c(a1[+0x8], a0)->_count
  100141c30  cbnz    x10, loc_100141c3c                       ; if (sub_10013cd1c(a1[+0x8], a0)->_count != 0)
  100141c34  ldr     x9, [x8, x9]                             ; x9 = sub_10013cd1c(a1[+0x0], a0)->_count
  100141c38  cbz     x9, loc_100141d4c                        ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
loc_100141c3c:
  100141c3c  adrp    x9, #0x100417000
  100141c40  nop
  100141c44  ldr     x1, [x9, #0x218]
  100141c48  mov     x0, x21
  100141c4c  mov     x2, x8
  100141c50  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x8], a0) isEqual:sub_10013cd1c(a1[+0x0], a0)]
loc_100141c54:
  100141c54  strb    w0, [x19, #0x10]                         ; a1[+0x10] = w0
  100141c58  b       loc_100141d3c
loc_100141c5c:
  100141c5c  adrp    x8, #0x100420000
  100141c60  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100141c64  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100141c68  ldr     w8, [x8, #0xc]                           ; w8 = a0->description_[+0xc]
  100141c6c  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100141c70  adrp    x9, #0x100420000
  100141c74  ldrsw   x10, [x9, #0x9e4]                        ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100141c78  ldr     x9, [x0, x10]                            ; x9 = a1[+0x8]->messageStorage_
  100141c7c  cbz     x9, loc_100141ca4                        ; if (a1[+0x8]->messageStorage_ == 0)
  100141c80  and     w11, w8, #0x1f
  100141c84  mov     w12, #1
  100141c88  lsl     w11, w12, w11
  100141c8c  lsr     w12, w8, #5
  100141c90  ldr     w9, [x9, w12, uxtw #2]
  100141c94  and     w9, w9, w11
  100141c98  cmp     w9, #0
  100141c9c  cset    w9, ne
  100141ca0  b       loc_100141ca8
loc_100141ca4:
  100141ca4  mov     w9, #0
loc_100141ca8:
  100141ca8  ldr     x11, [x19]                               ; x11 = a1[+0x0]
  100141cac  ldr     x10, [x11, x10]                          ; x10 = a1[+0x0]->messageStorage_
  100141cb0  cbz     x10, loc_100141d24                       ; if (a1[+0x0]->messageStorage_ == 0)
  100141cb4  and     w11, w8, #0x1f
  100141cb8  mov     w12, #1
  100141cbc  lsl     w11, w12, w11
  100141cc0  lsr     w8, w8, #5
  100141cc4  ldr     w8, [x10, w8, uxtw #2]
  100141cc8  and     w8, w8, w11
  100141ccc  cmp     w8, #0
  100141cd0  cset    w8, ne
  100141cd4  eor     w8, w9, w8
  100141cd8  tbnz    w8, #0, loc_100141d2c                    ; if (((w9 ^ ((w8 & (1 << (a0->description_[+0xc] & 31))) != 0)) & 1))
  100141cdc  tbz     w9, #0, loc_100141d38                    ; if (!(w9 & 1))
  100141ce0  mov     x1, x20
  100141ce4  bl      sub_10013c1a0                            ; sub_10013c1a0(a1[+0x8], a0)
  100141ce8  mov     x21, x0
  100141cec  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100141cf0  mov     x1, x20
  100141cf4  bl      sub_10013c1a0                            ; sub_10013c1a0(a1[+0x0], a0)
  100141cf8  mov     x8, x0
  100141cfc  cmp     x21, x8
  100141d00  b.eq    loc_100141d38                            ; if (sub_10013c1a0(a1[+0x8], a0) == sub_10013c1a0(a1[+0x0], a0))
  100141d04  adrp    x9, #0x100417000
  100141d08  nop
  100141d0c  ldr     x1, [x9, #0x218]
  100141d10  mov     x0, x21
  100141d14  mov     x2, x8
  100141d18  bl      _objc_msgSend                            ; [sub_10013c1a0(a1[+0x8], a0) isEqual:sub_10013c1a0(a1[+0x0], a0)]
  100141d1c  tbnz    w0, #0, loc_100141d38                    ; if (([sub_10013c1a0(a1[+0x8], a0) isEqual:sub_10013c1a0(a1[+0x0], a0)] & 1))
  100141d20  b       loc_100141d2c
loc_100141d24:
  100141d24  and     w8, w9, #1
  100141d28  tbz     w8, #0, loc_100141d38                    ; if (!((w9 & 1) & 1))
loc_100141d2c:
  100141d2c  mov     w0, #0
  100141d30  strb    wzr, [x19, #0x10]                        ; a1[+0x10] = 0
  100141d34  b       loc_100141d3c
loc_100141d38:
  100141d38  mov     w0, #1
loc_100141d3c:
  100141d3c  ldp     x22, x21, [sp], #0x10
  100141d40  ldp     x20, x19, [sp], #0x10
  100141d44  ldp     x29, x30, [sp], #0x10
  100141d48  ret
loc_100141d4c:
  100141d4c  mov     w0, #1
  100141d50  b       loc_100141c54

; ======================================================================
; sub_100141d54
; address 0x100141d54  size 236  kind sub
; ======================================================================
  100141d54  stp     x29, x30, [sp, #-0x10]!
  100141d58  mov     x29, sp
  100141d5c  stp     x20, x19, [sp, #-0x10]!
  100141d60  stp     x22, x21, [sp, #-0x10]!
  100141d64  mov     x19, x1
  100141d68  mov     x20, x0
  100141d6c  adrp    x8, #0x100420000
  100141d70  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100141d74  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100141d78  ldr     w8, [x8, #0xc]                           ; w8 = a0->description_[+0xc]
  100141d7c  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100141d80  adrp    x9, #0x100420000
  100141d84  ldrsw   x10, [x9, #0x9e4]                        ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100141d88  ldr     x9, [x0, x10]                            ; x9 = a1[+0x8]->messageStorage_
  100141d8c  cbz     x9, loc_100141db4                        ; if (a1[+0x8]->messageStorage_ == 0)
  100141d90  and     w11, w8, #0x1f
  100141d94  mov     w12, #1
  100141d98  lsl     w11, w12, w11
  100141d9c  lsr     w12, w8, #5
  100141da0  ldr     w9, [x9, w12, uxtw #2]
  100141da4  and     w9, w9, w11
  100141da8  cmp     w9, #0
  100141dac  cset    w9, ne
  100141db0  b       loc_100141db8
loc_100141db4:
  100141db4  mov     w9, #0
loc_100141db8:
  100141db8  ldr     x11, [x19]                               ; x11 = a1[+0x0]
  100141dbc  ldr     x10, [x11, x10]                          ; x10 = a1[+0x0]->messageStorage_
  100141dc0  cbz     x10, loc_100141e18                       ; if (a1[+0x0]->messageStorage_ == 0)
  100141dc4  and     w11, w8, #0x1f
  100141dc8  mov     w12, #1
  100141dcc  lsl     w11, w12, w11
  100141dd0  lsr     w8, w8, #5
  100141dd4  ldr     w8, [x10, w8, uxtw #2]
  100141dd8  and     w8, w8, w11
  100141ddc  cmp     w8, #0
  100141de0  cset    w8, ne
  100141de4  eor     w8, w9, w8
  100141de8  tbnz    w8, #0, loc_100141e20                    ; if (((w9 ^ ((w8 & (1 << (a0->description_[+0xc] & 31))) != 0)) & 1))
  100141dec  tbz     w9, #0, loc_100141e2c                    ; if (!(w9 & 1))
  100141df0  mov     x1, x20
  100141df4  bl      sub_10013dd38                            ; sub_10013dd38(a1[+0x8], a0, a2, a3)
  100141df8  mov     x21, x0
  100141dfc  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100141e00  mov     x1, x20
  100141e04  bl      sub_10013dd38                            ; sub_10013dd38(a1[+0x0], a0)
  100141e08  eor     w8, w21, w0
  100141e0c  cmp     w8, #1
  100141e10  b.ne    loc_100141e2c                            ; if ((sub_10013dd38(a1[+0x8], a0, a2, a3) ^ sub_10013dd38(a1[+0x0], a0)) != 1)
  100141e14  b       loc_100141e20
loc_100141e18:
  100141e18  and     w8, w9, #1
  100141e1c  tbz     w8, #0, loc_100141e2c                    ; if (!((w9 & 1) & 1))
loc_100141e20:
  100141e20  mov     w0, #0
  100141e24  strb    wzr, [x19, #0x10]                        ; a1[+0x10] = 0
  100141e28  b       loc_100141e30
loc_100141e2c:
  100141e2c  mov     w0, #1
loc_100141e30:
  100141e30  ldp     x22, x21, [sp], #0x10
  100141e34  ldp     x20, x19, [sp], #0x10
  100141e38  ldp     x29, x30, [sp], #0x10
  100141e3c  ret

; ======================================================================
; sub_100141e40
; address 0x100141e40  size 232  kind sub
; ======================================================================
  100141e40  stp     x29, x30, [sp, #-0x10]!
  100141e44  mov     x29, sp
  100141e48  stp     x20, x19, [sp, #-0x10]!
  100141e4c  stp     x22, x21, [sp, #-0x10]!
  100141e50  mov     x19, x1
  100141e54  mov     x20, x0
  100141e58  adrp    x8, #0x100420000
  100141e5c  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100141e60  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100141e64  ldr     w8, [x8, #0xc]                           ; w8 = a0->description_[+0xc]
  100141e68  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100141e6c  adrp    x9, #0x100420000
  100141e70  ldrsw   x10, [x9, #0x9e4]                        ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100141e74  ldr     x9, [x0, x10]                            ; x9 = a1[+0x8]->messageStorage_
  100141e78  cbz     x9, loc_100141ea0                        ; if (a1[+0x8]->messageStorage_ == 0)
  100141e7c  and     w11, w8, #0x1f
  100141e80  mov     w12, #1
  100141e84  lsl     w11, w12, w11
  100141e88  lsr     w12, w8, #5
  100141e8c  ldr     w9, [x9, w12, uxtw #2]
  100141e90  and     w9, w9, w11
  100141e94  cmp     w9, #0
  100141e98  cset    w9, ne
  100141e9c  b       loc_100141ea4
loc_100141ea0:
  100141ea0  mov     w9, #0
loc_100141ea4:
  100141ea4  ldr     x11, [x19]                               ; x11 = a1[+0x0]
  100141ea8  ldr     x10, [x11, x10]                          ; x10 = a1[+0x0]->messageStorage_
  100141eac  cbz     x10, loc_100141f00                       ; if (a1[+0x0]->messageStorage_ == 0)
  100141eb0  and     w11, w8, #0x1f
  100141eb4  mov     w12, #1
  100141eb8  lsl     w11, w12, w11
  100141ebc  lsr     w8, w8, #5
  100141ec0  ldr     w8, [x10, w8, uxtw #2]
  100141ec4  and     w8, w8, w11
  100141ec8  cmp     w8, #0
  100141ecc  cset    w8, ne
  100141ed0  eor     w8, w9, w8
  100141ed4  tbnz    w8, #0, loc_100141f08                    ; if (((w9 ^ ((w8 & (1 << (a0->description_[+0xc] & 31))) != 0)) & 1))
  100141ed8  tbz     w9, #0, loc_100141f14                    ; if (!(w9 & 1))
  100141edc  mov     x1, x20
  100141ee0  bl      sub_10013def4                            ; sub_10013def4(a1[+0x8], a0, a2, a3)
  100141ee4  mov     x21, x0
  100141ee8  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100141eec  mov     x1, x20
  100141ef0  bl      sub_10013def4                            ; sub_10013def4(a1[+0x0], a0)
  100141ef4  cmp     w21, w0
  100141ef8  b.eq    loc_100141f14                            ; if (sub_10013def4(a1[+0x8], a0, a2, a3) == sub_10013def4(a1[+0x0], a0))
  100141efc  b       loc_100141f08
loc_100141f00:
  100141f00  and     w8, w9, #1
  100141f04  tbz     w8, #0, loc_100141f14                    ; if (!((w9 & 1) & 1))
loc_100141f08:
  100141f08  mov     w0, #0
  100141f0c  strb    wzr, [x19, #0x10]                        ; a1[+0x10] = 0
  100141f10  b       loc_100141f18
loc_100141f14:
  100141f14  mov     w0, #1
loc_100141f18:
  100141f18  ldp     x22, x21, [sp], #0x10
  100141f1c  ldp     x20, x19, [sp], #0x10
  100141f20  ldp     x29, x30, [sp], #0x10
  100141f24  ret

; ======================================================================
; sub_100141f28
; address 0x100141f28  size 232  kind sub
; ======================================================================
  100141f28  stp     x29, x30, [sp, #-0x10]!
  100141f2c  mov     x29, sp
  100141f30  stp     x20, x19, [sp, #-0x10]!
  100141f34  stp     x22, x21, [sp, #-0x10]!
  100141f38  mov     x19, x1
  100141f3c  mov     x20, x0
  100141f40  adrp    x8, #0x100420000
  100141f44  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100141f48  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100141f4c  ldr     w8, [x8, #0xc]                           ; w8 = a0->description_[+0xc]
  100141f50  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100141f54  adrp    x9, #0x100420000
  100141f58  ldrsw   x10, [x9, #0x9e4]                        ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100141f5c  ldr     x9, [x0, x10]                            ; x9 = a1[+0x8]->messageStorage_
  100141f60  cbz     x9, loc_100141f88                        ; if (a1[+0x8]->messageStorage_ == 0)
  100141f64  and     w11, w8, #0x1f
  100141f68  mov     w12, #1
  100141f6c  lsl     w11, w12, w11
  100141f70  lsr     w12, w8, #5
  100141f74  ldr     w9, [x9, w12, uxtw #2]
  100141f78  and     w9, w9, w11
  100141f7c  cmp     w9, #0
  100141f80  cset    w9, ne
  100141f84  b       loc_100141f8c
loc_100141f88:
  100141f88  mov     w9, #0
loc_100141f8c:
  100141f8c  ldr     x11, [x19]                               ; x11 = a1[+0x0]
  100141f90  ldr     x10, [x11, x10]                          ; x10 = a1[+0x0]->messageStorage_
  100141f94  cbz     x10, loc_100141fe8                       ; if (a1[+0x0]->messageStorage_ == 0)
  100141f98  and     w11, w8, #0x1f
  100141f9c  mov     w12, #1
  100141fa0  lsl     w11, w12, w11
  100141fa4  lsr     w8, w8, #5
  100141fa8  ldr     w8, [x10, w8, uxtw #2]
  100141fac  and     w8, w8, w11
  100141fb0  cmp     w8, #0
  100141fb4  cset    w8, ne
  100141fb8  eor     w8, w9, w8
  100141fbc  tbnz    w8, #0, loc_100141ff0                    ; if (((w9 ^ ((w8 & (1 << (a0->description_[+0xc] & 31))) != 0)) & 1))
  100141fc0  tbz     w9, #0, loc_100141ffc                    ; if (!(w9 & 1))
  100141fc4  mov     x1, x20
  100141fc8  bl      sub_10013e010                            ; sub_10013e010(a1[+0x8], a0, a2, a3)
  100141fcc  mov     x21, x0
  100141fd0  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100141fd4  mov     x1, x20
  100141fd8  bl      sub_10013e010                            ; sub_10013e010(a1[+0x0], a0)
  100141fdc  cmp     w21, w0
  100141fe0  b.eq    loc_100141ffc                            ; if (sub_10013e010(a1[+0x8], a0, a2, a3) == sub_10013e010(a1[+0x0], a0))
  100141fe4  b       loc_100141ff0
loc_100141fe8:
  100141fe8  and     w8, w9, #1
  100141fec  tbz     w8, #0, loc_100141ffc                    ; if (!((w9 & 1) & 1))
loc_100141ff0:
  100141ff0  mov     w0, #0
  100141ff4  strb    wzr, [x19, #0x10]                        ; a1[+0x10] = 0
  100141ff8  b       loc_100142000
loc_100141ffc:
  100141ffc  mov     w0, #1
loc_100142000:
  100142000  ldp     x22, x21, [sp], #0x10
  100142004  ldp     x20, x19, [sp], #0x10
  100142008  ldp     x29, x30, [sp], #0x10
  10014200c  ret

; ======================================================================
; sub_100142010
; address 0x100142010  size 232  kind sub
; ======================================================================
  100142010  stp     x29, x30, [sp, #-0x10]!
  100142014  mov     x29, sp
  100142018  stp     x20, x19, [sp, #-0x10]!
  10014201c  stp     x22, x21, [sp, #-0x10]!
  100142020  mov     x19, x1
  100142024  mov     x20, x0
  100142028  adrp    x8, #0x100420000
  10014202c  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142030  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100142034  ldr     w8, [x8, #0xc]                           ; w8 = a0->description_[+0xc]
  100142038  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10014203c  adrp    x9, #0x100420000
  100142040  ldrsw   x10, [x9, #0x9e4]                        ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100142044  ldr     x9, [x0, x10]                            ; x9 = a1[+0x8]->messageStorage_
  100142048  cbz     x9, loc_100142070                        ; if (a1[+0x8]->messageStorage_ == 0)
  10014204c  and     w11, w8, #0x1f
  100142050  mov     w12, #1
  100142054  lsl     w11, w12, w11
  100142058  lsr     w12, w8, #5
  10014205c  ldr     w9, [x9, w12, uxtw #2]
  100142060  and     w9, w9, w11
  100142064  cmp     w9, #0
  100142068  cset    w9, ne
  10014206c  b       loc_100142074
loc_100142070:
  100142070  mov     w9, #0
loc_100142074:
  100142074  ldr     x11, [x19]                               ; x11 = a1[+0x0]
  100142078  ldr     x10, [x11, x10]                          ; x10 = a1[+0x0]->messageStorage_
  10014207c  cbz     x10, loc_1001420d0                       ; if (a1[+0x0]->messageStorage_ == 0)
  100142080  and     w11, w8, #0x1f
  100142084  mov     w12, #1
  100142088  lsl     w11, w12, w11
  10014208c  lsr     w8, w8, #5
  100142090  ldr     w8, [x10, w8, uxtw #2]
  100142094  and     w8, w8, w11
  100142098  cmp     w8, #0
  10014209c  cset    w8, ne
  1001420a0  eor     w8, w9, w8
  1001420a4  tbnz    w8, #0, loc_1001420d8                    ; if (((w9 ^ ((w8 & (1 << (a0->description_[+0xc] & 31))) != 0)) & 1))
  1001420a8  tbz     w9, #0, loc_1001420e4                    ; if (!(w9 & 1))
  1001420ac  mov     x1, x20
  1001420b0  bl      sub_10013df80                            ; sub_10013df80(a1[+0x8], a0, a2, a3)
  1001420b4  mov     x21, x0
  1001420b8  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  1001420bc  mov     x1, x20
  1001420c0  bl      sub_10013df80                            ; sub_10013df80(a1[+0x0], a0)
  1001420c4  cmp     x21, x0
  1001420c8  b.eq    loc_1001420e4                            ; if (sub_10013df80(a1[+0x8], a0, a2, a3) == sub_10013df80(a1[+0x0], a0))
  1001420cc  b       loc_1001420d8
loc_1001420d0:
  1001420d0  and     w8, w9, #1
  1001420d4  tbz     w8, #0, loc_1001420e4                    ; if (!((w9 & 1) & 1))
loc_1001420d8:
  1001420d8  mov     w0, #0
  1001420dc  strb    wzr, [x19, #0x10]                        ; a1[+0x10] = 0
  1001420e0  b       loc_1001420e8
loc_1001420e4:
  1001420e4  mov     w0, #1
loc_1001420e8:
  1001420e8  ldp     x22, x21, [sp], #0x10
  1001420ec  ldp     x20, x19, [sp], #0x10
  1001420f0  ldp     x29, x30, [sp], #0x10
  1001420f4  ret

; ======================================================================
; sub_1001420f8
; address 0x1001420f8  size 232  kind sub
; ======================================================================
  1001420f8  stp     x29, x30, [sp, #-0x10]!
  1001420fc  mov     x29, sp
  100142100  stp     x20, x19, [sp, #-0x10]!
  100142104  stp     x22, x21, [sp, #-0x10]!
  100142108  mov     x19, x1
  10014210c  mov     x20, x0
  100142110  adrp    x8, #0x100420000
  100142114  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142118  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  10014211c  ldr     w8, [x8, #0xc]                           ; w8 = a0->description_[+0xc]
  100142120  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  100142124  adrp    x9, #0x100420000
  100142128  ldrsw   x10, [x9, #0x9e4]                        ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10014212c  ldr     x9, [x0, x10]                            ; x9 = a1[+0x8]->messageStorage_
  100142130  cbz     x9, loc_100142158                        ; if (a1[+0x8]->messageStorage_ == 0)
  100142134  and     w11, w8, #0x1f
  100142138  mov     w12, #1
  10014213c  lsl     w11, w12, w11
  100142140  lsr     w12, w8, #5
  100142144  ldr     w9, [x9, w12, uxtw #2]
  100142148  and     w9, w9, w11
  10014214c  cmp     w9, #0
  100142150  cset    w9, ne
  100142154  b       loc_10014215c
loc_100142158:
  100142158  mov     w9, #0
loc_10014215c:
  10014215c  ldr     x11, [x19]                               ; x11 = a1[+0x0]
  100142160  ldr     x10, [x11, x10]                          ; x10 = a1[+0x0]->messageStorage_
  100142164  cbz     x10, loc_1001421b8                       ; if (a1[+0x0]->messageStorage_ == 0)
  100142168  and     w11, w8, #0x1f
  10014216c  mov     w12, #1
  100142170  lsl     w11, w12, w11
  100142174  lsr     w8, w8, #5
  100142178  ldr     w8, [x10, w8, uxtw #2]
  10014217c  and     w8, w8, w11
  100142180  cmp     w8, #0
  100142184  cset    w8, ne
  100142188  eor     w8, w9, w8
  10014218c  tbnz    w8, #0, loc_1001421c0                    ; if (((w9 ^ ((w8 & (1 << (a0->description_[+0xc] & 31))) != 0)) & 1))
  100142190  tbz     w9, #0, loc_1001421cc                    ; if (!(w9 & 1))
  100142194  mov     x1, x20
  100142198  bl      sub_10013e09c                            ; sub_10013e09c(a1[+0x8], a0, a2, a3)
  10014219c  mov     x21, x0
  1001421a0  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  1001421a4  mov     x1, x20
  1001421a8  bl      sub_10013e09c                            ; sub_10013e09c(a1[+0x0], a0)
  1001421ac  cmp     x21, x0
  1001421b0  b.eq    loc_1001421cc                            ; if (sub_10013e09c(a1[+0x8], a0, a2, a3) == sub_10013e09c(a1[+0x0], a0))
  1001421b4  b       loc_1001421c0
loc_1001421b8:
  1001421b8  and     w8, w9, #1
  1001421bc  tbz     w8, #0, loc_1001421cc                    ; if (!((w9 & 1) & 1))
loc_1001421c0:
  1001421c0  mov     w0, #0
  1001421c4  strb    wzr, [x19, #0x10]                        ; a1[+0x10] = 0
  1001421c8  b       loc_1001421d0
loc_1001421cc:
  1001421cc  mov     w0, #1
loc_1001421d0:
  1001421d0  ldp     x22, x21, [sp], #0x10
  1001421d4  ldp     x20, x19, [sp], #0x10
  1001421d8  ldp     x29, x30, [sp], #0x10
  1001421dc  ret

; ======================================================================
; sub_1001421e0
; address 0x1001421e0  size 232  kind sub
; ======================================================================
  1001421e0  stp     x29, x30, [sp, #-0x10]!
  1001421e4  mov     x29, sp
  1001421e8  stp     x20, x19, [sp, #-0x10]!
  1001421ec  stp     d9, d8, [sp, #-0x10]!
  1001421f0  mov     x19, x1
  1001421f4  mov     x20, x0
  1001421f8  adrp    x8, #0x100420000
  1001421fc  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142200  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100142204  ldr     w8, [x8, #0xc]                           ; w8 = a0->description_[+0xc]
  100142208  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  10014220c  adrp    x9, #0x100420000
  100142210  ldrsw   x10, [x9, #0x9e4]                        ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100142214  ldr     x9, [x0, x10]                            ; x9 = a1[+0x8]->messageStorage_
  100142218  cbz     x9, loc_100142240                        ; if (a1[+0x8]->messageStorage_ == 0)
  10014221c  and     w11, w8, #0x1f
  100142220  mov     w12, #1
  100142224  lsl     w11, w12, w11
  100142228  lsr     w12, w8, #5
  10014222c  ldr     w9, [x9, w12, uxtw #2]
  100142230  and     w9, w9, w11
  100142234  cmp     w9, #0
  100142238  cset    w9, ne
  10014223c  b       loc_100142244
loc_100142240:
  100142240  mov     w9, #0
loc_100142244:
  100142244  ldr     x11, [x19]                               ; x11 = a1[+0x0]
  100142248  ldr     x10, [x11, x10]                          ; x10 = a1[+0x0]->messageStorage_
  10014224c  cbz     x10, loc_1001422a0                       ; if (a1[+0x0]->messageStorage_ == 0)
  100142250  and     w11, w8, #0x1f
  100142254  mov     w12, #1
  100142258  lsl     w11, w12, w11
  10014225c  lsr     w8, w8, #5
  100142260  ldr     w8, [x10, w8, uxtw #2]
  100142264  and     w8, w8, w11
  100142268  cmp     w8, #0
  10014226c  cset    w8, ne
  100142270  eor     w8, w9, w8
  100142274  tbnz    w8, #0, loc_1001422a8                    ; if (((w9 ^ ((w8 & (1 << (a0->description_[+0xc] & 31))) != 0)) & 1))
  100142278  tbz     w9, #0, loc_1001422b4                    ; if (!(w9 & 1))
  10014227c  mov     x1, x20
  100142280  bl      sub_10013ddd4                            ; sub_10013ddd4(a1[+0x8], a0, a2, a3)
  100142284  mov     v8.16b, v0.16b
  100142288  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  10014228c  mov     x1, x20
  100142290  bl      sub_10013ddd4                            ; sub_10013ddd4(a1[+0x0], a0)
  100142294  fcmp    s8, s0
  100142298  b.ne    loc_1001422a8                            ; if (s8 != s0)
  10014229c  b       loc_1001422b4
loc_1001422a0:
  1001422a0  and     w8, w9, #1
  1001422a4  tbz     w8, #0, loc_1001422b4                    ; if (!((w9 & 1) & 1))
loc_1001422a8:
  1001422a8  mov     w0, #0
  1001422ac  strb    wzr, [x19, #0x10]                        ; a1[+0x10] = 0
  1001422b0  b       loc_1001422b8
loc_1001422b4:
  1001422b4  mov     w0, #1
loc_1001422b8:
  1001422b8  ldp     d9, d8, [sp], #0x10
  1001422bc  ldp     x20, x19, [sp], #0x10
  1001422c0  ldp     x29, x30, [sp], #0x10
  1001422c4  ret

; ======================================================================
; sub_1001422c8
; address 0x1001422c8  size 232  kind sub
; ======================================================================
  1001422c8  stp     x29, x30, [sp, #-0x10]!
  1001422cc  mov     x29, sp
  1001422d0  stp     x20, x19, [sp, #-0x10]!
  1001422d4  stp     d9, d8, [sp, #-0x10]!
  1001422d8  mov     x19, x1
  1001422dc  mov     x20, x0
  1001422e0  adrp    x8, #0x100420000
  1001422e4  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001422e8  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  1001422ec  ldr     w8, [x8, #0xc]                           ; w8 = a0->description_[+0xc]
  1001422f0  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1001422f4  adrp    x9, #0x100420000
  1001422f8  ldrsw   x10, [x9, #0x9e4]                        ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  1001422fc  ldr     x9, [x0, x10]                            ; x9 = a1[+0x8]->messageStorage_
  100142300  cbz     x9, loc_100142328                        ; if (a1[+0x8]->messageStorage_ == 0)
  100142304  and     w11, w8, #0x1f
  100142308  mov     w12, #1
  10014230c  lsl     w11, w12, w11
  100142310  lsr     w12, w8, #5
  100142314  ldr     w9, [x9, w12, uxtw #2]
  100142318  and     w9, w9, w11
  10014231c  cmp     w9, #0
  100142320  cset    w9, ne
  100142324  b       loc_10014232c
loc_100142328:
  100142328  mov     w9, #0
loc_10014232c:
  10014232c  ldr     x11, [x19]                               ; x11 = a1[+0x0]
  100142330  ldr     x10, [x11, x10]                          ; x10 = a1[+0x0]->messageStorage_
  100142334  cbz     x10, loc_100142388                       ; if (a1[+0x0]->messageStorage_ == 0)
  100142338  and     w11, w8, #0x1f
  10014233c  mov     w12, #1
  100142340  lsl     w11, w12, w11
  100142344  lsr     w8, w8, #5
  100142348  ldr     w8, [x10, w8, uxtw #2]
  10014234c  and     w8, w8, w11
  100142350  cmp     w8, #0
  100142354  cset    w8, ne
  100142358  eor     w8, w9, w8
  10014235c  tbnz    w8, #0, loc_100142390                    ; if (((w9 ^ ((w8 & (1 << (a0->description_[+0xc] & 31))) != 0)) & 1))
  100142360  tbz     w9, #0, loc_10014239c                    ; if (!(w9 & 1))
  100142364  mov     x1, x20
  100142368  bl      sub_10013de64                            ; sub_10013de64(a1[+0x8], a0, a2, a3)
  10014236c  mov     v8.16b, v0.16b
  100142370  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100142374  mov     x1, x20
  100142378  bl      sub_10013de64                            ; sub_10013de64(a1[+0x0], a0)
  10014237c  fcmp    d8, d0
  100142380  b.ne    loc_100142390                            ; if (d8 != d0)
  100142384  b       loc_10014239c
loc_100142388:
  100142388  and     w8, w9, #1
  10014238c  tbz     w8, #0, loc_10014239c                    ; if (!((w9 & 1) & 1))
loc_100142390:
  100142390  mov     w0, #0
  100142394  strb    wzr, [x19, #0x10]                        ; a1[+0x10] = 0
  100142398  b       loc_1001423a0
loc_10014239c:
  10014239c  mov     w0, #1
loc_1001423a0:
  1001423a0  ldp     d9, d8, [sp], #0x10
  1001423a4  ldp     x20, x19, [sp], #0x10
  1001423a8  ldp     x29, x30, [sp], #0x10
  1001423ac  ret

; ======================================================================
; -[TAGPBGeneratedMessage hash]
; address 0x1001423b0  size 16  kind objc
; ======================================================================
  1001423b0  adrp    x8, #0x100417000
  1001423b4  nop
  1001423b8  ldr     x1, [x8, #0x2e0]
  1001423bc  b       _objc_msgSend                            ; [self class]

; ======================================================================
; -[TAGPBGeneratedMessage description]
; address 0x1001423c0  size 124  kind objc
; ======================================================================
  1001423c0  stp     x29, x30, [sp, #-0x10]!
  1001423c4  mov     x29, sp
  1001423c8  stp     x20, x19, [sp, #-0x10]!
  1001423cc  stp     x22, x21, [sp, #-0x10]!
  1001423d0  sub     sp, sp, #0x20
  1001423d4  mov     x19, x0
  1001423d8  adrp    x1, #0x1003c2000
  1001423dc  add     x1, x1, #0xa70                           ; @"    "
  1001423e0  bl      sub_10014243c                            ; sub_10014243c(self, @"    ")
  1001423e4  mov     x20, x0
  1001423e8  adrp    x8, #0x10041d000
  1001423ec  ldr     x21, [x8, #0xf78]                        ; class NSString
  1001423f0  adrp    x8, #0x100417000
  1001423f4  nop
  1001423f8  ldr     x1, [x8, #0x2e0]
  1001423fc  mov     x0, x19
  100142400  bl      _objc_msgSend                            ; [self class]
  100142404  adrp    x8, #0x100416000
  100142408  nop
  10014240c  ldr     x1, [x8, #0xee8]
  100142410  stp     x19, x20, [sp, #8]
  100142414  str     x0, [sp]
  100142418  adrp    x2, #0x1003c7000
  10014241c  add     x2, x2, #0xd0                            ; @"<%@ %p>: {\n%@}"
  100142420  mov     x0, x21
  100142424  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"<%@ %p>: {\n%@}", [self class], self, sub_10014243c(self, @"    ")]
  100142428  sub     sp, x29, #0x20
  10014242c  ldp     x22, x21, [sp], #0x10
  100142430  ldp     x20, x19, [sp], #0x10
  100142434  ldp     x29, x30, [sp], #0x10
  100142438  ret

; ======================================================================
; sub_10014243c
; address 0x10014243c  size 112  kind sub
; ======================================================================
  10014243c  stp     x29, x30, [sp, #-0x10]!
  100142440  mov     x29, sp
  100142444  stp     x20, x19, [sp, #-0x10]!
  100142448  stp     x22, x21, [sp, #-0x10]!
  10014244c  mov     x19, x0
  100142450  cbz     x19, loc_100142494                       ; if (a0 == 0)
  100142454  adrp    x8, #0x1003b9000
  100142458  add     x8, x8, #0x870                           ; @""
  10014245c  cmp     x1, #0
  100142460  csel    x21, x8, x1, eq
  100142464  adrp    x8, #0x10041e000
  100142468  ldr     x0, [x8, #0xd8]                          ; class NSMutableString
  10014246c  adrp    x8, #0x10041b000
  100142470  nop
  100142474  ldr     x1, [x8, #0x1f0]
  100142478  bl      _objc_msgSend                            ; [NSMutableString string]
  10014247c  mov     x20, x0
  100142480  mov     x0, x19
  100142484  mov     x1, x20
  100142488  mov     x2, x21
  10014248c  bl      sub_100149294                            ; sub_100149294(a0, [NSMutableString string], (a1 == 0 ? @"" : a1))
  100142490  b       loc_100142498
loc_100142494:
  100142494  mov     x20, #0
loc_100142498:
  100142498  mov     x0, x20
  10014249c  ldp     x22, x21, [sp], #0x10
  1001424a0  ldp     x20, x19, [sp], #0x10
  1001424a4  ldp     x29, x30, [sp], #0x10
  1001424a8  ret

; ======================================================================
; -[TAGPBGeneratedMessage serializedSize]
; address 0x1001424ac  size 252  kind objc
; ======================================================================
  1001424ac  stp     x29, x30, [sp, #-0x10]!
  1001424b0  mov     x29, sp
  1001424b4  stp     x20, x19, [sp, #-0x10]!
  1001424b8  stp     x22, x21, [sp, #-0x10]!
  1001424bc  sub     sp, sp, #0xb0
  1001424c0  mov     x19, x0
  1001424c4  adrp    x21, #0x1003b0000
  1001424c8  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1001424cc  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  1001424d0  stur    x8, [x29, #-0x28]
  1001424d4  stp     x19, xzr, [x29, #-0x38]
  1001424d8  adrp    x1, #0x1003b8000
  1001424dc  add     x1, x1, #0x828                           ; &d_1003b8828
  1001424e0  add     x20, sp, #8
  1001424e4  mov     x2, #0x90
  1001424e8  mov     x0, x20
  1001424ec  bl      _memcpy                                  ; memcpy(&sp[0x8], &d_1003b8828, 144)
  1001424f0  mov     x2, #0
  1001424f4  sub     x3, x29, #0x38
  1001424f8  mov     x0, x20
  1001424fc  mov     x1, x19
  100142500  bl      sub_100144c8c                            ; sub_100144c8c(&sp[0x8], self, 0, &x29[-0x38])
  100142504  adrp    x8, #0x10041c000
  100142508  nop
  10014250c  ldr     x1, [x8, #0x7e8]
  100142510  mov     x0, x19
  100142514  bl      _objc_msgSend                            ; [self descriptor]
  100142518  adrp    x8, #0x10041c000
  10014251c  nop
  100142520  ldr     x1, [x8, #0xa10]
  100142524  bl      _objc_msgSend                            ; [[self descriptor] isWireFormat]
  100142528  mov     x8, x0
  10014252c  adrp    x9, #0x100420000
  100142530  ldrsw   x9, [x9, #0x9ec]                         ; ivar offset TAGPBGeneratedMessage.unknownFields_ (+0x8)
  100142534  ldr     x0, [x19, x9]                            ; x0 = self->unknownFields_
  100142538  cbz     w8, loc_100142548                        ; if ([[self descriptor] isWireFormat] == 0)
  10014253c  adrp    x8, #0x10041c000
  100142540  add     x8, x8, #0xb58                           ; &@selector(serializedSizeAsMessageSet)
  100142544  b       loc_100142550
loc_100142548:
  100142548  adrp    x8, #0x10041c000
  10014254c  add     x8, x8, #0x610                           ; &@selector(serializedSize)
loc_100142550:
  100142550  ldr     x1, [x8]                                 ; x1 = one of selectors {serializedSize, serializedSizeAsMessageSet}
  100142554  bl      _objc_msgSend                            ; [self->unknownFields_ serializedSize | serializedSizeAsMessageSet]
  100142558  ldur    x8, [x29, #-0x30]
  10014255c  add     x8, x8, x0
  100142560  stur    x8, [x29, #-0x30]
  100142564  adrp    x8, #0x10041c000
  100142568  nop
  10014256c  ldr     x1, [x8, #0xb60]
  100142570  mov     x0, x19
  100142574  bl      _objc_msgSend                            ; [self extensionsSerializedSize]
  100142578  ldur    x8, [x29, #-0x30]
  10014257c  ldr     x9, [x21]                                ; x9 = ___stack_chk_guard[+0x0]
  100142580  ldur    x10, [x29, #-0x28]
  100142584  sub     x9, x9, x10
  100142588  cbnz    x9, loc_1001425a4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10014258c  add     x0, x8, x0                               ; t1 = ((x8 + [self->unknownFields_ serializedSize | serializedSizeAsMessageSet]) + [self extensionsSerializedSize])
  100142590  sub     sp, x29, #0x20
  100142594  ldp     x22, x21, [sp], #0x10
  100142598  ldp     x20, x19, [sp], #0x10
  10014259c  ldp     x29, x30, [sp], #0x10
  1001425a0  ret
loc_1001425a4:
  1001425a4  bl      ___stack_chk_fail                        ; stack_chk_fail([self extensionsSerializedSize])

; ======================================================================
; sub_1001425a8
; address 0x1001425a8  size 540  kind sub
; ======================================================================
  1001425a8  stp     x29, x30, [sp, #-0x10]!
  1001425ac  mov     x29, sp
  1001425b0  stp     x20, x19, [sp, #-0x10]!
  1001425b4  stp     x22, x21, [sp, #-0x10]!
  1001425b8  stp     x24, x23, [sp, #-0x10]!
  1001425bc  mov     x19, x1
  1001425c0  mov     x20, x0
  1001425c4  adrp    x8, #0x10041c000
  1001425c8  nop
  1001425cc  ldr     x1, [x8, #0x770]
  1001425d0  bl      _objc_msgSend                            ; [a0 isRepeated]
  1001425d4  mov     x8, x0
  1001425d8  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  1001425dc  cbz     w8, loc_100142630                        ; if ([a0 isRepeated] == 0)
  1001425e0  mov     x1, x20
  1001425e4  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  1001425e8  mov     x21, x0
  1001425ec  adrp    x8, #0x100420000
  1001425f0  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001425f4  ldr     x24, [x21, x8]                           ; x24 = sub_10013cd1c(a1[+0x0], a0)->_count
  1001425f8  cbz     x24, loc_100142694                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  1001425fc  mov     x22, #0
  100142600  adrp    x8, #0x10041c000
  100142604  add     x8, x8, #0x7b0                           ; &@selector(boolAtIndex:)
  100142608  ldr     x23, [x8]
loc_10014260c:
  10014260c  mov     x0, x21
  100142610  mov     x1, x23
  100142614  mov     x2, x22
  100142618  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) boolAtIndex:x2]
  10014261c  add     x22, x22, #1
  100142620  cmp     x24, x22
  100142624  b.ne    loc_10014260c                            ; if (sub_10013cd1c(a1[+0x0], a0)->_count != (x22 + 1))
  100142628  mov     x21, x24
  10014262c  b       loc_100142698
loc_100142630:
  100142630  adrp    x8, #0x100420000
  100142634  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100142638  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  10014263c  cbz     x8, loc_1001427ac                        ; if (a1[+0x0]->messageStorage_ == 0)
  100142640  adrp    x21, #0x100420000
  100142644  ldrsw   x9, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142648  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  10014264c  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100142650  and     w10, w9, #0x1f
  100142654  mov     w11, #1
  100142658  lsl     w10, w11, w10
  10014265c  lsr     w9, w9, #5
  100142660  ldr     w8, [x8, w9, uxtw #2]
  100142664  and     w8, w8, w10
  100142668  cbz     w8, loc_1001427ac                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  10014266c  mov     x1, x20
  100142670  bl      sub_10013dd38                            ; sub_10013dd38(a1[+0x0], a0)
  100142674  ldrsw   x8, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142678  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  10014267c  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100142680  lsl     w8, w8, #3
  100142684  cmp     w8, #0x80
  100142688  b.hs    loc_1001426e8                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  10014268c  mov     x8, #2
  100142690  b       loc_1001427a0
loc_100142694:
  100142694  mov     x21, #0
loc_100142698:
  100142698  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  10014269c  add     x8, x8, x21
  1001426a0  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x21)
  1001426a4  adrp    x8, #0x100420000
  1001426a8  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001426ac  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  1001426b0  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  1001426b4  lsl     w8, w8, #3
  1001426b8  cmp     w8, #0x80
  1001426bc  b.hs    loc_1001426c8                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  1001426c0  mov     x22, #1
  1001426c4  b       loc_100142708
loc_1001426c8:
  1001426c8  cmp     w8, #4, lsl #12
  1001426cc  b.hs    loc_1001426d8                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  1001426d0  mov     x22, #2
  1001426d4  b       loc_100142708
loc_1001426d8:
  1001426d8  cmp     w8, #0x200, lsl #12
  1001426dc  b.hs    loc_1001426f8                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  1001426e0  mov     x22, #3
  1001426e4  b       loc_100142708
loc_1001426e8:
  1001426e8  cmp     w8, #4, lsl #12
  1001426ec  b.hs    loc_100142780                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  1001426f0  mov     x8, #3
  1001426f4  b       loc_1001427a0
loc_1001426f8:
  1001426f8  lsr     w8, w8, #0x1c
  1001426fc  cmp     w8, #0
  100142700  mov     x8, #4
  100142704  cinc    x22, x8, ne
loc_100142708:
  100142708  adrp    x8, #0x10041c000
  10014270c  nop
  100142710  ldr     x1, [x8, #0xa20]
  100142714  mov     x0, x20
  100142718  bl      _objc_msgSend                            ; [a0 isPackable]
  10014271c  cbz     w0, loc_100142774                        ; if ([a0 isPackable] == 0)
  100142720  cbz     x24, loc_1001427ac                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100142724  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100142728  add     x8, x8, x22
  10014272c  mov     x9, #0xa
  100142730  mov     x10, #1
  100142734  mov     x11, #2
  100142738  mov     x12, #3
  10014273c  lsr     w13, w21, #0x1c
  100142740  cmp     w13, #0
  100142744  mov     x13, #4
  100142748  cinc    x13, x13, ne
  10014274c  cmp     w21, #0x200, lsl #12
  100142750  csel    x12, x12, x13, lo
  100142754  cmp     w21, #4, lsl #12
  100142758  csel    x11, x11, x12, lo
  10014275c  cmp     w21, #0x80
  100142760  csel    x10, x10, x11, lo                        ; t1 = (w21 <u 128 ? 1 : (w21 <u 0x4000 ? 2 : (w21 <u 0x200000 ? 3 : ((w21 >>> 28) != 0 ? 4 + 1 : 4))))
  100142764  cmp     w21, #0
  100142768  csel    x9, x9, x10, lt
  10014276c  add     x8, x8, x9
  100142770  b       loc_1001427a8
loc_100142774:
  100142774  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100142778  madd    x8, x22, x24, x8
  10014277c  b       loc_1001427a8
loc_100142780:
  100142780  cmp     w8, #0x200, lsl #12
  100142784  b.hs    loc_100142790                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100142788  mov     x8, #4
  10014278c  b       loc_1001427a0
loc_100142790:
  100142790  lsr     w8, w8, #0x1c
  100142794  cmp     w8, #0
  100142798  mov     x8, #5
  10014279c  cinc    x8, x8, ne
loc_1001427a0:
  1001427a0  ldr     x9, [x19, #8]                            ; x9 = a1[+0x8]
  1001427a4  add     x8, x9, x8
loc_1001427a8:
  1001427a8  str     x8, [x19, #8]                            ; a1[+0x8] = x8
loc_1001427ac:
  1001427ac  mov     w0, #1
  1001427b0  ldp     x24, x23, [sp], #0x10
  1001427b4  ldp     x22, x21, [sp], #0x10
  1001427b8  ldp     x20, x19, [sp], #0x10
  1001427bc  ldp     x29, x30, [sp], #0x10
  1001427c0  ret

; ======================================================================
; sub_1001427c4
; address 0x1001427c4  size 540  kind sub
; ======================================================================
  1001427c4  stp     x29, x30, [sp, #-0x10]!
  1001427c8  mov     x29, sp
  1001427cc  stp     x20, x19, [sp, #-0x10]!
  1001427d0  stp     x22, x21, [sp, #-0x10]!
  1001427d4  stp     x24, x23, [sp, #-0x10]!
  1001427d8  mov     x19, x1
  1001427dc  mov     x20, x0
  1001427e0  adrp    x8, #0x10041c000
  1001427e4  nop
  1001427e8  ldr     x1, [x8, #0x770]
  1001427ec  bl      _objc_msgSend                            ; [a0 isRepeated]
  1001427f0  mov     x8, x0
  1001427f4  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  1001427f8  cbz     w8, loc_10014284c                        ; if ([a0 isRepeated] == 0)
  1001427fc  mov     x1, x20
  100142800  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  100142804  mov     x21, x0
  100142808  adrp    x8, #0x100420000
  10014280c  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100142810  ldr     x24, [x21, x8]                           ; x24 = sub_10013cd1c(a1[+0x0], a0)->_count
  100142814  cbz     x24, loc_1001428b0                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100142818  mov     x22, #0
  10014281c  adrp    x8, #0x10041c000
  100142820  add     x8, x8, #0x7c0                           ; &@selector(uint32AtIndex:)
  100142824  ldr     x23, [x8]
loc_100142828:
  100142828  mov     x0, x21
  10014282c  mov     x1, x23
  100142830  mov     x2, x22
  100142834  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) uint32AtIndex:x2]
  100142838  add     x22, x22, #1
  10014283c  cmp     x24, x22
  100142840  b.ne    loc_100142828                            ; if (sub_10013cd1c(a1[+0x0], a0)->_count != (x22 + 1))
  100142844  lsl     x21, x24, #2
  100142848  b       loc_1001428b4
loc_10014284c:
  10014284c  adrp    x8, #0x100420000
  100142850  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100142854  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  100142858  cbz     x8, loc_1001429c8                        ; if (a1[+0x0]->messageStorage_ == 0)
  10014285c  adrp    x21, #0x100420000
  100142860  ldrsw   x9, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142864  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  100142868  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  10014286c  and     w10, w9, #0x1f
  100142870  mov     w11, #1
  100142874  lsl     w10, w11, w10
  100142878  lsr     w9, w9, #5
  10014287c  ldr     w8, [x8, w9, uxtw #2]
  100142880  and     w8, w8, w10
  100142884  cbz     w8, loc_1001429c8                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100142888  mov     x1, x20
  10014288c  bl      sub_10013e010                            ; sub_10013e010(a1[+0x0], a0)
  100142890  ldrsw   x8, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142894  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100142898  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  10014289c  lsl     w8, w8, #3
  1001428a0  cmp     w8, #0x80
  1001428a4  b.hs    loc_100142904                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  1001428a8  mov     x8, #5
  1001428ac  b       loc_1001429bc
loc_1001428b0:
  1001428b0  mov     x21, #0
loc_1001428b4:
  1001428b4  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  1001428b8  add     x8, x8, x21
  1001428bc  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x21)
  1001428c0  adrp    x8, #0x100420000
  1001428c4  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001428c8  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  1001428cc  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  1001428d0  lsl     w8, w8, #3
  1001428d4  cmp     w8, #0x80
  1001428d8  b.hs    loc_1001428e4                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  1001428dc  mov     x22, #1
  1001428e0  b       loc_100142924
loc_1001428e4:
  1001428e4  cmp     w8, #4, lsl #12
  1001428e8  b.hs    loc_1001428f4                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  1001428ec  mov     x22, #2
  1001428f0  b       loc_100142924
loc_1001428f4:
  1001428f4  cmp     w8, #0x200, lsl #12
  1001428f8  b.hs    loc_100142914                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  1001428fc  mov     x22, #3
  100142900  b       loc_100142924
loc_100142904:
  100142904  cmp     w8, #4, lsl #12
  100142908  b.hs    loc_10014299c                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  10014290c  mov     x8, #6
  100142910  b       loc_1001429bc
loc_100142914:
  100142914  lsr     w8, w8, #0x1c
  100142918  cmp     w8, #0
  10014291c  mov     x8, #4
  100142920  cinc    x22, x8, ne
loc_100142924:
  100142924  adrp    x8, #0x10041c000
  100142928  nop
  10014292c  ldr     x1, [x8, #0xa20]
  100142930  mov     x0, x20
  100142934  bl      _objc_msgSend                            ; [a0 isPackable]
  100142938  cbz     w0, loc_100142990                        ; if ([a0 isPackable] == 0)
  10014293c  cbz     x24, loc_1001429c8                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100142940  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100142944  add     x8, x8, x22
  100142948  mov     x9, #0xa
  10014294c  mov     x10, #1
  100142950  mov     x11, #2
  100142954  mov     x12, #3
  100142958  lsr     w13, w21, #0x1c
  10014295c  cmp     w13, #0
  100142960  mov     x13, #4
  100142964  cinc    x13, x13, ne
  100142968  cmp     w21, #0x200, lsl #12
  10014296c  csel    x12, x12, x13, lo
  100142970  cmp     w21, #4, lsl #12
  100142974  csel    x11, x11, x12, lo
  100142978  cmp     w21, #0x80
  10014297c  csel    x10, x10, x11, lo                        ; t1 = (w21 <u 128 ? 1 : (w21 <u 0x4000 ? 2 : (w21 <u 0x200000 ? 3 : ((w21 >>> 28) != 0 ? 4 + 1 : 4))))
  100142980  cmp     w21, #0
  100142984  csel    x9, x9, x10, lt
  100142988  add     x8, x8, x9
  10014298c  b       loc_1001429c4
loc_100142990:
  100142990  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100142994  madd    x8, x22, x24, x8
  100142998  b       loc_1001429c4
loc_10014299c:
  10014299c  cmp     w8, #0x200, lsl #12
  1001429a0  b.hs    loc_1001429ac                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  1001429a4  mov     x8, #7
  1001429a8  b       loc_1001429bc
loc_1001429ac:
  1001429ac  lsr     w8, w8, #0x1c
  1001429b0  cmp     w8, #0
  1001429b4  mov     x8, #8
  1001429b8  cinc    x8, x8, ne
loc_1001429bc:
  1001429bc  ldr     x9, [x19, #8]                            ; x9 = a1[+0x8]
  1001429c0  add     x8, x9, x8
loc_1001429c4:
  1001429c4  str     x8, [x19, #8]                            ; a1[+0x8] = x8
loc_1001429c8:
  1001429c8  mov     w0, #1
  1001429cc  ldp     x24, x23, [sp], #0x10
  1001429d0  ldp     x22, x21, [sp], #0x10
  1001429d4  ldp     x20, x19, [sp], #0x10
  1001429d8  ldp     x29, x30, [sp], #0x10
  1001429dc  ret

; ======================================================================
; sub_1001429e0
; address 0x1001429e0  size 540  kind sub
; ======================================================================
  1001429e0  stp     x29, x30, [sp, #-0x10]!
  1001429e4  mov     x29, sp
  1001429e8  stp     x20, x19, [sp, #-0x10]!
  1001429ec  stp     x22, x21, [sp, #-0x10]!
  1001429f0  stp     x24, x23, [sp, #-0x10]!
  1001429f4  mov     x19, x1
  1001429f8  mov     x20, x0
  1001429fc  adrp    x8, #0x10041c000
  100142a00  nop
  100142a04  ldr     x1, [x8, #0x770]
  100142a08  bl      _objc_msgSend                            ; [a0 isRepeated]
  100142a0c  mov     x8, x0
  100142a10  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100142a14  cbz     w8, loc_100142a68                        ; if ([a0 isRepeated] == 0)
  100142a18  mov     x1, x20
  100142a1c  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  100142a20  mov     x21, x0
  100142a24  adrp    x8, #0x100420000
  100142a28  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100142a2c  ldr     x24, [x21, x8]                           ; x24 = sub_10013cd1c(a1[+0x0], a0)->_count
  100142a30  cbz     x24, loc_100142acc                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100142a34  mov     x22, #0
  100142a38  adrp    x8, #0x10041c000
  100142a3c  add     x8, x8, #0x7b8                           ; &@selector(int32AtIndex:)
  100142a40  ldr     x23, [x8]
loc_100142a44:
  100142a44  mov     x0, x21
  100142a48  mov     x1, x23
  100142a4c  mov     x2, x22
  100142a50  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) int32AtIndex:x2]
  100142a54  add     x22, x22, #1
  100142a58  cmp     x24, x22
  100142a5c  b.ne    loc_100142a44                            ; if (sub_10013cd1c(a1[+0x0], a0)->_count != (x22 + 1))
  100142a60  lsl     x21, x24, #2
  100142a64  b       loc_100142ad0
loc_100142a68:
  100142a68  adrp    x8, #0x100420000
  100142a6c  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100142a70  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  100142a74  cbz     x8, loc_100142be4                        ; if (a1[+0x0]->messageStorage_ == 0)
  100142a78  adrp    x21, #0x100420000
  100142a7c  ldrsw   x9, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142a80  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  100142a84  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100142a88  and     w10, w9, #0x1f
  100142a8c  mov     w11, #1
  100142a90  lsl     w10, w11, w10
  100142a94  lsr     w9, w9, #5
  100142a98  ldr     w8, [x8, w9, uxtw #2]
  100142a9c  and     w8, w8, w10
  100142aa0  cbz     w8, loc_100142be4                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100142aa4  mov     x1, x20
  100142aa8  bl      sub_10013def4                            ; sub_10013def4(a1[+0x0], a0)
  100142aac  ldrsw   x8, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142ab0  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100142ab4  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100142ab8  lsl     w8, w8, #3
  100142abc  cmp     w8, #0x80
  100142ac0  b.hs    loc_100142b20                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100142ac4  mov     x8, #5
  100142ac8  b       loc_100142bd8
loc_100142acc:
  100142acc  mov     x21, #0
loc_100142ad0:
  100142ad0  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100142ad4  add     x8, x8, x21
  100142ad8  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x21)
  100142adc  adrp    x8, #0x100420000
  100142ae0  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142ae4  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100142ae8  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100142aec  lsl     w8, w8, #3
  100142af0  cmp     w8, #0x80
  100142af4  b.hs    loc_100142b00                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100142af8  mov     x22, #1
  100142afc  b       loc_100142b40
loc_100142b00:
  100142b00  cmp     w8, #4, lsl #12
  100142b04  b.hs    loc_100142b10                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  100142b08  mov     x22, #2
  100142b0c  b       loc_100142b40
loc_100142b10:
  100142b10  cmp     w8, #0x200, lsl #12
  100142b14  b.hs    loc_100142b30                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100142b18  mov     x22, #3
  100142b1c  b       loc_100142b40
loc_100142b20:
  100142b20  cmp     w8, #4, lsl #12
  100142b24  b.hs    loc_100142bb8                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  100142b28  mov     x8, #6
  100142b2c  b       loc_100142bd8
loc_100142b30:
  100142b30  lsr     w8, w8, #0x1c
  100142b34  cmp     w8, #0
  100142b38  mov     x8, #4
  100142b3c  cinc    x22, x8, ne
loc_100142b40:
  100142b40  adrp    x8, #0x10041c000
  100142b44  nop
  100142b48  ldr     x1, [x8, #0xa20]
  100142b4c  mov     x0, x20
  100142b50  bl      _objc_msgSend                            ; [a0 isPackable]
  100142b54  cbz     w0, loc_100142bac                        ; if ([a0 isPackable] == 0)
  100142b58  cbz     x24, loc_100142be4                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100142b5c  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100142b60  add     x8, x8, x22
  100142b64  mov     x9, #0xa
  100142b68  mov     x10, #1
  100142b6c  mov     x11, #2
  100142b70  mov     x12, #3
  100142b74  lsr     w13, w21, #0x1c
  100142b78  cmp     w13, #0
  100142b7c  mov     x13, #4
  100142b80  cinc    x13, x13, ne
  100142b84  cmp     w21, #0x200, lsl #12
  100142b88  csel    x12, x12, x13, lo
  100142b8c  cmp     w21, #4, lsl #12
  100142b90  csel    x11, x11, x12, lo
  100142b94  cmp     w21, #0x80
  100142b98  csel    x10, x10, x11, lo                        ; t1 = (w21 <u 128 ? 1 : (w21 <u 0x4000 ? 2 : (w21 <u 0x200000 ? 3 : ((w21 >>> 28) != 0 ? 4 + 1 : 4))))
  100142b9c  cmp     w21, #0
  100142ba0  csel    x9, x9, x10, lt
  100142ba4  add     x8, x8, x9
  100142ba8  b       loc_100142be0
loc_100142bac:
  100142bac  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100142bb0  madd    x8, x22, x24, x8
  100142bb4  b       loc_100142be0
loc_100142bb8:
  100142bb8  cmp     w8, #0x200, lsl #12
  100142bbc  b.hs    loc_100142bc8                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100142bc0  mov     x8, #7
  100142bc4  b       loc_100142bd8
loc_100142bc8:
  100142bc8  lsr     w8, w8, #0x1c
  100142bcc  cmp     w8, #0
  100142bd0  mov     x8, #8
  100142bd4  cinc    x8, x8, ne
loc_100142bd8:
  100142bd8  ldr     x9, [x19, #8]                            ; x9 = a1[+0x8]
  100142bdc  add     x8, x9, x8
loc_100142be0:
  100142be0  str     x8, [x19, #8]                            ; a1[+0x8] = x8
loc_100142be4:
  100142be4  mov     w0, #1
  100142be8  ldp     x24, x23, [sp], #0x10
  100142bec  ldp     x22, x21, [sp], #0x10
  100142bf0  ldp     x20, x19, [sp], #0x10
  100142bf4  ldp     x29, x30, [sp], #0x10
  100142bf8  ret

; ======================================================================
; sub_100142bfc
; address 0x100142bfc  size 540  kind sub
; ======================================================================
  100142bfc  stp     x29, x30, [sp, #-0x10]!
  100142c00  mov     x29, sp
  100142c04  stp     x20, x19, [sp, #-0x10]!
  100142c08  stp     x22, x21, [sp, #-0x10]!
  100142c0c  stp     x24, x23, [sp, #-0x10]!
  100142c10  mov     x19, x1
  100142c14  mov     x20, x0
  100142c18  adrp    x8, #0x10041c000
  100142c1c  nop
  100142c20  ldr     x1, [x8, #0x770]
  100142c24  bl      _objc_msgSend                            ; [a0 isRepeated]
  100142c28  mov     x8, x0
  100142c2c  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100142c30  cbz     w8, loc_100142c84                        ; if ([a0 isRepeated] == 0)
  100142c34  mov     x1, x20
  100142c38  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  100142c3c  mov     x21, x0
  100142c40  adrp    x8, #0x100420000
  100142c44  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100142c48  ldr     x24, [x21, x8]                           ; x24 = sub_10013cd1c(a1[+0x0], a0)->_count
  100142c4c  cbz     x24, loc_100142ce8                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100142c50  mov     x22, #0
  100142c54  adrp    x8, #0x10041c000
  100142c58  add     x8, x8, #0x7d8                           ; &@selector(floatAtIndex:)
  100142c5c  ldr     x23, [x8]
loc_100142c60:
  100142c60  mov     x0, x21
  100142c64  mov     x1, x23
  100142c68  mov     x2, x22
  100142c6c  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) floatAtIndex:x2]
  100142c70  add     x22, x22, #1
  100142c74  cmp     x24, x22
  100142c78  b.ne    loc_100142c60                            ; if (sub_10013cd1c(a1[+0x0], a0)->_count != (x22 + 1))
  100142c7c  lsl     x21, x24, #2
  100142c80  b       loc_100142cec
loc_100142c84:
  100142c84  adrp    x8, #0x100420000
  100142c88  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100142c8c  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  100142c90  cbz     x8, loc_100142e00                        ; if (a1[+0x0]->messageStorage_ == 0)
  100142c94  adrp    x21, #0x100420000
  100142c98  ldrsw   x9, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142c9c  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  100142ca0  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100142ca4  and     w10, w9, #0x1f
  100142ca8  mov     w11, #1
  100142cac  lsl     w10, w11, w10
  100142cb0  lsr     w9, w9, #5
  100142cb4  ldr     w8, [x8, w9, uxtw #2]
  100142cb8  and     w8, w8, w10
  100142cbc  cbz     w8, loc_100142e00                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100142cc0  mov     x1, x20
  100142cc4  bl      sub_10013ddd4                            ; sub_10013ddd4(a1[+0x0], a0)
  100142cc8  ldrsw   x8, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142ccc  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100142cd0  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100142cd4  lsl     w8, w8, #3
  100142cd8  cmp     w8, #0x80
  100142cdc  b.hs    loc_100142d3c                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100142ce0  mov     x8, #5
  100142ce4  b       loc_100142df4
loc_100142ce8:
  100142ce8  mov     x21, #0
loc_100142cec:
  100142cec  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100142cf0  add     x8, x8, x21
  100142cf4  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x21)
  100142cf8  adrp    x8, #0x100420000
  100142cfc  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142d00  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100142d04  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100142d08  lsl     w8, w8, #3
  100142d0c  cmp     w8, #0x80
  100142d10  b.hs    loc_100142d1c                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100142d14  mov     x22, #1
  100142d18  b       loc_100142d5c
loc_100142d1c:
  100142d1c  cmp     w8, #4, lsl #12
  100142d20  b.hs    loc_100142d2c                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  100142d24  mov     x22, #2
  100142d28  b       loc_100142d5c
loc_100142d2c:
  100142d2c  cmp     w8, #0x200, lsl #12
  100142d30  b.hs    loc_100142d4c                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100142d34  mov     x22, #3
  100142d38  b       loc_100142d5c
loc_100142d3c:
  100142d3c  cmp     w8, #4, lsl #12
  100142d40  b.hs    loc_100142dd4                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  100142d44  mov     x8, #6
  100142d48  b       loc_100142df4
loc_100142d4c:
  100142d4c  lsr     w8, w8, #0x1c
  100142d50  cmp     w8, #0
  100142d54  mov     x8, #4
  100142d58  cinc    x22, x8, ne
loc_100142d5c:
  100142d5c  adrp    x8, #0x10041c000
  100142d60  nop
  100142d64  ldr     x1, [x8, #0xa20]
  100142d68  mov     x0, x20
  100142d6c  bl      _objc_msgSend                            ; [a0 isPackable]
  100142d70  cbz     w0, loc_100142dc8                        ; if ([a0 isPackable] == 0)
  100142d74  cbz     x24, loc_100142e00                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100142d78  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100142d7c  add     x8, x8, x22
  100142d80  mov     x9, #0xa
  100142d84  mov     x10, #1
  100142d88  mov     x11, #2
  100142d8c  mov     x12, #3
  100142d90  lsr     w13, w21, #0x1c
  100142d94  cmp     w13, #0
  100142d98  mov     x13, #4
  100142d9c  cinc    x13, x13, ne
  100142da0  cmp     w21, #0x200, lsl #12
  100142da4  csel    x12, x12, x13, lo
  100142da8  cmp     w21, #4, lsl #12
  100142dac  csel    x11, x11, x12, lo
  100142db0  cmp     w21, #0x80
  100142db4  csel    x10, x10, x11, lo                        ; t1 = (w21 <u 128 ? 1 : (w21 <u 0x4000 ? 2 : (w21 <u 0x200000 ? 3 : ((w21 >>> 28) != 0 ? 4 + 1 : 4))))
  100142db8  cmp     w21, #0
  100142dbc  csel    x9, x9, x10, lt
  100142dc0  add     x8, x8, x9
  100142dc4  b       loc_100142dfc
loc_100142dc8:
  100142dc8  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100142dcc  madd    x8, x22, x24, x8
  100142dd0  b       loc_100142dfc
loc_100142dd4:
  100142dd4  cmp     w8, #0x200, lsl #12
  100142dd8  b.hs    loc_100142de4                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100142ddc  mov     x8, #7
  100142de0  b       loc_100142df4
loc_100142de4:
  100142de4  lsr     w8, w8, #0x1c
  100142de8  cmp     w8, #0
  100142dec  mov     x8, #8
  100142df0  cinc    x8, x8, ne
loc_100142df4:
  100142df4  ldr     x9, [x19, #8]                            ; x9 = a1[+0x8]
  100142df8  add     x8, x9, x8
loc_100142dfc:
  100142dfc  str     x8, [x19, #8]                            ; a1[+0x8] = x8
loc_100142e00:
  100142e00  mov     w0, #1
  100142e04  ldp     x24, x23, [sp], #0x10
  100142e08  ldp     x22, x21, [sp], #0x10
  100142e0c  ldp     x20, x19, [sp], #0x10
  100142e10  ldp     x29, x30, [sp], #0x10
  100142e14  ret

; ======================================================================
; sub_100142e18
; address 0x100142e18  size 540  kind sub
; ======================================================================
  100142e18  stp     x29, x30, [sp, #-0x10]!
  100142e1c  mov     x29, sp
  100142e20  stp     x20, x19, [sp, #-0x10]!
  100142e24  stp     x22, x21, [sp, #-0x10]!
  100142e28  stp     x24, x23, [sp, #-0x10]!
  100142e2c  mov     x19, x1
  100142e30  mov     x20, x0
  100142e34  adrp    x8, #0x10041c000
  100142e38  nop
  100142e3c  ldr     x1, [x8, #0x770]
  100142e40  bl      _objc_msgSend                            ; [a0 isRepeated]
  100142e44  mov     x8, x0
  100142e48  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100142e4c  cbz     w8, loc_100142ea0                        ; if ([a0 isRepeated] == 0)
  100142e50  mov     x1, x20
  100142e54  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  100142e58  mov     x21, x0
  100142e5c  adrp    x8, #0x100420000
  100142e60  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100142e64  ldr     x24, [x21, x8]                           ; x24 = sub_10013cd1c(a1[+0x0], a0)->_count
  100142e68  cbz     x24, loc_100142f04                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100142e6c  mov     x22, #0
  100142e70  adrp    x8, #0x10041c000
  100142e74  add     x8, x8, #0x7d0                           ; &@selector(uint64AtIndex:)
  100142e78  ldr     x23, [x8]
loc_100142e7c:
  100142e7c  mov     x0, x21
  100142e80  mov     x1, x23
  100142e84  mov     x2, x22
  100142e88  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) uint64AtIndex:x2]
  100142e8c  add     x22, x22, #1
  100142e90  cmp     x24, x22
  100142e94  b.ne    loc_100142e7c                            ; if (sub_10013cd1c(a1[+0x0], a0)->_count != (x22 + 1))
  100142e98  lsl     x21, x24, #3
  100142e9c  b       loc_100142f08
loc_100142ea0:
  100142ea0  adrp    x8, #0x100420000
  100142ea4  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100142ea8  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  100142eac  cbz     x8, loc_10014301c                        ; if (a1[+0x0]->messageStorage_ == 0)
  100142eb0  adrp    x21, #0x100420000
  100142eb4  ldrsw   x9, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142eb8  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  100142ebc  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100142ec0  and     w10, w9, #0x1f
  100142ec4  mov     w11, #1
  100142ec8  lsl     w10, w11, w10
  100142ecc  lsr     w9, w9, #5
  100142ed0  ldr     w8, [x8, w9, uxtw #2]
  100142ed4  and     w8, w8, w10
  100142ed8  cbz     w8, loc_10014301c                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100142edc  mov     x1, x20
  100142ee0  bl      sub_10013e09c                            ; sub_10013e09c(a1[+0x0], a0)
  100142ee4  ldrsw   x8, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142ee8  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100142eec  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100142ef0  lsl     w8, w8, #3
  100142ef4  cmp     w8, #0x80
  100142ef8  b.hs    loc_100142f58                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100142efc  mov     x8, #9
  100142f00  b       loc_100143010
loc_100142f04:
  100142f04  mov     x21, #0
loc_100142f08:
  100142f08  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100142f0c  add     x8, x8, x21
  100142f10  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x21)
  100142f14  adrp    x8, #0x100420000
  100142f18  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100142f1c  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100142f20  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100142f24  lsl     w8, w8, #3
  100142f28  cmp     w8, #0x80
  100142f2c  b.hs    loc_100142f38                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100142f30  mov     x22, #1
  100142f34  b       loc_100142f78
loc_100142f38:
  100142f38  cmp     w8, #4, lsl #12
  100142f3c  b.hs    loc_100142f48                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  100142f40  mov     x22, #2
  100142f44  b       loc_100142f78
loc_100142f48:
  100142f48  cmp     w8, #0x200, lsl #12
  100142f4c  b.hs    loc_100142f68                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100142f50  mov     x22, #3
  100142f54  b       loc_100142f78
loc_100142f58:
  100142f58  cmp     w8, #4, lsl #12
  100142f5c  b.hs    loc_100142ff0                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  100142f60  mov     x8, #0xa
  100142f64  b       loc_100143010
loc_100142f68:
  100142f68  lsr     w8, w8, #0x1c
  100142f6c  cmp     w8, #0
  100142f70  mov     x8, #4
  100142f74  cinc    x22, x8, ne
loc_100142f78:
  100142f78  adrp    x8, #0x10041c000
  100142f7c  nop
  100142f80  ldr     x1, [x8, #0xa20]
  100142f84  mov     x0, x20
  100142f88  bl      _objc_msgSend                            ; [a0 isPackable]
  100142f8c  cbz     w0, loc_100142fe4                        ; if ([a0 isPackable] == 0)
  100142f90  cbz     x24, loc_10014301c                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100142f94  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100142f98  add     x8, x8, x22
  100142f9c  mov     x9, #0xa
  100142fa0  mov     x10, #1
  100142fa4  mov     x11, #2
  100142fa8  mov     x12, #3
  100142fac  lsr     w13, w21, #0x1c
  100142fb0  cmp     w13, #0
  100142fb4  mov     x13, #4
  100142fb8  cinc    x13, x13, ne
  100142fbc  cmp     w21, #0x200, lsl #12
  100142fc0  csel    x12, x12, x13, lo
  100142fc4  cmp     w21, #4, lsl #12
  100142fc8  csel    x11, x11, x12, lo
  100142fcc  cmp     w21, #0x80
  100142fd0  csel    x10, x10, x11, lo                        ; t1 = (w21 <u 128 ? 1 : (w21 <u 0x4000 ? 2 : (w21 <u 0x200000 ? 3 : ((w21 >>> 28) != 0 ? 4 + 1 : 4))))
  100142fd4  cmp     w21, #0
  100142fd8  csel    x9, x9, x10, lt
  100142fdc  add     x8, x8, x9
  100142fe0  b       loc_100143018
loc_100142fe4:
  100142fe4  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100142fe8  madd    x8, x22, x24, x8
  100142fec  b       loc_100143018
loc_100142ff0:
  100142ff0  cmp     w8, #0x200, lsl #12
  100142ff4  b.hs    loc_100143000                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100142ff8  mov     x8, #0xb
  100142ffc  b       loc_100143010
loc_100143000:
  100143000  lsr     w8, w8, #0x1c
  100143004  cmp     w8, #0
  100143008  mov     x8, #0xc
  10014300c  cinc    x8, x8, ne
loc_100143010:
  100143010  ldr     x9, [x19, #8]                            ; x9 = a1[+0x8]
  100143014  add     x8, x9, x8
loc_100143018:
  100143018  str     x8, [x19, #8]                            ; a1[+0x8] = x8
loc_10014301c:
  10014301c  mov     w0, #1
  100143020  ldp     x24, x23, [sp], #0x10
  100143024  ldp     x22, x21, [sp], #0x10
  100143028  ldp     x20, x19, [sp], #0x10
  10014302c  ldp     x29, x30, [sp], #0x10
  100143030  ret

; ======================================================================
; sub_100143034
; address 0x100143034  size 540  kind sub
; ======================================================================
  100143034  stp     x29, x30, [sp, #-0x10]!
  100143038  mov     x29, sp
  10014303c  stp     x20, x19, [sp, #-0x10]!
  100143040  stp     x22, x21, [sp, #-0x10]!
  100143044  stp     x24, x23, [sp, #-0x10]!
  100143048  mov     x19, x1
  10014304c  mov     x20, x0
  100143050  adrp    x8, #0x10041c000
  100143054  nop
  100143058  ldr     x1, [x8, #0x770]
  10014305c  bl      _objc_msgSend                            ; [a0 isRepeated]
  100143060  mov     x8, x0
  100143064  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100143068  cbz     w8, loc_1001430bc                        ; if ([a0 isRepeated] == 0)
  10014306c  mov     x1, x20
  100143070  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  100143074  mov     x21, x0
  100143078  adrp    x8, #0x100420000
  10014307c  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100143080  ldr     x24, [x21, x8]                           ; x24 = sub_10013cd1c(a1[+0x0], a0)->_count
  100143084  cbz     x24, loc_100143120                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100143088  mov     x22, #0
  10014308c  adrp    x8, #0x10041c000
  100143090  add     x8, x8, #0x7c8                           ; &@selector(int64AtIndex:)
  100143094  ldr     x23, [x8]
loc_100143098:
  100143098  mov     x0, x21
  10014309c  mov     x1, x23
  1001430a0  mov     x2, x22
  1001430a4  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) int64AtIndex:x2]
  1001430a8  add     x22, x22, #1
  1001430ac  cmp     x24, x22
  1001430b0  b.ne    loc_100143098                            ; if (sub_10013cd1c(a1[+0x0], a0)->_count != (x22 + 1))
  1001430b4  lsl     x21, x24, #3
  1001430b8  b       loc_100143124
loc_1001430bc:
  1001430bc  adrp    x8, #0x100420000
  1001430c0  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  1001430c4  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  1001430c8  cbz     x8, loc_100143238                        ; if (a1[+0x0]->messageStorage_ == 0)
  1001430cc  adrp    x21, #0x100420000
  1001430d0  ldrsw   x9, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001430d4  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  1001430d8  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  1001430dc  and     w10, w9, #0x1f
  1001430e0  mov     w11, #1
  1001430e4  lsl     w10, w11, w10
  1001430e8  lsr     w9, w9, #5
  1001430ec  ldr     w8, [x8, w9, uxtw #2]
  1001430f0  and     w8, w8, w10
  1001430f4  cbz     w8, loc_100143238                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  1001430f8  mov     x1, x20
  1001430fc  bl      sub_10013df80                            ; sub_10013df80(a1[+0x0], a0)
  100143100  ldrsw   x8, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143104  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100143108  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  10014310c  lsl     w8, w8, #3
  100143110  cmp     w8, #0x80
  100143114  b.hs    loc_100143174                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100143118  mov     x8, #9
  10014311c  b       loc_10014322c
loc_100143120:
  100143120  mov     x21, #0
loc_100143124:
  100143124  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143128  add     x8, x8, x21
  10014312c  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x21)
  100143130  adrp    x8, #0x100420000
  100143134  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143138  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  10014313c  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100143140  lsl     w8, w8, #3
  100143144  cmp     w8, #0x80
  100143148  b.hs    loc_100143154                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  10014314c  mov     x22, #1
  100143150  b       loc_100143194
loc_100143154:
  100143154  cmp     w8, #4, lsl #12
  100143158  b.hs    loc_100143164                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  10014315c  mov     x22, #2
  100143160  b       loc_100143194
loc_100143164:
  100143164  cmp     w8, #0x200, lsl #12
  100143168  b.hs    loc_100143184                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  10014316c  mov     x22, #3
  100143170  b       loc_100143194
loc_100143174:
  100143174  cmp     w8, #4, lsl #12
  100143178  b.hs    loc_10014320c                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  10014317c  mov     x8, #0xa
  100143180  b       loc_10014322c
loc_100143184:
  100143184  lsr     w8, w8, #0x1c
  100143188  cmp     w8, #0
  10014318c  mov     x8, #4
  100143190  cinc    x22, x8, ne
loc_100143194:
  100143194  adrp    x8, #0x10041c000
  100143198  nop
  10014319c  ldr     x1, [x8, #0xa20]
  1001431a0  mov     x0, x20
  1001431a4  bl      _objc_msgSend                            ; [a0 isPackable]
  1001431a8  cbz     w0, loc_100143200                        ; if ([a0 isPackable] == 0)
  1001431ac  cbz     x24, loc_100143238                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  1001431b0  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  1001431b4  add     x8, x8, x22
  1001431b8  mov     x9, #0xa
  1001431bc  mov     x10, #1
  1001431c0  mov     x11, #2
  1001431c4  mov     x12, #3
  1001431c8  lsr     w13, w21, #0x1c
  1001431cc  cmp     w13, #0
  1001431d0  mov     x13, #4
  1001431d4  cinc    x13, x13, ne
  1001431d8  cmp     w21, #0x200, lsl #12
  1001431dc  csel    x12, x12, x13, lo
  1001431e0  cmp     w21, #4, lsl #12
  1001431e4  csel    x11, x11, x12, lo
  1001431e8  cmp     w21, #0x80
  1001431ec  csel    x10, x10, x11, lo                        ; t1 = (w21 <u 128 ? 1 : (w21 <u 0x4000 ? 2 : (w21 <u 0x200000 ? 3 : ((w21 >>> 28) != 0 ? 4 + 1 : 4))))
  1001431f0  cmp     w21, #0
  1001431f4  csel    x9, x9, x10, lt
  1001431f8  add     x8, x8, x9
  1001431fc  b       loc_100143234
loc_100143200:
  100143200  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143204  madd    x8, x22, x24, x8
  100143208  b       loc_100143234
loc_10014320c:
  10014320c  cmp     w8, #0x200, lsl #12
  100143210  b.hs    loc_10014321c                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100143214  mov     x8, #0xb
  100143218  b       loc_10014322c
loc_10014321c:
  10014321c  lsr     w8, w8, #0x1c
  100143220  cmp     w8, #0
  100143224  mov     x8, #0xc
  100143228  cinc    x8, x8, ne
loc_10014322c:
  10014322c  ldr     x9, [x19, #8]                            ; x9 = a1[+0x8]
  100143230  add     x8, x9, x8
loc_100143234:
  100143234  str     x8, [x19, #8]                            ; a1[+0x8] = x8
loc_100143238:
  100143238  mov     w0, #1
  10014323c  ldp     x24, x23, [sp], #0x10
  100143240  ldp     x22, x21, [sp], #0x10
  100143244  ldp     x20, x19, [sp], #0x10
  100143248  ldp     x29, x30, [sp], #0x10
  10014324c  ret

; ======================================================================
; sub_100143250
; address 0x100143250  size 540  kind sub
; ======================================================================
  100143250  stp     x29, x30, [sp, #-0x10]!
  100143254  mov     x29, sp
  100143258  stp     x20, x19, [sp, #-0x10]!
  10014325c  stp     x22, x21, [sp, #-0x10]!
  100143260  stp     x24, x23, [sp, #-0x10]!
  100143264  mov     x19, x1
  100143268  mov     x20, x0
  10014326c  adrp    x8, #0x10041c000
  100143270  nop
  100143274  ldr     x1, [x8, #0x770]
  100143278  bl      _objc_msgSend                            ; [a0 isRepeated]
  10014327c  mov     x8, x0
  100143280  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100143284  cbz     w8, loc_1001432d8                        ; if ([a0 isRepeated] == 0)
  100143288  mov     x1, x20
  10014328c  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  100143290  mov     x21, x0
  100143294  adrp    x8, #0x100420000
  100143298  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10014329c  ldr     x24, [x21, x8]                           ; x24 = sub_10013cd1c(a1[+0x0], a0)->_count
  1001432a0  cbz     x24, loc_10014333c                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  1001432a4  mov     x22, #0
  1001432a8  adrp    x8, #0x10041c000
  1001432ac  add     x8, x8, #0x7e0                           ; &@selector(doubleAtIndex:)
  1001432b0  ldr     x23, [x8]
loc_1001432b4:
  1001432b4  mov     x0, x21
  1001432b8  mov     x1, x23
  1001432bc  mov     x2, x22
  1001432c0  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) doubleAtIndex:x2]
  1001432c4  add     x22, x22, #1
  1001432c8  cmp     x24, x22
  1001432cc  b.ne    loc_1001432b4                            ; if (sub_10013cd1c(a1[+0x0], a0)->_count != (x22 + 1))
  1001432d0  lsl     x21, x24, #3
  1001432d4  b       loc_100143340
loc_1001432d8:
  1001432d8  adrp    x8, #0x100420000
  1001432dc  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  1001432e0  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  1001432e4  cbz     x8, loc_100143454                        ; if (a1[+0x0]->messageStorage_ == 0)
  1001432e8  adrp    x21, #0x100420000
  1001432ec  ldrsw   x9, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001432f0  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  1001432f4  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  1001432f8  and     w10, w9, #0x1f
  1001432fc  mov     w11, #1
  100143300  lsl     w10, w11, w10
  100143304  lsr     w9, w9, #5
  100143308  ldr     w8, [x8, w9, uxtw #2]
  10014330c  and     w8, w8, w10
  100143310  cbz     w8, loc_100143454                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100143314  mov     x1, x20
  100143318  bl      sub_10013de64                            ; sub_10013de64(a1[+0x0], a0)
  10014331c  ldrsw   x8, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143320  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100143324  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100143328  lsl     w8, w8, #3
  10014332c  cmp     w8, #0x80
  100143330  b.hs    loc_100143390                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100143334  mov     x8, #9
  100143338  b       loc_100143448
loc_10014333c:
  10014333c  mov     x21, #0
loc_100143340:
  100143340  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143344  add     x8, x8, x21
  100143348  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x21)
  10014334c  adrp    x8, #0x100420000
  100143350  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143354  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100143358  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  10014335c  lsl     w8, w8, #3
  100143360  cmp     w8, #0x80
  100143364  b.hs    loc_100143370                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100143368  mov     x22, #1
  10014336c  b       loc_1001433b0
loc_100143370:
  100143370  cmp     w8, #4, lsl #12
  100143374  b.hs    loc_100143380                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  100143378  mov     x22, #2
  10014337c  b       loc_1001433b0
loc_100143380:
  100143380  cmp     w8, #0x200, lsl #12
  100143384  b.hs    loc_1001433a0                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100143388  mov     x22, #3
  10014338c  b       loc_1001433b0
loc_100143390:
  100143390  cmp     w8, #4, lsl #12
  100143394  b.hs    loc_100143428                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  100143398  mov     x8, #0xa
  10014339c  b       loc_100143448
loc_1001433a0:
  1001433a0  lsr     w8, w8, #0x1c
  1001433a4  cmp     w8, #0
  1001433a8  mov     x8, #4
  1001433ac  cinc    x22, x8, ne
loc_1001433b0:
  1001433b0  adrp    x8, #0x10041c000
  1001433b4  nop
  1001433b8  ldr     x1, [x8, #0xa20]
  1001433bc  mov     x0, x20
  1001433c0  bl      _objc_msgSend                            ; [a0 isPackable]
  1001433c4  cbz     w0, loc_10014341c                        ; if ([a0 isPackable] == 0)
  1001433c8  cbz     x24, loc_100143454                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  1001433cc  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  1001433d0  add     x8, x8, x22
  1001433d4  mov     x9, #0xa
  1001433d8  mov     x10, #1
  1001433dc  mov     x11, #2
  1001433e0  mov     x12, #3
  1001433e4  lsr     w13, w21, #0x1c
  1001433e8  cmp     w13, #0
  1001433ec  mov     x13, #4
  1001433f0  cinc    x13, x13, ne
  1001433f4  cmp     w21, #0x200, lsl #12
  1001433f8  csel    x12, x12, x13, lo
  1001433fc  cmp     w21, #4, lsl #12
  100143400  csel    x11, x11, x12, lo
  100143404  cmp     w21, #0x80
  100143408  csel    x10, x10, x11, lo                        ; t1 = (w21 <u 128 ? 1 : (w21 <u 0x4000 ? 2 : (w21 <u 0x200000 ? 3 : ((w21 >>> 28) != 0 ? 4 + 1 : 4))))
  10014340c  cmp     w21, #0
  100143410  csel    x9, x9, x10, lt
  100143414  add     x8, x8, x9
  100143418  b       loc_100143450
loc_10014341c:
  10014341c  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143420  madd    x8, x22, x24, x8
  100143424  b       loc_100143450
loc_100143428:
  100143428  cmp     w8, #0x200, lsl #12
  10014342c  b.hs    loc_100143438                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100143430  mov     x8, #0xb
  100143434  b       loc_100143448
loc_100143438:
  100143438  lsr     w8, w8, #0x1c
  10014343c  cmp     w8, #0
  100143440  mov     x8, #0xc
  100143444  cinc    x8, x8, ne
loc_100143448:
  100143448  ldr     x9, [x19, #8]                            ; x9 = a1[+0x8]
  10014344c  add     x8, x9, x8
loc_100143450:
  100143450  str     x8, [x19, #8]                            ; a1[+0x8] = x8
loc_100143454:
  100143454  mov     w0, #1
  100143458  ldp     x24, x23, [sp], #0x10
  10014345c  ldp     x22, x21, [sp], #0x10
  100143460  ldp     x20, x19, [sp], #0x10
  100143464  ldp     x29, x30, [sp], #0x10
  100143468  ret

; ======================================================================
; sub_10014346c
; address 0x10014346c  size 580  kind sub
; ======================================================================
  10014346c  stp     x29, x30, [sp, #-0x10]!
  100143470  mov     x29, sp
  100143474  stp     x20, x19, [sp, #-0x10]!
  100143478  stp     x22, x21, [sp, #-0x10]!
  10014347c  stp     x24, x23, [sp, #-0x10]!
  100143480  stp     x26, x25, [sp, #-0x10]!
  100143484  stp     x28, x27, [sp, #-0x10]!
  100143488  sub     sp, sp, #0x10
  10014348c  mov     x20, x1
  100143490  mov     x21, x0
  100143494  adrp    x8, #0x10041c000
  100143498  nop
  10014349c  ldr     x1, [x8, #0x770]
  1001434a0  bl      _objc_msgSend                            ; [a0 isRepeated]
  1001434a4  mov     x8, x0
  1001434a8  ldr     x0, [x20]                                ; x0 = a1[+0x0]
  1001434ac  cbz     w8, loc_10014357c                        ; if ([a0 isRepeated] == 0)
  1001434b0  mov     x1, x21
  1001434b4  stp     x21, x20, [sp]
  1001434b8  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  1001434bc  mov     x21, x0
  1001434c0  adrp    x8, #0x100420000
  1001434c4  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001434c8  ldr     x25, [x21, x8]                           ; x25 = sub_10013cd1c(a1[+0x0], a0)->_count
  1001434cc  mov     x24, #0
  1001434d0  cbz     x25, loc_100143544                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  1001434d4  mov     x22, #0
  1001434d8  adrp    x8, #0x10041c000
  1001434dc  add     x8, x8, #0x7b8                           ; &@selector(int32AtIndex:)
  1001434e0  ldr     x23, [x8]
  1001434e4  mov     x26, #0xa
  1001434e8  mov     x27, #1
  1001434ec  mov     x28, #2
  1001434f0  mov     x19, #3
  1001434f4  mov     x20, #4
loc_1001434f8:
  1001434f8  mov     x0, x21
  1001434fc  mov     x1, x23
  100143500  mov     x2, x22
  100143504  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) int32AtIndex:x2]
  100143508  lsr     w8, w0, #0x1c
  10014350c  cmp     w8, #0
  100143510  cinc    x8, x20, ne
  100143514  cmp     w0, #0x200, lsl #12
  100143518  csel    x8, x19, x8, lo                          ; t1 = ([sub_10013cd1c(a1[+0x0], a0) int32AtIndex:x2] <u 0x200000 ? 3 : (([sub_10013cd1c(a1[+0x0], a0) int32AtIndex:x2] >>> 28) != 0 ? 4 + 1 : 4))
  10014351c  cmp     w0, #4, lsl #12
  100143520  csel    x8, x28, x8, lo
  100143524  cmp     w0, #0x80
  100143528  csel    x8, x27, x8, lo                          ; t2 = ([sub_10013cd1c(a1[+0x0], a0) int32AtIndex:x2] <u 128 ? 1 : ([sub_10013cd1c(a1[+0x0], a0) int32AtIndex:x2] <u 0x4000 ? 2 : t1))
  10014352c  cmp     w0, #0
  100143530  csel    x8, x26, x8, lt
  100143534  add     x24, x8, x24
  100143538  add     x22, x22, #1
  10014353c  cmp     x25, x22
  100143540  b.ne    loc_1001434f8                            ; if (sub_10013cd1c(a1[+0x0], a0)->_count != (x22 + 1))
loc_100143544:
  100143544  ldr     x19, [sp, #8]
  100143548  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  10014354c  add     x8, x8, x24
  100143550  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x24)
  100143554  adrp    x8, #0x100420000
  100143558  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10014355c  ldr     x0, [sp]
  100143560  ldr     x8, [x0, x8]                             ; x8 = a0->description_
  100143564  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100143568  lsl     w8, w8, #3
  10014356c  cmp     w8, #0x80
  100143570  b.hs    loc_1001435e4                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100143574  mov     x21, #1
  100143578  b       loc_100143614
loc_10014357c:
  10014357c  adrp    x8, #0x100420000
  100143580  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100143584  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  100143588  cbz     x8, loc_10014368c                        ; if (a1[+0x0]->messageStorage_ == 0)
  10014358c  adrp    x19, #0x100420000
  100143590  ldrsw   x9, [x19, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143594  ldr     x9, [x21, x9]                            ; x9 = a0->description_
  100143598  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  10014359c  and     w10, w9, #0x1f
  1001435a0  mov     w11, #1
  1001435a4  lsl     w10, w11, w10
  1001435a8  lsr     w9, w9, #5
  1001435ac  ldr     w8, [x8, w9, uxtw #2]
  1001435b0  and     w8, w8, w10
  1001435b4  cbz     w8, loc_10014368c                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  1001435b8  mov     x1, x21
  1001435bc  bl      sub_10013def4                            ; sub_10013def4(a1[+0x0], a0)
  1001435c0  mov     x1, x0
  1001435c4  ldrsw   x8, [x19, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001435c8  ldr     x8, [x21, x8]                            ; x8 = a0->description_
  1001435cc  ldr     w0, [x8, #8]                             ; w0 = a0->description_[+0x8]
  1001435d0  bl      sub_1001355a4                            ; sub_1001355a4(a0->description_[+0x8], sub_10013def4(a1[+0x0], a0))
  1001435d4  ldr     x8, [x20, #8]                            ; x8 = a1[+0x8]
  1001435d8  add     x8, x8, x0
  1001435dc  str     x8, [x20, #8]                            ; a1[+0x8] = (a1[+0x8] + sub_1001355a4(a0->description_[+0x8], sub_10013def4(a1[+0x0], a0)))
  1001435e0  b       loc_10014368c
loc_1001435e4:
  1001435e4  cmp     w8, #4, lsl #12
  1001435e8  b.hs    loc_1001435f4                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  1001435ec  mov     x21, #2
  1001435f0  b       loc_100143614
loc_1001435f4:
  1001435f4  cmp     w8, #0x200, lsl #12
  1001435f8  b.hs    loc_100143604                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  1001435fc  mov     x21, #3
  100143600  b       loc_100143614
loc_100143604:
  100143604  lsr     w8, w8, #0x1c
  100143608  cmp     w8, #0
  10014360c  mov     x8, #4
  100143610  cinc    x21, x8, ne
loc_100143614:
  100143614  adrp    x8, #0x10041c000
  100143618  nop
  10014361c  ldr     x1, [x8, #0xa20]
  100143620  bl      _objc_msgSend                            ; [a0 isPackable]
  100143624  cbz     w0, loc_100143680                        ; if ([a0 isPackable] == 0)
  100143628  cbz     x25, loc_10014368c                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  10014362c  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143630  add     x8, x8, x21
  100143634  mov     x9, #0xa
  100143638  mov     x10, #1
  10014363c  mov     x11, #2
  100143640  mov     x12, #3
  100143644  lsr     w13, w24, #0x1c
  100143648  cmp     w13, #0
  10014364c  mov     x13, #4
  100143650  cinc    x13, x13, ne
  100143654  cmp     w24, #0x200, lsl #12
  100143658  csel    x12, x12, x13, lo
  10014365c  cmp     w24, #4, lsl #12
  100143660  csel    x11, x11, x12, lo
  100143664  cmp     w24, #0x80
  100143668  csel    x10, x10, x11, lo                        ; t3 = (w24 <u 128 ? 1 : (w24 <u 0x4000 ? 2 : (w24 <u 0x200000 ? 3 : ((w24 >>> 28) != 0 ? 4 + 1 : 4))))
  10014366c  cmp     w24, #0
  100143670  csel    x9, x9, x10, lt
  100143674  add     x8, x8, x9
  100143678  str     x8, [x19, #8]                            ; a1[+0x8] = ((a1[+0x8] + x21) + (w24 < 0 ? 10 : t3))
  10014367c  b       loc_10014368c
loc_100143680:
  100143680  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143684  madd    x8, x21, x25, x8
  100143688  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x21 * sub_10013cd1c(a1[+0x0], a0)->_count)
loc_10014368c:
  10014368c  mov     w0, #1
  100143690  sub     sp, x29, #0x50
  100143694  ldp     x28, x27, [sp], #0x10
  100143698  ldp     x26, x25, [sp], #0x10
  10014369c  ldp     x24, x23, [sp], #0x10
  1001436a0  ldp     x22, x21, [sp], #0x10
  1001436a4  ldp     x20, x19, [sp], #0x10
  1001436a8  ldp     x29, x30, [sp], #0x10
  1001436ac  ret

; ======================================================================
; sub_1001436b0
; address 0x1001436b0  size 488  kind sub
; ======================================================================
  1001436b0  stp     x29, x30, [sp, #-0x10]!
  1001436b4  mov     x29, sp
  1001436b8  stp     x20, x19, [sp, #-0x10]!
  1001436bc  stp     x22, x21, [sp, #-0x10]!
  1001436c0  stp     x24, x23, [sp, #-0x10]!
  1001436c4  stp     x26, x25, [sp, #-0x10]!
  1001436c8  mov     x19, x1
  1001436cc  mov     x20, x0
  1001436d0  adrp    x8, #0x10041c000
  1001436d4  nop
  1001436d8  ldr     x1, [x8, #0x770]
  1001436dc  bl      _objc_msgSend                            ; [a0 isRepeated]
  1001436e0  mov     x8, x0
  1001436e4  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  1001436e8  cbz     w8, loc_100143770                        ; if ([a0 isRepeated] == 0)
  1001436ec  mov     x1, x20
  1001436f0  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  1001436f4  mov     x21, x0
  1001436f8  adrp    x8, #0x100420000
  1001436fc  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100143700  ldr     x25, [x21, x8]                           ; x25 = sub_10013cd1c(a1[+0x0], a0)->_count
  100143704  mov     x24, #0
  100143708  cbz     x25, loc_100143740                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  10014370c  mov     x22, #0
  100143710  adrp    x8, #0x10041c000
  100143714  add     x8, x8, #0x7c8                           ; &@selector(int64AtIndex:)
  100143718  ldr     x23, [x8]
loc_10014371c:
  10014371c  mov     x0, x21
  100143720  mov     x1, x23
  100143724  mov     x2, x22
  100143728  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) int64AtIndex:x2]
  10014372c  bl      sub_1001353e0                            ; sub_1001353e0([sub_10013cd1c(a1[+0x0], a0) int64AtIndex:x2])
  100143730  add     x24, x0, x24
  100143734  add     x22, x22, #1
  100143738  cmp     x25, x22
  10014373c  b.ne    loc_10014371c                            ; if (sub_10013cd1c(a1[+0x0], a0)->_count != (x22 + 1))
loc_100143740:
  100143740  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143744  add     x8, x8, x24
  100143748  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x24)
  10014374c  adrp    x8, #0x100420000
  100143750  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143754  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100143758  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  10014375c  lsl     w8, w8, #3
  100143760  cmp     w8, #0x80
  100143764  b.hs    loc_1001437d4                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100143768  mov     x21, #1
  10014376c  b       loc_100143804
loc_100143770:
  100143770  adrp    x8, #0x100420000
  100143774  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100143778  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  10014377c  cbz     x8, loc_10014387c                        ; if (a1[+0x0]->messageStorage_ == 0)
  100143780  adrp    x21, #0x100420000
  100143784  ldrsw   x9, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143788  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  10014378c  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100143790  and     w10, w9, #0x1f
  100143794  mov     w11, #1
  100143798  lsl     w10, w11, w10
  10014379c  lsr     w9, w9, #5
  1001437a0  ldr     w8, [x8, w9, uxtw #2]
  1001437a4  and     w8, w8, w10
  1001437a8  cbz     w8, loc_10014387c                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  1001437ac  mov     x1, x20
  1001437b0  bl      sub_10013df80                            ; sub_10013df80(a1[+0x0], a0)
  1001437b4  mov     x1, x0
  1001437b8  ldrsw   x8, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001437bc  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  1001437c0  ldr     w0, [x8, #8]                             ; w0 = a0->description_[+0x8]
  1001437c4  bl      sub_100135548                            ; sub_100135548(a0->description_[+0x8], sub_10013df80(a1[+0x0], a0))
  1001437c8  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  1001437cc  add     x8, x8, x0
  1001437d0  b       loc_100143878
loc_1001437d4:
  1001437d4  cmp     w8, #4, lsl #12
  1001437d8  b.hs    loc_1001437e4                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  1001437dc  mov     x21, #2
  1001437e0  b       loc_100143804
loc_1001437e4:
  1001437e4  cmp     w8, #0x200, lsl #12
  1001437e8  b.hs    loc_1001437f4                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  1001437ec  mov     x21, #3
  1001437f0  b       loc_100143804
loc_1001437f4:
  1001437f4  lsr     w8, w8, #0x1c
  1001437f8  cmp     w8, #0
  1001437fc  mov     x8, #4
  100143800  cinc    x21, x8, ne
loc_100143804:
  100143804  adrp    x8, #0x10041c000
  100143808  nop
  10014380c  ldr     x1, [x8, #0xa20]
  100143810  mov     x0, x20
  100143814  bl      _objc_msgSend                            ; [a0 isPackable]
  100143818  cbz     w0, loc_100143870                        ; if ([a0 isPackable] == 0)
  10014381c  cbz     x25, loc_10014387c                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100143820  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143824  add     x8, x8, x21
  100143828  mov     x9, #0xa
  10014382c  mov     x10, #1
  100143830  mov     x11, #2
  100143834  mov     x12, #3
  100143838  lsr     w13, w24, #0x1c
  10014383c  cmp     w13, #0
  100143840  mov     x13, #4
  100143844  cinc    x13, x13, ne
  100143848  cmp     w24, #0x200, lsl #12
  10014384c  csel    x12, x12, x13, lo
  100143850  cmp     w24, #4, lsl #12
  100143854  csel    x11, x11, x12, lo
  100143858  cmp     w24, #0x80
  10014385c  csel    x10, x10, x11, lo                        ; t1 = (w24 <u 128 ? 1 : (w24 <u 0x4000 ? 2 : (w24 <u 0x200000 ? 3 : ((w24 >>> 28) != 0 ? 4 + 1 : 4))))
  100143860  cmp     w24, #0
  100143864  csel    x9, x9, x10, lt
  100143868  add     x8, x8, x9
  10014386c  b       loc_100143878
loc_100143870:
  100143870  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143874  madd    x8, x21, x25, x8
loc_100143878:
  100143878  str     x8, [x19, #8]                            ; a1[+0x8] = x8
loc_10014387c:
  10014387c  mov     w0, #1
  100143880  ldp     x26, x25, [sp], #0x10
  100143884  ldp     x24, x23, [sp], #0x10
  100143888  ldp     x22, x21, [sp], #0x10
  10014388c  ldp     x20, x19, [sp], #0x10
  100143890  ldp     x29, x30, [sp], #0x10
  100143894  ret

; ======================================================================
; sub_100143898
; address 0x100143898  size 556  kind sub
; ======================================================================
  100143898  stp     x29, x30, [sp, #-0x10]!
  10014389c  mov     x29, sp
  1001438a0  stp     x20, x19, [sp, #-0x10]!
  1001438a4  stp     x22, x21, [sp, #-0x10]!
  1001438a8  stp     x24, x23, [sp, #-0x10]!
  1001438ac  stp     x26, x25, [sp, #-0x10]!
  1001438b0  stp     x28, x27, [sp, #-0x10]!
  1001438b4  mov     x19, x1
  1001438b8  mov     x20, x0
  1001438bc  adrp    x8, #0x10041c000
  1001438c0  nop
  1001438c4  ldr     x1, [x8, #0x770]
  1001438c8  bl      _objc_msgSend                            ; [a0 isRepeated]
  1001438cc  mov     x8, x0
  1001438d0  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  1001438d4  cbz     w8, loc_100143998                        ; if ([a0 isRepeated] == 0)
  1001438d8  mov     x1, x20
  1001438dc  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  1001438e0  mov     x21, x0
  1001438e4  adrp    x8, #0x100420000
  1001438e8  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001438ec  ldr     x25, [x21, x8]                           ; x25 = sub_10013cd1c(a1[+0x0], a0)->_count
  1001438f0  mov     x24, #0
  1001438f4  cbz     x25, loc_100143968                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  1001438f8  mov     x22, #0
  1001438fc  adrp    x8, #0x10041c000
  100143900  add     x8, x8, #0x7b8                           ; &@selector(int32AtIndex:)
  100143904  ldr     x23, [x8]
  100143908  mov     x26, #2
  10014390c  mov     x27, #3
  100143910  mov     x28, #4
loc_100143914:
  100143914  mov     x0, x21
  100143918  mov     x1, x23
  10014391c  mov     x2, x22
  100143920  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) int32AtIndex:x2]
  100143924  lsl     w8, w0, #1
  100143928  eor     w8, w8, w0, asr #31                      ; t1 = (([sub_10013cd1c(a1[+0x0], a0) int32AtIndex:x2] << 1) ^ ([sub_10013cd1c(a1[+0x0], a0) int32AtIndex:x2] >> 31))
  10014392c  cmp     w8, #0x80
  100143930  b.hs    loc_10014393c                            ; if (t1 >=u 128)
  100143934  mov     x8, #1
  100143938  b       loc_100143958
loc_10014393c:
  10014393c  lsr     w9, w8, #0x1c
  100143940  cmp     w9, #0
  100143944  cinc    x9, x28, ne
  100143948  cmp     w8, #0x200, lsl #12
  10014394c  csel    x9, x27, x9, lo
  100143950  cmp     w8, #4, lsl #12
  100143954  csel    x8, x26, x9, lo
loc_100143958:
  100143958  add     x24, x8, x24
  10014395c  add     x22, x22, #1
  100143960  cmp     x25, x22
  100143964  b.ne    loc_100143914                            ; if (sub_10013cd1c(a1[+0x0], a0)->_count != (x22 + 1))
loc_100143968:
  100143968  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  10014396c  add     x8, x8, x24
  100143970  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x24)
  100143974  adrp    x8, #0x100420000
  100143978  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10014397c  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100143980  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100143984  lsl     w8, w8, #3
  100143988  cmp     w8, #0x80
  10014398c  b.hs    loc_1001439fc                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100143990  mov     x21, #1
  100143994  b       loc_100143a2c
loc_100143998:
  100143998  adrp    x8, #0x100420000
  10014399c  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  1001439a0  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  1001439a4  cbz     x8, loc_100143aa4                        ; if (a1[+0x0]->messageStorage_ == 0)
  1001439a8  adrp    x21, #0x100420000
  1001439ac  ldrsw   x9, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001439b0  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  1001439b4  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  1001439b8  and     w10, w9, #0x1f
  1001439bc  mov     w11, #1
  1001439c0  lsl     w10, w11, w10
  1001439c4  lsr     w9, w9, #5
  1001439c8  ldr     w8, [x8, w9, uxtw #2]
  1001439cc  and     w8, w8, w10
  1001439d0  cbz     w8, loc_100143aa4                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  1001439d4  mov     x1, x20
  1001439d8  bl      sub_10013def4                            ; sub_10013def4(a1[+0x0], a0)
  1001439dc  mov     x1, x0
  1001439e0  ldrsw   x8, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001439e4  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  1001439e8  ldr     w0, [x8, #8]                             ; w0 = a0->description_[+0x8]
  1001439ec  bl      sub_10013589c                            ; sub_10013589c(a0->description_[+0x8], sub_10013def4(a1[+0x0], a0))
  1001439f0  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  1001439f4  add     x8, x8, x0
  1001439f8  b       loc_100143aa0
loc_1001439fc:
  1001439fc  cmp     w8, #4, lsl #12
  100143a00  b.hs    loc_100143a0c                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  100143a04  mov     x21, #2
  100143a08  b       loc_100143a2c
loc_100143a0c:
  100143a0c  cmp     w8, #0x200, lsl #12
  100143a10  b.hs    loc_100143a1c                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100143a14  mov     x21, #3
  100143a18  b       loc_100143a2c
loc_100143a1c:
  100143a1c  lsr     w8, w8, #0x1c
  100143a20  cmp     w8, #0
  100143a24  mov     x8, #4
  100143a28  cinc    x21, x8, ne
loc_100143a2c:
  100143a2c  adrp    x8, #0x10041c000
  100143a30  nop
  100143a34  ldr     x1, [x8, #0xa20]
  100143a38  mov     x0, x20
  100143a3c  bl      _objc_msgSend                            ; [a0 isPackable]
  100143a40  cbz     w0, loc_100143a98                        ; if ([a0 isPackable] == 0)
  100143a44  cbz     x25, loc_100143aa4                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100143a48  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143a4c  add     x8, x8, x21
  100143a50  mov     x9, #0xa
  100143a54  mov     x10, #1
  100143a58  mov     x11, #2
  100143a5c  mov     x12, #3
  100143a60  lsr     w13, w24, #0x1c
  100143a64  cmp     w13, #0
  100143a68  mov     x13, #4
  100143a6c  cinc    x13, x13, ne
  100143a70  cmp     w24, #0x200, lsl #12
  100143a74  csel    x12, x12, x13, lo
  100143a78  cmp     w24, #4, lsl #12
  100143a7c  csel    x11, x11, x12, lo
  100143a80  cmp     w24, #0x80
  100143a84  csel    x10, x10, x11, lo                        ; t2 = (w24 <u 128 ? 1 : (w24 <u 0x4000 ? 2 : (w24 <u 0x200000 ? 3 : ((w24 >>> 28) != 0 ? 4 + 1 : 4))))
  100143a88  cmp     w24, #0
  100143a8c  csel    x9, x9, x10, lt
  100143a90  add     x8, x8, x9
  100143a94  b       loc_100143aa0
loc_100143a98:
  100143a98  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143a9c  madd    x8, x21, x25, x8
loc_100143aa0:
  100143aa0  str     x8, [x19, #8]                            ; a1[+0x8] = x8
loc_100143aa4:
  100143aa4  mov     w0, #1
  100143aa8  ldp     x28, x27, [sp], #0x10
  100143aac  ldp     x26, x25, [sp], #0x10
  100143ab0  ldp     x24, x23, [sp], #0x10
  100143ab4  ldp     x22, x21, [sp], #0x10
  100143ab8  ldp     x20, x19, [sp], #0x10
  100143abc  ldp     x29, x30, [sp], #0x10
  100143ac0  ret

; ======================================================================
; sub_100143ac4
; address 0x100143ac4  size 496  kind sub
; ======================================================================
  100143ac4  stp     x29, x30, [sp, #-0x10]!
  100143ac8  mov     x29, sp
  100143acc  stp     x20, x19, [sp, #-0x10]!
  100143ad0  stp     x22, x21, [sp, #-0x10]!
  100143ad4  stp     x24, x23, [sp, #-0x10]!
  100143ad8  stp     x26, x25, [sp, #-0x10]!
  100143adc  mov     x19, x1
  100143ae0  mov     x20, x0
  100143ae4  adrp    x8, #0x10041c000
  100143ae8  nop
  100143aec  ldr     x1, [x8, #0x770]
  100143af0  bl      _objc_msgSend                            ; [a0 isRepeated]
  100143af4  mov     x8, x0
  100143af8  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100143afc  cbz     w8, loc_100143b8c                        ; if ([a0 isRepeated] == 0)
  100143b00  mov     x1, x20
  100143b04  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  100143b08  mov     x21, x0
  100143b0c  adrp    x8, #0x100420000
  100143b10  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100143b14  ldr     x25, [x21, x8]                           ; x25 = sub_10013cd1c(a1[+0x0], a0)->_count
  100143b18  mov     x24, #0
  100143b1c  cbz     x25, loc_100143b5c                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100143b20  mov     x22, #0
  100143b24  adrp    x8, #0x10041c000
  100143b28  add     x8, x8, #0x7c8                           ; &@selector(int64AtIndex:)
  100143b2c  ldr     x23, [x8]
loc_100143b30:
  100143b30  mov     x0, x21
  100143b34  mov     x1, x23
  100143b38  mov     x2, x22
  100143b3c  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) int64AtIndex:x2]
  100143b40  lsl     x8, x0, #1
  100143b44  eor     x0, x8, x0, asr #63                      ; t1 = (([sub_10013cd1c(a1[+0x0], a0) int64AtIndex:x2] << 1) ^ ([sub_10013cd1c(a1[+0x0], a0) int64AtIndex:x2] >> 63))
  100143b48  bl      sub_1001353e0                            ; sub_1001353e0(t1)
  100143b4c  add     x24, x0, x24
  100143b50  add     x22, x22, #1
  100143b54  cmp     x25, x22
  100143b58  b.ne    loc_100143b30                            ; if (sub_10013cd1c(a1[+0x0], a0)->_count != (x22 + 1))
loc_100143b5c:
  100143b5c  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143b60  add     x8, x8, x24
  100143b64  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x24)
  100143b68  adrp    x8, #0x100420000
  100143b6c  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143b70  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100143b74  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100143b78  lsl     w8, w8, #3
  100143b7c  cmp     w8, #0x80
  100143b80  b.hs    loc_100143bf0                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100143b84  mov     x21, #1
  100143b88  b       loc_100143c20
loc_100143b8c:
  100143b8c  adrp    x8, #0x100420000
  100143b90  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100143b94  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  100143b98  cbz     x8, loc_100143c98                        ; if (a1[+0x0]->messageStorage_ == 0)
  100143b9c  adrp    x21, #0x100420000
  100143ba0  ldrsw   x9, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143ba4  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  100143ba8  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100143bac  and     w10, w9, #0x1f
  100143bb0  mov     w11, #1
  100143bb4  lsl     w10, w11, w10
  100143bb8  lsr     w9, w9, #5
  100143bbc  ldr     w8, [x8, w9, uxtw #2]
  100143bc0  and     w8, w8, w10
  100143bc4  cbz     w8, loc_100143c98                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100143bc8  mov     x1, x20
  100143bcc  bl      sub_10013df80                            ; sub_10013df80(a1[+0x0], a0)
  100143bd0  mov     x1, x0
  100143bd4  ldrsw   x8, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143bd8  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100143bdc  ldr     w0, [x8, #8]                             ; w0 = a0->description_[+0x8]
  100143be0  bl      sub_100135914                            ; sub_100135914(a0->description_[+0x8], sub_10013df80(a1[+0x0], a0))
  100143be4  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143be8  add     x8, x8, x0
  100143bec  b       loc_100143c94
loc_100143bf0:
  100143bf0  cmp     w8, #4, lsl #12
  100143bf4  b.hs    loc_100143c00                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  100143bf8  mov     x21, #2
  100143bfc  b       loc_100143c20
loc_100143c00:
  100143c00  cmp     w8, #0x200, lsl #12
  100143c04  b.hs    loc_100143c10                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100143c08  mov     x21, #3
  100143c0c  b       loc_100143c20
loc_100143c10:
  100143c10  lsr     w8, w8, #0x1c
  100143c14  cmp     w8, #0
  100143c18  mov     x8, #4
  100143c1c  cinc    x21, x8, ne
loc_100143c20:
  100143c20  adrp    x8, #0x10041c000
  100143c24  nop
  100143c28  ldr     x1, [x8, #0xa20]
  100143c2c  mov     x0, x20
  100143c30  bl      _objc_msgSend                            ; [a0 isPackable]
  100143c34  cbz     w0, loc_100143c8c                        ; if ([a0 isPackable] == 0)
  100143c38  cbz     x25, loc_100143c98                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100143c3c  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143c40  add     x8, x8, x21
  100143c44  mov     x9, #0xa
  100143c48  mov     x10, #1
  100143c4c  mov     x11, #2
  100143c50  mov     x12, #3
  100143c54  lsr     w13, w24, #0x1c
  100143c58  cmp     w13, #0
  100143c5c  mov     x13, #4
  100143c60  cinc    x13, x13, ne
  100143c64  cmp     w24, #0x200, lsl #12
  100143c68  csel    x12, x12, x13, lo
  100143c6c  cmp     w24, #4, lsl #12
  100143c70  csel    x11, x11, x12, lo
  100143c74  cmp     w24, #0x80
  100143c78  csel    x10, x10, x11, lo                        ; t2 = (w24 <u 128 ? 1 : (w24 <u 0x4000 ? 2 : (w24 <u 0x200000 ? 3 : ((w24 >>> 28) != 0 ? 4 + 1 : 4))))
  100143c7c  cmp     w24, #0
  100143c80  csel    x9, x9, x10, lt
  100143c84  add     x8, x8, x9
  100143c88  b       loc_100143c94
loc_100143c8c:
  100143c8c  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143c90  madd    x8, x21, x25, x8
loc_100143c94:
  100143c94  str     x8, [x19, #8]                            ; a1[+0x8] = x8
loc_100143c98:
  100143c98  mov     w0, #1
  100143c9c  ldp     x26, x25, [sp], #0x10
  100143ca0  ldp     x24, x23, [sp], #0x10
  100143ca4  ldp     x22, x21, [sp], #0x10
  100143ca8  ldp     x20, x19, [sp], #0x10
  100143cac  ldp     x29, x30, [sp], #0x10
  100143cb0  ret

; ======================================================================
; sub_100143cb4
; address 0x100143cb4  size 568  kind sub
; ======================================================================
  100143cb4  stp     x29, x30, [sp, #-0x10]!
  100143cb8  mov     x29, sp
  100143cbc  stp     x20, x19, [sp, #-0x10]!
  100143cc0  stp     x22, x21, [sp, #-0x10]!
  100143cc4  stp     x24, x23, [sp, #-0x10]!
  100143cc8  stp     x26, x25, [sp, #-0x10]!
  100143ccc  stp     x28, x27, [sp, #-0x10]!
  100143cd0  sub     sp, sp, #0x10
  100143cd4  mov     x21, x1
  100143cd8  mov     x20, x0
  100143cdc  adrp    x8, #0x10041c000
  100143ce0  nop
  100143ce4  ldr     x1, [x8, #0x770]
  100143ce8  bl      _objc_msgSend                            ; [a0 isRepeated]
  100143cec  mov     x8, x0
  100143cf0  ldr     x0, [x21]                                ; x0 = a1[+0x0]
  100143cf4  cbz     w8, loc_100143db4                        ; if ([a0 isRepeated] == 0)
  100143cf8  str     x21, [sp, #8]
  100143cfc  mov     x1, x20
  100143d00  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  100143d04  mov     x21, x0
  100143d08  adrp    x8, #0x100420000
  100143d0c  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100143d10  ldr     x25, [x21, x8]                           ; x25 = sub_10013cd1c(a1[+0x0], a0)->_count
  100143d14  mov     x24, #0
  100143d18  cbz     x25, loc_100143d80                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100143d1c  adrp    x8, #0x10041c000
  100143d20  add     x8, x8, #0x7c0                           ; &@selector(uint32AtIndex:)
  100143d24  mov     x22, #0
  100143d28  ldr     x23, [x8]
  100143d2c  mov     x26, #1
  100143d30  mov     x27, #2
  100143d34  mov     x28, #3
  100143d38  mov     x19, #4
loc_100143d3c:
  100143d3c  mov     x0, x21
  100143d40  mov     x1, x23
  100143d44  mov     x2, x22
  100143d48  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) uint32AtIndex:x2]
  100143d4c  lsr     w8, w0, #0x1c
  100143d50  cmp     w8, #0
  100143d54  cinc    x8, x19, ne
  100143d58  cmp     w0, #0x200, lsl #12
  100143d5c  csel    x8, x28, x8, lo                          ; t1 = ([sub_10013cd1c(a1[+0x0], a0) uint32AtIndex:x2] <u 0x200000 ? 3 : (([sub_10013cd1c(a1[+0x0], a0) uint32AtIndex:x2] >>> 28) != 0 ? 4 + 1 : 4))
  100143d60  cmp     w0, #4, lsl #12
  100143d64  csel    x8, x27, x8, lo
  100143d68  cmp     w0, #0x80
  100143d6c  csel    x8, x26, x8, lo                          ; t2 = ([sub_10013cd1c(a1[+0x0], a0) uint32AtIndex:x2] <u 128 ? 1 : ([sub_10013cd1c(a1[+0x0], a0) uint32AtIndex:x2] <u 0x4000 ? 2 : t1))
  100143d70  add     x24, x8, x24
  100143d74  add     x22, x22, #1
  100143d78  cmp     x25, x22
  100143d7c  b.ne    loc_100143d3c                            ; if (sub_10013cd1c(a1[+0x0], a0)->_count != (x22 + 1))
loc_100143d80:
  100143d80  ldr     x19, [sp, #8]
  100143d84  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143d88  add     x8, x8, x24
  100143d8c  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x24)
  100143d90  adrp    x8, #0x100420000
  100143d94  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143d98  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100143d9c  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100143da0  lsl     w8, w8, #3
  100143da4  cmp     w8, #0x80
  100143da8  b.hs    loc_100143e1c                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100143dac  mov     x21, #1
  100143db0  b       loc_100143e4c
loc_100143db4:
  100143db4  adrp    x8, #0x100420000
  100143db8  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100143dbc  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  100143dc0  cbz     x8, loc_100143ec8                        ; if (a1[+0x0]->messageStorage_ == 0)
  100143dc4  adrp    x19, #0x100420000
  100143dc8  ldrsw   x9, [x19, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143dcc  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  100143dd0  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100143dd4  and     w10, w9, #0x1f
  100143dd8  mov     w11, #1
  100143ddc  lsl     w10, w11, w10
  100143de0  lsr     w9, w9, #5
  100143de4  ldr     w8, [x8, w9, uxtw #2]
  100143de8  and     w8, w8, w10
  100143dec  cbz     w8, loc_100143ec8                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100143df0  mov     x1, x20
  100143df4  bl      sub_10013e010                            ; sub_10013e010(a1[+0x0], a0)
  100143df8  mov     x1, x0
  100143dfc  ldrsw   x8, [x19, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143e00  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100143e04  ldr     w0, [x8, #8]                             ; w0 = a0->description_[+0x8]
  100143e08  bl      sub_1001357bc                            ; sub_1001357bc(a0->description_[+0x8], sub_10013e010(a1[+0x0], a0))
  100143e0c  ldr     x8, [x21, #8]                            ; x8 = a1[+0x8]
  100143e10  add     x8, x8, x0
  100143e14  str     x8, [x21, #8]                            ; a1[+0x8] = (a1[+0x8] + sub_1001357bc(a0->description_[+0x8], sub_10013e010(a1[+0x0], a0)))
  100143e18  b       loc_100143ec8
loc_100143e1c:
  100143e1c  cmp     w8, #4, lsl #12
  100143e20  b.hs    loc_100143e2c                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  100143e24  mov     x21, #2
  100143e28  b       loc_100143e4c
loc_100143e2c:
  100143e2c  cmp     w8, #0x200, lsl #12
  100143e30  b.hs    loc_100143e3c                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100143e34  mov     x21, #3
  100143e38  b       loc_100143e4c
loc_100143e3c:
  100143e3c  lsr     w8, w8, #0x1c
  100143e40  cmp     w8, #0
  100143e44  mov     x8, #4
  100143e48  cinc    x21, x8, ne
loc_100143e4c:
  100143e4c  adrp    x8, #0x10041c000
  100143e50  nop
  100143e54  ldr     x1, [x8, #0xa20]
  100143e58  mov     x0, x20
  100143e5c  bl      _objc_msgSend                            ; [a0 isPackable]
  100143e60  cbz     w0, loc_100143ebc                        ; if ([a0 isPackable] == 0)
  100143e64  cbz     x25, loc_100143ec8                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100143e68  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143e6c  add     x8, x8, x21
  100143e70  mov     x9, #0xa
  100143e74  mov     x10, #1
  100143e78  mov     x11, #2
  100143e7c  mov     x12, #3
  100143e80  lsr     w13, w24, #0x1c
  100143e84  cmp     w13, #0
  100143e88  mov     x13, #4
  100143e8c  cinc    x13, x13, ne
  100143e90  cmp     w24, #0x200, lsl #12
  100143e94  csel    x12, x12, x13, lo
  100143e98  cmp     w24, #4, lsl #12
  100143e9c  csel    x11, x11, x12, lo
  100143ea0  cmp     w24, #0x80
  100143ea4  csel    x10, x10, x11, lo                        ; t3 = (w24 <u 128 ? 1 : (w24 <u 0x4000 ? 2 : (w24 <u 0x200000 ? 3 : ((w24 >>> 28) != 0 ? 4 + 1 : 4))))
  100143ea8  cmp     w24, #0
  100143eac  csel    x9, x9, x10, lt
  100143eb0  add     x8, x8, x9
  100143eb4  str     x8, [x19, #8]                            ; a1[+0x8] = ((a1[+0x8] + x21) + (w24 < 0 ? 10 : t3))
  100143eb8  b       loc_100143ec8
loc_100143ebc:
  100143ebc  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143ec0  madd    x8, x21, x25, x8
  100143ec4  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x21 * sub_10013cd1c(a1[+0x0], a0)->_count)
loc_100143ec8:
  100143ec8  mov     w0, #1
  100143ecc  sub     sp, x29, #0x50
  100143ed0  ldp     x28, x27, [sp], #0x10
  100143ed4  ldp     x26, x25, [sp], #0x10
  100143ed8  ldp     x24, x23, [sp], #0x10
  100143edc  ldp     x22, x21, [sp], #0x10
  100143ee0  ldp     x20, x19, [sp], #0x10
  100143ee4  ldp     x29, x30, [sp], #0x10
  100143ee8  ret

; ======================================================================
; sub_100143eec
; address 0x100143eec  size 488  kind sub
; ======================================================================
  100143eec  stp     x29, x30, [sp, #-0x10]!
  100143ef0  mov     x29, sp
  100143ef4  stp     x20, x19, [sp, #-0x10]!
  100143ef8  stp     x22, x21, [sp, #-0x10]!
  100143efc  stp     x24, x23, [sp, #-0x10]!
  100143f00  stp     x26, x25, [sp, #-0x10]!
  100143f04  mov     x19, x1
  100143f08  mov     x20, x0
  100143f0c  adrp    x8, #0x10041c000
  100143f10  nop
  100143f14  ldr     x1, [x8, #0x770]
  100143f18  bl      _objc_msgSend                            ; [a0 isRepeated]
  100143f1c  mov     x8, x0
  100143f20  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100143f24  cbz     w8, loc_100143fac                        ; if ([a0 isRepeated] == 0)
  100143f28  mov     x1, x20
  100143f2c  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  100143f30  mov     x21, x0
  100143f34  adrp    x8, #0x100420000
  100143f38  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100143f3c  ldr     x25, [x21, x8]                           ; x25 = sub_10013cd1c(a1[+0x0], a0)->_count
  100143f40  mov     x24, #0
  100143f44  cbz     x25, loc_100143f7c                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100143f48  mov     x22, #0
  100143f4c  adrp    x8, #0x10041c000
  100143f50  add     x8, x8, #0x7d0                           ; &@selector(uint64AtIndex:)
  100143f54  ldr     x23, [x8]
loc_100143f58:
  100143f58  mov     x0, x21
  100143f5c  mov     x1, x23
  100143f60  mov     x2, x22
  100143f64  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) uint64AtIndex:x2]
  100143f68  bl      sub_1001353e0                            ; sub_1001353e0([sub_10013cd1c(a1[+0x0], a0) uint64AtIndex:x2])
  100143f6c  add     x24, x0, x24
  100143f70  add     x22, x22, #1
  100143f74  cmp     x25, x22
  100143f78  b.ne    loc_100143f58                            ; if (sub_10013cd1c(a1[+0x0], a0)->_count != (x22 + 1))
loc_100143f7c:
  100143f7c  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100143f80  add     x8, x8, x24
  100143f84  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x24)
  100143f88  adrp    x8, #0x100420000
  100143f8c  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143f90  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100143f94  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100143f98  lsl     w8, w8, #3
  100143f9c  cmp     w8, #0x80
  100143fa0  b.hs    loc_100144010                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100143fa4  mov     x21, #1
  100143fa8  b       loc_100144040
loc_100143fac:
  100143fac  adrp    x8, #0x100420000
  100143fb0  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100143fb4  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  100143fb8  cbz     x8, loc_1001440b8                        ; if (a1[+0x0]->messageStorage_ == 0)
  100143fbc  adrp    x21, #0x100420000
  100143fc0  ldrsw   x9, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143fc4  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  100143fc8  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100143fcc  and     w10, w9, #0x1f
  100143fd0  mov     w11, #1
  100143fd4  lsl     w10, w11, w10
  100143fd8  lsr     w9, w9, #5
  100143fdc  ldr     w8, [x8, w9, uxtw #2]
  100143fe0  and     w8, w8, w10
  100143fe4  cbz     w8, loc_1001440b8                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100143fe8  mov     x1, x20
  100143fec  bl      sub_10013e09c                            ; sub_10013e09c(a1[+0x0], a0)
  100143ff0  mov     x1, x0
  100143ff4  ldrsw   x8, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100143ff8  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100143ffc  ldr     w0, [x8, #8]                             ; w0 = a0->description_[+0x8]
  100144000  bl      sub_1001354ec                            ; sub_1001354ec(a0->description_[+0x8], sub_10013e09c(a1[+0x0], a0))
  100144004  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100144008  add     x8, x8, x0
  10014400c  b       loc_1001440b4
loc_100144010:
  100144010  cmp     w8, #4, lsl #12
  100144014  b.hs    loc_100144020                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  100144018  mov     x21, #2
  10014401c  b       loc_100144040
loc_100144020:
  100144020  cmp     w8, #0x200, lsl #12
  100144024  b.hs    loc_100144030                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100144028  mov     x21, #3
  10014402c  b       loc_100144040
loc_100144030:
  100144030  lsr     w8, w8, #0x1c
  100144034  cmp     w8, #0
  100144038  mov     x8, #4
  10014403c  cinc    x21, x8, ne
loc_100144040:
  100144040  adrp    x8, #0x10041c000
  100144044  nop
  100144048  ldr     x1, [x8, #0xa20]
  10014404c  mov     x0, x20
  100144050  bl      _objc_msgSend                            ; [a0 isPackable]
  100144054  cbz     w0, loc_1001440ac                        ; if ([a0 isPackable] == 0)
  100144058  cbz     x25, loc_1001440b8                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  10014405c  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100144060  add     x8, x8, x21
  100144064  mov     x9, #0xa
  100144068  mov     x10, #1
  10014406c  mov     x11, #2
  100144070  mov     x12, #3
  100144074  lsr     w13, w24, #0x1c
  100144078  cmp     w13, #0
  10014407c  mov     x13, #4
  100144080  cinc    x13, x13, ne
  100144084  cmp     w24, #0x200, lsl #12
  100144088  csel    x12, x12, x13, lo
  10014408c  cmp     w24, #4, lsl #12
  100144090  csel    x11, x11, x12, lo
  100144094  cmp     w24, #0x80
  100144098  csel    x10, x10, x11, lo                        ; t1 = (w24 <u 128 ? 1 : (w24 <u 0x4000 ? 2 : (w24 <u 0x200000 ? 3 : ((w24 >>> 28) != 0 ? 4 + 1 : 4))))
  10014409c  cmp     w24, #0
  1001440a0  csel    x9, x9, x10, lt
  1001440a4  add     x8, x8, x9
  1001440a8  b       loc_1001440b4
loc_1001440ac:
  1001440ac  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  1001440b0  madd    x8, x21, x25, x8
loc_1001440b4:
  1001440b4  str     x8, [x19, #8]                            ; a1[+0x8] = x8
loc_1001440b8:
  1001440b8  mov     w0, #1
  1001440bc  ldp     x26, x25, [sp], #0x10
  1001440c0  ldp     x24, x23, [sp], #0x10
  1001440c4  ldp     x22, x21, [sp], #0x10
  1001440c8  ldp     x20, x19, [sp], #0x10
  1001440cc  ldp     x29, x30, [sp], #0x10
  1001440d0  ret

; ======================================================================
; sub_1001440d4
; address 0x1001440d4  size 628  kind sub
; ======================================================================
  1001440d4  stp     x29, x30, [sp, #-0x10]!
  1001440d8  mov     x29, sp
  1001440dc  stp     x20, x19, [sp, #-0x10]!
  1001440e0  stp     x22, x21, [sp, #-0x10]!
  1001440e4  stp     x24, x23, [sp, #-0x10]!
  1001440e8  stp     x26, x25, [sp, #-0x10]!
  1001440ec  stp     x28, x27, [sp, #-0x10]!
  1001440f0  sub     sp, sp, #0xf0
  1001440f4  mov     x19, x1
  1001440f8  mov     x22, x0
  1001440fc  adrp    x21, #0x1003b0000
  100144100  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  100144104  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  100144108  stur    x8, [x29, #-0x58]
  10014410c  adrp    x8, #0x10041c000
  100144110  nop
  100144114  ldr     x1, [x8, #0x770]
  100144118  bl      _objc_msgSend                            ; [a0 isRepeated]
  10014411c  mov     x8, x0
  100144120  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100144124  cbz     w8, loc_1001442ac                        ; if ([a0 isRepeated] == 0)
  100144128  mov     x1, x22
  10014412c  str     x22, [sp, #8]
  100144130  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  100144134  mov     x21, x0
  100144138  stp     xzr, xzr, [x29, #-0x68]
  10014413c  stp     xzr, xzr, [x29, #-0x78]
  100144140  stp     xzr, xzr, [x29, #-0x88]
  100144144  stp     xzr, xzr, [x29, #-0x98]
  100144148  adrp    x8, #0x100416000
  10014414c  nop
  100144150  ldr     x1, [x8, #0xe00]
  100144154  str     x1, [sp, #0x20]
  100144158  sub     x2, x29, #0x98
  10014415c  add     x3, sp, #0x28
  100144160  mov     x4, #0x10
  100144164  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  100144168  mov     x23, x0
  10014416c  cbz     x23, loc_10014422c                       ; if ([sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] == 0)
  100144170  ldur    x8, [x29, #-0x88]
  100144174  ldr     x28, [x8]
  100144178  adrp    x8, #0x100417000
  10014417c  nop
  100144180  mov     x27, #1
  100144184  ldr     x24, [x8, #0xc58]
  100144188  mov     x20, #2
  10014418c  mov     x22, #3
  100144190  mov     x25, #4
  100144194  sub     x8, x29, #0x98
  100144198  str     x8, [sp, #0x18]
  10014419c  add     x8, sp, #0x28
  1001441a0  str     x8, [sp, #0x10]
loc_1001441a4:
  1001441a4  mov     x26, #0
loc_1001441a8:
  1001441a8  ldur    x8, [x29, #-0x88]
  1001441ac  ldr     x8, [x8]
  1001441b0  cmp     x8, x28
  1001441b4  b.eq    loc_1001441c0                            ; if (x8 == x28)
  1001441b8  mov     x0, x21
  1001441bc  bl      _objc_enumerationMutation                ; objc_enumerationMutation(sub_10013cd1c(a1[+0x0], a0))
loc_1001441c0:
  1001441c0  ldur    x8, [x29, #-0x90]
  1001441c4  ldr     x0, [x8, x26, lsl #3]
  1001441c8  mov     x1, x24
  1001441cc  bl      _objc_msgSend                            ; [x0 length]
  1001441d0  lsr     w8, w0, #0x1c
  1001441d4  cmp     w8, #0
  1001441d8  cinc    x8, x25, ne
  1001441dc  cmp     w0, #0x200, lsl #12
  1001441e0  csel    x8, x22, x8, lo
  1001441e4  cmp     w0, #4, lsl #12
  1001441e8  csel    x8, x20, x8, lo                          ; t1 = ([x0 length] <u 0x4000 ? 2 : ([x0 length] <u 0x200000 ? 3 : (([x0 length] >>> 28) != 0 ? 4 + 1 : 4)))
  1001441ec  cmp     w0, #0x80
  1001441f0  csel    x8, x27, x8, lo
  1001441f4  add     x8, x8, x0
  1001441f8  ldr     x9, [x19, #8]                            ; x9 = a1[+0x8]
  1001441fc  add     x8, x8, x9
  100144200  str     x8, [x19, #8]                            ; a1[+0x8] = ((([x0 length] <u 128 ? 1 : t1) + [x0 length]) + a1[+0x8])
  100144204  add     x26, x26, #1
  100144208  cmp     x26, x23
  10014420c  b.lo    loc_1001441a8                            ; if ((x26 + 1) <u [sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16])
  100144210  mov     x4, #0x10
  100144214  mov     x0, x21
  100144218  ldp     x2, x1, [sp, #0x18]
  10014421c  ldr     x3, [sp, #0x10]
  100144220  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  100144224  mov     x23, x0
  100144228  cbnz    x23, loc_1001441a4                       ; if ([sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] != 0)
loc_10014422c:
  10014422c  adrp    x8, #0x100420000
  100144230  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100144234  ldr     x9, [sp, #8]
  100144238  ldr     x8, [x9, x8]                             ; x8 = a0->description_
  10014423c  ldr     w9, [x8, #8]                             ; w9 = a0->description_[+0x8]
  100144240  ldr     w8, [x8, #0x14]                          ; w8 = a0->description_[+0x14]
  100144244  lsl     w9, w9, #3
  100144248  mov     x10, #1
  10014424c  mov     x11, #2
  100144250  mov     x12, #3
  100144254  lsr     w13, w9, #0x1c
  100144258  cmp     w13, #0
  10014425c  mov     x13, #4
  100144260  cinc    x13, x13, ne
  100144264  cmp     w9, #0x200, lsl #12
  100144268  csel    x12, x12, x13, lo                        ; t2 = ((a0->description_[+0x8] << 3) <u 0x200000 ? 3 : (((a0->description_[+0x8] << 3) >>> 28) != 0 ? 4 + 1 : 4))
  10014426c  cmp     w9, #4, lsl #12
  100144270  csel    x11, x11, x12, lo
  100144274  cmp     w9, #0x80
  100144278  csel    x9, x10, x11, lo                         ; t3 = ((a0->description_[+0x8] << 3) <u 128 ? 1 : ((a0->description_[+0x8] << 3) <u 0x4000 ? 2 : t2))
  10014427c  cmp     w8, #0x10
  100144280  cset    w8, eq
  100144284  lsl     x8, x9, x8
  100144288  adrp    x9, #0x100420000
  10014428c  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100144290  ldr     x9, [x21, x9]                            ; x9 = sub_10013cd1c(a1[+0x0], a0)->_count
  100144294  ldr     x10, [x19, #8]                           ; x10 = a1[+0x8]
  100144298  madd    x8, x9, x8, x10
  10014429c  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + sub_10013cd1c(a1[+0x0], a0)->_count * (t3 << (a0->description_[+0x14] == 16)))
  1001442a0  adrp    x21, #0x1003b0000
  1001442a4  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1001442a8  b       loc_100144310
loc_1001442ac:
  1001442ac  adrp    x8, #0x100420000
  1001442b0  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  1001442b4  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  1001442b8  cbz     x8, loc_100144310                        ; if (a1[+0x0]->messageStorage_ == 0)
  1001442bc  adrp    x20, #0x100420000
  1001442c0  ldrsw   x9, [x20, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001442c4  ldr     x9, [x22, x9]                            ; x9 = a0->description_
  1001442c8  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  1001442cc  and     w10, w9, #0x1f
  1001442d0  mov     w11, #1
  1001442d4  lsl     w10, w11, w10
  1001442d8  lsr     w9, w9, #5
  1001442dc  ldr     w8, [x8, w9, uxtw #2]
  1001442e0  and     w8, w8, w10
  1001442e4  cbz     w8, loc_100144310                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  1001442e8  mov     x1, x22
  1001442ec  bl      sub_10013c1a0                            ; sub_10013c1a0(a1[+0x0], a0)
  1001442f0  mov     x1, x0
  1001442f4  ldrsw   x8, [x20, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001442f8  ldr     x8, [x22, x8]                            ; x8 = a0->description_
  1001442fc  ldr     w0, [x8, #8]                             ; w0 = a0->description_[+0x8]
  100144300  bl      sub_10013571c                            ; sub_10013571c(a0->description_[+0x8], sub_10013c1a0(a1[+0x0], a0))
  100144304  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100144308  add     x8, x8, x0
  10014430c  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + sub_10013571c(a0->description_[+0x8], sub_10013c1a0(a1[+0x0], a0)))
loc_100144310:
  100144310  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  100144314  ldur    x9, [x29, #-0x58]
  100144318  sub     x8, x8, x9
  10014431c  cbnz    x8, loc_100144344                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100144320  mov     w0, #1
  100144324  sub     sp, x29, #0x50
  100144328  ldp     x28, x27, [sp], #0x10
  10014432c  ldp     x26, x25, [sp], #0x10
  100144330  ldp     x24, x23, [sp], #0x10
  100144334  ldp     x22, x21, [sp], #0x10
  100144338  ldp     x20, x19, [sp], #0x10
  10014433c  ldp     x29, x30, [sp], #0x10
  100144340  ret
loc_100144344:
  100144344  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; sub_100144348
; address 0x100144348  size 532  kind sub
; ======================================================================
  100144348  stp     x29, x30, [sp, #-0x10]!
  10014434c  mov     x29, sp
  100144350  stp     x20, x19, [sp, #-0x10]!
  100144354  stp     x22, x21, [sp, #-0x10]!
  100144358  stp     x24, x23, [sp, #-0x10]!
  10014435c  stp     x26, x25, [sp, #-0x10]!
  100144360  stp     x28, x27, [sp, #-0x10]!
  100144364  sub     sp, sp, #0xd0
  100144368  mov     x19, x1
  10014436c  mov     x20, x0
  100144370  adrp    x26, #0x1003b0000
  100144374  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  100144378  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  10014437c  stur    x8, [x29, #-0x58]
  100144380  adrp    x8, #0x10041c000
  100144384  nop
  100144388  ldr     x1, [x8, #0x770]
  10014438c  bl      _objc_msgSend                            ; [a0 isRepeated]
  100144390  mov     x8, x0
  100144394  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100144398  cbz     w8, loc_1001444c0                        ; if ([a0 isRepeated] == 0)
  10014439c  mov     x1, x20
  1001443a0  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  1001443a4  mov     x21, x0
  1001443a8  stp     xzr, xzr, [sp, #0xb8]
  1001443ac  stp     xzr, xzr, [sp, #0xa8]
  1001443b0  stp     xzr, xzr, [sp, #0x98]
  1001443b4  stp     xzr, xzr, [sp, #0x88]
  1001443b8  adrp    x8, #0x100416000
  1001443bc  nop
  1001443c0  ldr     x22, [x8, #0xe00]
  1001443c4  add     x2, sp, #0x88
  1001443c8  add     x3, sp, #8
  1001443cc  mov     x4, #0x10
  1001443d0  mov     x1, x22
  1001443d4  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  1001443d8  mov     x25, x0
  1001443dc  cbz     x25, loc_100144450                       ; if ([sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] == 0)
  1001443e0  ldr     x8, [sp, #0x98]
  1001443e4  ldr     x27, [x8]
  1001443e8  add     x23, sp, #0x88
  1001443ec  add     x24, sp, #8
loc_1001443f0:
  1001443f0  mov     x28, #0
loc_1001443f4:
  1001443f4  ldr     x8, [sp, #0x98]
  1001443f8  ldr     x8, [x8]
  1001443fc  cmp     x8, x27
  100144400  b.eq    loc_10014440c                            ; if (x8 == x27)
  100144404  mov     x0, x21
  100144408  bl      _objc_enumerationMutation                ; objc_enumerationMutation(sub_10013cd1c(a1[+0x0], a0))
loc_10014440c:
  10014440c  ldr     x8, [sp, #0x90]
  100144410  ldr     x0, [x8, x28, lsl #3]
  100144414  bl      sub_100135468
  100144418  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  10014441c  add     x8, x8, x0
  100144420  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + sub_100135468())
  100144424  add     x28, x28, #1
  100144428  cmp     x28, x25
  10014442c  b.lo    loc_1001443f4                            ; if ((x28 + 1) <u [sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16])
  100144430  mov     x4, #0x10
  100144434  mov     x0, x21
  100144438  mov     x1, x22
  10014443c  mov     x2, x23
  100144440  mov     x3, x24
  100144444  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  100144448  mov     x25, x0
  10014444c  cbnz    x25, loc_1001443f0                       ; if ([sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] != 0)
loc_100144450:
  100144450  adrp    x8, #0x100420000
  100144454  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100144458  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  10014445c  ldr     w9, [x8, #8]                             ; w9 = a0->description_[+0x8]
  100144460  ldr     w8, [x8, #0x14]                          ; w8 = a0->description_[+0x14]
  100144464  lsl     w9, w9, #3
  100144468  mov     x10, #1
  10014446c  mov     x11, #2
  100144470  mov     x12, #3
  100144474  lsr     w13, w9, #0x1c
  100144478  cmp     w13, #0
  10014447c  mov     x13, #4
  100144480  cinc    x13, x13, ne
  100144484  cmp     w9, #0x200, lsl #12
  100144488  csel    x12, x12, x13, lo                        ; t1 = ((a0->description_[+0x8] << 3) <u 0x200000 ? 3 : (((a0->description_[+0x8] << 3) >>> 28) != 0 ? 4 + 1 : 4))
  10014448c  cmp     w9, #4, lsl #12
  100144490  csel    x11, x11, x12, lo
  100144494  cmp     w9, #0x80
  100144498  csel    x9, x10, x11, lo                         ; t2 = ((a0->description_[+0x8] << 3) <u 128 ? 1 : ((a0->description_[+0x8] << 3) <u 0x4000 ? 2 : t1))
  10014449c  cmp     w8, #0x10
  1001444a0  cset    w8, eq
  1001444a4  lsl     x8, x9, x8
  1001444a8  adrp    x9, #0x100420000
  1001444ac  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001444b0  ldr     x9, [x21, x9]                            ; x9 = sub_10013cd1c(a1[+0x0], a0)->_count
  1001444b4  ldr     x10, [x19, #8]                           ; x10 = a1[+0x8]
  1001444b8  madd    x8, x9, x8, x10
  1001444bc  b       loc_100144520
loc_1001444c0:
  1001444c0  adrp    x8, #0x100420000
  1001444c4  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  1001444c8  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  1001444cc  cbz     x8, loc_100144524                        ; if (a1[+0x0]->messageStorage_ == 0)
  1001444d0  adrp    x21, #0x100420000
  1001444d4  ldrsw   x9, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001444d8  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  1001444dc  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  1001444e0  and     w10, w9, #0x1f
  1001444e4  mov     w11, #1
  1001444e8  lsl     w10, w11, w10
  1001444ec  lsr     w9, w9, #5
  1001444f0  ldr     w8, [x8, w9, uxtw #2]
  1001444f4  and     w8, w8, w10
  1001444f8  cbz     w8, loc_100144524                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  1001444fc  mov     x1, x20
  100144500  bl      sub_10013c1a0                            ; sub_10013c1a0(a1[+0x0], a0)
  100144504  mov     x1, x0
  100144508  ldrsw   x8, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10014450c  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100144510  ldr     w0, [x8, #8]                             ; w0 = a0->description_[+0x8]
  100144514  bl      sub_100135620                            ; sub_100135620(a0->description_[+0x8], sub_10013c1a0(a1[+0x0], a0))
  100144518  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  10014451c  add     x8, x8, x0
loc_100144520:
  100144520  str     x8, [x19, #8]                            ; a1[+0x8] = x8
loc_100144524:
  100144524  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100144528  ldur    x9, [x29, #-0x58]
  10014452c  sub     x8, x8, x9
  100144530  cbnz    x8, loc_100144558                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100144534  mov     w0, #1
  100144538  sub     sp, x29, #0x50
  10014453c  ldp     x28, x27, [sp], #0x10
  100144540  ldp     x26, x25, [sp], #0x10
  100144544  ldp     x24, x23, [sp], #0x10
  100144548  ldp     x22, x21, [sp], #0x10
  10014454c  ldp     x20, x19, [sp], #0x10
  100144550  ldp     x29, x30, [sp], #0x10
  100144554  ret
loc_100144558:
  100144558  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; sub_10014455c
; address 0x10014455c  size 628  kind sub
; ======================================================================
  10014455c  stp     x29, x30, [sp, #-0x10]!
  100144560  mov     x29, sp
  100144564  stp     x20, x19, [sp, #-0x10]!
  100144568  stp     x22, x21, [sp, #-0x10]!
  10014456c  stp     x24, x23, [sp, #-0x10]!
  100144570  stp     x26, x25, [sp, #-0x10]!
  100144574  stp     x28, x27, [sp, #-0x10]!
  100144578  sub     sp, sp, #0xf0
  10014457c  mov     x19, x1
  100144580  mov     x22, x0
  100144584  adrp    x21, #0x1003b0000
  100144588  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10014458c  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  100144590  stur    x8, [x29, #-0x58]
  100144594  adrp    x8, #0x10041c000
  100144598  nop
  10014459c  ldr     x1, [x8, #0x770]
  1001445a0  bl      _objc_msgSend                            ; [a0 isRepeated]
  1001445a4  mov     x8, x0
  1001445a8  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  1001445ac  cbz     w8, loc_100144734                        ; if ([a0 isRepeated] == 0)
  1001445b0  mov     x1, x22
  1001445b4  str     x22, [sp, #8]
  1001445b8  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  1001445bc  mov     x21, x0
  1001445c0  stp     xzr, xzr, [x29, #-0x68]
  1001445c4  stp     xzr, xzr, [x29, #-0x78]
  1001445c8  stp     xzr, xzr, [x29, #-0x88]
  1001445cc  stp     xzr, xzr, [x29, #-0x98]
  1001445d0  adrp    x8, #0x100416000
  1001445d4  nop
  1001445d8  ldr     x1, [x8, #0xe00]
  1001445dc  str     x1, [sp, #0x20]
  1001445e0  sub     x2, x29, #0x98
  1001445e4  add     x3, sp, #0x28
  1001445e8  mov     x4, #0x10
  1001445ec  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  1001445f0  mov     x23, x0
  1001445f4  cbz     x23, loc_1001446b4                       ; if ([sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] == 0)
  1001445f8  ldur    x8, [x29, #-0x88]
  1001445fc  ldr     x28, [x8]
  100144600  adrp    x8, #0x10041c000
  100144604  nop
  100144608  mov     x27, #1
  10014460c  ldr     x24, [x8, #0x610]
  100144610  mov     x20, #2
  100144614  mov     x22, #3
  100144618  mov     x25, #4
  10014461c  sub     x8, x29, #0x98
  100144620  str     x8, [sp, #0x18]
  100144624  add     x8, sp, #0x28
  100144628  str     x8, [sp, #0x10]
loc_10014462c:
  10014462c  mov     x26, #0
loc_100144630:
  100144630  ldur    x8, [x29, #-0x88]
  100144634  ldr     x8, [x8]
  100144638  cmp     x8, x28
  10014463c  b.eq    loc_100144648                            ; if (x8 == x28)
  100144640  mov     x0, x21
  100144644  bl      _objc_enumerationMutation                ; objc_enumerationMutation(sub_10013cd1c(a1[+0x0], a0))
loc_100144648:
  100144648  ldur    x8, [x29, #-0x90]
  10014464c  ldr     x0, [x8, x26, lsl #3]
  100144650  mov     x1, x24
  100144654  bl      _objc_msgSend                            ; [x0 serializedSize]
  100144658  lsr     w8, w0, #0x1c
  10014465c  cmp     w8, #0
  100144660  cinc    x8, x25, ne
  100144664  cmp     w0, #0x200, lsl #12
  100144668  csel    x8, x22, x8, lo
  10014466c  cmp     w0, #4, lsl #12
  100144670  csel    x8, x20, x8, lo                          ; t1 = ([x0 serializedSize] <u 0x4000 ? 2 : ([x0 serializedSize] <u 0x200000 ? 3 : (([x0 serializedSize] >>> 28) != 0 ? 4 + 1 : 4)))
  100144674  cmp     w0, #0x80
  100144678  csel    x8, x27, x8, lo
  10014467c  add     x8, x8, x0
  100144680  ldr     x9, [x19, #8]                            ; x9 = a1[+0x8]
  100144684  add     x8, x8, x9
  100144688  str     x8, [x19, #8]                            ; a1[+0x8] = ((([x0 serializedSize] <u 128 ? 1 : t1) + [x0 serializedSize]) + a1[+0x8])
  10014468c  add     x26, x26, #1
  100144690  cmp     x26, x23
  100144694  b.lo    loc_100144630                            ; if ((x26 + 1) <u [sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16])
  100144698  mov     x4, #0x10
  10014469c  mov     x0, x21
  1001446a0  ldp     x2, x1, [sp, #0x18]
  1001446a4  ldr     x3, [sp, #0x10]
  1001446a8  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  1001446ac  mov     x23, x0
  1001446b0  cbnz    x23, loc_10014462c                       ; if ([sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] != 0)
loc_1001446b4:
  1001446b4  adrp    x8, #0x100420000
  1001446b8  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001446bc  ldr     x9, [sp, #8]
  1001446c0  ldr     x8, [x9, x8]                             ; x8 = a0->description_
  1001446c4  ldr     w9, [x8, #8]                             ; w9 = a0->description_[+0x8]
  1001446c8  ldr     w8, [x8, #0x14]                          ; w8 = a0->description_[+0x14]
  1001446cc  lsl     w9, w9, #3
  1001446d0  mov     x10, #1
  1001446d4  mov     x11, #2
  1001446d8  mov     x12, #3
  1001446dc  lsr     w13, w9, #0x1c
  1001446e0  cmp     w13, #0
  1001446e4  mov     x13, #4
  1001446e8  cinc    x13, x13, ne
  1001446ec  cmp     w9, #0x200, lsl #12
  1001446f0  csel    x12, x12, x13, lo                        ; t2 = ((a0->description_[+0x8] << 3) <u 0x200000 ? 3 : (((a0->description_[+0x8] << 3) >>> 28) != 0 ? 4 + 1 : 4))
  1001446f4  cmp     w9, #4, lsl #12
  1001446f8  csel    x11, x11, x12, lo
  1001446fc  cmp     w9, #0x80
  100144700  csel    x9, x10, x11, lo                         ; t3 = ((a0->description_[+0x8] << 3) <u 128 ? 1 : ((a0->description_[+0x8] << 3) <u 0x4000 ? 2 : t2))
  100144704  cmp     w8, #0x10
  100144708  cset    w8, eq
  10014470c  lsl     x8, x9, x8
  100144710  adrp    x9, #0x100420000
  100144714  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100144718  ldr     x9, [x21, x9]                            ; x9 = sub_10013cd1c(a1[+0x0], a0)->_count
  10014471c  ldr     x10, [x19, #8]                           ; x10 = a1[+0x8]
  100144720  madd    x8, x9, x8, x10
  100144724  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + sub_10013cd1c(a1[+0x0], a0)->_count * (t3 << (a0->description_[+0x14] == 16)))
  100144728  adrp    x21, #0x1003b0000
  10014472c  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  100144730  b       loc_100144798
loc_100144734:
  100144734  adrp    x8, #0x100420000
  100144738  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10014473c  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  100144740  cbz     x8, loc_100144798                        ; if (a1[+0x0]->messageStorage_ == 0)
  100144744  adrp    x20, #0x100420000
  100144748  ldrsw   x9, [x20, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10014474c  ldr     x9, [x22, x9]                            ; x9 = a0->description_
  100144750  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100144754  and     w10, w9, #0x1f
  100144758  mov     w11, #1
  10014475c  lsl     w10, w11, w10
  100144760  lsr     w9, w9, #5
  100144764  ldr     w8, [x8, w9, uxtw #2]
  100144768  and     w8, w8, w10
  10014476c  cbz     w8, loc_100144798                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100144770  mov     x1, x22
  100144774  bl      sub_10013c1a0                            ; sub_10013c1a0(a1[+0x0], a0)
  100144778  mov     x1, x0
  10014477c  ldrsw   x8, [x20, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100144780  ldr     x8, [x22, x8]                            ; x8 = a0->description_
  100144784  ldr     w0, [x8, #8]                             ; w0 = a0->description_[+0x8]
  100144788  bl      sub_10013567c                            ; sub_10013567c(a0->description_[+0x8], sub_10013c1a0(a1[+0x0], a0))
  10014478c  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100144790  add     x8, x8, x0
  100144794  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + sub_10013567c(a0->description_[+0x8], sub_10013c1a0(a1[+0x0], a0)))
loc_100144798:
  100144798  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  10014479c  ldur    x9, [x29, #-0x58]
  1001447a0  sub     x8, x8, x9
  1001447a4  cbnz    x8, loc_1001447cc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1001447a8  mov     w0, #1
  1001447ac  sub     sp, x29, #0x50
  1001447b0  ldp     x28, x27, [sp], #0x10
  1001447b4  ldp     x26, x25, [sp], #0x10
  1001447b8  ldp     x24, x23, [sp], #0x10
  1001447bc  ldp     x22, x21, [sp], #0x10
  1001447c0  ldp     x20, x19, [sp], #0x10
  1001447c4  ldp     x29, x30, [sp], #0x10
  1001447c8  ret
loc_1001447cc:
  1001447cc  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; sub_1001447d0
; address 0x1001447d0  size 644  kind sub
; ======================================================================
  1001447d0  stp     x29, x30, [sp, #-0x10]!
  1001447d4  mov     x29, sp
  1001447d8  stp     x20, x19, [sp, #-0x10]!
  1001447dc  stp     x22, x21, [sp, #-0x10]!
  1001447e0  stp     x24, x23, [sp, #-0x10]!
  1001447e4  stp     x26, x25, [sp, #-0x10]!
  1001447e8  stp     x28, x27, [sp, #-0x10]!
  1001447ec  sub     sp, sp, #0xd0
  1001447f0  mov     x19, x1
  1001447f4  mov     x20, x0
  1001447f8  adrp    x22, #0x1003b0000
  1001447fc  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  100144800  ldr     x8, [x22]                                ; x8 = ___stack_chk_guard[+0x0]
  100144804  stur    x8, [x29, #-0x58]
  100144808  adrp    x8, #0x10041c000
  10014480c  nop
  100144810  ldr     x1, [x8, #0x770]
  100144814  bl      _objc_msgSend                            ; [a0 isRepeated]
  100144818  mov     x8, x0
  10014481c  ldr     x0, [x19]                                ; x0 = a1[+0x0]
  100144820  cbz     w8, loc_100144964                        ; if ([a0 isRepeated] == 0)
  100144824  mov     x1, x20
  100144828  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  10014482c  mov     x21, x0
  100144830  stp     xzr, xzr, [sp, #0xb8]
  100144834  stp     xzr, xzr, [sp, #0xa8]
  100144838  stp     xzr, xzr, [sp, #0x98]
  10014483c  stp     xzr, xzr, [sp, #0x88]
  100144840  adrp    x8, #0x100416000
  100144844  nop
  100144848  ldr     x22, [x8, #0xe00]
  10014484c  add     x2, sp, #0x88
  100144850  add     x3, sp, #8
  100144854  mov     x4, #0x10
  100144858  mov     x1, x22
  10014485c  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  100144860  mov     x24, x0
  100144864  cbz     x24, loc_1001448e8                       ; if ([sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] == 0)
  100144868  ldr     x8, [sp, #0x98]
  10014486c  ldr     x28, [x8]
  100144870  adrp    x8, #0x10041c000
  100144874  add     x8, x8, #0x610                           ; &@selector(serializedSize)
  100144878  ldr     x23, [x8]
  10014487c  add     x25, sp, #0x88
  100144880  add     x26, sp, #8
loc_100144884:
  100144884  mov     x27, #0
loc_100144888:
  100144888  ldr     x8, [sp, #0x98]
  10014488c  ldr     x8, [x8]
  100144890  cmp     x8, x28
  100144894  b.eq    loc_1001448a0                            ; if (x8 == x28)
  100144898  mov     x0, x21
  10014489c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(sub_10013cd1c(a1[+0x0], a0))
loc_1001448a0:
  1001448a0  ldr     x8, [sp, #0x90]
  1001448a4  ldr     x0, [x8, x27, lsl #3]
  1001448a8  mov     x1, x23
  1001448ac  bl      _objc_msgSend                            ; [x0 serializedSize]
  1001448b0  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  1001448b4  add     x8, x8, x0
  1001448b8  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + [x0 serializedSize])
  1001448bc  add     x27, x27, #1
  1001448c0  cmp     x27, x24
  1001448c4  b.lo    loc_100144888                            ; if ((x27 + 1) <u [sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16])
  1001448c8  mov     x4, #0x10
  1001448cc  mov     x0, x21
  1001448d0  mov     x1, x22
  1001448d4  mov     x2, x25
  1001448d8  mov     x3, x26
  1001448dc  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  1001448e0  mov     x24, x0
  1001448e4  cbnz    x24, loc_100144884                       ; if ([sub_10013cd1c(a1[+0x0], a0) countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] != 0)
loc_1001448e8:
  1001448e8  adrp    x8, #0x100420000
  1001448ec  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001448f0  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  1001448f4  ldr     w9, [x8, #8]                             ; w9 = a0->description_[+0x8]
  1001448f8  ldr     w8, [x8, #0x14]                          ; w8 = a0->description_[+0x14]
  1001448fc  lsl     w9, w9, #3
  100144900  mov     x10, #1
  100144904  mov     x11, #2
  100144908  mov     x12, #3
  10014490c  lsr     w13, w9, #0x1c
  100144910  cmp     w13, #0
  100144914  mov     x13, #4
  100144918  cinc    x13, x13, ne
  10014491c  cmp     w9, #0x200, lsl #12
  100144920  csel    x12, x12, x13, lo                        ; t1 = ((a0->description_[+0x8] << 3) <u 0x200000 ? 3 : (((a0->description_[+0x8] << 3) >>> 28) != 0 ? 4 + 1 : 4))
  100144924  cmp     w9, #4, lsl #12
  100144928  csel    x11, x11, x12, lo
  10014492c  cmp     w9, #0x80
  100144930  csel    x9, x10, x11, lo                         ; t2 = ((a0->description_[+0x8] << 3) <u 128 ? 1 : ((a0->description_[+0x8] << 3) <u 0x4000 ? 2 : t1))
  100144934  cmp     w8, #0x10
  100144938  cset    w8, eq
  10014493c  lsl     x8, x9, x8
  100144940  adrp    x9, #0x100420000
  100144944  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100144948  ldr     x9, [x21, x9]                            ; x9 = sub_10013cd1c(a1[+0x0], a0)->_count
  10014494c  ldr     x10, [x19, #8]                           ; x10 = a1[+0x8]
  100144950  madd    x8, x9, x8, x10
  100144954  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + sub_10013cd1c(a1[+0x0], a0)->_count * (t2 << (a0->description_[+0x14] == 16)))
  100144958  adrp    x22, #0x1003b0000
  10014495c  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  100144960  b       loc_100144a1c
loc_100144964:
  100144964  adrp    x8, #0x100420000
  100144968  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  10014496c  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  100144970  cbz     x8, loc_100144a1c                        ; if (a1[+0x0]->messageStorage_ == 0)
  100144974  adrp    x21, #0x100420000
  100144978  ldrsw   x9, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  10014497c  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  100144980  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100144984  and     w10, w9, #0x1f
  100144988  mov     w11, #1
  10014498c  lsl     w10, w11, w10
  100144990  lsr     w9, w9, #5
  100144994  ldr     w8, [x8, w9, uxtw #2]
  100144998  and     w8, w8, w10
  10014499c  cbz     w8, loc_100144a1c                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  1001449a0  mov     x1, x20
  1001449a4  bl      sub_10013c1a0                            ; sub_10013c1a0(a1[+0x0], a0)
  1001449a8  ldrsw   x8, [x21, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  1001449ac  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  1001449b0  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  1001449b4  lsl     w8, w8, #3
  1001449b8  cmp     w8, #0x80
  1001449bc  b.hs    loc_1001449c8                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  1001449c0  mov     x20, #2
  1001449c4  b       loc_1001449fc
loc_1001449c8:
  1001449c8  cmp     w8, #4, lsl #12
  1001449cc  b.hs    loc_1001449d8                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  1001449d0  mov     x20, #4
  1001449d4  b       loc_1001449fc
loc_1001449d8:
  1001449d8  cmp     w8, #0x200, lsl #12
  1001449dc  b.hs    loc_1001449e8                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  1001449e0  mov     x20, #6
  1001449e4  b       loc_1001449fc
loc_1001449e8:
  1001449e8  lsr     w8, w8, #0x1c
  1001449ec  cmp     w8, #0
  1001449f0  mov     x8, #0xa
  1001449f4  mov     x9, #8
  1001449f8  csel    x20, x9, x8, eq
loc_1001449fc:
  1001449fc  adrp    x8, #0x10041c000
  100144a00  nop
  100144a04  ldr     x1, [x8, #0x610]
  100144a08  bl      _objc_msgSend                            ; [sub_10013c1a0(a1[+0x0], a0) serializedSize]
  100144a0c  add     x8, x0, x20
  100144a10  ldr     x9, [x19, #8]                            ; x9 = a1[+0x8]
  100144a14  add     x8, x8, x9
  100144a18  str     x8, [x19, #8]                            ; a1[+0x8] = (([sub_10013c1a0(a1[+0x0], a0) serializedSize] + x20) + a1[+0x8])
loc_100144a1c:
  100144a1c  ldr     x8, [x22]                                ; x8 = ___stack_chk_guard[+0x0]
  100144a20  ldur    x9, [x29, #-0x58]
  100144a24  sub     x8, x8, x9
  100144a28  cbnz    x8, loc_100144a50                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100144a2c  mov     w0, #1
  100144a30  sub     sp, x29, #0x50
  100144a34  ldp     x28, x27, [sp], #0x10
  100144a38  ldp     x26, x25, [sp], #0x10
  100144a3c  ldp     x24, x23, [sp], #0x10
  100144a40  ldp     x22, x21, [sp], #0x10
  100144a44  ldp     x20, x19, [sp], #0x10
  100144a48  ldp     x29, x30, [sp], #0x10
  100144a4c  ret
loc_100144a50:
  100144a50  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; sub_100144a54
; address 0x100144a54  size 568  kind sub
; ======================================================================
  100144a54  stp     x29, x30, [sp, #-0x10]!
  100144a58  mov     x29, sp
  100144a5c  stp     x20, x19, [sp, #-0x10]!
  100144a60  stp     x22, x21, [sp, #-0x10]!
  100144a64  stp     x24, x23, [sp, #-0x10]!
  100144a68  stp     x26, x25, [sp, #-0x10]!
  100144a6c  stp     x28, x27, [sp, #-0x10]!
  100144a70  sub     sp, sp, #0x10
  100144a74  mov     x21, x1
  100144a78  mov     x20, x0
  100144a7c  adrp    x8, #0x10041c000
  100144a80  nop
  100144a84  ldr     x1, [x8, #0x770]
  100144a88  bl      _objc_msgSend                            ; [a0 isRepeated]
  100144a8c  mov     x8, x0
  100144a90  ldr     x0, [x21]                                ; x0 = a1[+0x0]
  100144a94  cbz     w8, loc_100144b54                        ; if ([a0 isRepeated] == 0)
  100144a98  str     x21, [sp, #8]
  100144a9c  mov     x1, x20
  100144aa0  bl      sub_10013cd1c                            ; sub_10013cd1c(a1[+0x0], a0)
  100144aa4  mov     x21, x0
  100144aa8  adrp    x8, #0x100420000
  100144aac  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100144ab0  ldr     x25, [x21, x8]                           ; x25 = sub_10013cd1c(a1[+0x0], a0)->_count
  100144ab4  mov     x24, #0
  100144ab8  cbz     x25, loc_100144b20                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100144abc  adrp    x8, #0x10041c000
  100144ac0  add     x8, x8, #0x7b8                           ; &@selector(int32AtIndex:)
  100144ac4  mov     x22, #0
  100144ac8  ldr     x23, [x8]
  100144acc  mov     x26, #1
  100144ad0  mov     x27, #2
  100144ad4  mov     x28, #3
  100144ad8  mov     x19, #4
loc_100144adc:
  100144adc  mov     x0, x21
  100144ae0  mov     x1, x23
  100144ae4  mov     x2, x22
  100144ae8  bl      _objc_msgSend                            ; [sub_10013cd1c(a1[+0x0], a0) int32AtIndex:x2]
  100144aec  lsr     w8, w0, #0x1c
  100144af0  cmp     w8, #0
  100144af4  cinc    x8, x19, ne
  100144af8  cmp     w0, #0x200, lsl #12
  100144afc  csel    x8, x28, x8, lo                          ; t1 = ([sub_10013cd1c(a1[+0x0], a0) int32AtIndex:x2] <u 0x200000 ? 3 : (([sub_10013cd1c(a1[+0x0], a0) int32AtIndex:x2] >>> 28) != 0 ? 4 + 1 : 4))
  100144b00  cmp     w0, #4, lsl #12
  100144b04  csel    x8, x27, x8, lo
  100144b08  cmp     w0, #0x80
  100144b0c  csel    x8, x26, x8, lo                          ; t2 = ([sub_10013cd1c(a1[+0x0], a0) int32AtIndex:x2] <u 128 ? 1 : ([sub_10013cd1c(a1[+0x0], a0) int32AtIndex:x2] <u 0x4000 ? 2 : t1))
  100144b10  add     x24, x8, x24
  100144b14  add     x22, x22, #1
  100144b18  cmp     x25, x22
  100144b1c  b.ne    loc_100144adc                            ; if (sub_10013cd1c(a1[+0x0], a0)->_count != (x22 + 1))
loc_100144b20:
  100144b20  ldr     x19, [sp, #8]
  100144b24  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100144b28  add     x8, x8, x24
  100144b2c  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x24)
  100144b30  adrp    x8, #0x100420000
  100144b34  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100144b38  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100144b3c  ldr     w8, [x8, #8]                             ; w8 = a0->description_[+0x8]
  100144b40  lsl     w8, w8, #3
  100144b44  cmp     w8, #0x80
  100144b48  b.hs    loc_100144bbc                            ; if ((a0->description_[+0x8] << 3) >=u 128)
  100144b4c  mov     x21, #1
  100144b50  b       loc_100144bec
loc_100144b54:
  100144b54  adrp    x8, #0x100420000
  100144b58  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100144b5c  ldr     x8, [x0, x8]                             ; x8 = a1[+0x0]->messageStorage_
  100144b60  cbz     x8, loc_100144c68                        ; if (a1[+0x0]->messageStorage_ == 0)
  100144b64  adrp    x19, #0x100420000
  100144b68  ldrsw   x9, [x19, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100144b6c  ldr     x9, [x20, x9]                            ; x9 = a0->description_
  100144b70  ldr     w9, [x9, #0xc]                           ; w9 = a0->description_[+0xc]
  100144b74  and     w10, w9, #0x1f
  100144b78  mov     w11, #1
  100144b7c  lsl     w10, w11, w10
  100144b80  lsr     w9, w9, #5
  100144b84  ldr     w8, [x8, w9, uxtw #2]
  100144b88  and     w8, w8, w10
  100144b8c  cbz     w8, loc_100144c68                        ; if ((w8 & (1 << (a0->description_[+0xc] & 31))) == 0)
  100144b90  mov     x1, x20
  100144b94  bl      sub_10013def4                            ; sub_10013def4(a1[+0x0], a0)
  100144b98  mov     x1, x0
  100144b9c  ldrsw   x8, [x19, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100144ba0  ldr     x8, [x20, x8]                            ; x8 = a0->description_
  100144ba4  ldr     w0, [x8, #8]                             ; w0 = a0->description_[+0x8]
  100144ba8  bl      sub_10013582c                            ; sub_10013582c(a0->description_[+0x8], sub_10013def4(a1[+0x0], a0))
  100144bac  ldr     x8, [x21, #8]                            ; x8 = a1[+0x8]
  100144bb0  add     x8, x8, x0
  100144bb4  str     x8, [x21, #8]                            ; a1[+0x8] = (a1[+0x8] + sub_10013582c(a0->description_[+0x8], sub_10013def4(a1[+0x0], a0)))
  100144bb8  b       loc_100144c68
loc_100144bbc:
  100144bbc  cmp     w8, #4, lsl #12
  100144bc0  b.hs    loc_100144bcc                            ; if ((a0->description_[+0x8] << 3) >=u 0x4000)
  100144bc4  mov     x21, #2
  100144bc8  b       loc_100144bec
loc_100144bcc:
  100144bcc  cmp     w8, #0x200, lsl #12
  100144bd0  b.hs    loc_100144bdc                            ; if ((a0->description_[+0x8] << 3) >=u 0x200000)
  100144bd4  mov     x21, #3
  100144bd8  b       loc_100144bec
loc_100144bdc:
  100144bdc  lsr     w8, w8, #0x1c
  100144be0  cmp     w8, #0
  100144be4  mov     x8, #4
  100144be8  cinc    x21, x8, ne
loc_100144bec:
  100144bec  adrp    x8, #0x10041c000
  100144bf0  nop
  100144bf4  ldr     x1, [x8, #0xa20]
  100144bf8  mov     x0, x20
  100144bfc  bl      _objc_msgSend                            ; [a0 isPackable]
  100144c00  cbz     w0, loc_100144c5c                        ; if ([a0 isPackable] == 0)
  100144c04  cbz     x25, loc_100144c68                       ; if (sub_10013cd1c(a1[+0x0], a0)->_count == 0)
  100144c08  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100144c0c  add     x8, x8, x21
  100144c10  mov     x9, #0xa
  100144c14  mov     x10, #1
  100144c18  mov     x11, #2
  100144c1c  mov     x12, #3
  100144c20  lsr     w13, w24, #0x1c
  100144c24  cmp     w13, #0
  100144c28  mov     x13, #4
  100144c2c  cinc    x13, x13, ne
  100144c30  cmp     w24, #0x200, lsl #12
  100144c34  csel    x12, x12, x13, lo
  100144c38  cmp     w24, #4, lsl #12
  100144c3c  csel    x11, x11, x12, lo
  100144c40  cmp     w24, #0x80
  100144c44  csel    x10, x10, x11, lo                        ; t3 = (w24 <u 128 ? 1 : (w24 <u 0x4000 ? 2 : (w24 <u 0x200000 ? 3 : ((w24 >>> 28) != 0 ? 4 + 1 : 4))))
  100144c48  cmp     w24, #0
  100144c4c  csel    x9, x9, x10, lt
  100144c50  add     x8, x8, x9
  100144c54  str     x8, [x19, #8]                            ; a1[+0x8] = ((a1[+0x8] + x21) + (w24 < 0 ? 10 : t3))
  100144c58  b       loc_100144c68
loc_100144c5c:
  100144c5c  ldr     x8, [x19, #8]                            ; x8 = a1[+0x8]
  100144c60  madd    x8, x21, x25, x8
  100144c64  str     x8, [x19, #8]                            ; a1[+0x8] = (a1[+0x8] + x21 * sub_10013cd1c(a1[+0x0], a0)->_count)
loc_100144c68:
  100144c68  mov     w0, #1
  100144c6c  sub     sp, x29, #0x50
  100144c70  ldp     x28, x27, [sp], #0x10
  100144c74  ldp     x26, x25, [sp], #0x10
  100144c78  ldp     x24, x23, [sp], #0x10
  100144c7c  ldp     x22, x21, [sp], #0x10
  100144c80  ldp     x20, x19, [sp], #0x10
  100144c84  ldp     x29, x30, [sp], #0x10
  100144c88  ret

; ======================================================================
; sub_100144c8c
; address 0x100144c8c  size 224  kind sub
; ======================================================================
  100144c8c  stp     x29, x30, [sp, #-0x10]!
  100144c90  mov     x29, sp
  100144c94  stp     x20, x19, [sp, #-0x10]!
  100144c98  stp     x22, x21, [sp, #-0x10]!
  100144c9c  stp     x24, x23, [sp, #-0x10]!
  100144ca0  stp     x26, x25, [sp, #-0x10]!
  100144ca4  mov     x20, x3
  100144ca8  mov     x19, x2
  100144cac  mov     x21, x0
  100144cb0  adrp    x8, #0x100417000
  100144cb4  nop
  100144cb8  ldr     x8, [x8, #0x2e0]
  100144cbc  mov     x0, x1
  100144cc0  mov     x1, x8
  100144cc4  bl      _objc_msgSend                            ; [a1 class]
  100144cc8  adrp    x8, #0x10041c000
  100144ccc  nop
  100144cd0  ldr     x1, [x8, #0x7e8]
  100144cd4  bl      _objc_msgSend                            ; [[a1 class] descriptor]
  100144cd8  adrp    x8, #0x100420000
  100144cdc  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  100144ce0  ldr     x23, [x0, x8]                            ; x23 = [[a1 class] descriptor]->fields_
  100144ce4  adrp    x8, #0x10041b000
  100144ce8  nop
  100144cec  ldr     x1, [x8, #0xc78]
  100144cf0  mov     x0, x23
  100144cf4  bl      _objc_msgSend                            ; [[[a1 class] descriptor]->fields_ data]
  100144cf8  mov     x22, x0
  100144cfc  cbz     x23, loc_100144d50                       ; if ([[a1 class] descriptor]->fields_ == 0)
  100144d00  adrp    x8, #0x100420000
  100144d04  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100144d08  ldr     x23, [x23, x8]                           ; x23 = [[a1 class] descriptor]->fields_->_count
  100144d0c  cbz     x23, loc_100144d50                       ; if ([[a1 class] descriptor]->fields_->_count == 0)
  100144d10  mov     x24, #0
  100144d14  adrp    x25, #0x100420000
loc_100144d18:
  100144d18  cmp     x19, x23
  100144d1c  csel    x19, x19, xzr, lo
  100144d20  ldr     x0, [x22, x19, lsl #3]
  100144d24  ldrsw   x8, [x25, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100144d28  ldr     x8, [x0, x8]                             ; x8 = x0->description_
  100144d2c  ldr     w8, [x8, #0x14]                          ; w8 = x0->description_[+0x14]
  100144d30  ldr     x8, [x21, x8, lsl #3]
  100144d34  mov     x1, x20
  100144d38  blr     x8
  100144d3c  cbz     w0, loc_100144d50                        ; if (x8(…) == 0)
  100144d40  add     x19, x19, #1
  100144d44  add     x24, x24, #1
  100144d48  cmp     x24, x23
  100144d4c  b.lo    loc_100144d18                            ; if ((x24 + 1) <u [[a1 class] descriptor]->fields_->_count)
loc_100144d50:
  100144d50  mov     x0, x19
  100144d54  ldp     x26, x25, [sp], #0x10
  100144d58  ldp     x24, x23, [sp], #0x10
  100144d5c  ldp     x22, x21, [sp], #0x10
  100144d60  ldp     x20, x19, [sp], #0x10
  100144d64  ldp     x29, x30, [sp], #0x10
  100144d68  ret

; ======================================================================
; +[TAGPBGeneratedMessage resolveInstanceMethod:]
; address 0x100144d6c  size 852  kind objc
; ======================================================================
  100144d6c  stp     x29, x30, [sp, #-0x10]!
  100144d70  mov     x29, sp
  100144d74  stp     x20, x19, [sp, #-0x10]!
  100144d78  stp     x22, x21, [sp, #-0x10]!
  100144d7c  stp     x24, x23, [sp, #-0x10]!
  100144d80  stp     x26, x25, [sp, #-0x10]!
  100144d84  stp     x28, x27, [sp, #-0x10]!
  100144d88  sub     sp, sp, #0xb0
  100144d8c  mov     x19, x2
  100144d90  mov     x20, x0
  100144d94  adrp    x8, #0x10041c000
  100144d98  nop
  100144d9c  ldr     x1, [x8, #0x7e8]
  100144da0  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage descriptor]
  100144da4  cbz     x0, loc_100144ebc                        ; if ([TAGPBGeneratedMessage descriptor] == 0)
  100144da8  str     x20, [sp, #0x10]
  100144dac  stp     xzr, xzr, [x29, #-0x60]
  100144db0  adrp    x8, #0x100420000
  100144db4  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  100144db8  ldr     x0, [x0, x8]                             ; x0 = [TAGPBGeneratedMessage descriptor]->fields_
  100144dbc  cbz     x0, loc_100144ec4                        ; if ([TAGPBGeneratedMessage descriptor]->fields_ == 0)
  100144dc0  adrp    x8, #0x100420000
  100144dc4  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100144dc8  ldr     x20, [x0, x8]                            ; x20 = [TAGPBGeneratedMessage descriptor]->fields_->_count
  100144dcc  adrp    x8, #0x10041b000
  100144dd0  nop
  100144dd4  ldr     x1, [x8, #0xc78]
  100144dd8  bl      _objc_msgSend                            ; [[TAGPBGeneratedMessage descriptor]->fields_ data]
  100144ddc  mov     x22, x0
  100144de0  cbz     x20, loc_100145020                       ; if ([TAGPBGeneratedMessage descriptor]->fields_->_count == 0)
  100144de4  mov     x26, #0
  100144de8  adrp    x8, #0x10041c000
  100144dec  nop
  100144df0  ldr     x23, [x8, #0x770]
  100144df4  adrp    x8, #0x10041c000
  100144df8  nop
  100144dfc  ldr     x24, [x8, #0xb68]
  100144e00  adrp    x8, #0x10041c000
  100144e04  nop
  100144e08  ldr     x25, [x8, #0xb88]
  100144e0c  adrp    x8, #0x10041c000
  100144e10  nop
  100144e14  ldr     x8, [x8, #0xb70]
  100144e18  str     x8, [sp, #8]
  100144e1c  adrp    x8, #0x10041c000
  100144e20  add     x8, x8, #0xb80                           ; &@selector(setHasSel)
  100144e24  ldr     x27, [x8]
loc_100144e28:
  100144e28  ldr     x21, [x22, x26, lsl #3]
  100144e2c  mov     x0, x21
  100144e30  mov     x1, x23
  100144e34  bl      _objc_msgSend                            ; [x0 isRepeated]
  100144e38  mov     x28, x0
  100144e3c  mov     x0, x21
  100144e40  mov     x1, x24
  100144e44  bl      _objc_msgSend                            ; [x0 getSel]
  100144e48  cmp     x0, x19
  100144e4c  tbz     w28, #0, loc_100144e6c                   ; if (!([x0 isRepeated] & 1))
  100144e50  b.eq    loc_100144ed8                            ; if ([x0 getSel] == arg1)
  100144e54  mov     x0, x21
  100144e58  mov     x1, x25
  100144e5c  bl      _objc_msgSend                            ; [x0 setSel]
  100144e60  cmp     x0, x19
  100144e64  b.ne    loc_100144eac                            ; if ([x0 setSel] != arg1)
  100144e68  b       loc_100144f38
loc_100144e6c:
  100144e6c  b.eq    loc_100144f1c                            ; if (flags ==)
  100144e70  mov     x0, x21
  100144e74  ldr     x1, [sp, #8]
  100144e78  bl      _objc_msgSend                            ; [x0 hasSel]
  100144e7c  cmp     x0, x19
  100144e80  b.eq    loc_100144f7c                            ; if ([x0 hasSel] == arg1)
  100144e84  mov     x0, x21
  100144e88  mov     x1, x27
  100144e8c  bl      _objc_msgSend                            ; [x0 setHasSel]
  100144e90  cmp     x0, x19
  100144e94  b.eq    loc_100144fdc                            ; if ([x0 setHasSel] == arg1)
  100144e98  mov     x0, x21
  100144e9c  mov     x1, x25
  100144ea0  bl      _objc_msgSend                            ; [x0 setSel]
  100144ea4  cmp     x0, x19
  100144ea8  b.eq    loc_100144ff8                            ; if ([x0 setSel] == arg1)
loc_100144eac:
  100144eac  add     x26, x26, #1
  100144eb0  cmp     x26, x20
  100144eb4  b.lo    loc_100144e28                            ; if ((x26 + 1) <u [TAGPBGeneratedMessage descriptor]->fields_->_count)
  100144eb8  b       loc_100145020
loc_100144ebc:
  100144ebc  mov     w0, #0
  100144ec0  b       loc_1001450a0
loc_100144ec4:
  100144ec4  adrp    x8, #0x10041b000
  100144ec8  nop
  100144ecc  ldr     x1, [x8, #0xc78]
  100144ed0  bl      _objc_msgSend                            ; [[TAGPBGeneratedMessage descriptor]->fields_ data]
  100144ed4  b       loc_100145020
loc_100144ed8:
  100144ed8  adrp    x8, #0x1003b0000
  100144edc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100144ee0  mov     w9, #-0x3e000000
  100144ee4  adr     x10, #0x1001468a4                        ; &+[TAGPBGeneratedMessage resolveInstanceMethod:]_block_invoke
  100144ee8  nop
  100144eec  str     x8, [sp, #0x50]
  100144ef0  stp     w9, wzr, [sp, #0x58]
  100144ef4  adrp    x8, #0x1003b8000
  100144ef8  add     x8, x8, #0xa90                           ; &d_1003b8a90
  100144efc  stp     x10, x8, [sp, #0x60]
  100144f00  str     x21, [sp, #0x70]
  100144f04  add     x0, sp, #0x50
  100144f08  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{+[TAGPBGeneratedMessage resolveInstanceMethod:]_block_invoke})
  100144f0c  stur    x0, [x29, #-0x60]
  100144f10  adrp    x8, #0x10041c000
  100144f14  add     x8, x8, #0xb90                           ; &@selector(getArray)
  100144f18  b       loc_100144fd0
loc_100144f1c:
  100144f1c  adrp    x8, #0x100420000
  100144f20  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100144f24  ldr     x8, [x21, x8]                            ; x8 = x21->description_
  100144f28  ldr     w8, [x8, #0x14]                          ; w8 = x21->description_[+0x14]
  100144f2c  adrp    x9, #0x1003b8000
  100144f30  add     x9, x9, #0x8b8                           ; &d_1003b88b8
  100144f34  b       loc_100145010
loc_100144f38:
  100144f38  adrp    x8, #0x1003b0000
  100144f3c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100144f40  mov     w9, #-0x3e000000
  100144f44  adr     x10, #0x1001468d0                        ; &+[TAGPBGeneratedMessage resolveInstanceMethod:]_block_invoke_2
  100144f48  nop
  100144f4c  str     x8, [sp, #0x28]
  100144f50  stp     w9, wzr, [sp, #0x30]
  100144f54  adrp    x8, #0x1003b8000
  100144f58  add     x8, x8, #0xac0                           ; &d_1003b8ac0
  100144f5c  stp     x10, x8, [sp, #0x38]
  100144f60  str     x21, [sp, #0x48]
  100144f64  add     x0, sp, #0x28
  100144f68  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{+[TAGPBGeneratedMessage resolveInstanceMethod:]_block_invoke_2})
  100144f6c  stur    x0, [x29, #-0x60]
  100144f70  adrp    x8, #0x10041b000
  100144f74  add     x8, x8, #0x1d0                           ; &@selector(setArray:)
  100144f78  b       loc_100144fd0
loc_100144f7c:
  100144f7c  adrp    x8, #0x100420000
  100144f80  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100144f84  ldr     x8, [x21, x8]                            ; x8 = x21->description_
  100144f88  adrp    x9, #0x1003b0000
  100144f8c  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  100144f90  ldr     w8, [x8, #0xc]                           ; w8 = x21->description_[+0xc]
  100144f94  str     x9, [sp, #0x78]
  100144f98  mov     w9, #-0x40000000
  100144f9c  stp     w9, wzr, [sp, #0x80]
  100144fa0  adr     x9, #0x1001458a0                         ; &+[TAGPBGeneratedMessage resolveInstanceMethod:]_block_invoke_3
  100144fa4  nop
  100144fa8  str     x9, [sp, #0x88]
  100144fac  adrp    x9, #0x1003b8000
  100144fb0  add     x9, x9, #0x950                           ; &d_1003b8950
  100144fb4  str     x9, [sp, #0x90]
  100144fb8  str     w8, [sp, #0x98]
  100144fbc  add     x0, sp, #0x78
  100144fc0  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{+[TAGPBGeneratedMessage resolveInstanceMethod:]_block_invoke_3 captures +0x20=x21->description_[+0xc]})
  100144fc4  stur    x0, [x29, #-0x60]
  100144fc8  adrp    x8, #0x10041c000
  100144fcc  add     x8, x8, #0xb78                           ; &@selector(getBool)
loc_100144fd0:
  100144fd0  ldr     x8, [x8]                                 ; x8 = one of selectors {getArray, getBool, setArray:}
  100144fd4  stur    x8, [x29, #-0x58]
  100144fd8  b       loc_100145020
loc_100144fdc:
  100144fdc  adrp    x8, #0x100420000
  100144fe0  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100144fe4  ldr     x8, [x21, x8]                            ; x8 = x21->description_
  100144fe8  ldr     w8, [x8, #0x14]                          ; w8 = x21->description_[+0x14]
  100144fec  adrp    x9, #0x1003b8000
  100144ff0  add     x9, x9, #0x970                           ; &d_1003b8970
  100144ff4  b       loc_100145010
loc_100144ff8:
  100144ff8  adrp    x8, #0x100420000
  100144ffc  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100145000  ldr     x8, [x21, x8]                            ; x8 = x21->description_
  100145004  ldr     w8, [x8, #0x14]                          ; w8 = x21->description_[+0x14]
  100145008  adrp    x9, #0x1003b8000
  10014500c  add     x9, x9, #0xa00                           ; &d_1003b8a00
loc_100145010:
  100145010  ldr     x8, [x9, x8, lsl #3]
  100145014  sub     x1, x29, #0x60
  100145018  mov     x0, x21
  10014501c  blr     x8
loc_100145020:
  100145020  ldur    x8, [x29, #-0x60]
  100145024  cbz     x8, loc_100145074                        ; if (x8 == 0)
  100145028  ldur    x21, [x29, #-0x58]
  10014502c  adrp    x0, #0x100394000
  100145030  add     x0, x0, #0xa3f                           ; "TAGPBMessageSignatureProtocol"
  100145034  bl      _objc_getProtocol                        ; objc_getProtocol("TAGPBMessageSignatureProtocol")
  100145038  mov     w3, #1
  10014503c  mov     x1, x21
  100145040  mov     w2, #0
  100145044  bl      _protocol_getMethodDescription           ; protocol_getMethodDescription(objc_getProtocol("TAGPBMessageSignatureProtocol"), x1, 0, 1)
  100145048  mov     x21, x1
  10014504c  adrp    x8, #0x100417000
  100145050  nop
  100145054  ldr     x1, [x8, #0x2e0]
  100145058  ldr     x0, [sp, #0x10]
  10014505c  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage class]
  100145060  ldur    x2, [x29, #-0x60]
  100145064  mov     x1, x19
  100145068  mov     x3, x21
  10014506c  bl      _class_addMethod                         ; class_addMethod([TAGPBGeneratedMessage class], arg1)
  100145070  b       loc_1001450a0
loc_100145074:
  100145074  ldr     x8, [sp, #0x10]
  100145078  str     x8, [sp, #0x18]
  10014507c  adrp    x8, #0x10041f000
  100145080  ldr     x8, [x8, #0x1e0]
  100145084  str     x8, [sp, #0x20]
  100145088  adrp    x8, #0x10041c000
  10014508c  nop
  100145090  ldr     x1, [x8, #0xb98]
  100145094  add     x0, sp, #0x18
  100145098  mov     x2, x19
  10014509c  bl      _objc_msgSendSuper2                      ; [super resolveInstanceMethod:arg1]
loc_1001450a0:
  1001450a0  sub     sp, x29, #0x50
  1001450a4  ldp     x28, x27, [sp], #0x10
  1001450a8  ldp     x26, x25, [sp], #0x10
  1001450ac  ldp     x24, x23, [sp], #0x10
  1001450b0  ldp     x22, x21, [sp], #0x10
  1001450b4  ldp     x20, x19, [sp], #0x10
  1001450b8  ldp     x29, x30, [sp], #0x10
  1001450bc  ret

; ======================================================================
; sub_1001450c0
; address 0x1001450c0  size 112  kind sub
; ======================================================================
  1001450c0  stp     x29, x30, [sp, #-0x10]!
  1001450c4  mov     x29, sp
  1001450c8  stp     x20, x19, [sp, #-0x10]!
  1001450cc  sub     sp, sp, #0x30
  1001450d0  mov     x19, x1
  1001450d4  adrp    x8, #0x1003b0000
  1001450d8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001450dc  str     x8, [sp, #8]
  1001450e0  mov     w8, #-0x3e000000
  1001450e4  stp     w8, wzr, [sp, #0x10]
  1001450e8  adr     x8, #0x10014b590                         ; &sub_10014b590
  1001450ec  nop
  1001450f0  str     x8, [sp, #0x18]
  1001450f4  adrp    x8, #0x1003b9000
  1001450f8  add     x8, x8, #0x630                           ; &d_1003b9630
  1001450fc  stp     x8, x0, [sp, #0x20]
  100145100  add     x0, sp, #8
  100145104  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b590 captures +0x20=a0}, a1, a2, a3)
  100145108  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b590 captures +0x20=a0}, a1, a2, a3)
  10014510c  adrp    x8, #0x10041c000
  100145110  nop
  100145114  ldr     x8, [x8, #0xb78]
  100145118  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getBool)
  10014511c  mov     w0, #0
  100145120  sub     sp, x29, #0x10
  100145124  ldp     x20, x19, [sp], #0x10
  100145128  ldp     x29, x30, [sp], #0x10
  10014512c  ret

; ======================================================================
; sub_100145130
; address 0x100145130  size 112  kind sub
; ======================================================================
  100145130  stp     x29, x30, [sp, #-0x10]!
  100145134  mov     x29, sp
  100145138  stp     x20, x19, [sp, #-0x10]!
  10014513c  sub     sp, sp, #0x30
  100145140  mov     x19, x1
  100145144  adrp    x8, #0x1003b0000
  100145148  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10014514c  str     x8, [sp, #8]
  100145150  mov     w8, #-0x3e000000
  100145154  stp     w8, wzr, [sp, #0x10]
  100145158  adr     x8, #0x10014b564                         ; &sub_10014b564
  10014515c  nop
  100145160  str     x8, [sp, #0x18]
  100145164  adrp    x8, #0x1003b9000
  100145168  add     x8, x8, #0x600                           ; &d_1003b9600
  10014516c  stp     x8, x0, [sp, #0x20]
  100145170  add     x0, sp, #8
  100145174  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b564 captures +0x20=a0}, a1, a2, a3)
  100145178  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b564 captures +0x20=a0}, a1, a2, a3)
  10014517c  adrp    x8, #0x10041c000
  100145180  nop
  100145184  ldr     x8, [x8, #0xd98]
  100145188  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getFixed32)
  10014518c  mov     w0, #0
  100145190  sub     sp, x29, #0x10
  100145194  ldp     x20, x19, [sp], #0x10
  100145198  ldp     x29, x30, [sp], #0x10
  10014519c  ret

; ======================================================================
; sub_1001451a0
; address 0x1001451a0  size 112  kind sub
; ======================================================================
  1001451a0  stp     x29, x30, [sp, #-0x10]!
  1001451a4  mov     x29, sp
  1001451a8  stp     x20, x19, [sp, #-0x10]!
  1001451ac  sub     sp, sp, #0x30
  1001451b0  mov     x19, x1
  1001451b4  adrp    x8, #0x1003b0000
  1001451b8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001451bc  str     x8, [sp, #8]
  1001451c0  mov     w8, #-0x3e000000
  1001451c4  stp     w8, wzr, [sp, #0x10]
  1001451c8  adr     x8, #0x10014b538                         ; &sub_10014b538
  1001451cc  nop
  1001451d0  str     x8, [sp, #0x18]
  1001451d4  adrp    x8, #0x1003b9000
  1001451d8  add     x8, x8, #0x5d0                           ; &d_1003b95d0
  1001451dc  stp     x8, x0, [sp, #0x20]
  1001451e0  add     x0, sp, #8
  1001451e4  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b538 captures +0x20=a0}, a1, a2, a3)
  1001451e8  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b538 captures +0x20=a0}, a1, a2, a3)
  1001451ec  adrp    x8, #0x10041c000
  1001451f0  nop
  1001451f4  ldr     x8, [x8, #0xd90]
  1001451f8  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getSFixed32)
  1001451fc  mov     w0, #0
  100145200  sub     sp, x29, #0x10
  100145204  ldp     x20, x19, [sp], #0x10
  100145208  ldp     x29, x30, [sp], #0x10
  10014520c  ret

; ======================================================================
; sub_100145210
; address 0x100145210  size 112  kind sub
; ======================================================================
  100145210  stp     x29, x30, [sp, #-0x10]!
  100145214  mov     x29, sp
  100145218  stp     x20, x19, [sp, #-0x10]!
  10014521c  sub     sp, sp, #0x30
  100145220  mov     x19, x1
  100145224  adrp    x8, #0x1003b0000
  100145228  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10014522c  str     x8, [sp, #8]
  100145230  mov     w8, #-0x3e000000
  100145234  stp     w8, wzr, [sp, #0x10]
  100145238  adr     x8, #0x10014b50c                         ; &sub_10014b50c
  10014523c  nop
  100145240  str     x8, [sp, #0x18]
  100145244  adrp    x8, #0x1003b9000
  100145248  add     x8, x8, #0x5a0                           ; &d_1003b95a0
  10014524c  stp     x8, x0, [sp, #0x20]
  100145250  add     x0, sp, #8
  100145254  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b50c captures +0x20=a0}, a1, a2, a3)
  100145258  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b50c captures +0x20=a0}, a1, a2, a3)
  10014525c  adrp    x8, #0x10041c000
  100145260  nop
  100145264  ldr     x8, [x8, #0xd88]
  100145268  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getFloat)
  10014526c  mov     w0, #0
  100145270  sub     sp, x29, #0x10
  100145274  ldp     x20, x19, [sp], #0x10
  100145278  ldp     x29, x30, [sp], #0x10
  10014527c  ret

; ======================================================================
; sub_100145280
; address 0x100145280  size 112  kind sub
; ======================================================================
  100145280  stp     x29, x30, [sp, #-0x10]!
  100145284  mov     x29, sp
  100145288  stp     x20, x19, [sp, #-0x10]!
  10014528c  sub     sp, sp, #0x30
  100145290  mov     x19, x1
  100145294  adrp    x8, #0x1003b0000
  100145298  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10014529c  str     x8, [sp, #8]
  1001452a0  mov     w8, #-0x3e000000
  1001452a4  stp     w8, wzr, [sp, #0x10]
  1001452a8  adr     x8, #0x10014b4e0                         ; &sub_10014b4e0
  1001452ac  nop
  1001452b0  str     x8, [sp, #0x18]
  1001452b4  adrp    x8, #0x1003b9000
  1001452b8  add     x8, x8, #0x570                           ; &d_1003b9570
  1001452bc  stp     x8, x0, [sp, #0x20]
  1001452c0  add     x0, sp, #8
  1001452c4  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b4e0 captures +0x20=a0}, a1, a2, a3)
  1001452c8  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b4e0 captures +0x20=a0}, a1, a2, a3)
  1001452cc  adrp    x8, #0x10041c000
  1001452d0  nop
  1001452d4  ldr     x8, [x8, #0xd80]
  1001452d8  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getFixed64)
  1001452dc  mov     w0, #0
  1001452e0  sub     sp, x29, #0x10
  1001452e4  ldp     x20, x19, [sp], #0x10
  1001452e8  ldp     x29, x30, [sp], #0x10
  1001452ec  ret

; ======================================================================
; sub_1001452f0
; address 0x1001452f0  size 112  kind sub
; ======================================================================
  1001452f0  stp     x29, x30, [sp, #-0x10]!
  1001452f4  mov     x29, sp
  1001452f8  stp     x20, x19, [sp, #-0x10]!
  1001452fc  sub     sp, sp, #0x30
  100145300  mov     x19, x1
  100145304  adrp    x8, #0x1003b0000
  100145308  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10014530c  str     x8, [sp, #8]
  100145310  mov     w8, #-0x3e000000
  100145314  stp     w8, wzr, [sp, #0x10]
  100145318  adr     x8, #0x10014b4b4                         ; &sub_10014b4b4
  10014531c  nop
  100145320  str     x8, [sp, #0x18]
  100145324  adrp    x8, #0x1003b9000
  100145328  add     x8, x8, #0x540                           ; &d_1003b9540
  10014532c  stp     x8, x0, [sp, #0x20]
  100145330  add     x0, sp, #8
  100145334  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b4b4 captures +0x20=a0}, a1, a2, a3)
  100145338  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b4b4 captures +0x20=a0}, a1, a2, a3)
  10014533c  adrp    x8, #0x10041c000
  100145340  nop
  100145344  ldr     x8, [x8, #0xd78]
  100145348  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getSFixed64)
  10014534c  mov     w0, #0
  100145350  sub     sp, x29, #0x10
  100145354  ldp     x20, x19, [sp], #0x10
  100145358  ldp     x29, x30, [sp], #0x10
  10014535c  ret

; ======================================================================
; sub_100145360
; address 0x100145360  size 112  kind sub
; ======================================================================
  100145360  stp     x29, x30, [sp, #-0x10]!
  100145364  mov     x29, sp
  100145368  stp     x20, x19, [sp, #-0x10]!
  10014536c  sub     sp, sp, #0x30
  100145370  mov     x19, x1
  100145374  adrp    x8, #0x1003b0000
  100145378  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10014537c  str     x8, [sp, #8]
  100145380  mov     w8, #-0x3e000000
  100145384  stp     w8, wzr, [sp, #0x10]
  100145388  adr     x8, #0x10014b488                         ; &sub_10014b488
  10014538c  nop
  100145390  str     x8, [sp, #0x18]
  100145394  adrp    x8, #0x1003b9000
  100145398  add     x8, x8, #0x510                           ; &d_1003b9510
  10014539c  stp     x8, x0, [sp, #0x20]
  1001453a0  add     x0, sp, #8
  1001453a4  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b488 captures +0x20=a0}, a1, a2, a3)
  1001453a8  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b488 captures +0x20=a0}, a1, a2, a3)
  1001453ac  adrp    x8, #0x10041c000
  1001453b0  nop
  1001453b4  ldr     x8, [x8, #0xd70]
  1001453b8  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getDouble)
  1001453bc  mov     w0, #0
  1001453c0  sub     sp, x29, #0x10
  1001453c4  ldp     x20, x19, [sp], #0x10
  1001453c8  ldp     x29, x30, [sp], #0x10
  1001453cc  ret

; ======================================================================
; sub_1001453d0
; address 0x1001453d0  size 112  kind sub
; ======================================================================
  1001453d0  stp     x29, x30, [sp, #-0x10]!
  1001453d4  mov     x29, sp
  1001453d8  stp     x20, x19, [sp, #-0x10]!
  1001453dc  sub     sp, sp, #0x30
  1001453e0  mov     x19, x1
  1001453e4  adrp    x8, #0x1003b0000
  1001453e8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001453ec  str     x8, [sp, #8]
  1001453f0  mov     w8, #-0x3e000000
  1001453f4  stp     w8, wzr, [sp, #0x10]
  1001453f8  adr     x8, #0x10014b45c                         ; &sub_10014b45c
  1001453fc  nop
  100145400  str     x8, [sp, #0x18]
  100145404  adrp    x8, #0x1003b9000
  100145408  add     x8, x8, #0x4e0                           ; &d_1003b94e0
  10014540c  stp     x8, x0, [sp, #0x20]
  100145410  add     x0, sp, #8
  100145414  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b45c captures +0x20=a0}, a1, a2, a3)
  100145418  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b45c captures +0x20=a0}, a1, a2, a3)
  10014541c  adrp    x8, #0x10041c000
  100145420  nop
  100145424  ldr     x8, [x8, #0xd68]
  100145428  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getInt32)
  10014542c  mov     w0, #0
  100145430  sub     sp, x29, #0x10
  100145434  ldp     x20, x19, [sp], #0x10
  100145438  ldp     x29, x30, [sp], #0x10
  10014543c  ret

; ======================================================================
; sub_100145440
; address 0x100145440  size 112  kind sub
; ======================================================================
  100145440  stp     x29, x30, [sp, #-0x10]!
  100145444  mov     x29, sp
  100145448  stp     x20, x19, [sp, #-0x10]!
  10014544c  sub     sp, sp, #0x30
  100145450  mov     x19, x1
  100145454  adrp    x8, #0x1003b0000
  100145458  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10014545c  str     x8, [sp, #8]
  100145460  mov     w8, #-0x3e000000
  100145464  stp     w8, wzr, [sp, #0x10]
  100145468  adr     x8, #0x10014b430                         ; &sub_10014b430
  10014546c  nop
  100145470  str     x8, [sp, #0x18]
  100145474  adrp    x8, #0x1003b9000
  100145478  add     x8, x8, #0x4b0                           ; &d_1003b94b0
  10014547c  stp     x8, x0, [sp, #0x20]
  100145480  add     x0, sp, #8
  100145484  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b430 captures +0x20=a0}, a1, a2, a3)
  100145488  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b430 captures +0x20=a0}, a1, a2, a3)
  10014548c  adrp    x8, #0x10041c000
  100145490  nop
  100145494  ldr     x8, [x8, #0xd60]
  100145498  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getInt64)
  10014549c  mov     w0, #0
  1001454a0  sub     sp, x29, #0x10
  1001454a4  ldp     x20, x19, [sp], #0x10
  1001454a8  ldp     x29, x30, [sp], #0x10
  1001454ac  ret

; ======================================================================
; sub_1001454b0
; address 0x1001454b0  size 112  kind sub
; ======================================================================
  1001454b0  stp     x29, x30, [sp, #-0x10]!
  1001454b4  mov     x29, sp
  1001454b8  stp     x20, x19, [sp, #-0x10]!
  1001454bc  sub     sp, sp, #0x30
  1001454c0  mov     x19, x1
  1001454c4  adrp    x8, #0x1003b0000
  1001454c8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001454cc  str     x8, [sp, #8]
  1001454d0  mov     w8, #-0x3e000000
  1001454d4  stp     w8, wzr, [sp, #0x10]
  1001454d8  adr     x8, #0x10014b404                         ; &sub_10014b404
  1001454dc  nop
  1001454e0  str     x8, [sp, #0x18]
  1001454e4  adrp    x8, #0x1003b9000
  1001454e8  add     x8, x8, #0x480                           ; &d_1003b9480
  1001454ec  stp     x8, x0, [sp, #0x20]
  1001454f0  add     x0, sp, #8
  1001454f4  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b404 captures +0x20=a0}, a1, a2, a3)
  1001454f8  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b404 captures +0x20=a0}, a1, a2, a3)
  1001454fc  adrp    x8, #0x10041c000
  100145500  nop
  100145504  ldr     x8, [x8, #0xd58]
  100145508  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getSInt32)
  10014550c  mov     w0, #0
  100145510  sub     sp, x29, #0x10
  100145514  ldp     x20, x19, [sp], #0x10
  100145518  ldp     x29, x30, [sp], #0x10
  10014551c  ret

; ======================================================================
; sub_100145520
; address 0x100145520  size 112  kind sub
; ======================================================================
  100145520  stp     x29, x30, [sp, #-0x10]!
  100145524  mov     x29, sp
  100145528  stp     x20, x19, [sp, #-0x10]!
  10014552c  sub     sp, sp, #0x30
  100145530  mov     x19, x1
  100145534  adrp    x8, #0x1003b0000
  100145538  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10014553c  str     x8, [sp, #8]
  100145540  mov     w8, #-0x3e000000
  100145544  stp     w8, wzr, [sp, #0x10]
  100145548  adr     x8, #0x10014b3d8                         ; &sub_10014b3d8
  10014554c  nop
  100145550  str     x8, [sp, #0x18]
  100145554  adrp    x8, #0x1003b9000
  100145558  add     x8, x8, #0x450                           ; &d_1003b9450
  10014555c  stp     x8, x0, [sp, #0x20]
  100145560  add     x0, sp, #8
  100145564  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b3d8 captures +0x20=a0}, a1, a2, a3)
  100145568  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b3d8 captures +0x20=a0}, a1, a2, a3)
  10014556c  adrp    x8, #0x10041c000
  100145570  nop
  100145574  ldr     x8, [x8, #0xd50]
  100145578  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getSInt64)
  10014557c  mov     w0, #0
  100145580  sub     sp, x29, #0x10
  100145584  ldp     x20, x19, [sp], #0x10
  100145588  ldp     x29, x30, [sp], #0x10
  10014558c  ret

; ======================================================================
; sub_100145590
; address 0x100145590  size 112  kind sub
; ======================================================================
  100145590  stp     x29, x30, [sp, #-0x10]!
  100145594  mov     x29, sp
  100145598  stp     x20, x19, [sp, #-0x10]!
  10014559c  sub     sp, sp, #0x30
  1001455a0  mov     x19, x1
  1001455a4  adrp    x8, #0x1003b0000
  1001455a8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001455ac  str     x8, [sp, #8]
  1001455b0  mov     w8, #-0x3e000000
  1001455b4  stp     w8, wzr, [sp, #0x10]
  1001455b8  adr     x8, #0x10014b3ac                         ; &sub_10014b3ac
  1001455bc  nop
  1001455c0  str     x8, [sp, #0x18]
  1001455c4  adrp    x8, #0x1003b9000
  1001455c8  add     x8, x8, #0x420                           ; &d_1003b9420
  1001455cc  stp     x8, x0, [sp, #0x20]
  1001455d0  add     x0, sp, #8
  1001455d4  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b3ac captures +0x20=a0}, a1, a2, a3)
  1001455d8  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b3ac captures +0x20=a0}, a1, a2, a3)
  1001455dc  adrp    x8, #0x10041c000
  1001455e0  nop
  1001455e4  ldr     x8, [x8, #0xd48]
  1001455e8  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getUInt32)
  1001455ec  mov     w0, #0
  1001455f0  sub     sp, x29, #0x10
  1001455f4  ldp     x20, x19, [sp], #0x10
  1001455f8  ldp     x29, x30, [sp], #0x10
  1001455fc  ret

; ======================================================================
; sub_100145600
; address 0x100145600  size 112  kind sub
; ======================================================================
  100145600  stp     x29, x30, [sp, #-0x10]!
  100145604  mov     x29, sp
  100145608  stp     x20, x19, [sp, #-0x10]!
  10014560c  sub     sp, sp, #0x30
  100145610  mov     x19, x1
  100145614  adrp    x8, #0x1003b0000
  100145618  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10014561c  str     x8, [sp, #8]
  100145620  mov     w8, #-0x3e000000
  100145624  stp     w8, wzr, [sp, #0x10]
  100145628  adr     x8, #0x10014b380                         ; &sub_10014b380
  10014562c  nop
  100145630  str     x8, [sp, #0x18]
  100145634  adrp    x8, #0x1003b9000
  100145638  add     x8, x8, #0x3f0                           ; &d_1003b93f0
  10014563c  stp     x8, x0, [sp, #0x20]
  100145640  add     x0, sp, #8
  100145644  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b380 captures +0x20=a0}, a1, a2, a3)
  100145648  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b380 captures +0x20=a0}, a1, a2, a3)
  10014564c  adrp    x8, #0x10041c000
  100145650  nop
  100145654  ldr     x8, [x8, #0xd40]
  100145658  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getUInt64)
  10014565c  mov     w0, #0
  100145660  sub     sp, x29, #0x10
  100145664  ldp     x20, x19, [sp], #0x10
  100145668  ldp     x29, x30, [sp], #0x10
  10014566c  ret

; ======================================================================
; sub_100145670
; address 0x100145670  size 112  kind sub
; ======================================================================
  100145670  stp     x29, x30, [sp, #-0x10]!
  100145674  mov     x29, sp
  100145678  stp     x20, x19, [sp, #-0x10]!
  10014567c  sub     sp, sp, #0x30
  100145680  mov     x19, x1
  100145684  adrp    x8, #0x1003b0000
  100145688  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10014568c  str     x8, [sp, #8]
  100145690  mov     w8, #-0x3e000000
  100145694  stp     w8, wzr, [sp, #0x10]
  100145698  adr     x8, #0x10014b354                         ; &sub_10014b354
  10014569c  nop
  1001456a0  str     x8, [sp, #0x18]
  1001456a4  adrp    x8, #0x1003b9000
  1001456a8  add     x8, x8, #0x3c0                           ; &d_1003b93c0
  1001456ac  stp     x8, x0, [sp, #0x20]
  1001456b0  add     x0, sp, #8
  1001456b4  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b354 captures +0x20=a0}, a1, a2, a3)
  1001456b8  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b354 captures +0x20=a0}, a1, a2, a3)
  1001456bc  adrp    x8, #0x10041c000
  1001456c0  nop
  1001456c4  ldr     x8, [x8, #0xd38]
  1001456c8  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getData)
  1001456cc  mov     w0, #0
  1001456d0  sub     sp, x29, #0x10
  1001456d4  ldp     x20, x19, [sp], #0x10
  1001456d8  ldp     x29, x30, [sp], #0x10
  1001456dc  ret

; ======================================================================
; sub_1001456e0
; address 0x1001456e0  size 112  kind sub
; ======================================================================
  1001456e0  stp     x29, x30, [sp, #-0x10]!
  1001456e4  mov     x29, sp
  1001456e8  stp     x20, x19, [sp, #-0x10]!
  1001456ec  sub     sp, sp, #0x30
  1001456f0  mov     x19, x1
  1001456f4  adrp    x8, #0x1003b0000
  1001456f8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001456fc  str     x8, [sp, #8]
  100145700  mov     w8, #-0x3e000000
  100145704  stp     w8, wzr, [sp, #0x10]
  100145708  adr     x8, #0x10014b328                         ; &sub_10014b328
  10014570c  nop
  100145710  str     x8, [sp, #0x18]
  100145714  adrp    x8, #0x1003b9000
  100145718  add     x8, x8, #0x390                           ; &d_1003b9390
  10014571c  stp     x8, x0, [sp, #0x20]
  100145720  add     x0, sp, #8
  100145724  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b328 captures +0x20=a0}, a1, a2, a3)
  100145728  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b328 captures +0x20=a0}, a1, a2, a3)
  10014572c  adrp    x8, #0x10041c000
  100145730  nop
  100145734  ldr     x8, [x8, #0xd30]
  100145738  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getString)
  10014573c  mov     w0, #0
  100145740  sub     sp, x29, #0x10
  100145744  ldp     x20, x19, [sp], #0x10
  100145748  ldp     x29, x30, [sp], #0x10
  10014574c  ret

; ======================================================================
; sub_100145750
; address 0x100145750  size 112  kind sub
; ======================================================================
  100145750  stp     x29, x30, [sp, #-0x10]!
  100145754  mov     x29, sp
  100145758  stp     x20, x19, [sp, #-0x10]!
  10014575c  sub     sp, sp, #0x30
  100145760  mov     x19, x1
  100145764  adrp    x8, #0x1003b0000
  100145768  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10014576c  str     x8, [sp, #8]
  100145770  mov     w8, #-0x3e000000
  100145774  stp     w8, wzr, [sp, #0x10]
  100145778  adr     x8, #0x10014b2fc                         ; &sub_10014b2fc
  10014577c  nop
  100145780  str     x8, [sp, #0x18]
  100145784  adrp    x8, #0x1003b9000
  100145788  add     x8, x8, #0x360                           ; &d_1003b9360
  10014578c  stp     x8, x0, [sp, #0x20]
  100145790  add     x0, sp, #8
  100145794  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b2fc captures +0x20=a0}, a1, a2, a3)
  100145798  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b2fc captures +0x20=a0}, a1, a2, a3)
  10014579c  adrp    x8, #0x10041c000
  1001457a0  nop
  1001457a4  ldr     x8, [x8, #0xd28]
  1001457a8  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getMessage)
  1001457ac  mov     w0, #0
  1001457b0  sub     sp, x29, #0x10
  1001457b4  ldp     x20, x19, [sp], #0x10
  1001457b8  ldp     x29, x30, [sp], #0x10
  1001457bc  ret

; ======================================================================
; sub_1001457c0
; address 0x1001457c0  size 112  kind sub
; ======================================================================
  1001457c0  stp     x29, x30, [sp, #-0x10]!
  1001457c4  mov     x29, sp
  1001457c8  stp     x20, x19, [sp, #-0x10]!
  1001457cc  sub     sp, sp, #0x30
  1001457d0  mov     x19, x1
  1001457d4  adrp    x8, #0x1003b0000
  1001457d8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001457dc  str     x8, [sp, #8]
  1001457e0  mov     w8, #-0x3e000000
  1001457e4  stp     w8, wzr, [sp, #0x10]
  1001457e8  adr     x8, #0x10014b2d0                         ; &sub_10014b2d0
  1001457ec  nop
  1001457f0  str     x8, [sp, #0x18]
  1001457f4  adrp    x8, #0x1003b9000
  1001457f8  add     x8, x8, #0x330                           ; &d_1003b9330
  1001457fc  stp     x8, x0, [sp, #0x20]
  100145800  add     x0, sp, #8
  100145804  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b2d0 captures +0x20=a0}, a1, a2, a3)
  100145808  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b2d0 captures +0x20=a0}, a1, a2, a3)
  10014580c  adrp    x8, #0x10041c000
  100145810  nop
  100145814  ldr     x8, [x8, #0xd20]
  100145818  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getGroup)
  10014581c  mov     w0, #0
  100145820  sub     sp, x29, #0x10
  100145824  ldp     x20, x19, [sp], #0x10
  100145828  ldp     x29, x30, [sp], #0x10
  10014582c  ret

; ======================================================================
; sub_100145830
; address 0x100145830  size 112  kind sub
; ======================================================================
  100145830  stp     x29, x30, [sp, #-0x10]!
  100145834  mov     x29, sp
  100145838  stp     x20, x19, [sp, #-0x10]!
  10014583c  sub     sp, sp, #0x30
  100145840  mov     x19, x1
  100145844  adrp    x8, #0x1003b0000
  100145848  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10014584c  str     x8, [sp, #8]
  100145850  mov     w8, #-0x3e000000
  100145854  stp     w8, wzr, [sp, #0x10]
  100145858  adr     x8, #0x10014b2a4                         ; &sub_10014b2a4
  10014585c  nop
  100145860  str     x8, [sp, #0x18]
  100145864  adrp    x8, #0x1003b9000
  100145868  add     x8, x8, #0x300                           ; &d_1003b9300
  10014586c  stp     x8, x0, [sp, #0x20]
  100145870  add     x0, sp, #8
  100145874  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b2a4 captures +0x20=a0}, a1, a2, a3)
  100145878  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b2a4 captures +0x20=a0}, a1, a2, a3)
  10014587c  adrp    x8, #0x10041c000
  100145880  nop
  100145884  ldr     x8, [x8, #0xd18]
  100145888  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(getEnum)
  10014588c  mov     w0, #0
  100145890  sub     sp, x29, #0x10
  100145894  ldp     x20, x19, [sp], #0x10
  100145898  ldp     x29, x30, [sp], #0x10
  10014589c  ret

; ======================================================================
; +[TAGPBGeneratedMessage resolveInstanceMethod:]_block_invoke_3
; address 0x1001458a0  size 68  kind block
; ======================================================================
  1001458a0  adrp    x8, #0x100420000
  1001458a4  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  1001458a8  ldr     x8, [x1, x8]                             ; x8 = blockarg1->messageStorage_
  1001458ac  cbz     x8, loc_1001458d8                        ; if (blockarg1->messageStorage_ == 0)
  1001458b0  ldr     w9, [x0, #0x20]                          ; w9 = captured x21->description_[+0xc]
  1001458b4  and     w10, w9, #0x1f
  1001458b8  mov     w11, #1
  1001458bc  lsl     w10, w11, w10
  1001458c0  lsr     w9, w9, #5
  1001458c4  ldr     w8, [x8, w9, uxtw #2]
  1001458c8  and     w8, w8, w10
  1001458cc  cmp     w8, #0
  1001458d0  cset    w8, ne
  1001458d4  b       loc_1001458dc
loc_1001458d8:
  1001458d8  mov     w8, #0
loc_1001458dc:
  1001458dc  and     w0, w8, #1
  1001458e0  ret

; ======================================================================
; sub_1001458e4
; address 0x1001458e4  size 112  kind sub
; ======================================================================
  1001458e4  stp     x29, x30, [sp, #-0x10]!
  1001458e8  mov     x29, sp
  1001458ec  stp     x20, x19, [sp, #-0x10]!
  1001458f0  sub     sp, sp, #0x30
  1001458f4  mov     x19, x1
  1001458f8  adrp    x8, #0x1003b0000
  1001458fc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145900  str     x8, [sp, #8]
  100145904  mov     w8, #-0x3e000000
  100145908  stp     w8, wzr, [sp, #0x10]
  10014590c  adr     x8, #0x10014b230                         ; &sub_10014b230
  100145910  nop
  100145914  str     x8, [sp, #0x18]
  100145918  adrp    x8, #0x1003b9000
  10014591c  add     x8, x8, #0x2d0                           ; &d_1003b92d0
  100145920  stp     x8, x0, [sp, #0x20]
  100145924  add     x0, sp, #8
  100145928  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b230 captures +0x20=a0}, a1, a2, a3)
  10014592c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b230 captures +0x20=a0}, a1, a2, a3)
  100145930  adrp    x8, #0x10041c000
  100145934  nop
  100145938  ldr     x8, [x8, #0xd10]
  10014593c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145940  mov     w0, #0
  100145944  sub     sp, x29, #0x10
  100145948  ldp     x20, x19, [sp], #0x10
  10014594c  ldp     x29, x30, [sp], #0x10
  100145950  ret

; ======================================================================
; sub_100145954
; address 0x100145954  size 112  kind sub
; ======================================================================
  100145954  stp     x29, x30, [sp, #-0x10]!
  100145958  mov     x29, sp
  10014595c  stp     x20, x19, [sp, #-0x10]!
  100145960  sub     sp, sp, #0x30
  100145964  mov     x19, x1
  100145968  adrp    x8, #0x1003b0000
  10014596c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145970  str     x8, [sp, #8]
  100145974  mov     w8, #-0x3e000000
  100145978  stp     w8, wzr, [sp, #0x10]
  10014597c  adr     x8, #0x10014b1bc                         ; &sub_10014b1bc
  100145980  nop
  100145984  str     x8, [sp, #0x18]
  100145988  adrp    x8, #0x1003b9000
  10014598c  add     x8, x8, #0x2a0                           ; &d_1003b92a0
  100145990  stp     x8, x0, [sp, #0x20]
  100145994  add     x0, sp, #8
  100145998  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b1bc captures +0x20=a0}, a1, a2, a3)
  10014599c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b1bc captures +0x20=a0}, a1, a2, a3)
  1001459a0  adrp    x8, #0x10041c000
  1001459a4  nop
  1001459a8  ldr     x8, [x8, #0xd10]
  1001459ac  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  1001459b0  mov     w0, #0
  1001459b4  sub     sp, x29, #0x10
  1001459b8  ldp     x20, x19, [sp], #0x10
  1001459bc  ldp     x29, x30, [sp], #0x10
  1001459c0  ret

; ======================================================================
; sub_1001459c4
; address 0x1001459c4  size 112  kind sub
; ======================================================================
  1001459c4  stp     x29, x30, [sp, #-0x10]!
  1001459c8  mov     x29, sp
  1001459cc  stp     x20, x19, [sp, #-0x10]!
  1001459d0  sub     sp, sp, #0x30
  1001459d4  mov     x19, x1
  1001459d8  adrp    x8, #0x1003b0000
  1001459dc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001459e0  str     x8, [sp, #8]
  1001459e4  mov     w8, #-0x3e000000
  1001459e8  stp     w8, wzr, [sp, #0x10]
  1001459ec  adr     x8, #0x10014b148                         ; &sub_10014b148
  1001459f0  nop
  1001459f4  str     x8, [sp, #0x18]
  1001459f8  adrp    x8, #0x1003b9000
  1001459fc  add     x8, x8, #0x270                           ; &d_1003b9270
  100145a00  stp     x8, x0, [sp, #0x20]
  100145a04  add     x0, sp, #8
  100145a08  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b148 captures +0x20=a0}, a1, a2, a3)
  100145a0c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b148 captures +0x20=a0}, a1, a2, a3)
  100145a10  adrp    x8, #0x10041c000
  100145a14  nop
  100145a18  ldr     x8, [x8, #0xd10]
  100145a1c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145a20  mov     w0, #0
  100145a24  sub     sp, x29, #0x10
  100145a28  ldp     x20, x19, [sp], #0x10
  100145a2c  ldp     x29, x30, [sp], #0x10
  100145a30  ret

; ======================================================================
; sub_100145a34
; address 0x100145a34  size 112  kind sub
; ======================================================================
  100145a34  stp     x29, x30, [sp, #-0x10]!
  100145a38  mov     x29, sp
  100145a3c  stp     x20, x19, [sp, #-0x10]!
  100145a40  sub     sp, sp, #0x30
  100145a44  mov     x19, x1
  100145a48  adrp    x8, #0x1003b0000
  100145a4c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145a50  str     x8, [sp, #8]
  100145a54  mov     w8, #-0x3e000000
  100145a58  stp     w8, wzr, [sp, #0x10]
  100145a5c  adr     x8, #0x10014b0d4                         ; &sub_10014b0d4
  100145a60  nop
  100145a64  str     x8, [sp, #0x18]
  100145a68  adrp    x8, #0x1003b9000
  100145a6c  add     x8, x8, #0x240                           ; &d_1003b9240
  100145a70  stp     x8, x0, [sp, #0x20]
  100145a74  add     x0, sp, #8
  100145a78  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b0d4 captures +0x20=a0}, a1, a2, a3)
  100145a7c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b0d4 captures +0x20=a0}, a1, a2, a3)
  100145a80  adrp    x8, #0x10041c000
  100145a84  nop
  100145a88  ldr     x8, [x8, #0xd10]
  100145a8c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145a90  mov     w0, #0
  100145a94  sub     sp, x29, #0x10
  100145a98  ldp     x20, x19, [sp], #0x10
  100145a9c  ldp     x29, x30, [sp], #0x10
  100145aa0  ret

; ======================================================================
; sub_100145aa4
; address 0x100145aa4  size 112  kind sub
; ======================================================================
  100145aa4  stp     x29, x30, [sp, #-0x10]!
  100145aa8  mov     x29, sp
  100145aac  stp     x20, x19, [sp, #-0x10]!
  100145ab0  sub     sp, sp, #0x30
  100145ab4  mov     x19, x1
  100145ab8  adrp    x8, #0x1003b0000
  100145abc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145ac0  str     x8, [sp, #8]
  100145ac4  mov     w8, #-0x3e000000
  100145ac8  stp     w8, wzr, [sp, #0x10]
  100145acc  adr     x8, #0x10014b060                         ; &sub_10014b060
  100145ad0  nop
  100145ad4  str     x8, [sp, #0x18]
  100145ad8  adrp    x8, #0x1003b9000
  100145adc  add     x8, x8, #0x210                           ; &d_1003b9210
  100145ae0  stp     x8, x0, [sp, #0x20]
  100145ae4  add     x0, sp, #8
  100145ae8  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014b060 captures +0x20=a0}, a1, a2, a3)
  100145aec  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014b060 captures +0x20=a0}, a1, a2, a3)
  100145af0  adrp    x8, #0x10041c000
  100145af4  nop
  100145af8  ldr     x8, [x8, #0xd10]
  100145afc  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145b00  mov     w0, #0
  100145b04  sub     sp, x29, #0x10
  100145b08  ldp     x20, x19, [sp], #0x10
  100145b0c  ldp     x29, x30, [sp], #0x10
  100145b10  ret

; ======================================================================
; sub_100145b14
; address 0x100145b14  size 112  kind sub
; ======================================================================
  100145b14  stp     x29, x30, [sp, #-0x10]!
  100145b18  mov     x29, sp
  100145b1c  stp     x20, x19, [sp, #-0x10]!
  100145b20  sub     sp, sp, #0x30
  100145b24  mov     x19, x1
  100145b28  adrp    x8, #0x1003b0000
  100145b2c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145b30  str     x8, [sp, #8]
  100145b34  mov     w8, #-0x3e000000
  100145b38  stp     w8, wzr, [sp, #0x10]
  100145b3c  adr     x8, #0x10014afec                         ; &sub_10014afec
  100145b40  nop
  100145b44  str     x8, [sp, #0x18]
  100145b48  adrp    x8, #0x1003b9000
  100145b4c  add     x8, x8, #0x1e0                           ; &d_1003b91e0
  100145b50  stp     x8, x0, [sp, #0x20]
  100145b54  add     x0, sp, #8
  100145b58  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014afec captures +0x20=a0}, a1, a2, a3)
  100145b5c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014afec captures +0x20=a0}, a1, a2, a3)
  100145b60  adrp    x8, #0x10041c000
  100145b64  nop
  100145b68  ldr     x8, [x8, #0xd10]
  100145b6c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145b70  mov     w0, #0
  100145b74  sub     sp, x29, #0x10
  100145b78  ldp     x20, x19, [sp], #0x10
  100145b7c  ldp     x29, x30, [sp], #0x10
  100145b80  ret

; ======================================================================
; sub_100145b84
; address 0x100145b84  size 112  kind sub
; ======================================================================
  100145b84  stp     x29, x30, [sp, #-0x10]!
  100145b88  mov     x29, sp
  100145b8c  stp     x20, x19, [sp, #-0x10]!
  100145b90  sub     sp, sp, #0x30
  100145b94  mov     x19, x1
  100145b98  adrp    x8, #0x1003b0000
  100145b9c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145ba0  str     x8, [sp, #8]
  100145ba4  mov     w8, #-0x3e000000
  100145ba8  stp     w8, wzr, [sp, #0x10]
  100145bac  adr     x8, #0x10014af78                         ; &sub_10014af78
  100145bb0  nop
  100145bb4  str     x8, [sp, #0x18]
  100145bb8  adrp    x8, #0x1003b9000
  100145bbc  add     x8, x8, #0x1b0                           ; &d_1003b91b0
  100145bc0  stp     x8, x0, [sp, #0x20]
  100145bc4  add     x0, sp, #8
  100145bc8  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014af78 captures +0x20=a0}, a1, a2, a3)
  100145bcc  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014af78 captures +0x20=a0}, a1, a2, a3)
  100145bd0  adrp    x8, #0x10041c000
  100145bd4  nop
  100145bd8  ldr     x8, [x8, #0xd10]
  100145bdc  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145be0  mov     w0, #0
  100145be4  sub     sp, x29, #0x10
  100145be8  ldp     x20, x19, [sp], #0x10
  100145bec  ldp     x29, x30, [sp], #0x10
  100145bf0  ret

; ======================================================================
; sub_100145bf4
; address 0x100145bf4  size 112  kind sub
; ======================================================================
  100145bf4  stp     x29, x30, [sp, #-0x10]!
  100145bf8  mov     x29, sp
  100145bfc  stp     x20, x19, [sp, #-0x10]!
  100145c00  sub     sp, sp, #0x30
  100145c04  mov     x19, x1
  100145c08  adrp    x8, #0x1003b0000
  100145c0c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145c10  str     x8, [sp, #8]
  100145c14  mov     w8, #-0x3e000000
  100145c18  stp     w8, wzr, [sp, #0x10]
  100145c1c  adr     x8, #0x10014af04                         ; &sub_10014af04
  100145c20  nop
  100145c24  str     x8, [sp, #0x18]
  100145c28  adrp    x8, #0x1003b9000
  100145c2c  add     x8, x8, #0x180                           ; &d_1003b9180
  100145c30  stp     x8, x0, [sp, #0x20]
  100145c34  add     x0, sp, #8
  100145c38  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014af04 captures +0x20=a0}, a1, a2, a3)
  100145c3c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014af04 captures +0x20=a0}, a1, a2, a3)
  100145c40  adrp    x8, #0x10041c000
  100145c44  nop
  100145c48  ldr     x8, [x8, #0xd10]
  100145c4c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145c50  mov     w0, #0
  100145c54  sub     sp, x29, #0x10
  100145c58  ldp     x20, x19, [sp], #0x10
  100145c5c  ldp     x29, x30, [sp], #0x10
  100145c60  ret

; ======================================================================
; sub_100145c64
; address 0x100145c64  size 112  kind sub
; ======================================================================
  100145c64  stp     x29, x30, [sp, #-0x10]!
  100145c68  mov     x29, sp
  100145c6c  stp     x20, x19, [sp, #-0x10]!
  100145c70  sub     sp, sp, #0x30
  100145c74  mov     x19, x1
  100145c78  adrp    x8, #0x1003b0000
  100145c7c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145c80  str     x8, [sp, #8]
  100145c84  mov     w8, #-0x3e000000
  100145c88  stp     w8, wzr, [sp, #0x10]
  100145c8c  adr     x8, #0x10014ae90                         ; &sub_10014ae90
  100145c90  nop
  100145c94  str     x8, [sp, #0x18]
  100145c98  adrp    x8, #0x1003b9000
  100145c9c  add     x8, x8, #0x150                           ; &d_1003b9150
  100145ca0  stp     x8, x0, [sp, #0x20]
  100145ca4  add     x0, sp, #8
  100145ca8  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014ae90 captures +0x20=a0}, a1, a2, a3)
  100145cac  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014ae90 captures +0x20=a0}, a1, a2, a3)
  100145cb0  adrp    x8, #0x10041c000
  100145cb4  nop
  100145cb8  ldr     x8, [x8, #0xd10]
  100145cbc  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145cc0  mov     w0, #0
  100145cc4  sub     sp, x29, #0x10
  100145cc8  ldp     x20, x19, [sp], #0x10
  100145ccc  ldp     x29, x30, [sp], #0x10
  100145cd0  ret

; ======================================================================
; sub_100145cd4
; address 0x100145cd4  size 112  kind sub
; ======================================================================
  100145cd4  stp     x29, x30, [sp, #-0x10]!
  100145cd8  mov     x29, sp
  100145cdc  stp     x20, x19, [sp, #-0x10]!
  100145ce0  sub     sp, sp, #0x30
  100145ce4  mov     x19, x1
  100145ce8  adrp    x8, #0x1003b0000
  100145cec  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145cf0  str     x8, [sp, #8]
  100145cf4  mov     w8, #-0x3e000000
  100145cf8  stp     w8, wzr, [sp, #0x10]
  100145cfc  adr     x8, #0x10014ae1c                         ; &sub_10014ae1c
  100145d00  nop
  100145d04  str     x8, [sp, #0x18]
  100145d08  adrp    x8, #0x1003b9000
  100145d0c  add     x8, x8, #0x120                           ; &d_1003b9120
  100145d10  stp     x8, x0, [sp, #0x20]
  100145d14  add     x0, sp, #8
  100145d18  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014ae1c captures +0x20=a0}, a1, a2, a3)
  100145d1c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014ae1c captures +0x20=a0}, a1, a2, a3)
  100145d20  adrp    x8, #0x10041c000
  100145d24  nop
  100145d28  ldr     x8, [x8, #0xd10]
  100145d2c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145d30  mov     w0, #0
  100145d34  sub     sp, x29, #0x10
  100145d38  ldp     x20, x19, [sp], #0x10
  100145d3c  ldp     x29, x30, [sp], #0x10
  100145d40  ret

; ======================================================================
; sub_100145d44
; address 0x100145d44  size 112  kind sub
; ======================================================================
  100145d44  stp     x29, x30, [sp, #-0x10]!
  100145d48  mov     x29, sp
  100145d4c  stp     x20, x19, [sp, #-0x10]!
  100145d50  sub     sp, sp, #0x30
  100145d54  mov     x19, x1
  100145d58  adrp    x8, #0x1003b0000
  100145d5c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145d60  str     x8, [sp, #8]
  100145d64  mov     w8, #-0x3e000000
  100145d68  stp     w8, wzr, [sp, #0x10]
  100145d6c  adr     x8, #0x10014ada8                         ; &sub_10014ada8
  100145d70  nop
  100145d74  str     x8, [sp, #0x18]
  100145d78  adrp    x8, #0x1003b9000
  100145d7c  add     x8, x8, #0xf0                            ; &d_1003b90f0
  100145d80  stp     x8, x0, [sp, #0x20]
  100145d84  add     x0, sp, #8
  100145d88  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014ada8 captures +0x20=a0}, a1, a2, a3)
  100145d8c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014ada8 captures +0x20=a0}, a1, a2, a3)
  100145d90  adrp    x8, #0x10041c000
  100145d94  nop
  100145d98  ldr     x8, [x8, #0xd10]
  100145d9c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145da0  mov     w0, #0
  100145da4  sub     sp, x29, #0x10
  100145da8  ldp     x20, x19, [sp], #0x10
  100145dac  ldp     x29, x30, [sp], #0x10
  100145db0  ret

; ======================================================================
; sub_100145db4
; address 0x100145db4  size 112  kind sub
; ======================================================================
  100145db4  stp     x29, x30, [sp, #-0x10]!
  100145db8  mov     x29, sp
  100145dbc  stp     x20, x19, [sp, #-0x10]!
  100145dc0  sub     sp, sp, #0x30
  100145dc4  mov     x19, x1
  100145dc8  adrp    x8, #0x1003b0000
  100145dcc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145dd0  str     x8, [sp, #8]
  100145dd4  mov     w8, #-0x3e000000
  100145dd8  stp     w8, wzr, [sp, #0x10]
  100145ddc  adr     x8, #0x10014ad34                         ; &sub_10014ad34
  100145de0  nop
  100145de4  str     x8, [sp, #0x18]
  100145de8  adrp    x8, #0x1003b9000
  100145dec  add     x8, x8, #0xc0                            ; &d_1003b90c0
  100145df0  stp     x8, x0, [sp, #0x20]
  100145df4  add     x0, sp, #8
  100145df8  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014ad34 captures +0x20=a0}, a1, a2, a3)
  100145dfc  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014ad34 captures +0x20=a0}, a1, a2, a3)
  100145e00  adrp    x8, #0x10041c000
  100145e04  nop
  100145e08  ldr     x8, [x8, #0xd10]
  100145e0c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145e10  mov     w0, #0
  100145e14  sub     sp, x29, #0x10
  100145e18  ldp     x20, x19, [sp], #0x10
  100145e1c  ldp     x29, x30, [sp], #0x10
  100145e20  ret

; ======================================================================
; sub_100145e24
; address 0x100145e24  size 112  kind sub
; ======================================================================
  100145e24  stp     x29, x30, [sp, #-0x10]!
  100145e28  mov     x29, sp
  100145e2c  stp     x20, x19, [sp, #-0x10]!
  100145e30  sub     sp, sp, #0x30
  100145e34  mov     x19, x1
  100145e38  adrp    x8, #0x1003b0000
  100145e3c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145e40  str     x8, [sp, #8]
  100145e44  mov     w8, #-0x3e000000
  100145e48  stp     w8, wzr, [sp, #0x10]
  100145e4c  adr     x8, #0x10014acc0                         ; &sub_10014acc0
  100145e50  nop
  100145e54  str     x8, [sp, #0x18]
  100145e58  adrp    x8, #0x1003b9000
  100145e5c  add     x8, x8, #0x90                            ; &d_1003b9090
  100145e60  stp     x8, x0, [sp, #0x20]
  100145e64  add     x0, sp, #8
  100145e68  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014acc0 captures +0x20=a0}, a1, a2, a3)
  100145e6c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014acc0 captures +0x20=a0}, a1, a2, a3)
  100145e70  adrp    x8, #0x10041c000
  100145e74  nop
  100145e78  ldr     x8, [x8, #0xd10]
  100145e7c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145e80  mov     w0, #0
  100145e84  sub     sp, x29, #0x10
  100145e88  ldp     x20, x19, [sp], #0x10
  100145e8c  ldp     x29, x30, [sp], #0x10
  100145e90  ret

; ======================================================================
; sub_100145e94
; address 0x100145e94  size 112  kind sub
; ======================================================================
  100145e94  stp     x29, x30, [sp, #-0x10]!
  100145e98  mov     x29, sp
  100145e9c  stp     x20, x19, [sp, #-0x10]!
  100145ea0  sub     sp, sp, #0x30
  100145ea4  mov     x19, x1
  100145ea8  adrp    x8, #0x1003b0000
  100145eac  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145eb0  str     x8, [sp, #8]
  100145eb4  mov     w8, #-0x3e000000
  100145eb8  stp     w8, wzr, [sp, #0x10]
  100145ebc  adr     x8, #0x10014ac4c                         ; &sub_10014ac4c
  100145ec0  nop
  100145ec4  str     x8, [sp, #0x18]
  100145ec8  adrp    x8, #0x1003b9000
  100145ecc  add     x8, x8, #0x60                            ; &d_1003b9060
  100145ed0  stp     x8, x0, [sp, #0x20]
  100145ed4  add     x0, sp, #8
  100145ed8  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014ac4c captures +0x20=a0}, a1, a2, a3)
  100145edc  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014ac4c captures +0x20=a0}, a1, a2, a3)
  100145ee0  adrp    x8, #0x10041c000
  100145ee4  nop
  100145ee8  ldr     x8, [x8, #0xd10]
  100145eec  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145ef0  mov     w0, #0
  100145ef4  sub     sp, x29, #0x10
  100145ef8  ldp     x20, x19, [sp], #0x10
  100145efc  ldp     x29, x30, [sp], #0x10
  100145f00  ret

; ======================================================================
; sub_100145f04
; address 0x100145f04  size 112  kind sub
; ======================================================================
  100145f04  stp     x29, x30, [sp, #-0x10]!
  100145f08  mov     x29, sp
  100145f0c  stp     x20, x19, [sp, #-0x10]!
  100145f10  sub     sp, sp, #0x30
  100145f14  mov     x19, x1
  100145f18  adrp    x8, #0x1003b0000
  100145f1c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145f20  str     x8, [sp, #8]
  100145f24  mov     w8, #-0x3e000000
  100145f28  stp     w8, wzr, [sp, #0x10]
  100145f2c  adr     x8, #0x10014abd8                         ; &sub_10014abd8
  100145f30  nop
  100145f34  str     x8, [sp, #0x18]
  100145f38  adrp    x8, #0x1003b9000
  100145f3c  add     x8, x8, #0x30                            ; &d_1003b9030
  100145f40  stp     x8, x0, [sp, #0x20]
  100145f44  add     x0, sp, #8
  100145f48  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014abd8 captures +0x20=a0}, a1, a2, a3)
  100145f4c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014abd8 captures +0x20=a0}, a1, a2, a3)
  100145f50  adrp    x8, #0x10041c000
  100145f54  nop
  100145f58  ldr     x8, [x8, #0xd10]
  100145f5c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145f60  mov     w0, #0
  100145f64  sub     sp, x29, #0x10
  100145f68  ldp     x20, x19, [sp], #0x10
  100145f6c  ldp     x29, x30, [sp], #0x10
  100145f70  ret

; ======================================================================
; sub_100145f74
; address 0x100145f74  size 112  kind sub
; ======================================================================
  100145f74  stp     x29, x30, [sp, #-0x10]!
  100145f78  mov     x29, sp
  100145f7c  stp     x20, x19, [sp, #-0x10]!
  100145f80  sub     sp, sp, #0x30
  100145f84  mov     x19, x1
  100145f88  adrp    x8, #0x1003b0000
  100145f8c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100145f90  str     x8, [sp, #8]
  100145f94  mov     w8, #-0x3e000000
  100145f98  stp     w8, wzr, [sp, #0x10]
  100145f9c  adr     x8, #0x10014ab64                         ; &sub_10014ab64
  100145fa0  nop
  100145fa4  str     x8, [sp, #0x18]
  100145fa8  adrp    x8, #0x1003b9000
  100145fac  add     x8, x8, #0                               ; &d_1003b9000
  100145fb0  stp     x8, x0, [sp, #0x20]
  100145fb4  add     x0, sp, #8
  100145fb8  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014ab64 captures +0x20=a0}, a1, a2, a3)
  100145fbc  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014ab64 captures +0x20=a0}, a1, a2, a3)
  100145fc0  adrp    x8, #0x10041c000
  100145fc4  nop
  100145fc8  ldr     x8, [x8, #0xd10]
  100145fcc  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100145fd0  mov     w0, #0
  100145fd4  sub     sp, x29, #0x10
  100145fd8  ldp     x20, x19, [sp], #0x10
  100145fdc  ldp     x29, x30, [sp], #0x10
  100145fe0  ret

; ======================================================================
; sub_100145fe4
; address 0x100145fe4  size 112  kind sub
; ======================================================================
  100145fe4  stp     x29, x30, [sp, #-0x10]!
  100145fe8  mov     x29, sp
  100145fec  stp     x20, x19, [sp, #-0x10]!
  100145ff0  sub     sp, sp, #0x30
  100145ff4  mov     x19, x1
  100145ff8  adrp    x8, #0x1003b0000
  100145ffc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100146000  str     x8, [sp, #8]
  100146004  mov     w8, #-0x3e000000
  100146008  stp     w8, wzr, [sp, #0x10]
  10014600c  adr     x8, #0x10014aaf0                         ; &sub_10014aaf0
  100146010  nop
  100146014  str     x8, [sp, #0x18]
  100146018  adrp    x8, #0x1003b8000
  10014601c  add     x8, x8, #0xfd0                           ; &d_1003b8fd0
  100146020  stp     x8, x0, [sp, #0x20]
  100146024  add     x0, sp, #8
  100146028  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014aaf0 captures +0x20=a0}, a1, a2, a3)
  10014602c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014aaf0 captures +0x20=a0}, a1, a2, a3)
  100146030  adrp    x8, #0x10041c000
  100146034  nop
  100146038  ldr     x8, [x8, #0xd10]
  10014603c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100146040  mov     w0, #0
  100146044  sub     sp, x29, #0x10
  100146048  ldp     x20, x19, [sp], #0x10
  10014604c  ldp     x29, x30, [sp], #0x10
  100146050  ret

; ======================================================================
; sub_100146054
; address 0x100146054  size 112  kind sub
; ======================================================================
  100146054  stp     x29, x30, [sp, #-0x10]!
  100146058  mov     x29, sp
  10014605c  stp     x20, x19, [sp, #-0x10]!
  100146060  sub     sp, sp, #0x30
  100146064  mov     x19, x1
  100146068  adrp    x8, #0x1003b0000
  10014606c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100146070  str     x8, [sp, #8]
  100146074  mov     w8, #-0x3e000000
  100146078  stp     w8, wzr, [sp, #0x10]
  10014607c  adr     x8, #0x10014aa7c                         ; &sub_10014aa7c
  100146080  nop
  100146084  str     x8, [sp, #0x18]
  100146088  adrp    x8, #0x1003b8000
  10014608c  add     x8, x8, #0xfa0                           ; &d_1003b8fa0
  100146090  stp     x8, x0, [sp, #0x20]
  100146094  add     x0, sp, #8
  100146098  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014aa7c captures +0x20=a0}, a1, a2, a3)
  10014609c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014aa7c captures +0x20=a0}, a1, a2, a3)
  1001460a0  adrp    x8, #0x10041c000
  1001460a4  nop
  1001460a8  ldr     x8, [x8, #0xd10]
  1001460ac  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  1001460b0  mov     w0, #0
  1001460b4  sub     sp, x29, #0x10
  1001460b8  ldp     x20, x19, [sp], #0x10
  1001460bc  ldp     x29, x30, [sp], #0x10
  1001460c0  ret

; ======================================================================
; sub_1001460c4
; address 0x1001460c4  size 112  kind sub
; ======================================================================
  1001460c4  stp     x29, x30, [sp, #-0x10]!
  1001460c8  mov     x29, sp
  1001460cc  stp     x20, x19, [sp, #-0x10]!
  1001460d0  sub     sp, sp, #0x30
  1001460d4  mov     x19, x1
  1001460d8  adrp    x8, #0x1003b0000
  1001460dc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001460e0  str     x8, [sp, #8]
  1001460e4  mov     w8, #-0x3e000000
  1001460e8  stp     w8, wzr, [sp, #0x10]
  1001460ec  adr     x8, #0x10014aa50                         ; &sub_10014aa50
  1001460f0  nop
  1001460f4  str     x8, [sp, #0x18]
  1001460f8  adrp    x8, #0x1003b8000
  1001460fc  add     x8, x8, #0xf70                           ; &d_1003b8f70
  100146100  stp     x8, x0, [sp, #0x20]
  100146104  add     x0, sp, #8
  100146108  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014aa50 captures +0x20=a0}, a1, a2, a3)
  10014610c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014aa50 captures +0x20=a0}, a1, a2, a3)
  100146110  adrp    x8, #0x10041c000
  100146114  nop
  100146118  ldr     x8, [x8, #0xd10]
  10014611c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setBool:)
  100146120  mov     w0, #0
  100146124  sub     sp, x29, #0x10
  100146128  ldp     x20, x19, [sp], #0x10
  10014612c  ldp     x29, x30, [sp], #0x10
  100146130  ret

; ======================================================================
; sub_100146134
; address 0x100146134  size 112  kind sub
; ======================================================================
  100146134  stp     x29, x30, [sp, #-0x10]!
  100146138  mov     x29, sp
  10014613c  stp     x20, x19, [sp, #-0x10]!
  100146140  sub     sp, sp, #0x30
  100146144  mov     x19, x1
  100146148  adrp    x8, #0x1003b0000
  10014614c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100146150  str     x8, [sp, #8]
  100146154  mov     w8, #-0x3e000000
  100146158  stp     w8, wzr, [sp, #0x10]
  10014615c  adr     x8, #0x10014aa24                         ; &sub_10014aa24
  100146160  nop
  100146164  str     x8, [sp, #0x18]
  100146168  adrp    x8, #0x1003b8000
  10014616c  add     x8, x8, #0xf40                           ; &d_1003b8f40
  100146170  stp     x8, x0, [sp, #0x20]
  100146174  add     x0, sp, #8
  100146178  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014aa24 captures +0x20=a0}, a1, a2, a3)
  10014617c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014aa24 captures +0x20=a0}, a1, a2, a3)
  100146180  adrp    x8, #0x10041c000
  100146184  nop
  100146188  ldr     x8, [x8, #0xd08]
  10014618c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setFixed32:)
  100146190  mov     w0, #0
  100146194  sub     sp, x29, #0x10
  100146198  ldp     x20, x19, [sp], #0x10
  10014619c  ldp     x29, x30, [sp], #0x10
  1001461a0  ret

; ======================================================================
; sub_1001461a4
; address 0x1001461a4  size 112  kind sub
; ======================================================================
  1001461a4  stp     x29, x30, [sp, #-0x10]!
  1001461a8  mov     x29, sp
  1001461ac  stp     x20, x19, [sp, #-0x10]!
  1001461b0  sub     sp, sp, #0x30
  1001461b4  mov     x19, x1
  1001461b8  adrp    x8, #0x1003b0000
  1001461bc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001461c0  str     x8, [sp, #8]
  1001461c4  mov     w8, #-0x3e000000
  1001461c8  stp     w8, wzr, [sp, #0x10]
  1001461cc  adr     x8, #0x10014a9f8                         ; &sub_10014a9f8
  1001461d0  nop
  1001461d4  str     x8, [sp, #0x18]
  1001461d8  adrp    x8, #0x1003b8000
  1001461dc  add     x8, x8, #0xf10                           ; &d_1003b8f10
  1001461e0  stp     x8, x0, [sp, #0x20]
  1001461e4  add     x0, sp, #8
  1001461e8  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a9f8 captures +0x20=a0}, a1, a2, a3)
  1001461ec  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a9f8 captures +0x20=a0}, a1, a2, a3)
  1001461f0  adrp    x8, #0x10041c000
  1001461f4  nop
  1001461f8  ldr     x8, [x8, #0xd00]
  1001461fc  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setSFixed32:)
  100146200  mov     w0, #0
  100146204  sub     sp, x29, #0x10
  100146208  ldp     x20, x19, [sp], #0x10
  10014620c  ldp     x29, x30, [sp], #0x10
  100146210  ret

; ======================================================================
; sub_100146214
; address 0x100146214  size 112  kind sub
; ======================================================================
  100146214  stp     x29, x30, [sp, #-0x10]!
  100146218  mov     x29, sp
  10014621c  stp     x20, x19, [sp, #-0x10]!
  100146220  sub     sp, sp, #0x30
  100146224  mov     x19, x1
  100146228  adrp    x8, #0x1003b0000
  10014622c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100146230  str     x8, [sp, #8]
  100146234  mov     w8, #-0x3e000000
  100146238  stp     w8, wzr, [sp, #0x10]
  10014623c  adr     x8, #0x10014a9cc                         ; &sub_10014a9cc
  100146240  nop
  100146244  str     x8, [sp, #0x18]
  100146248  adrp    x8, #0x1003b8000
  10014624c  add     x8, x8, #0xee0                           ; &d_1003b8ee0
  100146250  stp     x8, x0, [sp, #0x20]
  100146254  add     x0, sp, #8
  100146258  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a9cc captures +0x20=a0}, a1, a2, a3)
  10014625c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a9cc captures +0x20=a0}, a1, a2, a3)
  100146260  adrp    x8, #0x10041c000
  100146264  nop
  100146268  ldr     x8, [x8, #0xcf8]
  10014626c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setFloat:)
  100146270  mov     w0, #0
  100146274  sub     sp, x29, #0x10
  100146278  ldp     x20, x19, [sp], #0x10
  10014627c  ldp     x29, x30, [sp], #0x10
  100146280  ret

; ======================================================================
; sub_100146284
; address 0x100146284  size 112  kind sub
; ======================================================================
  100146284  stp     x29, x30, [sp, #-0x10]!
  100146288  mov     x29, sp
  10014628c  stp     x20, x19, [sp, #-0x10]!
  100146290  sub     sp, sp, #0x30
  100146294  mov     x19, x1
  100146298  adrp    x8, #0x1003b0000
  10014629c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001462a0  str     x8, [sp, #8]
  1001462a4  mov     w8, #-0x3e000000
  1001462a8  stp     w8, wzr, [sp, #0x10]
  1001462ac  adr     x8, #0x10014a9a0                         ; &sub_10014a9a0
  1001462b0  nop
  1001462b4  str     x8, [sp, #0x18]
  1001462b8  adrp    x8, #0x1003b8000
  1001462bc  add     x8, x8, #0xeb0                           ; &d_1003b8eb0
  1001462c0  stp     x8, x0, [sp, #0x20]
  1001462c4  add     x0, sp, #8
  1001462c8  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a9a0 captures +0x20=a0}, a1, a2, a3)
  1001462cc  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a9a0 captures +0x20=a0}, a1, a2, a3)
  1001462d0  adrp    x8, #0x10041c000
  1001462d4  nop
  1001462d8  ldr     x8, [x8, #0xcf0]
  1001462dc  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setFixed64:)
  1001462e0  mov     w0, #0
  1001462e4  sub     sp, x29, #0x10
  1001462e8  ldp     x20, x19, [sp], #0x10
  1001462ec  ldp     x29, x30, [sp], #0x10
  1001462f0  ret

; ======================================================================
; sub_1001462f4
; address 0x1001462f4  size 112  kind sub
; ======================================================================
  1001462f4  stp     x29, x30, [sp, #-0x10]!
  1001462f8  mov     x29, sp
  1001462fc  stp     x20, x19, [sp, #-0x10]!
  100146300  sub     sp, sp, #0x30
  100146304  mov     x19, x1
  100146308  adrp    x8, #0x1003b0000
  10014630c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100146310  str     x8, [sp, #8]
  100146314  mov     w8, #-0x3e000000
  100146318  stp     w8, wzr, [sp, #0x10]
  10014631c  adr     x8, #0x10014a974                         ; &sub_10014a974
  100146320  nop
  100146324  str     x8, [sp, #0x18]
  100146328  adrp    x8, #0x1003b8000
  10014632c  add     x8, x8, #0xe80                           ; &d_1003b8e80
  100146330  stp     x8, x0, [sp, #0x20]
  100146334  add     x0, sp, #8
  100146338  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a974 captures +0x20=a0}, a1, a2, a3)
  10014633c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a974 captures +0x20=a0}, a1, a2, a3)
  100146340  adrp    x8, #0x10041c000
  100146344  nop
  100146348  ldr     x8, [x8, #0xce8]
  10014634c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setSFixed64:)
  100146350  mov     w0, #0
  100146354  sub     sp, x29, #0x10
  100146358  ldp     x20, x19, [sp], #0x10
  10014635c  ldp     x29, x30, [sp], #0x10
  100146360  ret

; ======================================================================
; sub_100146364
; address 0x100146364  size 112  kind sub
; ======================================================================
  100146364  stp     x29, x30, [sp, #-0x10]!
  100146368  mov     x29, sp
  10014636c  stp     x20, x19, [sp, #-0x10]!
  100146370  sub     sp, sp, #0x30
  100146374  mov     x19, x1
  100146378  adrp    x8, #0x1003b0000
  10014637c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100146380  str     x8, [sp, #8]
  100146384  mov     w8, #-0x3e000000
  100146388  stp     w8, wzr, [sp, #0x10]
  10014638c  adr     x8, #0x10014a948                         ; &sub_10014a948
  100146390  nop
  100146394  str     x8, [sp, #0x18]
  100146398  adrp    x8, #0x1003b8000
  10014639c  add     x8, x8, #0xe50                           ; &d_1003b8e50
  1001463a0  stp     x8, x0, [sp, #0x20]
  1001463a4  add     x0, sp, #8
  1001463a8  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a948 captures +0x20=a0}, a1, a2, a3)
  1001463ac  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a948 captures +0x20=a0}, a1, a2, a3)
  1001463b0  adrp    x8, #0x10041c000
  1001463b4  nop
  1001463b8  ldr     x8, [x8, #0xce0]
  1001463bc  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setDouble:)
  1001463c0  mov     w0, #0
  1001463c4  sub     sp, x29, #0x10
  1001463c8  ldp     x20, x19, [sp], #0x10
  1001463cc  ldp     x29, x30, [sp], #0x10
  1001463d0  ret

; ======================================================================
; sub_1001463d4
; address 0x1001463d4  size 112  kind sub
; ======================================================================
  1001463d4  stp     x29, x30, [sp, #-0x10]!
  1001463d8  mov     x29, sp
  1001463dc  stp     x20, x19, [sp, #-0x10]!
  1001463e0  sub     sp, sp, #0x30
  1001463e4  mov     x19, x1
  1001463e8  adrp    x8, #0x1003b0000
  1001463ec  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001463f0  str     x8, [sp, #8]
  1001463f4  mov     w8, #-0x3e000000
  1001463f8  stp     w8, wzr, [sp, #0x10]
  1001463fc  adr     x8, #0x10014a91c                         ; &sub_10014a91c
  100146400  nop
  100146404  str     x8, [sp, #0x18]
  100146408  adrp    x8, #0x1003b8000
  10014640c  add     x8, x8, #0xe20                           ; &d_1003b8e20
  100146410  stp     x8, x0, [sp, #0x20]
  100146414  add     x0, sp, #8
  100146418  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a91c captures +0x20=a0}, a1, a2, a3)
  10014641c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a91c captures +0x20=a0}, a1, a2, a3)
  100146420  adrp    x8, #0x10041c000
  100146424  nop
  100146428  ldr     x8, [x8, #0xcd8]
  10014642c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setInt32:)
  100146430  mov     w0, #0
  100146434  sub     sp, x29, #0x10
  100146438  ldp     x20, x19, [sp], #0x10
  10014643c  ldp     x29, x30, [sp], #0x10
  100146440  ret

; ======================================================================
; sub_100146444
; address 0x100146444  size 112  kind sub
; ======================================================================
  100146444  stp     x29, x30, [sp, #-0x10]!
  100146448  mov     x29, sp
  10014644c  stp     x20, x19, [sp, #-0x10]!
  100146450  sub     sp, sp, #0x30
  100146454  mov     x19, x1
  100146458  adrp    x8, #0x1003b0000
  10014645c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100146460  str     x8, [sp, #8]
  100146464  mov     w8, #-0x3e000000
  100146468  stp     w8, wzr, [sp, #0x10]
  10014646c  adr     x8, #0x10014a8f0                         ; &sub_10014a8f0
  100146470  nop
  100146474  str     x8, [sp, #0x18]
  100146478  adrp    x8, #0x1003b8000
  10014647c  add     x8, x8, #0xdf0                           ; &d_1003b8df0
  100146480  stp     x8, x0, [sp, #0x20]
  100146484  add     x0, sp, #8
  100146488  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a8f0 captures +0x20=a0}, a1, a2, a3)
  10014648c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a8f0 captures +0x20=a0}, a1, a2, a3)
  100146490  adrp    x8, #0x10041c000
  100146494  nop
  100146498  ldr     x8, [x8, #0xcd0]
  10014649c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setInt64:)
  1001464a0  mov     w0, #0
  1001464a4  sub     sp, x29, #0x10
  1001464a8  ldp     x20, x19, [sp], #0x10
  1001464ac  ldp     x29, x30, [sp], #0x10
  1001464b0  ret

; ======================================================================
; sub_1001464b4
; address 0x1001464b4  size 112  kind sub
; ======================================================================
  1001464b4  stp     x29, x30, [sp, #-0x10]!
  1001464b8  mov     x29, sp
  1001464bc  stp     x20, x19, [sp, #-0x10]!
  1001464c0  sub     sp, sp, #0x30
  1001464c4  mov     x19, x1
  1001464c8  adrp    x8, #0x1003b0000
  1001464cc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001464d0  str     x8, [sp, #8]
  1001464d4  mov     w8, #-0x3e000000
  1001464d8  stp     w8, wzr, [sp, #0x10]
  1001464dc  adr     x8, #0x10014a8c4                         ; &sub_10014a8c4
  1001464e0  nop
  1001464e4  str     x8, [sp, #0x18]
  1001464e8  adrp    x8, #0x1003b8000
  1001464ec  add     x8, x8, #0xdc0                           ; &d_1003b8dc0
  1001464f0  stp     x8, x0, [sp, #0x20]
  1001464f4  add     x0, sp, #8
  1001464f8  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a8c4 captures +0x20=a0}, a1, a2, a3)
  1001464fc  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a8c4 captures +0x20=a0}, a1, a2, a3)
  100146500  adrp    x8, #0x10041c000
  100146504  nop
  100146508  ldr     x8, [x8, #0xcc8]
  10014650c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setSInt32:)
  100146510  mov     w0, #0
  100146514  sub     sp, x29, #0x10
  100146518  ldp     x20, x19, [sp], #0x10
  10014651c  ldp     x29, x30, [sp], #0x10
  100146520  ret

; ======================================================================
; sub_100146524
; address 0x100146524  size 112  kind sub
; ======================================================================
  100146524  stp     x29, x30, [sp, #-0x10]!
  100146528  mov     x29, sp
  10014652c  stp     x20, x19, [sp, #-0x10]!
  100146530  sub     sp, sp, #0x30
  100146534  mov     x19, x1
  100146538  adrp    x8, #0x1003b0000
  10014653c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100146540  str     x8, [sp, #8]
  100146544  mov     w8, #-0x3e000000
  100146548  stp     w8, wzr, [sp, #0x10]
  10014654c  adr     x8, #0x10014a898                         ; &sub_10014a898
  100146550  nop
  100146554  str     x8, [sp, #0x18]
  100146558  adrp    x8, #0x1003b8000
  10014655c  add     x8, x8, #0xd90                           ; &d_1003b8d90
  100146560  stp     x8, x0, [sp, #0x20]
  100146564  add     x0, sp, #8
  100146568  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a898 captures +0x20=a0}, a1, a2, a3)
  10014656c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a898 captures +0x20=a0}, a1, a2, a3)
  100146570  adrp    x8, #0x10041c000
  100146574  nop
  100146578  ldr     x8, [x8, #0xcc0]
  10014657c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setSInt64:)
  100146580  mov     w0, #0
  100146584  sub     sp, x29, #0x10
  100146588  ldp     x20, x19, [sp], #0x10
  10014658c  ldp     x29, x30, [sp], #0x10
  100146590  ret

; ======================================================================
; sub_100146594
; address 0x100146594  size 112  kind sub
; ======================================================================
  100146594  stp     x29, x30, [sp, #-0x10]!
  100146598  mov     x29, sp
  10014659c  stp     x20, x19, [sp, #-0x10]!
  1001465a0  sub     sp, sp, #0x30
  1001465a4  mov     x19, x1
  1001465a8  adrp    x8, #0x1003b0000
  1001465ac  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001465b0  str     x8, [sp, #8]
  1001465b4  mov     w8, #-0x3e000000
  1001465b8  stp     w8, wzr, [sp, #0x10]
  1001465bc  adr     x8, #0x10014a86c                         ; &sub_10014a86c
  1001465c0  nop
  1001465c4  str     x8, [sp, #0x18]
  1001465c8  adrp    x8, #0x1003b8000
  1001465cc  add     x8, x8, #0xd60                           ; &d_1003b8d60
  1001465d0  stp     x8, x0, [sp, #0x20]
  1001465d4  add     x0, sp, #8
  1001465d8  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a86c captures +0x20=a0}, a1, a2, a3)
  1001465dc  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a86c captures +0x20=a0}, a1, a2, a3)
  1001465e0  adrp    x8, #0x10041c000
  1001465e4  nop
  1001465e8  ldr     x8, [x8, #0xcb8]
  1001465ec  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setUInt32:)
  1001465f0  mov     w0, #0
  1001465f4  sub     sp, x29, #0x10
  1001465f8  ldp     x20, x19, [sp], #0x10
  1001465fc  ldp     x29, x30, [sp], #0x10
  100146600  ret

; ======================================================================
; sub_100146604
; address 0x100146604  size 112  kind sub
; ======================================================================
  100146604  stp     x29, x30, [sp, #-0x10]!
  100146608  mov     x29, sp
  10014660c  stp     x20, x19, [sp, #-0x10]!
  100146610  sub     sp, sp, #0x30
  100146614  mov     x19, x1
  100146618  adrp    x8, #0x1003b0000
  10014661c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100146620  str     x8, [sp, #8]
  100146624  mov     w8, #-0x3e000000
  100146628  stp     w8, wzr, [sp, #0x10]
  10014662c  adr     x8, #0x10014a840                         ; &sub_10014a840
  100146630  nop
  100146634  str     x8, [sp, #0x18]
  100146638  adrp    x8, #0x1003b8000
  10014663c  add     x8, x8, #0xd30                           ; &d_1003b8d30
  100146640  stp     x8, x0, [sp, #0x20]
  100146644  add     x0, sp, #8
  100146648  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a840 captures +0x20=a0}, a1, a2, a3)
  10014664c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a840 captures +0x20=a0}, a1, a2, a3)
  100146650  adrp    x8, #0x10041c000
  100146654  nop
  100146658  ldr     x8, [x8, #0xcb0]
  10014665c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setUInt64:)
  100146660  mov     w0, #0
  100146664  sub     sp, x29, #0x10
  100146668  ldp     x20, x19, [sp], #0x10
  10014666c  ldp     x29, x30, [sp], #0x10
  100146670  ret

; ======================================================================
; sub_100146674
; address 0x100146674  size 112  kind sub
; ======================================================================
  100146674  stp     x29, x30, [sp, #-0x10]!
  100146678  mov     x29, sp
  10014667c  stp     x20, x19, [sp, #-0x10]!
  100146680  sub     sp, sp, #0x30
  100146684  mov     x19, x1
  100146688  adrp    x8, #0x1003b0000
  10014668c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100146690  str     x8, [sp, #8]
  100146694  mov     w8, #-0x3e000000
  100146698  stp     w8, wzr, [sp, #0x10]
  10014669c  adr     x8, #0x10014a7e4                         ; &sub_10014a7e4
  1001466a0  nop
  1001466a4  str     x8, [sp, #0x18]
  1001466a8  adrp    x8, #0x1003b8000
  1001466ac  add     x8, x8, #0xd00                           ; &d_1003b8d00
  1001466b0  stp     x8, x0, [sp, #0x20]
  1001466b4  add     x0, sp, #8
  1001466b8  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a7e4 captures +0x20=a0}, a1, a2, a3)
  1001466bc  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a7e4 captures +0x20=a0}, a1, a2, a3)
  1001466c0  adrp    x8, #0x10041b000
  1001466c4  nop
  1001466c8  ldr     x8, [x8, #0xc48]
  1001466cc  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setData:)
  1001466d0  mov     w0, #0
  1001466d4  sub     sp, x29, #0x10
  1001466d8  ldp     x20, x19, [sp], #0x10
  1001466dc  ldp     x29, x30, [sp], #0x10
  1001466e0  ret

; ======================================================================
; sub_1001466e4
; address 0x1001466e4  size 112  kind sub
; ======================================================================
  1001466e4  stp     x29, x30, [sp, #-0x10]!
  1001466e8  mov     x29, sp
  1001466ec  stp     x20, x19, [sp, #-0x10]!
  1001466f0  sub     sp, sp, #0x30
  1001466f4  mov     x19, x1
  1001466f8  adrp    x8, #0x1003b0000
  1001466fc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100146700  str     x8, [sp, #8]
  100146704  mov     w8, #-0x3e000000
  100146708  stp     w8, wzr, [sp, #0x10]
  10014670c  adr     x8, #0x10014a788                         ; &sub_10014a788
  100146710  nop
  100146714  str     x8, [sp, #0x18]
  100146718  adrp    x8, #0x1003b8000
  10014671c  add     x8, x8, #0xcd0                           ; &d_1003b8cd0
  100146720  stp     x8, x0, [sp, #0x20]
  100146724  add     x0, sp, #8
  100146728  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a788 captures +0x20=a0}, a1, a2, a3)
  10014672c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a788 captures +0x20=a0}, a1, a2, a3)
  100146730  adrp    x8, #0x10041b000
  100146734  nop
  100146738  ldr     x8, [x8, #0xfc8]
  10014673c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setString:)
  100146740  mov     w0, #0
  100146744  sub     sp, x29, #0x10
  100146748  ldp     x20, x19, [sp], #0x10
  10014674c  ldp     x29, x30, [sp], #0x10
  100146750  ret

; ======================================================================
; sub_100146754
; address 0x100146754  size 112  kind sub
; ======================================================================
  100146754  stp     x29, x30, [sp, #-0x10]!
  100146758  mov     x29, sp
  10014675c  stp     x20, x19, [sp, #-0x10]!
  100146760  sub     sp, sp, #0x30
  100146764  mov     x19, x1
  100146768  adrp    x8, #0x1003b0000
  10014676c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100146770  str     x8, [sp, #8]
  100146774  mov     w8, #-0x3e000000
  100146778  stp     w8, wzr, [sp, #0x10]
  10014677c  adr     x8, #0x10014a72c                         ; &sub_10014a72c
  100146780  nop
  100146784  str     x8, [sp, #0x18]
  100146788  adrp    x8, #0x1003b8000
  10014678c  add     x8, x8, #0xca0                           ; &d_1003b8ca0
  100146790  stp     x8, x0, [sp, #0x20]
  100146794  add     x0, sp, #8
  100146798  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a72c captures +0x20=a0}, a1, a2, a3)
  10014679c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a72c captures +0x20=a0}, a1, a2, a3)
  1001467a0  adrp    x8, #0x10041c000
  1001467a4  nop
  1001467a8  ldr     x8, [x8, #0xca8]
  1001467ac  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setMessage:)
  1001467b0  mov     w0, #0
  1001467b4  sub     sp, x29, #0x10
  1001467b8  ldp     x20, x19, [sp], #0x10
  1001467bc  ldp     x29, x30, [sp], #0x10
  1001467c0  ret

; ======================================================================
; sub_1001467c4
; address 0x1001467c4  size 112  kind sub
; ======================================================================
  1001467c4  stp     x29, x30, [sp, #-0x10]!
  1001467c8  mov     x29, sp
  1001467cc  stp     x20, x19, [sp, #-0x10]!
  1001467d0  sub     sp, sp, #0x30
  1001467d4  mov     x19, x1
  1001467d8  adrp    x8, #0x1003b0000
  1001467dc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001467e0  str     x8, [sp, #8]
  1001467e4  mov     w8, #-0x3e000000
  1001467e8  stp     w8, wzr, [sp, #0x10]
  1001467ec  adr     x8, #0x10014a6d0                         ; &sub_10014a6d0
  1001467f0  nop
  1001467f4  str     x8, [sp, #0x18]
  1001467f8  adrp    x8, #0x1003b8000
  1001467fc  add     x8, x8, #0xc70                           ; &d_1003b8c70
  100146800  stp     x8, x0, [sp, #0x20]
  100146804  add     x0, sp, #8
  100146808  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a6d0 captures +0x20=a0}, a1, a2, a3)
  10014680c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a6d0 captures +0x20=a0}, a1, a2, a3)
  100146810  adrp    x8, #0x10041c000
  100146814  nop
  100146818  ldr     x8, [x8, #0xca0]
  10014681c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setGroup:)
  100146820  mov     w0, #0
  100146824  sub     sp, x29, #0x10
  100146828  ldp     x20, x19, [sp], #0x10
  10014682c  ldp     x29, x30, [sp], #0x10
  100146830  ret

; ======================================================================
; sub_100146834
; address 0x100146834  size 112  kind sub
; ======================================================================
  100146834  stp     x29, x30, [sp, #-0x10]!
  100146838  mov     x29, sp
  10014683c  stp     x20, x19, [sp, #-0x10]!
  100146840  sub     sp, sp, #0x30
  100146844  mov     x19, x1
  100146848  adrp    x8, #0x1003b0000
  10014684c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100146850  str     x8, [sp, #8]
  100146854  mov     w8, #-0x3e000000
  100146858  stp     w8, wzr, [sp, #0x10]
  10014685c  adr     x8, #0x10014a6a4                         ; &sub_10014a6a4
  100146860  nop
  100146864  str     x8, [sp, #0x18]
  100146868  adrp    x8, #0x1003b8000
  10014686c  add     x8, x8, #0xc40                           ; &d_1003b8c40
  100146870  stp     x8, x0, [sp, #0x20]
  100146874  add     x0, sp, #8
  100146878  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{sub_10014a6a4 captures +0x20=a0}, a1, a2, a3)
  10014687c  str     x0, [x19]                                ; a1[+0x0] = imp_implementationWithBlock(^{sub_10014a6a4 captures +0x20=a0}, a1, a2, a3)
  100146880  adrp    x8, #0x10041c000
  100146884  nop
  100146888  ldr     x8, [x8, #0xc98]
  10014688c  str     x8, [x19, #8]                            ; a1[+0x8] = @selector(setEnum:)
  100146890  mov     w0, #0
  100146894  sub     sp, x29, #0x10
  100146898  ldp     x20, x19, [sp], #0x10
  10014689c  ldp     x29, x30, [sp], #0x10
  1001468a0  ret

; ======================================================================
; +[TAGPBGeneratedMessage resolveInstanceMethod:]_block_invoke
; address 0x1001468a4  size 16  kind block
; ======================================================================
  1001468a4  ldr     x8, [x0, #0x20]                          ; x8 = block[+0x20]
  1001468a8  mov     x0, x1
  1001468ac  mov     x1, x8
  1001468b0  b       sub_10013cd1c                            ; sub_10013cd1c(blockarg1, block[+0x20], blockarg2, blockarg3)

; ======================================================================
; sub_1001468b4
; address 0x1001468b4  size 16  kind sub
; ======================================================================
  1001468b4  add     x0, x0, #0x20
  1001468b8  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  1001468bc  mov     w2, #3
  1001468c0  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 3, a3)

; ======================================================================
; sub_1001468c4
; address 0x1001468c4  size 12  kind sub
; ======================================================================
  1001468c4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1001468c8  mov     w1, #3
  1001468cc  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 3, a2, a3)

; ======================================================================
; +[TAGPBGeneratedMessage resolveInstanceMethod:]_block_invoke_2
; address 0x1001468d0  size 324  kind block
; ======================================================================
  1001468d0  stp     x29, x30, [sp, #-0x10]!
  1001468d4  mov     x29, sp
  1001468d8  stp     x20, x19, [sp, #-0x10]!
  1001468dc  stp     x22, x21, [sp, #-0x10]!
  1001468e0  stp     x24, x23, [sp, #-0x10]!
  1001468e4  sub     sp, sp, #0x10
  1001468e8  mov     x21, x2
  1001468ec  mov     x19, x1
  1001468f0  ldr     x20, [x0, #0x20]                         ; x20 = block[+0x20]
  1001468f4  cbz     x21, loc_100146984                       ; if (blockarg2 == 0)
  1001468f8  adrp    x8, #0x10041e000
  1001468fc  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  100146900  adrp    x8, #0x100417000
  100146904  nop
  100146908  ldr     x22, [x8, #0x2e0]
  10014690c  mov     x1, x22
  100146910  bl      _objc_msgSend                            ; [TAGPBMutableArray class]
  100146914  mov     x2, x0
  100146918  adrp    x8, #0x100417000
  10014691c  nop
  100146920  ldr     x23, [x8, #0x3b8]
  100146924  mov     x0, x21
  100146928  mov     x1, x23
  10014692c  bl      _objc_msgSend                            ; [blockarg2 isKindOfClass:[TAGPBMutableArray class]]
  100146930  tbnz    w0, #0, loc_1001469dc                    ; if (([blockarg2 isKindOfClass:[TAGPBMutableArray class]] & 1))
  100146934  adrp    x8, #0x10041e000
  100146938  ldr     x0, [x8, #0x760]                         ; class TAGPBArray
  10014693c  mov     x1, x22
  100146940  bl      _objc_msgSend                            ; [TAGPBArray class]
  100146944  mov     x2, x0
  100146948  mov     x0, x21
  10014694c  mov     x1, x23
  100146950  bl      _objc_msgSend                            ; [blockarg2 isKindOfClass:[TAGPBArray class]]
  100146954  tbz     w0, #0, loc_10014698c                    ; if (!([blockarg2 isKindOfClass:[TAGPBArray class]] & 1))
  100146958  adrp    x8, #0x10041b000
  10014695c  nop
  100146960  ldr     x1, [x8, #0x1d8]
  100146964  mov     x0, x21
  100146968  bl      _objc_msgSend                            ; [blockarg2 mutableCopy]
  10014696c  adrp    x8, #0x10041b000
  100146970  nop
  100146974  ldr     x1, [x8, #0xe88]
  100146978  bl      _objc_msgSend                            ; [[blockarg2 mutableCopy] autorelease]
  10014697c  mov     x21, x0
  100146980  b       loc_1001469dc
loc_100146984:
  100146984  mov     x21, #0
  100146988  b       loc_1001469dc
loc_10014698c:
  10014698c  adrp    x8, #0x10041d000
  100146990  ldr     x22, [x8, #0xfc8]                        ; class NSException
  100146994  adrp    x8, #0x1003b0000
  100146998  ldr     x8, [x8, #0x40]                          ; _NSInvalidArgumentException
  10014699c  ldr     x23, [x8]                                ; x23 = _NSInvalidArgumentException[+0x0]
  1001469a0  adrp    x8, #0x10041c000
  1001469a4  nop
  1001469a8  ldr     x1, [x8, #0xb88]
  1001469ac  mov     x0, x20
  1001469b0  bl      _objc_msgSend                            ; [block[+0x20] setSel]
  1001469b4  bl      _NSStringFromSelector                    ; NSStringFromSelector([block[+0x20] setSel])
  1001469b8  adrp    x8, #0x100417000
  1001469bc  nop
  1001469c0  ldr     x1, [x8, #0x260]
  1001469c4  str     x0, [sp]
  1001469c8  adrp    x3, #0x1003c7000
  1001469cc  add     x3, x3, #0x570                           ; @"Trying to set array %@ to non mutable array"
  1001469d0  mov     x0, x22
  1001469d4  mov     x2, x23
  1001469d8  bl      _objc_msgSend                            ; [NSException raise:_NSInvalidArgumentException[+0x0] format:@"Trying to set array %@ to non mutable array", NSStringFromSelector([block[+0x20] setSel])]
loc_1001469dc:
  1001469dc  adrp    x8, #0x10041b000
  1001469e0  nop
  1001469e4  ldr     x1, [x8, #0xdb8]
  1001469e8  mov     x0, x21
  1001469ec  bl      _objc_msgSend                            ; [x0 retain]
  1001469f0  mov     x2, x0
  1001469f4  mov     x0, x19
  1001469f8  mov     x1, x20
  1001469fc  sub     sp, x29, #0x30
  100146a00  ldp     x24, x23, [sp], #0x10
  100146a04  ldp     x22, x21, [sp], #0x10
  100146a08  ldp     x20, x19, [sp], #0x10
  100146a0c  ldp     x29, x30, [sp], #0x10
  100146a10  b       sub_1001486ec                            ; sub_1001486ec(blockarg1, block[+0x20], [x0 retain])

; ======================================================================
; sub_100146a14
; address 0x100146a14  size 16  kind sub
; ======================================================================
  100146a14  add     x0, x0, #0x20
  100146a18  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  100146a1c  mov     w2, #3
  100146a20  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 3, a3)

; ======================================================================
; sub_100146a24
; address 0x100146a24  size 12  kind sub
; ======================================================================
  100146a24  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100146a28  mov     w1, #3
  100146a2c  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 3, a2, a3)

; ======================================================================
; -[TAGPBGeneratedMessage initWithCoder:]
; address 0x100146a30  size 104  kind objc
; ======================================================================
  100146a30  stp     x29, x30, [sp, #-0x10]!
  100146a34  mov     x29, sp
  100146a38  stp     x20, x19, [sp, #-0x10]!
  100146a3c  mov     x20, x2
  100146a40  adrp    x8, #0x100416000
  100146a44  nop
  100146a48  ldr     x1, [x8, #0xab8]
  100146a4c  bl      _objc_msgSend                            ; [self init]
  100146a50  mov     x19, x0
  100146a54  cbz     x19, loc_100146a88                       ; if (self == 0)
  100146a58  adrp    x8, #0x10041c000
  100146a5c  nop
  100146a60  ldr     x1, [x8, #0xba0]
  100146a64  mov     x0, x20
  100146a68  bl      _objc_msgSend                            ; [arg1 decodeDataObject]
  100146a6c  mov     x2, x0
  100146a70  adrp    x8, #0x10041c000
  100146a74  nop
  100146a78  ldr     x1, [x8, #0xad8]
  100146a7c  mov     x3, #0
  100146a80  mov     x0, x19
  100146a84  bl      _objc_msgSend                            ; [self mergeFromData:[arg1 decodeDataObject] extensionRegistry:0]
loc_100146a88:
  100146a88  mov     x0, x19
  100146a8c  ldp     x20, x19, [sp], #0x10
  100146a90  ldp     x29, x30, [sp], #0x10
  100146a94  ret

; ======================================================================
; -[TAGPBGeneratedMessage encodeWithCoder:]
; address 0x100146a98  size 64  kind objc
; ======================================================================
  100146a98  stp     x29, x30, [sp, #-0x10]!
  100146a9c  mov     x29, sp
  100146aa0  stp     x20, x19, [sp, #-0x10]!
  100146aa4  mov     x19, x2
  100146aa8  adrp    x8, #0x10041b000
  100146aac  nop
  100146ab0  ldr     x1, [x8, #0xc78]
  100146ab4  bl      _objc_msgSend                            ; [self data]
  100146ab8  mov     x2, x0
  100146abc  adrp    x8, #0x10041c000
  100146ac0  nop
  100146ac4  ldr     x1, [x8, #0xba8]
  100146ac8  mov     x0, x19
  100146acc  ldp     x20, x19, [sp], #0x10
  100146ad0  ldp     x29, x30, [sp], #0x10
  100146ad4  b       _objc_msgSend                            ; [arg1 encodeDataObject:[self data]]

; ======================================================================
; +[TAGPBGeneratedMessage accessInstanceVariablesDirectly]
; address 0x100146ad8  size 8  kind objc
; ======================================================================
  100146ad8  mov     w0, #0
  100146adc  ret

; ======================================================================
; -[TAGPBGeneratedMessage pbMutableArray:willAddElements:]
; address 0x100146ae0  size 448  kind objc
; ======================================================================
  100146ae0  stp     x29, x30, [sp, #-0x10]!
  100146ae4  mov     x29, sp
  100146ae8  stp     x20, x19, [sp, #-0x10]!
  100146aec  stp     x22, x21, [sp, #-0x10]!
  100146af0  stp     x24, x23, [sp, #-0x10]!
  100146af4  stp     x26, x25, [sp, #-0x10]!
  100146af8  mov     x20, x2
  100146afc  mov     x19, x0
  100146b00  adrp    x8, #0x10041c000
  100146b04  nop
  100146b08  ldr     x1, [x8, #0x7e8]
  100146b0c  bl      _objc_msgSend                            ; [self descriptor]
  100146b10  adrp    x8, #0x100420000
  100146b14  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  100146b18  ldr     x0, [x0, x8]                             ; x0 = [self descriptor]->fields_
  100146b1c  cbz     x0, loc_100146b8c                        ; if ([self descriptor]->fields_ == 0)
  100146b20  adrp    x8, #0x100420000
  100146b24  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100146b28  ldr     x24, [x0, x8]                            ; x24 = [self descriptor]->fields_->_count
  100146b2c  adrp    x8, #0x10041b000
  100146b30  nop
  100146b34  ldr     x1, [x8, #0xc78]
  100146b38  bl      _objc_msgSend                            ; [[self descriptor]->fields_ data]
  100146b3c  mov     x21, x0
  100146b40  cbz     x24, loc_100146b9c                       ; if ([self descriptor]->fields_->_count == 0)
  100146b44  mov     x25, #0
  100146b48  adrp    x8, #0x10041c000
  100146b4c  add     x8, x8, #0x770                           ; &@selector(isRepeated)
  100146b50  ldr     x23, [x8]
loc_100146b54:
  100146b54  ldr     x22, [x21, x25, lsl #3]
  100146b58  mov     x0, x22
  100146b5c  mov     x1, x23
  100146b60  bl      _objc_msgSend                            ; [x0 isRepeated]
  100146b64  cbz     w0, loc_100146b7c                        ; if ([x0 isRepeated] == 0)
  100146b68  mov     x0, x19
  100146b6c  mov     x1, x22
  100146b70  bl      sub_10013c7fc                            ; sub_10013c7fc(self)
  100146b74  cmp     x0, x20
  100146b78  b.eq    loc_100146c34                            ; if (sub_10013c7fc(self) == arg1)
loc_100146b7c:
  100146b7c  add     x25, x25, #1
  100146b80  cmp     x25, x24
  100146b84  b.lo    loc_100146b54                            ; if ((x25 + 1) <u [self descriptor]->fields_->_count)
  100146b88  b       loc_100146b9c
loc_100146b8c:
  100146b8c  adrp    x8, #0x10041b000
  100146b90  nop
  100146b94  ldr     x1, [x8, #0xc78]
  100146b98  bl      _objc_msgSend                            ; [[self descriptor]->fields_ data]
loc_100146b9c:
  100146b9c  adrp    x8, #0x10041e000
  100146ba0  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  100146ba4  adrp    x8, #0x10041c000
  100146ba8  nop
  100146bac  ldr     x1, [x8, #0x470]
  100146bb0  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  100146bb4  mov     x19, x0
  100146bb8  adrp    x22, #0x10041d000
  100146bbc  ldr     x0, [x22, #0xf78]                        ; class NSString
  100146bc0  adrp    x8, #0x10041c000
  100146bc4  nop
  100146bc8  ldr     x20, [x8, #0x478]
  100146bcc  adrp    x2, #0x100394000
  100146bd0  add     x2, x2, #0x74c                           ; "-[TAGPBGeneratedMessage pbMutableArray:willAddElements:]"
  100146bd4  mov     x1, x20
  100146bd8  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"-[TAGPBGeneratedMessage pbMutableArray:willAddElements:]"]
  100146bdc  mov     x21, x0
  100146be0  ldr     x0, [x22, #0xf78]                        ; class NSString
  100146be4  adrp    x2, #0x100394000
  100146be8  add     x2, x2, #0x4e1                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100146bec  mov     x1, x20
  100146bf0  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  100146bf4  mov     x3, x0
  100146bf8  adrp    x8, #0x10041c000
  100146bfc  nop
  100146c00  ldr     x1, [x8, #0x520]
  100146c04  adrp    x5, #0x1003c7000
  100146c08  add     x5, x5, #0xf0                            ; @"Unknown array in delegate method."
  100146c0c  mov     x4, #0x64e
  100146c10  mov     x0, x19
  100146c14  mov     x2, x21
  100146c18  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInFunction:[NSString stringWithUTF8String:"-[TAGPBGeneratedMessage pbMutableArray:willAddElements:]"] file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:1614 description:@"Unknown array in delegate method."]
  100146c1c  ldp     x26, x25, [sp], #0x10
  100146c20  ldp     x24, x23, [sp], #0x10
  100146c24  ldp     x22, x21, [sp], #0x10
  100146c28  ldp     x20, x19, [sp], #0x10
  100146c2c  ldp     x29, x30, [sp], #0x10
  100146c30  ret
loc_100146c34:
  100146c34  adrp    x8, #0x100417000
  100146c38  nop
  100146c3c  ldr     x1, [x8, #0x7d8]
  100146c40  mov     x2, #0
  100146c44  mov     x0, x20
  100146c48  bl      _objc_msgSend                            ; [arg1 setDelegate:0]
  100146c4c  adrp    x8, #0x100420000
  100146c50  ldrsw   x8, [x8, #0x94c]                         ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100146c54  ldr     x8, [x22, x8]                            ; x8 = x22->description_
  100146c58  ldr     w8, [x8, #0xc]                           ; w8 = x22->description_[+0xc]
  100146c5c  adrp    x9, #0x100420000
  100146c60  ldrsw   x9, [x9, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100146c64  ldr     x9, [x19, x9]                            ; x9 = self->messageStorage_
  100146c68  lsr     w10, w8, #5
  100146c6c  and     w8, w8, #0x1f
  100146c70  mov     w11, #1
  100146c74  lsl     w8, w11, w8
  100146c78  ldr     w11, [x9, w10, uxtw #2]
  100146c7c  orr     w8, w11, w8
  100146c80  str     w8, [x9, w10, uxtw #2]
  100146c84  mov     x0, x19
  100146c88  ldp     x26, x25, [sp], #0x10
  100146c8c  ldp     x24, x23, [sp], #0x10
  100146c90  ldp     x22, x21, [sp], #0x10
  100146c94  ldp     x20, x19, [sp], #0x10
  100146c98  ldp     x29, x30, [sp], #0x10
  100146c9c  b       sub_10013b9fc                            ; sub_10013b9fc(self)

; ======================================================================
; sub_100146ca0
; address 0x100146ca0  size 60  kind sub
; ======================================================================
  100146ca0  adrp    x8, #0x100420000
  100146ca4  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset TAGPBGeneratedMessage.messageStorage_ (+0x38)
  100146ca8  ldr     x8, [x0, x8]                             ; x8 = a0->messageStorage_
  100146cac  lsr     w9, w1, #5
  100146cb0  and     w10, w1, #0x1f
  100146cb4  mov     w11, #1
  100146cb8  lsl     w10, w11, w10
  100146cbc  cbz     w2, loc_100146ccc                        ; if (a2 == 0)
  100146cc0  ldr     w11, [x8, w9, uxtw #2]
  100146cc4  orr     w10, w11, w10
  100146cc8  b       loc_100146cd4
loc_100146ccc:
  100146ccc  ldr     w11, [x8, w9, uxtw #2]
  100146cd0  bic     w10, w11, w10
loc_100146cd4:
  100146cd4  str     w10, [x8, w9, uxtw #2]
  100146cd8  ret

; ======================================================================
; +[TAGPBGeneratedMessage builder]
; address 0x100146cdc  size 60  kind objc
; ======================================================================
  100146cdc  stp     x29, x30, [sp, #-0x10]!
  100146ce0  mov     x29, sp
  100146ce4  adrp    x8, #0x100416000
  100146ce8  nop
  100146cec  ldr     x1, [x8, #0xac8]
  100146cf0  bl      _objc_msgSend                            ; [TAGPBGeneratedMessage alloc]
  100146cf4  adrp    x8, #0x100416000
  100146cf8  nop
  100146cfc  ldr     x1, [x8, #0xab8]
  100146d00  bl      _objc_msgSend                            ; [[TAGPBGeneratedMessage alloc] init]
  100146d04  adrp    x8, #0x10041b000
  100146d08  nop
  100146d0c  ldr     x1, [x8, #0xe88]
  100146d10  ldp     x29, x30, [sp], #0x10
  100146d14  b       _objc_msgSend                            ; [[[TAGPBGeneratedMessage alloc] init] autorelease]

; ======================================================================
; -[TAGPBGeneratedMessage builder]
; address 0x100146d18  size 44  kind objc
; ======================================================================
  100146d18  stp     x29, x30, [sp, #-0x10]!
  100146d1c  mov     x29, sp
  100146d20  adrp    x8, #0x100417000
  100146d24  nop
  100146d28  ldr     x1, [x8, #0x2e0]
  100146d2c  bl      _objc_msgSend                            ; [self class]
  100146d30  adrp    x8, #0x10041c000
  100146d34  nop
  100146d38  ldr     x1, [x8, #0xbb0]
  100146d3c  ldp     x29, x30, [sp], #0x10
  100146d40  b       _objc_msgSend                            ; [[self class] builder]

; ======================================================================
; -[TAGPBGeneratedMessage build]
; address 0x100146d44  size 44  kind objc
; ======================================================================
  100146d44  stp     x29, x30, [sp, #-0x10]!
  100146d48  mov     x29, sp
  100146d4c  adrp    x8, #0x10041b000
  100146d50  nop
  100146d54  ldr     x1, [x8, #0xdb8]
  100146d58  bl      _objc_msgSend                            ; [self retain]
  100146d5c  adrp    x8, #0x10041b000
  100146d60  nop
  100146d64  ldr     x1, [x8, #0xe88]
  100146d68  ldp     x29, x30, [sp], #0x10
  100146d6c  b       _objc_msgSend                            ; [[self retain] autorelease]

; ======================================================================
; -[TAGPBGeneratedMessage unknownFields]
; address 0x100146d70  size 16  kind objc
; ======================================================================
  100146d70  adrp    x8, #0x100420000
  100146d74  ldrsw   x8, [x8, #0x9ec]                         ; ivar offset TAGPBGeneratedMessage.unknownFields_ (+0x8)
  100146d78  ldr     x0, [x0, x8]                             ; x0 = self->unknownFields_
  100146d7c  ret
