// unit GAICoreDataUtil — 7 functions
//   0x10011ca10     116  -[GAICoreDataUtil init]
//   0x10011ca84     104  +[GAICoreDataUtil model]
//   0x10011caec     104  +[GAICoreDataUtil oldModel]
//   0x10011cb54     656  +[GAICoreDataUtil entityWithDescription:]
//   0x10011cde4     612  +[GAICoreDataUtil modelWithDescription:]
//   0x10011d048     852  +[GAICoreDataUtil modelDescription]
//   0x10011d39c    2208  +[GAICoreDataUtil oldModelDescription]

; ======================================================================
; -[GAICoreDataUtil init]
; address 0x10011ca10  size 116  kind objc
; ======================================================================
  10011ca10  stp     x29, x30, [sp, #-0x10]!
  10011ca14  mov     x29, sp
  10011ca18  stp     x20, x19, [sp, #-0x10]!
  10011ca1c  sub     sp, sp, #0x10
  10011ca20  mov     x19, x1
  10011ca24  str     x0, [sp]
  10011ca28  adrp    x8, #0x10041f000
  10011ca2c  ldr     x8, [x8, #0xe8]
  10011ca30  str     x8, [sp, #8]
  10011ca34  adrp    x8, #0x100416000
  10011ca38  nop
  10011ca3c  ldr     x1, [x8, #0xab8]
  10011ca40  mov     x0, sp
  10011ca44  bl      _objc_msgSendSuper2                      ; [super init]
  10011ca48  mov     x20, x0
  10011ca4c  cbz     x20, loc_10011ca68                       ; if (self == 0)
  10011ca50  adrp    x8, #0x10041b000
  10011ca54  nop
  10011ca58  ldr     x1, [x8, #0xd68]
  10011ca5c  mov     x0, x20
  10011ca60  mov     x2, x19
  10011ca64  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
loc_10011ca68:
  10011ca68  mov     x0, x20
  10011ca6c  bl      _objc_release
  10011ca70  mov     x0, #0
  10011ca74  sub     sp, x29, #0x10
  10011ca78  ldp     x20, x19, [sp], #0x10
  10011ca7c  ldp     x29, x30, [sp], #0x10
  10011ca80  ret

; ======================================================================
; +[GAICoreDataUtil model]
; address 0x10011ca84  size 104  kind objc
; ======================================================================
  10011ca84  stp     x29, x30, [sp, #-0x10]!
  10011ca88  mov     x29, sp
  10011ca8c  stp     x20, x19, [sp, #-0x10]!
  10011ca90  mov     x19, x0
  10011ca94  adrp    x8, #0x10041c000
  10011ca98  nop
  10011ca9c  ldr     x1, [x8, #0x70]
  10011caa0  bl      _objc_msgSend                            ; [GAICoreDataUtil modelDescription]
  10011caa4  mov     x29, x29
  10011caa8  bl      _objc_retainAutoreleasedReturnValue
  10011caac  mov     x20, x0
  10011cab0  adrp    x8, #0x10041c000
  10011cab4  nop
  10011cab8  ldr     x1, [x8, #0x78]
  10011cabc  mov     x0, x19
  10011cac0  mov     x2, x20
  10011cac4  bl      _objc_msgSend                            ; [GAICoreDataUtil modelWithDescription:[GAICoreDataUtil modelDescription]]
  10011cac8  mov     x29, x29
  10011cacc  bl      _objc_retainAutoreleasedReturnValue
  10011cad0  mov     x19, x0
  10011cad4  mov     x0, x20
  10011cad8  bl      _objc_release
  10011cadc  mov     x0, x19
  10011cae0  ldp     x20, x19, [sp], #0x10
  10011cae4  ldp     x29, x30, [sp], #0x10
  10011cae8  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAICoreDataUtil oldModel]
; address 0x10011caec  size 104  kind objc
; ======================================================================
  10011caec  stp     x29, x30, [sp, #-0x10]!
  10011caf0  mov     x29, sp
  10011caf4  stp     x20, x19, [sp, #-0x10]!
  10011caf8  mov     x19, x0
  10011cafc  adrp    x8, #0x10041c000
  10011cb00  nop
  10011cb04  ldr     x1, [x8, #0x80]
  10011cb08  bl      _objc_msgSend                            ; [GAICoreDataUtil oldModelDescription]
  10011cb0c  mov     x29, x29
  10011cb10  bl      _objc_retainAutoreleasedReturnValue
  10011cb14  mov     x20, x0
  10011cb18  adrp    x8, #0x10041c000
  10011cb1c  nop
  10011cb20  ldr     x1, [x8, #0x78]
  10011cb24  mov     x0, x19
  10011cb28  mov     x2, x20
  10011cb2c  bl      _objc_msgSend                            ; [GAICoreDataUtil modelWithDescription:[GAICoreDataUtil oldModelDescription]]
  10011cb30  mov     x29, x29
  10011cb34  bl      _objc_retainAutoreleasedReturnValue
  10011cb38  mov     x19, x0
  10011cb3c  mov     x0, x20
  10011cb40  bl      _objc_release
  10011cb44  mov     x0, x19
  10011cb48  ldp     x20, x19, [sp], #0x10
  10011cb4c  ldp     x29, x30, [sp], #0x10
  10011cb50  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAICoreDataUtil entityWithDescription:]
; address 0x10011cb54  size 656  kind objc
; ======================================================================
  10011cb54  stp     x29, x30, [sp, #-0x10]!
  10011cb58  mov     x29, sp
  10011cb5c  stp     x20, x19, [sp, #-0x10]!
  10011cb60  stp     x22, x21, [sp, #-0x10]!
  10011cb64  stp     x24, x23, [sp, #-0x10]!
  10011cb68  stp     x26, x25, [sp, #-0x10]!
  10011cb6c  stp     x28, x27, [sp, #-0x10]!
  10011cb70  sub     sp, sp, #0x100
  10011cb74  mov     x20, x2
  10011cb78  str     x20, [sp, #0x10]
  10011cb7c  adrp    x8, #0x1003b0000
  10011cb80  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011cb84  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011cb88  stur    x8, [x29, #-0x58]
  10011cb8c  adrp    x8, #0x10041b000
  10011cb90  nop
  10011cb94  ldr     x19, [x8, #0xb70]
  10011cb98  mov     x0, x20
  10011cb9c  bl      _objc_retain
  10011cba0  str     x0, [sp, #8]
  10011cba4  adrp    x2, #0x1003c4000
  10011cba8  add     x2, x2, #0xe90                           ; @"properties"
  10011cbac  mov     x0, x20
  10011cbb0  mov     x1, x19
  10011cbb4  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"properties"]
  10011cbb8  mov     x29, x29
  10011cbbc  bl      _objc_retainAutoreleasedReturnValue
  10011cbc0  mov     x20, x0
  10011cbc4  adrp    x8, #0x10041d000
  10011cbc8  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10011cbcc  adrp    x8, #0x100418000
  10011cbd0  nop
  10011cbd4  ldr     x1, [x8, #0x50]
  10011cbd8  bl      _objc_msgSend                            ; [NSMutableArray array]
  10011cbdc  mov     x29, x29
  10011cbe0  bl      _objc_retainAutoreleasedReturnValue
  10011cbe4  mov     x22, x0
  10011cbe8  stp     xzr, xzr, [x29, #-0x68]
  10011cbec  stp     xzr, xzr, [x29, #-0x78]
  10011cbf0  stp     xzr, xzr, [x29, #-0x88]
  10011cbf4  stp     xzr, xzr, [x29, #-0x98]
  10011cbf8  mov     x0, x20
  10011cbfc  bl      _objc_retain
  10011cc00  str     x0, [sp, #0x30]
  10011cc04  adrp    x8, #0x100416000
  10011cc08  nop
  10011cc0c  ldr     x1, [x8, #0xe00]
  10011cc10  str     x1, [sp, #0x28]
  10011cc14  sub     x2, x29, #0x98
  10011cc18  add     x3, sp, #0x38
  10011cc1c  mov     x4, #0x10
  10011cc20  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"properties"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  10011cc24  mov     x25, x0
  10011cc28  cbz     x25, loc_10011ccfc                       ; if ([[arg1 objectForKeyedSubscript:@"properties"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] == 0)
  10011cc2c  ldur    x8, [x29, #-0x88]
  10011cc30  ldr     x20, [x8]
  10011cc34  adrp    x8, #0x100416000
  10011cc38  nop
  10011cc3c  ldr     x24, [x8, #0xac8]
  10011cc40  adrp    x8, #0x100416000
  10011cc44  nop
  10011cc48  ldr     x26, [x8, #0xab8]
  10011cc4c  adrp    x8, #0x100418000
  10011cc50  nop
  10011cc54  ldr     x27, [x8, #0x428]
  10011cc58  adrp    x8, #0x100416000
  10011cc5c  nop
  10011cc60  ldr     x28, [x8, #0xd90]
  10011cc64  sub     x8, x29, #0x98
  10011cc68  str     x8, [sp, #0x20]
  10011cc6c  add     x8, sp, #0x38
  10011cc70  str     x8, [sp, #0x18]
loc_10011cc74:
  10011cc74  mov     x19, #0
loc_10011cc78:
  10011cc78  ldur    x8, [x29, #-0x88]
  10011cc7c  ldr     x8, [x8]
  10011cc80  cmp     x8, x20
  10011cc84  b.eq    loc_10011cc90                            ; if (x8 == x20)
  10011cc88  ldr     x0, [sp, #0x30]
  10011cc8c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 objectForKeyedSubscript:@"properties"])
loc_10011cc90:
  10011cc90  ldur    x8, [x29, #-0x90]
  10011cc94  ldr     x23, [x8, x19, lsl #3]
  10011cc98  adrp    x8, #0x10041e000
  10011cc9c  ldr     x0, [x8, #0x610]                         ; class NSAttributeDescription
  10011cca0  mov     x1, x24
  10011cca4  bl      _objc_msgSend                            ; [NSAttributeDescription alloc]
  10011cca8  mov     x1, x26
  10011ccac  bl      _objc_msgSend                            ; [[NSAttributeDescription alloc] init]
  10011ccb0  mov     x21, x0
  10011ccb4  mov     x1, x27
  10011ccb8  mov     x2, x23
  10011ccbc  bl      _objc_msgSend                            ; [[[NSAttributeDescription alloc] init] setValuesForKeysWithDictionary:x2]
  10011ccc0  mov     x0, x22
  10011ccc4  mov     x1, x28
  10011ccc8  mov     x2, x21
  10011cccc  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:[[NSAttributeDescription alloc] init]]
  10011ccd0  mov     x0, x21
  10011ccd4  bl      _objc_release
  10011ccd8  add     x19, x19, #1
  10011ccdc  cmp     x19, x25
  10011cce0  b.lo    loc_10011cc78                            ; if ((x19 + 1) <u [[arg1 objectForKeyedSubscript:@"properties"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16])
  10011cce4  mov     x4, #0x10
  10011cce8  ldp     x1, x0, [sp, #0x28]
  10011ccec  ldp     x3, x2, [sp, #0x18]
  10011ccf0  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"properties"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  10011ccf4  mov     x25, x0
  10011ccf8  cbnz    x25, loc_10011cc74                       ; if ([[arg1 objectForKeyedSubscript:@"properties"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] != 0)
loc_10011ccfc:
  10011ccfc  ldr     x23, [sp, #0x30]
  10011cd00  mov     x0, x23
  10011cd04  bl      _objc_release
  10011cd08  adrp    x8, #0x10041b000
  10011cd0c  nop
  10011cd10  ldr     x1, [x8, #0x1d8]
  10011cd14  ldr     x0, [sp, #0x10]
  10011cd18  bl      _objc_msgSend                            ; [arg1 mutableCopy]
  10011cd1c  mov     x21, x0
  10011cd20  ldr     x0, [sp, #8]
  10011cd24  bl      _objc_release
  10011cd28  adrp    x8, #0x10041b000
  10011cd2c  nop
  10011cd30  ldr     x1, [x8, #0xe00]
  10011cd34  adrp    x3, #0x1003c4000
  10011cd38  add     x3, x3, #0xe90                           ; @"properties"
  10011cd3c  mov     x0, x21
  10011cd40  mov     x19, x22
  10011cd44  mov     x2, x19
  10011cd48  bl      _objc_msgSend                            ; [[arg1 mutableCopy] setObject:[NSMutableArray array] forKeyedSubscript:@"properties"]
  10011cd4c  adrp    x8, #0x10041e000
  10011cd50  ldr     x0, [x8, #0x500]                         ; class NSEntityDescription
  10011cd54  adrp    x8, #0x100416000
  10011cd58  nop
  10011cd5c  ldr     x1, [x8, #0xac8]
  10011cd60  bl      _objc_msgSend                            ; [NSEntityDescription alloc]
  10011cd64  adrp    x8, #0x100416000
  10011cd68  nop
  10011cd6c  ldr     x1, [x8, #0xab8]
  10011cd70  bl      _objc_msgSend                            ; [[NSEntityDescription alloc] init]
  10011cd74  mov     x20, x0
  10011cd78  adrp    x8, #0x100418000
  10011cd7c  nop
  10011cd80  ldr     x1, [x8, #0x428]
  10011cd84  mov     x2, x21
  10011cd88  bl      _objc_msgSend                            ; [[[NSEntityDescription alloc] init] setValuesForKeysWithDictionary:[arg1 mutableCopy]]
  10011cd8c  mov     x0, x19
  10011cd90  bl      _objc_release
  10011cd94  mov     x0, x23
  10011cd98  bl      _objc_release
  10011cd9c  mov     x0, x21
  10011cda0  bl      _objc_release
  10011cda4  adrp    x8, #0x1003b0000
  10011cda8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011cdac  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011cdb0  ldur    x9, [x29, #-0x58]
  10011cdb4  sub     x8, x8, x9
  10011cdb8  cbnz    x8, loc_10011cde0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10011cdbc  mov     x0, x20
  10011cdc0  sub     sp, x29, #0x50
  10011cdc4  ldp     x28, x27, [sp], #0x10
  10011cdc8  ldp     x26, x25, [sp], #0x10
  10011cdcc  ldp     x24, x23, [sp], #0x10
  10011cdd0  ldp     x22, x21, [sp], #0x10
  10011cdd4  ldp     x20, x19, [sp], #0x10
  10011cdd8  ldp     x29, x30, [sp], #0x10
  10011cddc  b       _objc_autoreleaseReturnValue
loc_10011cde0:
  10011cde0  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; +[GAICoreDataUtil modelWithDescription:]
; address 0x10011cde4  size 612  kind objc
; ======================================================================
  10011cde4  stp     x29, x30, [sp, #-0x10]!
  10011cde8  mov     x29, sp
  10011cdec  stp     x20, x19, [sp, #-0x10]!
  10011cdf0  stp     x22, x21, [sp, #-0x10]!
  10011cdf4  stp     x24, x23, [sp, #-0x10]!
  10011cdf8  stp     x26, x25, [sp, #-0x10]!
  10011cdfc  stp     x28, x27, [sp, #-0x10]!
  10011ce00  sub     sp, sp, #0xf0
  10011ce04  mov     x20, x2
  10011ce08  str     x20, [sp, #0x10]
  10011ce0c  mov     x23, x0
  10011ce10  adrp    x8, #0x1003b0000
  10011ce14  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011ce18  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011ce1c  stur    x8, [x29, #-0x58]
  10011ce20  adrp    x8, #0x10041b000
  10011ce24  nop
  10011ce28  ldr     x19, [x8, #0xb70]
  10011ce2c  mov     x0, x20
  10011ce30  bl      _objc_retain
  10011ce34  str     x0, [sp, #8]
  10011ce38  adrp    x2, #0x1003c4000
  10011ce3c  add     x2, x2, #0xeb0                           ; @"entities"
  10011ce40  mov     x0, x20
  10011ce44  mov     x1, x19
  10011ce48  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"entities"]
  10011ce4c  mov     x29, x29
  10011ce50  bl      _objc_retainAutoreleasedReturnValue
  10011ce54  mov     x21, x0
  10011ce58  adrp    x8, #0x10041d000
  10011ce5c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10011ce60  adrp    x8, #0x100418000
  10011ce64  nop
  10011ce68  ldr     x1, [x8, #0x50]
  10011ce6c  bl      _objc_msgSend                            ; [NSMutableArray array]
  10011ce70  mov     x29, x29
  10011ce74  bl      _objc_retainAutoreleasedReturnValue
  10011ce78  mov     x19, x0
  10011ce7c  stp     xzr, xzr, [x29, #-0x68]
  10011ce80  stp     xzr, xzr, [x29, #-0x78]
  10011ce84  stp     xzr, xzr, [x29, #-0x88]
  10011ce88  stp     xzr, xzr, [x29, #-0x98]
  10011ce8c  mov     x0, x21
  10011ce90  bl      _objc_retain
  10011ce94  mov     x22, x0
  10011ce98  adrp    x8, #0x100416000
  10011ce9c  nop
  10011cea0  ldr     x1, [x8, #0xe00]
  10011cea4  str     x1, [sp, #0x20]
  10011cea8  sub     x2, x29, #0x98
  10011ceac  add     x3, sp, #0x28
  10011ceb0  mov     x4, #0x10
  10011ceb4  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"entities"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  10011ceb8  mov     x26, x0
  10011cebc  cbz     x26, loc_10011cf68                       ; if ([[arg1 objectForKeyedSubscript:@"entities"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] == 0)
  10011cec0  ldur    x8, [x29, #-0x88]
  10011cec4  ldr     x24, [x8]
  10011cec8  adrp    x8, #0x10041c000
  10011cecc  nop
  10011ced0  ldr     x25, [x8, #0x88]
  10011ced4  adrp    x8, #0x100416000
  10011ced8  nop
  10011cedc  ldr     x27, [x8, #0xd90]
  10011cee0  sub     x8, x29, #0x98
  10011cee4  str     x8, [sp, #0x18]
  10011cee8  add     x21, sp, #0x28
loc_10011ceec:
  10011ceec  mov     x28, #0
loc_10011cef0:
  10011cef0  ldur    x8, [x29, #-0x88]
  10011cef4  ldr     x8, [x8]
  10011cef8  cmp     x8, x24
  10011cefc  b.eq    loc_10011cf08                            ; if (x8 == x24)
  10011cf00  mov     x0, x22
  10011cf04  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 objectForKeyedSubscript:@"entities"])
loc_10011cf08:
  10011cf08  ldur    x8, [x29, #-0x90]
  10011cf0c  ldr     x2, [x8, x28, lsl #3]
  10011cf10  mov     x0, x23
  10011cf14  mov     x1, x25
  10011cf18  bl      _objc_msgSend                            ; [GAICoreDataUtil entityWithDescription:x2]
  10011cf1c  mov     x29, x29
  10011cf20  bl      _objc_retainAutoreleasedReturnValue
  10011cf24  mov     x20, x0
  10011cf28  mov     x0, x19
  10011cf2c  mov     x1, x27
  10011cf30  mov     x2, x20
  10011cf34  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:[GAICoreDataUtil entityWithDescription:x2]]
  10011cf38  mov     x0, x20
  10011cf3c  bl      _objc_release
  10011cf40  add     x28, x28, #1
  10011cf44  cmp     x28, x26
  10011cf48  b.lo    loc_10011cef0                            ; if ((x28 + 1) <u [[arg1 objectForKeyedSubscript:@"entities"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16])
  10011cf4c  mov     x4, #0x10
  10011cf50  mov     x0, x22
  10011cf54  ldp     x2, x1, [sp, #0x18]
  10011cf58  mov     x3, x21
  10011cf5c  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"entities"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  10011cf60  mov     x26, x0
  10011cf64  cbnz    x26, loc_10011ceec                       ; if ([[arg1 objectForKeyedSubscript:@"entities"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] != 0)
loc_10011cf68:
  10011cf68  mov     x0, x22
  10011cf6c  bl      _objc_release
  10011cf70  adrp    x8, #0x10041b000
  10011cf74  nop
  10011cf78  ldr     x1, [x8, #0x1d8]
  10011cf7c  ldr     x0, [sp, #0x10]
  10011cf80  bl      _objc_msgSend                            ; [arg1 mutableCopy]
  10011cf84  mov     x21, x0
  10011cf88  ldr     x0, [sp, #8]
  10011cf8c  bl      _objc_release
  10011cf90  adrp    x8, #0x10041b000
  10011cf94  nop
  10011cf98  ldr     x1, [x8, #0xe00]
  10011cf9c  adrp    x3, #0x1003c4000
  10011cfa0  add     x3, x3, #0xeb0                           ; @"entities"
  10011cfa4  mov     x0, x21
  10011cfa8  mov     x2, x19
  10011cfac  bl      _objc_msgSend                            ; [[arg1 mutableCopy] setObject:[NSMutableArray array] forKeyedSubscript:@"entities"]
  10011cfb0  adrp    x8, #0x10041e000
  10011cfb4  ldr     x0, [x8, #0x618]                         ; class NSManagedObjectModel
  10011cfb8  adrp    x8, #0x100416000
  10011cfbc  nop
  10011cfc0  ldr     x1, [x8, #0xac8]
  10011cfc4  bl      _objc_msgSend                            ; [NSManagedObjectModel alloc]
  10011cfc8  adrp    x8, #0x100416000
  10011cfcc  nop
  10011cfd0  ldr     x1, [x8, #0xab8]
  10011cfd4  bl      _objc_msgSend                            ; [[NSManagedObjectModel alloc] init]
  10011cfd8  mov     x20, x0
  10011cfdc  adrp    x8, #0x100418000
  10011cfe0  nop
  10011cfe4  ldr     x1, [x8, #0x428]
  10011cfe8  mov     x2, x21
  10011cfec  bl      _objc_msgSend                            ; [[[NSManagedObjectModel alloc] init] setValuesForKeysWithDictionary:[arg1 mutableCopy]]
  10011cff0  mov     x0, x19
  10011cff4  bl      _objc_release
  10011cff8  mov     x0, x22
  10011cffc  bl      _objc_release
  10011d000  mov     x0, x21
  10011d004  bl      _objc_release
  10011d008  adrp    x8, #0x1003b0000
  10011d00c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011d010  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011d014  ldur    x9, [x29, #-0x58]
  10011d018  sub     x8, x8, x9
  10011d01c  cbnz    x8, loc_10011d044                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10011d020  mov     x0, x20
  10011d024  sub     sp, x29, #0x50
  10011d028  ldp     x28, x27, [sp], #0x10
  10011d02c  ldp     x26, x25, [sp], #0x10
  10011d030  ldp     x24, x23, [sp], #0x10
  10011d034  ldp     x22, x21, [sp], #0x10
  10011d038  ldp     x20, x19, [sp], #0x10
  10011d03c  ldp     x29, x30, [sp], #0x10
  10011d040  b       _objc_autoreleaseReturnValue
loc_10011d044:
  10011d044  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; +[GAICoreDataUtil modelDescription]
; address 0x10011d048  size 852  kind objc
; ======================================================================
  10011d048  stp     x29, x30, [sp, #-0x10]!
  10011d04c  mov     x29, sp
  10011d050  stp     x20, x19, [sp, #-0x10]!
  10011d054  stp     x22, x21, [sp, #-0x10]!
  10011d058  stp     x24, x23, [sp, #-0x10]!
  10011d05c  stp     x26, x25, [sp, #-0x10]!
  10011d060  stp     x28, x27, [sp, #-0x10]!
  10011d064  sub     sp, sp, #0x120
  10011d068  adrp    x8, #0x1003b0000
  10011d06c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011d070  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011d074  stur    x8, [x29, #-0x58]
  10011d078  adrp    x8, #0x1003c4000
  10011d07c  add     x8, x8, #0xeb0                           ; @"entities"
  10011d080  adrp    x20, #0x1003b9000
  10011d084  add     x20, x20, #0xdb0                         ; @"name"
  10011d088  stur    x8, [x29, #-0x68]
  10011d08c  stur    x20, [x29, #-0xa0]
  10011d090  adrp    x8, #0x1003c4000
  10011d094  add     x8, x8, #0xab0                           ; @"GAIHit"
  10011d098  adrp    x9, #0x1003c4000
  10011d09c  add     x9, x9, #0xed0                           ; @"managedObjectClassName"
  10011d0a0  stur    x8, [x29, #-0x88]
  10011d0a4  stur    x9, [x29, #-0x98]
  10011d0a8  stur    x8, [x29, #-0x80]
  10011d0ac  adrp    x8, #0x1003c4000
  10011d0b0  add     x8, x8, #0xe90                           ; @"properties"
  10011d0b4  stur    x8, [x29, #-0x90]
  10011d0b8  str     x20, [sp, #0x80]
  10011d0bc  adrp    x8, #0x1003c4000
  10011d0c0  add     x8, x8, #0xdf0                           ; @"timestamp"
  10011d0c4  str     x8, [sp, #0xa0]
  10011d0c8  adrp    x22, #0x1003c4000
  10011d0cc  add     x22, x22, #0xef0                         ; @"attributeType"
  10011d0d0  str     x22, [sp, #0x88]
  10011d0d4  adrp    x26, #0x10041d000
  10011d0d8  ldr     x0, [x26, #0xf68]                        ; class NSNumber
  10011d0dc  adrp    x8, #0x100416000
  10011d0e0  nop
  10011d0e4  ldr     x19, [x8, #0xec0]
  10011d0e8  mov     w2, #0x384
  10011d0ec  mov     x1, x19
  10011d0f0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:900]
  10011d0f4  mov     x29, x29
  10011d0f8  bl      _objc_retainAutoreleasedReturnValue
  10011d0fc  str     x0, [sp, #0x28]
  10011d100  adrp    x27, #0x1003c4000
  10011d104  add     x27, x27, #0xf10                         ; @"indexed"
  10011d108  str     x0, [sp, #0xa8]
  10011d10c  str     x27, [sp, #0x90]
  10011d110  ldr     x0, [x26, #0xf68]                        ; class NSNumber
  10011d114  adrp    x8, #0x100417000
  10011d118  nop
  10011d11c  ldr     x21, [x8, #0xb8]
  10011d120  mov     w2, #1
  10011d124  mov     x1, x21
  10011d128  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10011d12c  mov     x29, x29
  10011d130  bl      _objc_retainAutoreleasedReturnValue
  10011d134  str     x0, [sp, #0x20]
  10011d138  str     x0, [sp, #0xb0]
  10011d13c  adrp    x28, #0x1003c4000
  10011d140  add     x28, x28, #0xf30                         ; @"optional"
  10011d144  str     x28, [sp, #0x98]
  10011d148  ldr     x0, [x26, #0xf68]                        ; class NSNumber
  10011d14c  mov     w2, #1
  10011d150  mov     x1, x21
  10011d154  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10011d158  mov     x29, x29
  10011d15c  bl      _objc_retainAutoreleasedReturnValue
  10011d160  str     x0, [sp, #0x18]
  10011d164  str     x0, [sp, #0xb8]
  10011d168  adrp    x23, #0x10041d000
  10011d16c  ldr     x0, [x23, #0xef8]                        ; class NSDictionary
  10011d170  adrp    x8, #0x100416000
  10011d174  nop
  10011d178  ldr     x24, [x8, #0xcd0]
  10011d17c  add     x2, sp, #0xa0
  10011d180  add     x3, sp, #0x80
  10011d184  mov     x4, #4
  10011d188  mov     x1, x24
  10011d18c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0xa0] forKeys:&sp[0x80] count:4]
  10011d190  stur    x0, [x29, #-0xb0]
  10011d194  str     x20, [sp, #0x30]
  10011d198  adrp    x8, #0x1003c4000
  10011d19c  add     x8, x8, #0xdd0                           ; @"parameters"
  10011d1a0  str     x8, [sp, #0x58]
  10011d1a4  str     x22, [sp, #0x38]
  10011d1a8  ldr     x25, [x26, #0xf68]                       ; class NSNumber
  10011d1ac  bl      _objc_retain
  10011d1b0  str     x0, [sp, #0x10]
  10011d1b4  mov     w2, #0x708
  10011d1b8  mov     x0, x25
  10011d1bc  mov     x1, x19
  10011d1c0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1800]
  10011d1c4  mov     x29, x29
  10011d1c8  bl      _objc_retainAutoreleasedReturnValue
  10011d1cc  mov     x25, x0
  10011d1d0  str     x25, [sp, #0x60]
  10011d1d4  adrp    x8, #0x1003c4000
  10011d1d8  add     x8, x8, #0xf50                           ; @"attributeValueClassName"
  10011d1dc  str     x8, [sp, #0x40]
  10011d1e0  adrp    x8, #0x1003c4000
  10011d1e4  add     x8, x8, #0xf70                           ; @"NSDictionary"
  10011d1e8  str     x8, [sp, #0x68]
  10011d1ec  str     x27, [sp, #0x48]
  10011d1f0  ldr     x0, [x26, #0xf68]                        ; class NSNumber
  10011d1f4  mov     w2, #0
  10011d1f8  mov     x1, x21
  10011d1fc  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  10011d200  mov     x29, x29
  10011d204  bl      _objc_retainAutoreleasedReturnValue
  10011d208  mov     x27, x0
  10011d20c  str     x27, [sp, #0x70]
  10011d210  str     x28, [sp, #0x50]
  10011d214  ldr     x0, [x26, #0xf68]                        ; class NSNumber
  10011d218  mov     w2, #1
  10011d21c  mov     x1, x21
  10011d220  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10011d224  mov     x29, x29
  10011d228  bl      _objc_retainAutoreleasedReturnValue
  10011d22c  mov     x21, x0
  10011d230  str     x21, [sp, #0x78]
  10011d234  ldr     x0, [x23, #0xef8]                        ; class NSDictionary
  10011d238  add     x2, sp, #0x58
  10011d23c  add     x3, sp, #0x30
  10011d240  mov     x4, #5
  10011d244  mov     x1, x24
  10011d248  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x58] forKeys:&sp[0x30] count:5]
  10011d24c  stur    x0, [x29, #-0xa8]
  10011d250  adrp    x22, #0x10041d000
  10011d254  ldr     x19, [x22, #0xf20]                       ; class NSArray
  10011d258  adrp    x8, #0x100417000
  10011d25c  nop
  10011d260  ldr     x28, [x8, #0x3c8]
  10011d264  bl      _objc_retain
  10011d268  mov     x20, x0
  10011d26c  sub     x2, x29, #0xb0
  10011d270  mov     x3, #2
  10011d274  mov     x0, x19
  10011d278  mov     x1, x28
  10011d27c  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0xb0] count:2]
  10011d280  stur    x0, [x29, #-0x78]
  10011d284  ldr     x19, [x23, #0xef8]                       ; class NSDictionary
  10011d288  bl      _objc_retain
  10011d28c  mov     x26, x0
  10011d290  sub     x2, x29, #0x88
  10011d294  sub     x3, x29, #0xa0
  10011d298  mov     x4, #3
  10011d29c  mov     x0, x19
  10011d2a0  mov     x1, x24
  10011d2a4  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0x88] forKeys:&x29[-0xa0] count:3]
  10011d2a8  stur    x0, [x29, #-0x70]
  10011d2ac  ldr     x19, [x22, #0xf20]                       ; class NSArray
  10011d2b0  bl      _objc_retain
  10011d2b4  mov     x22, x0
  10011d2b8  sub     x2, x29, #0x70
  10011d2bc  mov     x3, #1
  10011d2c0  mov     x0, x19
  10011d2c4  mov     x1, x28
  10011d2c8  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0x70] count:1]
  10011d2cc  stur    x0, [x29, #-0x60]
  10011d2d0  ldr     x19, [x23, #0xef8]                       ; class NSDictionary
  10011d2d4  bl      _objc_retain
  10011d2d8  mov     x28, x0
  10011d2dc  sub     x2, x29, #0x60
  10011d2e0  sub     x3, x29, #0x68
  10011d2e4  mov     x4, #1
  10011d2e8  mov     x0, x19
  10011d2ec  mov     x1, x24
  10011d2f0  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0x60] forKeys:&x29[-0x68] count:1]
  10011d2f4  mov     x19, x0
  10011d2f8  mov     x0, x22
  10011d2fc  bl      _objc_release
  10011d300  mov     x0, x26
  10011d304  bl      _objc_release
  10011d308  mov     x0, x20
  10011d30c  bl      _objc_release
  10011d310  ldr     x0, [sp, #0x10]
  10011d314  bl      _objc_release
  10011d318  mov     x0, x19
  10011d31c  bl      _objc_retainAutoreleasedReturnValue
  10011d320  mov     x19, x0
  10011d324  mov     x0, x28
  10011d328  bl      _objc_release
  10011d32c  mov     x0, x21
  10011d330  bl      _objc_release
  10011d334  mov     x0, x27
  10011d338  bl      _objc_release
  10011d33c  mov     x0, x25
  10011d340  bl      _objc_release
  10011d344  ldr     x0, [sp, #0x18]
  10011d348  bl      _objc_release
  10011d34c  ldr     x0, [sp, #0x20]
  10011d350  bl      _objc_release
  10011d354  ldr     x0, [sp, #0x28]
  10011d358  bl      _objc_release
  10011d35c  adrp    x8, #0x1003b0000
  10011d360  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011d364  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011d368  ldur    x9, [x29, #-0x58]
  10011d36c  sub     x8, x8, x9
  10011d370  cbnz    x8, loc_10011d398                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10011d374  mov     x0, x19
  10011d378  sub     sp, x29, #0x50
  10011d37c  ldp     x28, x27, [sp], #0x10
  10011d380  ldp     x26, x25, [sp], #0x10
  10011d384  ldp     x24, x23, [sp], #0x10
  10011d388  ldp     x22, x21, [sp], #0x10
  10011d38c  ldp     x20, x19, [sp], #0x10
  10011d390  ldp     x29, x30, [sp], #0x10
  10011d394  b       _objc_autoreleaseReturnValue
loc_10011d398:
  10011d398  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; +[GAICoreDataUtil oldModelDescription]
; address 0x10011d39c  size 2208  kind objc
; ======================================================================
  10011d39c  stp     x29, x30, [sp, #-0x10]!
  10011d3a0  mov     x29, sp
  10011d3a4  stp     x20, x19, [sp, #-0x10]!
  10011d3a8  stp     x22, x21, [sp, #-0x10]!
  10011d3ac  stp     x24, x23, [sp, #-0x10]!
  10011d3b0  stp     x26, x25, [sp, #-0x10]!
  10011d3b4  stp     x28, x27, [sp, #-0x10]!
  10011d3b8  sub     sp, sp, #0x3d0
  10011d3bc  adrp    x8, #0x1003b0000
  10011d3c0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011d3c4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011d3c8  stur    x8, [x29, #-0x58]
  10011d3cc  adrp    x8, #0x1003c4000
  10011d3d0  add     x8, x8, #0xeb0                           ; @"entities"
  10011d3d4  stur    x8, [x29, #-0x68]
  10011d3d8  adrp    x9, #0x1003b9000
  10011d3dc  add     x9, x9, #0xdb0                           ; @"name"
  10011d3e0  stur    x9, [x29, #-0xa8]
  10011d3e4  adrp    x8, #0x1003c4000
  10011d3e8  add     x8, x8, #0xad0                           ; @"GAIProperty"
  10011d3ec  stur    x8, [x29, #-0x90]
  10011d3f0  adrp    x10, #0x1003c4000
  10011d3f4  add     x10, x10, #0xed0                         ; @"managedObjectClassName"
  10011d3f8  stur    x10, [x29, #-0xa0]
  10011d3fc  adrp    x10, #0x1003c4000
  10011d400  add     x10, x10, #0xe90                         ; @"properties"
  10011d404  stur    x8, [x29, #-0x88]
  10011d408  stur    x10, [x29, #-0x98]
  10011d40c  str     x9, [sp, #0x318]
  10011d410  stur    x9, [x29, #-0xe8]
  10011d414  mov     x20, x9
  10011d418  adrp    x8, #0x1003c4000
  10011d41c  add     x8, x8, #0xef0                           ; @"attributeType"
  10011d420  str     x8, [sp, #0x320]
  10011d424  mov     x22, x8
  10011d428  adrp    x27, #0x10041d000
  10011d42c  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d430  adrp    x8, #0x100416000
  10011d434  nop
  10011d438  ldr     x19, [x8, #0xec0]
  10011d43c  mov     w2, #0x2bc
  10011d440  mov     x1, x19
  10011d444  bl      _objc_msgSend                            ; [NSNumber numberWithInt:700]
  10011d448  mov     x29, x29
  10011d44c  bl      _objc_retainAutoreleasedReturnValue
  10011d450  str     x0, [sp, #0x100]
  10011d454  adrp    x8, #0x1003c4000
  10011d458  add     x8, x8, #0xf10                           ; @"indexed"
  10011d45c  stur    x0, [x29, #-0xe0]
  10011d460  str     x8, [sp, #0x328]
  10011d464  mov     x26, x8
  10011d468  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d46c  adrp    x8, #0x100417000
  10011d470  nop
  10011d474  ldr     x21, [x8, #0xb8]
  10011d478  mov     w2, #1
  10011d47c  mov     x1, x21
  10011d480  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10011d484  mov     x29, x29
  10011d488  bl      _objc_retainAutoreleasedReturnValue
  10011d48c  str     x0, [sp, #0xf8]
  10011d490  stur    x0, [x29, #-0xd8]
  10011d494  adrp    x8, #0x1003c4000
  10011d498  add     x8, x8, #0xf30                           ; @"optional"
  10011d49c  str     x8, [sp, #0x330]
  10011d4a0  mov     x23, x8
  10011d4a4  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d4a8  mov     w2, #0
  10011d4ac  mov     x1, x21
  10011d4b0  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  10011d4b4  mov     x29, x29
  10011d4b8  bl      _objc_retainAutoreleasedReturnValue
  10011d4bc  str     x0, [sp, #0xf0]
  10011d4c0  stur    x0, [x29, #-0xd0]
  10011d4c4  adrp    x8, #0x10041d000
  10011d4c8  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10011d4cc  mov     x28, x8
  10011d4d0  adrp    x8, #0x100416000
  10011d4d4  nop
  10011d4d8  ldr     x24, [x8, #0xcd0]
  10011d4dc  sub     x2, x29, #0xe8
  10011d4e0  add     x3, sp, #0x318
  10011d4e4  mov     x4, #4
  10011d4e8  mov     x1, x24
  10011d4ec  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0xe8] forKeys:&sp[0x318] count:4]
  10011d4f0  stur    x0, [x29, #-0xc8]
  10011d4f4  str     x20, [sp, #0x2d8]
  10011d4f8  adrp    x8, #0x1003c4000
  10011d4fc  add     x8, x8, #0xf90                           ; @"string"
  10011d500  str     x8, [sp, #0x2f8]
  10011d504  str     x22, [sp, #0x2e0]
  10011d508  ldr     x25, [x27, #0xf68]                       ; class NSNumber
  10011d50c  bl      _objc_retain
  10011d510  str     x0, [sp, #0xd0]
  10011d514  mov     w2, #0x2bc
  10011d518  mov     x0, x25
  10011d51c  mov     x1, x19
  10011d520  bl      _objc_msgSend                            ; [NSNumber numberWithInt:700]
  10011d524  mov     x29, x29
  10011d528  bl      _objc_retainAutoreleasedReturnValue
  10011d52c  str     x0, [sp, #0xe8]
  10011d530  str     x0, [sp, #0x300]
  10011d534  mov     x25, x26
  10011d538  str     x25, [sp, #0x2e8]
  10011d53c  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d540  mov     w2, #0
  10011d544  mov     x1, x21
  10011d548  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  10011d54c  mov     x29, x29
  10011d550  bl      _objc_retainAutoreleasedReturnValue
  10011d554  str     x0, [sp, #0xe0]
  10011d558  str     x0, [sp, #0x308]
  10011d55c  str     x23, [sp, #0x2f0]
  10011d560  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d564  mov     w2, #1
  10011d568  mov     x1, x21
  10011d56c  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10011d570  mov     x29, x29
  10011d574  bl      _objc_retainAutoreleasedReturnValue
  10011d578  str     x0, [sp, #0xd8]
  10011d57c  str     x0, [sp, #0x310]
  10011d580  ldr     x0, [x28, #0xef8]                        ; class NSDictionary
  10011d584  add     x2, sp, #0x2f8
  10011d588  add     x3, sp, #0x2d8
  10011d58c  mov     x4, #4
  10011d590  mov     x1, x24
  10011d594  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x2f8] forKeys:&sp[0x2d8] count:4]
  10011d598  stur    x0, [x29, #-0xc0]
  10011d59c  str     x20, [sp, #0x298]
  10011d5a0  adrp    x8, #0x1003c4000
  10011d5a4  add     x8, x8, #0xfb0                           ; @"number"
  10011d5a8  str     x8, [sp, #0x2b8]
  10011d5ac  str     x22, [sp, #0x2a0]
  10011d5b0  ldr     x26, [x27, #0xf68]                       ; class NSNumber
  10011d5b4  bl      _objc_retain
  10011d5b8  str     x0, [sp, #0xb0]
  10011d5bc  mov     w2, #0x12c
  10011d5c0  mov     x0, x26
  10011d5c4  mov     x1, x19
  10011d5c8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:300]
  10011d5cc  mov     x29, x29
  10011d5d0  bl      _objc_retainAutoreleasedReturnValue
  10011d5d4  str     x0, [sp, #0xc8]
  10011d5d8  str     x0, [sp, #0x2c0]
  10011d5dc  str     x25, [sp, #0x2a8]
  10011d5e0  mov     x26, x25
  10011d5e4  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d5e8  mov     w2, #0
  10011d5ec  mov     x1, x21
  10011d5f0  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  10011d5f4  mov     x29, x29
  10011d5f8  bl      _objc_retainAutoreleasedReturnValue
  10011d5fc  str     x0, [sp, #0xc0]
  10011d600  str     x0, [sp, #0x2c8]
  10011d604  str     x23, [sp, #0x2b0]
  10011d608  mov     x25, x23
  10011d60c  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d610  mov     w2, #1
  10011d614  mov     x1, x21
  10011d618  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10011d61c  mov     x29, x29
  10011d620  bl      _objc_retainAutoreleasedReturnValue
  10011d624  str     x0, [sp, #0xb8]
  10011d628  str     x0, [sp, #0x2d0]
  10011d62c  ldr     x0, [x28, #0xef8]                        ; class NSDictionary
  10011d630  add     x2, sp, #0x2b8
  10011d634  add     x3, sp, #0x298
  10011d638  mov     x4, #4
  10011d63c  mov     x1, x24
  10011d640  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x2b8] forKeys:&sp[0x298] count:4]
  10011d644  stur    x0, [x29, #-0xb8]
  10011d648  str     x20, [sp, #0x258]
  10011d64c  adrp    x8, #0x1003c4000
  10011d650  add     x8, x8, #0xe50                           ; @"gaiVersion"
  10011d654  str     x8, [sp, #0x278]
  10011d658  str     x22, [sp, #0x260]
  10011d65c  ldr     x23, [x27, #0xf68]                       ; class NSNumber
  10011d660  bl      _objc_retain
  10011d664  str     x0, [sp, #0x90]
  10011d668  mov     w2, #0x2bc
  10011d66c  mov     x0, x23
  10011d670  mov     x1, x19
  10011d674  bl      _objc_msgSend                            ; [NSNumber numberWithInt:700]
  10011d678  mov     x29, x29
  10011d67c  bl      _objc_retainAutoreleasedReturnValue
  10011d680  str     x0, [sp, #0xa8]
  10011d684  str     x0, [sp, #0x280]
  10011d688  str     x26, [sp, #0x268]
  10011d68c  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d690  mov     w2, #1
  10011d694  mov     x1, x21
  10011d698  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10011d69c  mov     x29, x29
  10011d6a0  bl      _objc_retainAutoreleasedReturnValue
  10011d6a4  str     x0, [sp, #0xa0]
  10011d6a8  str     x0, [sp, #0x288]
  10011d6ac  str     x25, [sp, #0x270]
  10011d6b0  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d6b4  mov     w2, #0
  10011d6b8  mov     x1, x21
  10011d6bc  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  10011d6c0  mov     x29, x29
  10011d6c4  bl      _objc_retainAutoreleasedReturnValue
  10011d6c8  str     x0, [sp, #0x98]
  10011d6cc  str     x0, [sp, #0x290]
  10011d6d0  mov     x23, x28
  10011d6d4  ldr     x0, [x23, #0xef8]                        ; class NSDictionary
  10011d6d8  add     x2, sp, #0x278
  10011d6dc  add     x3, sp, #0x258
  10011d6e0  mov     x4, #4
  10011d6e4  mov     x1, x24
  10011d6e8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x278] forKeys:&sp[0x258] count:4]
  10011d6ec  stur    x0, [x29, #-0xb0]
  10011d6f0  adrp    x8, #0x10041d000
  10011d6f4  ldr     x28, [x8, #0xf20]                        ; class NSArray
  10011d6f8  adrp    x8, #0x100417000
  10011d6fc  nop
  10011d700  ldr     x25, [x8, #0x3c8]
  10011d704  str     x25, [sp, #0x48]
  10011d708  bl      _objc_retain
  10011d70c  str     x0, [sp, #0x80]
  10011d710  sub     x2, x29, #0xc8
  10011d714  mov     x3, #4
  10011d718  mov     x0, x28
  10011d71c  mov     x1, x25
  10011d720  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0xc8] count:4]
  10011d724  stur    x0, [x29, #-0x80]
  10011d728  ldr     x28, [x23, #0xef8]                       ; class NSDictionary
  10011d72c  mov     x25, x23
  10011d730  bl      _objc_retain
  10011d734  str     x0, [sp, #0x70]
  10011d738  sub     x2, x29, #0x90
  10011d73c  sub     x3, x29, #0xa8
  10011d740  mov     x4, #3
  10011d744  mov     x0, x28
  10011d748  mov     x1, x24
  10011d74c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0x90] forKeys:&x29[-0xa8] count:3]
  10011d750  stur    x0, [x29, #-0x78]
  10011d754  str     x20, [sp, #0x228]
  10011d758  adrp    x8, #0x1003c4000
  10011d75c  add     x8, x8, #0xab0                           ; @"GAIHit"
  10011d760  str     x8, [sp, #0x240]
  10011d764  adrp    x9, #0x1003c4000
  10011d768  add     x9, x9, #0xed0                           ; @"managedObjectClassName"
  10011d76c  str     x9, [sp, #0x230]
  10011d770  str     x8, [sp, #0x248]
  10011d774  adrp    x8, #0x1003c4000
  10011d778  add     x8, x8, #0xe90                           ; @"properties"
  10011d77c  str     x8, [sp, #0x238]
  10011d780  str     x20, [sp, #0x1c8]
  10011d784  adrp    x8, #0x1003c4000
  10011d788  add     x8, x8, #0xdf0                           ; @"timestamp"
  10011d78c  str     x8, [sp, #0x1e8]
  10011d790  mov     x23, x22
  10011d794  str     x23, [sp, #0x1d0]
  10011d798  ldr     x28, [x27, #0xf68]                       ; class NSNumber
  10011d79c  bl      _objc_retain
  10011d7a0  str     x0, [sp, #0x60]
  10011d7a4  mov     w2, #0x384
  10011d7a8  mov     x0, x28
  10011d7ac  mov     x1, x19
  10011d7b0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:900]
  10011d7b4  mov     x29, x29
  10011d7b8  bl      _objc_retainAutoreleasedReturnValue
  10011d7bc  str     x0, [sp, #0x88]
  10011d7c0  str     x0, [sp, #0x1f0]
  10011d7c4  mov     x28, x26
  10011d7c8  str     x28, [sp, #0x1d8]
  10011d7cc  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d7d0  mov     w2, #1
  10011d7d4  mov     x1, x21
  10011d7d8  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10011d7dc  mov     x29, x29
  10011d7e0  bl      _objc_retainAutoreleasedReturnValue
  10011d7e4  str     x0, [sp, #0x78]
  10011d7e8  str     x0, [sp, #0x1f8]
  10011d7ec  adrp    x26, #0x1003c4000
  10011d7f0  add     x26, x26, #0xf30                         ; @"optional"
  10011d7f4  str     x26, [sp, #0x1e0]
  10011d7f8  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d7fc  mov     w2, #0
  10011d800  mov     x1, x21
  10011d804  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  10011d808  mov     x29, x29
  10011d80c  bl      _objc_retainAutoreleasedReturnValue
  10011d810  str     x0, [sp, #0x68]
  10011d814  str     x0, [sp, #0x200]
  10011d818  ldr     x0, [x25, #0xef8]                        ; class NSDictionary
  10011d81c  add     x2, sp, #0x1e8
  10011d820  add     x3, sp, #0x1c8
  10011d824  mov     x4, #4
  10011d828  mov     x1, x24
  10011d82c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x1e8] forKeys:&sp[0x1c8] count:4]
  10011d830  str     x0, [sp, #0x208]
  10011d834  str     x20, [sp, #0x188]
  10011d838  adrp    x8, #0x1003c4000
  10011d83c  add     x8, x8, #0xe70                           ; @"parametersData"
  10011d840  str     x8, [sp, #0x1a8]
  10011d844  str     x23, [sp, #0x190]
  10011d848  mov     x22, x23
  10011d84c  ldr     x23, [x27, #0xf68]                       ; class NSNumber
  10011d850  bl      _objc_retain
  10011d854  str     x0, [sp, #0x38]
  10011d858  mov     w2, #0x3e8
  10011d85c  mov     x0, x23
  10011d860  mov     x1, x19
  10011d864  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1000]
  10011d868  mov     x29, x29
  10011d86c  bl      _objc_retainAutoreleasedReturnValue
  10011d870  str     x0, [sp, #0x58]
  10011d874  str     x0, [sp, #0x1b0]
  10011d878  str     x28, [sp, #0x198]
  10011d87c  mov     x23, x28
  10011d880  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d884  mov     w2, #0
  10011d888  mov     x1, x21
  10011d88c  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  10011d890  mov     x29, x29
  10011d894  bl      _objc_retainAutoreleasedReturnValue
  10011d898  str     x0, [sp, #0x50]
  10011d89c  str     x0, [sp, #0x1b8]
  10011d8a0  str     x26, [sp, #0x1a0]
  10011d8a4  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d8a8  mov     w2, #0
  10011d8ac  mov     x1, x21
  10011d8b0  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  10011d8b4  mov     x29, x29
  10011d8b8  bl      _objc_retainAutoreleasedReturnValue
  10011d8bc  str     x0, [sp, #0x40]
  10011d8c0  str     x0, [sp, #0x1c0]
  10011d8c4  ldr     x0, [x25, #0xef8]                        ; class NSDictionary
  10011d8c8  add     x2, sp, #0x1a8
  10011d8cc  add     x3, sp, #0x188
  10011d8d0  mov     x4, #4
  10011d8d4  mov     x1, x24
  10011d8d8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x1a8] forKeys:&sp[0x188] count:4]
  10011d8dc  str     x0, [sp, #0x210]
  10011d8e0  str     x20, [sp, #0x148]
  10011d8e4  adrp    x8, #0x1003c4000
  10011d8e8  add     x8, x8, #0xe30                           ; @"dispatchUrl"
  10011d8ec  str     x8, [sp, #0x168]
  10011d8f0  str     x22, [sp, #0x150]
  10011d8f4  ldr     x28, [x27, #0xf68]                       ; class NSNumber
  10011d8f8  bl      _objc_retain
  10011d8fc  str     x0, [sp, #0x18]
  10011d900  mov     w2, #0x2bc
  10011d904  mov     x0, x28
  10011d908  mov     x1, x19
  10011d90c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:700]
  10011d910  mov     x29, x29
  10011d914  bl      _objc_retainAutoreleasedReturnValue
  10011d918  str     x0, [sp, #0x30]
  10011d91c  str     x0, [sp, #0x170]
  10011d920  str     x23, [sp, #0x158]
  10011d924  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d928  mov     w2, #1
  10011d92c  mov     x1, x21
  10011d930  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10011d934  mov     x29, x29
  10011d938  bl      _objc_retainAutoreleasedReturnValue
  10011d93c  str     x0, [sp, #0x28]
  10011d940  str     x0, [sp, #0x178]
  10011d944  str     x26, [sp, #0x160]
  10011d948  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d94c  mov     w2, #0
  10011d950  mov     x1, x21
  10011d954  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  10011d958  mov     x29, x29
  10011d95c  bl      _objc_retainAutoreleasedReturnValue
  10011d960  str     x0, [sp, #0x20]
  10011d964  str     x0, [sp, #0x180]
  10011d968  ldr     x0, [x25, #0xef8]                        ; class NSDictionary
  10011d96c  add     x2, sp, #0x168
  10011d970  add     x3, sp, #0x148
  10011d974  mov     x4, #4
  10011d978  mov     x1, x24
  10011d97c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x168] forKeys:&sp[0x148] count:4]
  10011d980  str     x0, [sp, #0x218]
  10011d984  str     x20, [sp, #0x108]
  10011d988  adrp    x8, #0x1003c4000
  10011d98c  add     x8, x8, #0xe50                           ; @"gaiVersion"
  10011d990  str     x8, [sp, #0x128]
  10011d994  str     x22, [sp, #0x110]
  10011d998  ldr     x22, [x27, #0xf68]                       ; class NSNumber
  10011d99c  bl      _objc_retain
  10011d9a0  str     x0, [sp, #0x10]
  10011d9a4  mov     w2, #0x2bc
  10011d9a8  mov     x0, x22
  10011d9ac  mov     x1, x19
  10011d9b0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:700]
  10011d9b4  mov     x29, x29
  10011d9b8  bl      _objc_retainAutoreleasedReturnValue
  10011d9bc  mov     x22, x0
  10011d9c0  str     x22, [sp, #0x130]
  10011d9c4  str     x23, [sp, #0x118]
  10011d9c8  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d9cc  mov     w2, #1
  10011d9d0  mov     x1, x21
  10011d9d4  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10011d9d8  mov     x29, x29
  10011d9dc  bl      _objc_retainAutoreleasedReturnValue
  10011d9e0  mov     x23, x0
  10011d9e4  str     x23, [sp, #0x138]
  10011d9e8  str     x26, [sp, #0x120]
  10011d9ec  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10011d9f0  mov     w2, #0
  10011d9f4  mov     x1, x21
  10011d9f8  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  10011d9fc  mov     x29, x29
  10011da00  bl      _objc_retainAutoreleasedReturnValue
  10011da04  mov     x21, x0
  10011da08  str     x21, [sp, #0x140]
  10011da0c  ldr     x0, [x25, #0xef8]                        ; class NSDictionary
  10011da10  add     x2, sp, #0x128
  10011da14  add     x3, sp, #0x108
  10011da18  mov     x4, #4
  10011da1c  mov     x1, x24
  10011da20  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x128] forKeys:&sp[0x108] count:4]
  10011da24  str     x0, [sp, #0x220]
  10011da28  adrp    x20, #0x10041d000
  10011da2c  ldr     x19, [x20, #0xf20]                       ; class NSArray
  10011da30  bl      _objc_retain
  10011da34  mov     x26, x0
  10011da38  add     x2, sp, #0x208
  10011da3c  mov     x3, #4
  10011da40  mov     x0, x19
  10011da44  ldr     x27, [sp, #0x48]
  10011da48  mov     x1, x27
  10011da4c  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x208] count:4]
  10011da50  str     x0, [sp, #0x250]
  10011da54  ldr     x19, [x25, #0xef8]                       ; class NSDictionary
  10011da58  bl      _objc_retain
  10011da5c  mov     x28, x0
  10011da60  add     x2, sp, #0x240
  10011da64  add     x3, sp, #0x228
  10011da68  mov     x4, #3
  10011da6c  mov     x0, x19
  10011da70  mov     x1, x24
  10011da74  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x240] forKeys:&sp[0x228] count:3]
  10011da78  stur    x0, [x29, #-0x70]
  10011da7c  ldr     x19, [x20, #0xf20]                       ; class NSArray
  10011da80  bl      _objc_retain
  10011da84  mov     x20, x0
  10011da88  sub     x2, x29, #0x78
  10011da8c  mov     x3, #2
  10011da90  mov     x0, x19
  10011da94  mov     x1, x27
  10011da98  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0x78] count:2]
  10011da9c  stur    x0, [x29, #-0x60]
  10011daa0  ldr     x19, [x25, #0xef8]                       ; class NSDictionary
  10011daa4  bl      _objc_retain
  10011daa8  mov     x27, x0
  10011daac  sub     x2, x29, #0x60
  10011dab0  sub     x3, x29, #0x68
  10011dab4  mov     x4, #1
  10011dab8  mov     x0, x19
  10011dabc  mov     x1, x24
  10011dac0  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0x60] forKeys:&x29[-0x68] count:1]
  10011dac4  mov     x19, x0
  10011dac8  mov     x0, x20
  10011dacc  bl      _objc_release
  10011dad0  mov     x0, x28
  10011dad4  bl      _objc_release
  10011dad8  mov     x0, x26
  10011dadc  bl      _objc_release
  10011dae0  ldr     x0, [sp, #0x10]
  10011dae4  bl      _objc_release
  10011dae8  ldr     x0, [sp, #0x18]
  10011daec  bl      _objc_release
  10011daf0  ldr     x0, [sp, #0x38]
  10011daf4  bl      _objc_release
  10011daf8  ldr     x0, [sp, #0x60]
  10011dafc  bl      _objc_release
  10011db00  ldr     x0, [sp, #0x70]
  10011db04  bl      _objc_release
  10011db08  ldr     x0, [sp, #0x80]
  10011db0c  bl      _objc_release
  10011db10  ldr     x0, [sp, #0x90]
  10011db14  bl      _objc_release
  10011db18  ldr     x0, [sp, #0xb0]
  10011db1c  bl      _objc_release
  10011db20  ldr     x0, [sp, #0xd0]
  10011db24  bl      _objc_release
  10011db28  mov     x0, x19
  10011db2c  bl      _objc_retainAutoreleasedReturnValue
  10011db30  mov     x19, x0
  10011db34  mov     x0, x27
  10011db38  bl      _objc_release
  10011db3c  mov     x0, x21
  10011db40  bl      _objc_release
  10011db44  mov     x0, x23
  10011db48  bl      _objc_release
  10011db4c  mov     x0, x22
  10011db50  bl      _objc_release
  10011db54  ldr     x0, [sp, #0x20]
  10011db58  bl      _objc_release
  10011db5c  ldr     x0, [sp, #0x28]
  10011db60  bl      _objc_release
  10011db64  ldr     x0, [sp, #0x30]
  10011db68  bl      _objc_release
  10011db6c  ldr     x0, [sp, #0x40]
  10011db70  bl      _objc_release
  10011db74  ldr     x0, [sp, #0x50]
  10011db78  bl      _objc_release
  10011db7c  ldr     x0, [sp, #0x58]
  10011db80  bl      _objc_release
  10011db84  ldr     x0, [sp, #0x68]
  10011db88  bl      _objc_release
  10011db8c  ldr     x0, [sp, #0x78]
  10011db90  bl      _objc_release
  10011db94  ldr     x0, [sp, #0x88]
  10011db98  bl      _objc_release
  10011db9c  ldr     x0, [sp, #0x98]
  10011dba0  bl      _objc_release
  10011dba4  ldr     x0, [sp, #0xa0]
  10011dba8  bl      _objc_release
  10011dbac  ldr     x0, [sp, #0xa8]
  10011dbb0  bl      _objc_release
  10011dbb4  ldr     x0, [sp, #0xb8]
  10011dbb8  bl      _objc_release
  10011dbbc  ldr     x0, [sp, #0xc0]
  10011dbc0  bl      _objc_release
  10011dbc4  ldr     x0, [sp, #0xc8]
  10011dbc8  bl      _objc_release
  10011dbcc  ldr     x0, [sp, #0xd8]
  10011dbd0  bl      _objc_release
  10011dbd4  ldr     x0, [sp, #0xe0]
  10011dbd8  bl      _objc_release
  10011dbdc  ldr     x0, [sp, #0xe8]
  10011dbe0  bl      _objc_release
  10011dbe4  ldr     x0, [sp, #0xf0]
  10011dbe8  bl      _objc_release
  10011dbec  ldr     x0, [sp, #0xf8]
  10011dbf0  bl      _objc_release
  10011dbf4  ldr     x0, [sp, #0x100]
  10011dbf8  bl      _objc_release
  10011dbfc  adrp    x8, #0x1003b0000
  10011dc00  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011dc04  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011dc08  ldur    x9, [x29, #-0x58]
  10011dc0c  sub     x8, x8, x9
  10011dc10  cbnz    x8, loc_10011dc38                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10011dc14  mov     x0, x19
  10011dc18  sub     sp, x29, #0x50
  10011dc1c  ldp     x28, x27, [sp], #0x10
  10011dc20  ldp     x26, x25, [sp], #0x10
  10011dc24  ldp     x24, x23, [sp], #0x10
  10011dc28  ldp     x22, x21, [sp], #0x10
  10011dc2c  ldp     x20, x19, [sp], #0x10
  10011dc30  ldp     x29, x30, [sp], #0x10
  10011dc34  b       _objc_autoreleaseReturnValue
loc_10011dc38:
  10011dc38  bl      ___stack_chk_fail                        ; stack_chk_fail()
