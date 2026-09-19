// unit TAGResourceUtil — 9 functions
//   0x100165610    2508  +[TAGResourceUtil expandResource:]
//   0x100165fdc     308  +[TAGResourceUtil valueBuilderBasedOnValue:]
//   0x100166110    4004  +[TAGResourceUtil expandIthValue:resource:expandedValues:pendingExpansions:]
//   0x1001670b4     292  +[TAGResourceUtil servingValue:]
//   0x1001671d8     132  +[TAGResourceUtil logAndThrow:]
//   0x10016725c     292  +[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:index:listName:]
//   0x100167380     292  +[TAGResourceUtil objectWithNSArrayBoundsCheck:index:listName:]
//   0x1001674a4     948  +[TAGResourceUtil expandFunctionCall:resource:expandedValues:index:]
//   0x100167858    1580  +[TAGResourceUtil expandRule:tags:macros:predicates:]

; ======================================================================
; +[TAGResourceUtil expandResource:]
; address 0x100165610  size 2508  kind objc
; ======================================================================
  100165610  stp     x29, x30, [sp, #-0x10]!
  100165614  mov     x29, sp
  100165618  stp     x20, x19, [sp, #-0x10]!
  10016561c  stp     x22, x21, [sp, #-0x10]!
  100165620  stp     x24, x23, [sp, #-0x10]!
  100165624  stp     x26, x25, [sp, #-0x10]!
  100165628  stp     x28, x27, [sp, #-0x10]!
  10016562c  sub     sp, sp, #0x100
  100165630  adrp    x8, #0x1003b0000
  100165634  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100165638  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10016563c  stur    x8, [x29, #-0x58]
  100165640  mov     x0, x2
  100165644  bl      _objc_retain
  100165648  mov     x19, x0
  10016564c  adrp    x8, #0x10041d000
  100165650  ldr     x22, [x8, #0xf28]                        ; class NSMutableArray
  100165654  nop
  100165658  nop
  10016565c  ldr     x21, [x8, #0x6d0]
  100165660  mov     x1, x21
  100165664  bl      _objc_msgSend                            ; [arg1 valueArray]
  100165668  mov     x29, x29
  10016566c  bl      _objc_retainAutoreleasedReturnValue
  100165670  mov     x20, x0
  100165674  adrp    x8, #0x100416000
  100165678  nop
  10016567c  ldr     x1, [x8, #0xe30]
  100165680  str     x1, [sp, #0x28]
  100165684  bl      _objc_msgSend                            ; [[arg1 valueArray] count]
  100165688  mov     x2, x0
  10016568c  adrp    x8, #0x10041b000
  100165690  nop
  100165694  ldr     x1, [x8, #0x280]
  100165698  str     x1, [sp, #8]
  10016569c  mov     x0, x22
  1001656a0  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:[[arg1 valueArray] count]]
  1001656a4  mov     x27, x19
  1001656a8  mov     x29, x29
  1001656ac  bl      _objc_retainAutoreleasedReturnValue
  1001656b0  mov     x28, x0
  1001656b4  mov     x0, x20
  1001656b8  bl      _objc_release
  1001656bc  adrp    x8, #0x100418000
  1001656c0  nop
  1001656c4  ldr     x20, [x8, #0x468]
  1001656c8  adrp    x8, #0x100416000
  1001656cc  nop
  1001656d0  ldr     x8, [x8, #0xd90]
  1001656d4  str     x8, [sp, #0x20]
  1001656d8  mov     x19, #-1
  1001656dc  adrp    x24, #0x10041e000
  1001656e0  b       loc_1001656ec
loc_1001656e4:
  1001656e4  mov     x0, x22
  1001656e8  bl      _objc_release
loc_1001656ec:
  1001656ec  mov     x0, x27
  1001656f0  mov     x1, x21
  1001656f4  bl      _objc_msgSend                            ; [arg1 valueArray]
  1001656f8  mov     x29, x29
  1001656fc  bl      _objc_retainAutoreleasedReturnValue
  100165700  mov     x22, x0
  100165704  ldr     x1, [sp, #0x28]
  100165708  bl      _objc_msgSend                            ; [[arg1 valueArray] count]
  10016570c  mov     x23, x0
  100165710  mov     x0, x22
  100165714  bl      _objc_release
  100165718  add     x19, x19, #1
  10016571c  cmp     x19, x23
  100165720  b.hs    loc_100165754                            ; if ((x19 + 1) >=u [[arg1 valueArray] count])
  100165724  ldr     x0, [x24, #0x140]                        ; class NSNull
  100165728  mov     x1, x20
  10016572c  bl      _objc_msgSend                            ; [NSNull null]
  100165730  mov     x29, x29
  100165734  bl      _objc_retainAutoreleasedReturnValue
  100165738  mov     x22, x0
  10016573c  mov     x0, x28
  100165740  ldr     x1, [sp, #0x20]
  100165744  mov     x2, x22
  100165748  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[[arg1 valueArray] count]] addObject:[NSNull null]]
  10016574c  b       loc_1001656e4
  100165750  b       loc_100165e80
loc_100165754:
  100165754  mov     x20, #0
  100165758  adrp    x8, #0x100418000
  10016575c  nop
  100165760  ldr     x22, [x8, #0x360]
  100165764  adrp    x8, #0x10041d000
  100165768  add     x8, x8, #0x6d8                           ; &@selector(expandIthValue:resource:expandedValues:pendingExpansions:)
  10016576c  ldr     x24, [x8]
  100165770  adrp    x19, #0x10041e000
  100165774  b       loc_100165790
loc_100165778:
  100165778  mov     x29, x29
  10016577c  bl      _objc_retainAutoreleasedReturnValue
  100165780  bl      _objc_release
  100165784  mov     x0, x25
  100165788  bl      _objc_release
  10016578c  add     x20, x20, #1
loc_100165790:
  100165790  mov     x0, x27
  100165794  mov     x1, x21
  100165798  bl      _objc_msgSend                            ; [arg1 valueArray]
  10016579c  mov     x29, x29
  1001657a0  bl      _objc_retainAutoreleasedReturnValue
  1001657a4  mov     x23, x0
  1001657a8  ldr     x1, [sp, #0x28]
  1001657ac  bl      _objc_msgSend                            ; [[arg1 valueArray] count]
  1001657b0  mov     x25, x0
  1001657b4  mov     x0, x23
  1001657b8  bl      _objc_release
  1001657bc  cmp     x20, x25
  1001657c0  b.hs    loc_100165810                            ; if (x20 >=u [[arg1 valueArray] count])
  1001657c4  adrp    x8, #0x10041e000
  1001657c8  ldr     x23, [x8, #0x888]                        ; class TAGResourceUtil
  1001657cc  ldr     x0, [x19, #0x388]                        ; class NSMutableSet
  1001657d0  mov     x1, x22
  1001657d4  bl      _objc_msgSend                            ; [NSMutableSet set]
  1001657d8  mov     x29, x29
  1001657dc  bl      _objc_retainAutoreleasedReturnValue
  1001657e0  mov     x25, x0
  1001657e4  mov     x0, x23
  1001657e8  mov     x1, x24
  1001657ec  mov     x2, x20
  1001657f0  mov     x3, x27
  1001657f4  mov     x4, x28
  1001657f8  mov     x5, x25
  1001657fc  bl      _objc_msgSend                            ; [TAGResourceUtil expandIthValue:x2 resource:arg1 expandedValues:[NSMutableArray arrayWithCapacity:[[arg1 valueArray] count]] pendingExpansions:[NSMutableSet set]]
  100165800  b       loc_100165778
  100165804  mov     x23, x0
  100165808  mov     x0, x25
  10016580c  b       loc_100165e9c
loc_100165810:
  100165810  adrp    x8, #0x10041e000
  100165814  ldr     x0, [x8, #0xb28]                         ; class TAGExpandedResource
  100165818  adrp    x8, #0x10041c000
  10016581c  nop
  100165820  ldr     x1, [x8, #0xbb0]
  100165824  bl      _objc_msgSend                            ; [TAGExpandedResource builder]
  100165828  mov     x29, x29
  10016582c  bl      _objc_retainAutoreleasedReturnValue
  100165830  str     x0, [sp, #0x30]
  100165834  adrp    x8, #0x10041d000
  100165838  ldr     x22, [x8, #0xf28]                        ; class NSMutableArray
  10016583c  nop
  100165840  nop
  100165844  ldr     x26, [x8, #0x6e0]
  100165848  mov     x19, x27
  10016584c  mov     x0, x19
  100165850  mov     x1, x26
  100165854  mov     x21, x28
  100165858  bl      _objc_msgSend                            ; [arg1 tagArray]
  10016585c  mov     x29, x29
  100165860  bl      _objc_retainAutoreleasedReturnValue
  100165864  mov     x20, x0
  100165868  ldr     x1, [sp, #0x28]
  10016586c  bl      _objc_msgSend                            ; [[arg1 tagArray] count]
  100165870  mov     x2, x0
  100165874  mov     x0, x22
  100165878  ldr     x1, [sp, #8]
  10016587c  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:[[arg1 tagArray] count]]
  100165880  mov     x29, x29
  100165884  bl      _objc_retainAutoreleasedReturnValue
  100165888  mov     x22, x0
  10016588c  mov     x0, x20
  100165890  bl      _objc_release
  100165894  mov     x25, #0
  100165898  adrp    x8, #0x100416000
  10016589c  nop
  1001658a0  ldr     x8, [x8, #0xc30]
  1001658a4  str     x8, [sp, #0x18]
  1001658a8  adrp    x8, #0x10041d000
  1001658ac  nop
  1001658b0  ldr     x8, [x8, #0x6e8]
  1001658b4  str     x8, [sp, #0x10]
  1001658b8  b       loc_1001658d8
loc_1001658bc:
  1001658bc  mov     x0, x23
  1001658c0  bl      _objc_release
  1001658c4  mov     x0, x24
  1001658c8  bl      _objc_release
  1001658cc  mov     x0, x20
  1001658d0  bl      _objc_release
  1001658d4  add     x25, x25, #1
loc_1001658d8:
  1001658d8  mov     x0, x19
  1001658dc  mov     x1, x26
  1001658e0  bl      _objc_msgSend                            ; [arg1 tagArray]
  1001658e4  mov     x29, x29
  1001658e8  bl      _objc_retainAutoreleasedReturnValue
  1001658ec  mov     x20, x0
  1001658f0  ldr     x1, [sp, #0x28]
  1001658f4  bl      _objc_msgSend                            ; [[arg1 tagArray] count]
  1001658f8  mov     x23, x0
  1001658fc  mov     x0, x20
  100165900  bl      _objc_release
  100165904  cmp     x25, x23
  100165908  b.hs    loc_100165990                            ; if (x25 >=u [[arg1 tagArray] count])
  10016590c  adrp    x8, #0x10041e000
  100165910  ldr     x27, [x8, #0x888]                        ; class TAGResourceUtil
  100165914  mov     x0, x19
  100165918  mov     x1, x26
  10016591c  bl      _objc_msgSend                            ; [arg1 tagArray]
  100165920  mov     x29, x29
  100165924  bl      _objc_retainAutoreleasedReturnValue
  100165928  mov     x20, x0
  10016592c  ldr     x1, [sp, #0x18]
  100165930  mov     x2, x25
  100165934  bl      _objc_msgSend                            ; [[arg1 tagArray] objectAtIndex:x2]
  100165938  mov     x29, x29
  10016593c  bl      _objc_retainAutoreleasedReturnValue
  100165940  mov     x24, x0
  100165944  mov     x0, x27
  100165948  ldr     x1, [sp, #0x10]
  10016594c  mov     x2, x24
  100165950  mov     x3, x19
  100165954  mov     x4, x21
  100165958  mov     x5, x25
  10016595c  bl      _objc_msgSend                            ; [TAGResourceUtil expandFunctionCall:[[arg1 tagArray] objectAtIndex:x2] resource:arg1 expandedValues:[NSMutableArray arrayWithCapacity:[[arg1 valueArray] count]] index:x5]
  100165960  mov     x29, x29
  100165964  bl      _objc_retainAutoreleasedReturnValue
  100165968  mov     x23, x0
  10016596c  mov     x0, x22
  100165970  ldr     x1, [sp, #0x20]
  100165974  mov     x2, x23
  100165978  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[[arg1 tagArray] count]] addObject:[TAGResourceUtil expandFunctionCall:[[arg1 tagArray] objectAtIndex:x2] resource:arg1 expandedValues:[NSMutableArray arrayWithCapacity:[[arg1 valueArray] count]] index:x5]]
  10016597c  b       loc_1001658bc
  100165980  mov     x25, x0
  100165984  mov     x0, x23
  100165988  bl      _objc_release
  10016598c  b       loc_100165ee8
loc_100165990:
  100165990  adrp    x8, #0x10041d000
  100165994  ldr     x24, [x8, #0xf28]                        ; class NSMutableArray
  100165998  nop
  10016599c  nop
  1001659a0  ldr     x26, [x8, #0x6f0]
  1001659a4  mov     x0, x19
  1001659a8  mov     x1, x26
  1001659ac  bl      _objc_msgSend                            ; [arg1 predicateArray]
  1001659b0  mov     x29, x29
  1001659b4  bl      _objc_retainAutoreleasedReturnValue
  1001659b8  mov     x20, x0
  1001659bc  ldr     x1, [sp, #0x28]
  1001659c0  bl      _objc_msgSend                            ; [[arg1 predicateArray] count]
  1001659c4  mov     x2, x0
  1001659c8  mov     x0, x24
  1001659cc  ldr     x1, [sp, #8]
  1001659d0  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:[[arg1 predicateArray] count]]
  1001659d4  mov     x29, x29
  1001659d8  bl      _objc_retainAutoreleasedReturnValue
  1001659dc  mov     x25, x0
  1001659e0  mov     x0, x20
  1001659e4  bl      _objc_release
  1001659e8  mov     x20, #0
  1001659ec  b       loc_100165a0c
loc_1001659f0:
  1001659f0  mov     x0, x23
  1001659f4  bl      _objc_release
  1001659f8  mov     x0, x27
  1001659fc  bl      _objc_release
  100165a00  mov     x0, x24
  100165a04  bl      _objc_release
  100165a08  add     x20, x20, #1
loc_100165a0c:
  100165a0c  mov     x0, x19
  100165a10  mov     x1, x26
  100165a14  bl      _objc_msgSend                            ; [arg1 predicateArray]
  100165a18  mov     x29, x29
  100165a1c  bl      _objc_retainAutoreleasedReturnValue
  100165a20  mov     x23, x0
  100165a24  ldr     x1, [sp, #0x28]
  100165a28  bl      _objc_msgSend                            ; [[arg1 predicateArray] count]
  100165a2c  mov     x24, x0
  100165a30  mov     x0, x23
  100165a34  bl      _objc_release
  100165a38  cmp     x20, x24
  100165a3c  b.hs    loc_100165ac8                            ; if (x20 >=u [[arg1 predicateArray] count])
  100165a40  adrp    x8, #0x10041e000
  100165a44  ldr     x28, [x8, #0x888]                        ; class TAGResourceUtil
  100165a48  mov     x0, x19
  100165a4c  mov     x1, x26
  100165a50  bl      _objc_msgSend                            ; [arg1 predicateArray]
  100165a54  mov     x29, x29
  100165a58  bl      _objc_retainAutoreleasedReturnValue
  100165a5c  mov     x24, x0
  100165a60  ldr     x1, [sp, #0x18]
  100165a64  mov     x2, x20
  100165a68  bl      _objc_msgSend                            ; [[arg1 predicateArray] objectAtIndex:x2]
  100165a6c  mov     x29, x29
  100165a70  bl      _objc_retainAutoreleasedReturnValue
  100165a74  mov     x27, x0
  100165a78  mov     x0, x28
  100165a7c  ldr     x1, [sp, #0x10]
  100165a80  mov     x2, x27
  100165a84  mov     x3, x19
  100165a88  mov     x4, x21
  100165a8c  mov     x5, x20
  100165a90  bl      _objc_msgSend                            ; [TAGResourceUtil expandFunctionCall:[[arg1 predicateArray] objectAtIndex:x2] resource:arg1 expandedValues:[NSMutableArray arrayWithCapacity:[[arg1 valueArray] count]] index:x5]
  100165a94  mov     x29, x29
  100165a98  bl      _objc_retainAutoreleasedReturnValue
  100165a9c  mov     x23, x0
  100165aa0  mov     x0, x25
  100165aa4  ldr     x1, [sp, #0x20]
  100165aa8  mov     x2, x23
  100165aac  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[[arg1 predicateArray] count]] addObject:[TAGResourceUtil expandFunctionCall:[[arg1 predicateArray] objectAtIndex:x2] resource:arg1 expandedValues:[NSMutableArray arrayWithCapacity:[[arg1 valueArray] count]] index:x5]]
  100165ab0  b       loc_1001659f0
  100165ab4  mov     x20, x21
  100165ab8  mov     x26, x0
  100165abc  mov     x0, x23
  100165ac0  bl      _objc_release
  100165ac4  b       loc_100165f44
loc_100165ac8:
  100165ac8  adrp    x8, #0x10041d000
  100165acc  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100165ad0  adrp    x8, #0x100418000
  100165ad4  nop
  100165ad8  ldr     x1, [x8, #0x50]
  100165adc  bl      _objc_msgSend                            ; [NSMutableArray array]
  100165ae0  mov     x29, x29
  100165ae4  bl      _objc_retainAutoreleasedReturnValue
  100165ae8  mov     x26, x0
  100165aec  mov     x20, #0
  100165af0  adrp    x8, #0x10041d000
  100165af4  nop
  100165af8  ldr     x24, [x8, #0x6f8]
  100165afc  adrp    x8, #0x10041d000
  100165b00  nop
  100165b04  ldr     x8, [x8, #0xab0]
  100165b08  str     x8, [sp, #8]
  100165b0c  b       loc_100165b1c
loc_100165b10:
  100165b10  mov     x0, x27
  100165b14  bl      _objc_release
  100165b18  add     x20, x20, #1
loc_100165b1c:
  100165b1c  mov     x0, x19
  100165b20  mov     x1, x24
  100165b24  bl      _objc_msgSend                            ; [arg1 macroArray]
  100165b28  mov     x29, x29
  100165b2c  bl      _objc_retainAutoreleasedReturnValue
  100165b30  mov     x23, x0
  100165b34  ldr     x1, [sp, #0x28]
  100165b38  bl      _objc_msgSend                            ; [[arg1 macroArray] count]
  100165b3c  mov     x27, x0
  100165b40  mov     x0, x23
  100165b44  bl      _objc_release
  100165b48  cmp     x20, x27
  100165b4c  b.hs    loc_100165bf0                            ; if (x20 >=u [[arg1 macroArray] count])
  100165b50  adrp    x8, #0x10041e000
  100165b54  ldr     x27, [x8, #0x888]                        ; class TAGResourceUtil
  100165b58  mov     x0, x19
  100165b5c  mov     x1, x24
  100165b60  bl      _objc_msgSend                            ; [arg1 macroArray]
  100165b64  mov     x29, x29
  100165b68  bl      _objc_retainAutoreleasedReturnValue
  100165b6c  mov     x28, x0
  100165b70  ldr     x1, [sp, #0x18]
  100165b74  mov     x2, x20
  100165b78  bl      _objc_msgSend                            ; [[arg1 macroArray] objectAtIndex:x2]
  100165b7c  mov     x29, x29
  100165b80  bl      _objc_retainAutoreleasedReturnValue
  100165b84  mov     x23, x0
  100165b88  mov     x0, x27
  100165b8c  ldr     x1, [sp, #0x10]
  100165b90  mov     x2, x23
  100165b94  mov     x3, x19
  100165b98  mov     x4, x21
  100165b9c  mov     x5, x20
  100165ba0  bl      _objc_msgSend                            ; [TAGResourceUtil expandFunctionCall:[[arg1 macroArray] objectAtIndex:x2] resource:arg1 expandedValues:[NSMutableArray arrayWithCapacity:[[arg1 valueArray] count]] index:x5]
  100165ba4  mov     x29, x29
  100165ba8  bl      _objc_retainAutoreleasedReturnValue
  100165bac  mov     x27, x0
  100165bb0  mov     x0, x23
  100165bb4  bl      _objc_release
  100165bb8  mov     x0, x28
  100165bbc  bl      _objc_release
  100165bc0  ldr     x0, [sp, #0x30]
  100165bc4  ldr     x1, [sp, #8]
  100165bc8  mov     x2, x27
  100165bcc  bl      _objc_msgSend                            ; [[TAGExpandedResource builder] addMacro:[TAGResourceUtil expandFunctionCall:[[arg1 macroArray] objectAtIndex:x2] resource:arg1 expandedValues:[NSMutableArray arrayWithCapacity:[[arg1 valueArray] count]] index:x5]]
  100165bd0  mov     x0, x26
  100165bd4  ldr     x1, [sp, #0x20]
  100165bd8  mov     x2, x27
  100165bdc  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:[TAGResourceUtil expandFunctionCall:[[arg1 macroArray] objectAtIndex:x2] resource:arg1 expandedValues:[NSMutableArray arrayWithCapacity:[[arg1 valueArray] count]] index:x5]]
  100165be0  b       loc_100165b10
  100165be4  mov     x23, x0
  100165be8  mov     x0, x27
  100165bec  b       loc_100165fc4
loc_100165bf0:
  100165bf0  stp     xzr, xzr, [x29, #-0x68]
  100165bf4  stp     xzr, xzr, [x29, #-0x78]
  100165bf8  stp     xzr, xzr, [x29, #-0x88]
  100165bfc  stp     xzr, xzr, [x29, #-0x98]
  100165c00  adrp    x8, #0x10041d000
  100165c04  nop
  100165c08  ldr     x1, [x8, #0x700]
  100165c0c  mov     x0, x19
  100165c10  bl      _objc_msgSend                            ; [arg1 ruleArray]
  100165c14  stp     x21, x19, [sp, #8]
  100165c18  mov     x29, x29
  100165c1c  bl      _objc_retainAutoreleasedReturnValue
  100165c20  mov     x24, x0
  100165c24  adrp    x8, #0x100416000
  100165c28  nop
  100165c2c  ldr     x1, [x8, #0xe00]
  100165c30  str     x1, [sp, #0x28]
  100165c34  sub     x2, x29, #0x98
  100165c38  add     x3, sp, #0x38
  100165c3c  mov     x4, #0x10
  100165c40  bl      _objc_msgSend                            ; [[arg1 ruleArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  100165c44  mov     x23, x0
  100165c48  cbz     x23, loc_100165d08                       ; if ([[arg1 ruleArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] == 0)
  100165c4c  ldur    x8, [x29, #-0x88]
  100165c50  ldr     x19, [x8]
  100165c54  adrp    x8, #0x10041d000
  100165c58  nop
  100165c5c  ldr     x27, [x8, #0x708]
  100165c60  adrp    x8, #0x10041d000
  100165c64  nop
  100165c68  ldr     x28, [x8, #0x710]
  100165c6c  sub     x8, x29, #0x98
  100165c70  str     x8, [sp, #0x20]
  100165c74  add     x8, sp, #0x38
  100165c78  str     x8, [sp, #0x18]
loc_100165c7c:
  100165c7c  mov     x21, #0
loc_100165c80:
  100165c80  ldur    x8, [x29, #-0x88]
  100165c84  ldr     x8, [x8]
  100165c88  cmp     x8, x19
  100165c8c  b.eq    loc_100165c98                            ; if (x8 == x19)
  100165c90  mov     x0, x24
  100165c94  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 ruleArray])
loc_100165c98:
  100165c98  ldur    x8, [x29, #-0x90]
  100165c9c  ldr     x2, [x8, x21, lsl #3]
  100165ca0  adrp    x8, #0x10041e000
  100165ca4  ldr     x0, [x8, #0x888]                         ; class TAGResourceUtil
  100165ca8  mov     x1, x27
  100165cac  mov     x3, x22
  100165cb0  mov     x4, x26
  100165cb4  mov     x5, x25
  100165cb8  bl      _objc_msgSend                            ; [TAGResourceUtil expandRule:x2 tags:[NSMutableArray arrayWithCapacity:[[arg1 tagArray] count]] macros:[NSMutableArray array] predicates:[NSMutableArray arrayWithCapacity:[[arg1 predicateArray] count]]]
  100165cbc  mov     x29, x29
  100165cc0  bl      _objc_retainAutoreleasedReturnValue
  100165cc4  mov     x20, x0
  100165cc8  ldr     x0, [sp, #0x30]
  100165ccc  mov     x1, x28
  100165cd0  mov     x2, x20
  100165cd4  bl      _objc_msgSend                            ; [[TAGExpandedResource builder] addRule:[TAGResourceUtil expandRule:x2 tags:[NSMutableArray arrayWithCapacity:[[arg1 tagArray] count]] macros:[NSMutableArray array] predicates:[NSMutableArray arrayWithCapacity:[[arg1 predicateArray] count]]]]
  100165cd8  mov     x0, x20
  100165cdc  bl      _objc_release
  100165ce0  add     x21, x21, #1
  100165ce4  cmp     x21, x23
  100165ce8  b.lo    loc_100165c80                            ; if ((x21 + 1) <u [[arg1 ruleArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16])
  100165cec  mov     x4, #0x10
  100165cf0  mov     x0, x24
  100165cf4  ldp     x2, x1, [sp, #0x20]
  100165cf8  ldr     x3, [sp, #0x18]
  100165cfc  bl      _objc_msgSend                            ; [[arg1 ruleArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  100165d00  mov     x23, x0
  100165d04  cbnz    x23, loc_100165c7c                       ; if ([[arg1 ruleArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] != 0)
loc_100165d08:
  100165d08  mov     x0, x24
  100165d0c  bl      _objc_release
  100165d10  adrp    x8, #0x10041d000
  100165d14  nop
  100165d18  ldr     x1, [x8, #0xc08]
  100165d1c  ldp     x21, x19, [sp, #8]
  100165d20  mov     x0, x19
  100165d24  bl      _objc_msgSend                            ; [arg1 version]
  100165d28  mov     x29, x29
  100165d2c  bl      _objc_retainAutoreleasedReturnValue
  100165d30  mov     x20, x0
  100165d34  adrp    x8, #0x10041d000
  100165d38  nop
  100165d3c  ldr     x1, [x8, #0x718]
  100165d40  ldr     x0, [sp, #0x30]
  100165d44  mov     x2, x20
  100165d48  bl      _objc_msgSend                            ; [[TAGExpandedResource builder] setVersion:[arg1 version]]
  100165d4c  mov     x0, x20
  100165d50  bl      _objc_release
  100165d54  adrp    x8, #0x10041d000
  100165d58  nop
  100165d5c  ldr     x1, [x8, #0x6c0]
  100165d60  mov     x0, x19
  100165d64  bl      _objc_msgSend                            ; [arg1 resourceFormatVersion]
  100165d68  mov     x2, x0
  100165d6c  adrp    x8, #0x10041d000
  100165d70  nop
  100165d74  ldr     x1, [x8, #0x720]
  100165d78  ldr     x0, [sp, #0x30]
  100165d7c  bl      _objc_msgSend                            ; [[TAGExpandedResource builder] setResourceFormatVersion:[arg1 resourceFormatVersion]]
  100165d80  adrp    x8, #0x100417000
  100165d84  nop
  100165d88  ldr     x1, [x8, #0x310]
  100165d8c  ldr     x0, [sp, #0x30]
  100165d90  bl      _objc_msgSend                            ; [[TAGExpandedResource builder] build]
  100165d94  mov     x29, x29
  100165d98  bl      _objc_retainAutoreleasedReturnValue
  100165d9c  mov     x20, x0
  100165da0  mov     x0, x26
  100165da4  bl      _objc_release
  100165da8  mov     x0, x25
  100165dac  bl      _objc_release
  100165db0  mov     x0, x22
  100165db4  bl      _objc_release
  100165db8  ldr     x0, [sp, #0x30]
  100165dbc  bl      _objc_release
  100165dc0  mov     x0, x21
  100165dc4  bl      _objc_release
  100165dc8  mov     x0, x19
  100165dcc  bl      _objc_release
  100165dd0  adrp    x8, #0x1003b0000
  100165dd4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100165dd8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100165ddc  ldur    x9, [x29, #-0x58]
  100165de0  sub     x8, x8, x9
  100165de4  cbnz    x8, loc_100165e0c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100165de8  mov     x0, x20
  100165dec  sub     sp, x29, #0x50
  100165df0  ldp     x28, x27, [sp], #0x10
  100165df4  ldp     x26, x25, [sp], #0x10
  100165df8  ldp     x24, x23, [sp], #0x10
  100165dfc  ldp     x22, x21, [sp], #0x10
  100165e00  ldp     x20, x19, [sp], #0x10
  100165e04  ldp     x29, x30, [sp], #0x10
  100165e08  b       _objc_autoreleaseReturnValue
loc_100165e0c:
  100165e0c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100165e10:
  100165e10  mov     x23, x0
  100165e14  b       loc_100165e24
  100165e18  mov     x23, x0
  100165e1c  mov     x0, x20
  100165e20  bl      _objc_release
loc_100165e24:
  100165e24  ldr     x21, [sp, #8]
  100165e28  mov     x0, x24
  100165e2c  bl      _objc_release
  100165e30  ldr     x19, [sp, #0x10]
loc_100165e34:
  100165e34  mov     x0, x26
loc_100165e38:
  100165e38  bl      _objc_release
loc_100165e3c:
  100165e3c  mov     x0, x25
loc_100165e40:
  100165e40  bl      _objc_release
loc_100165e44:
  100165e44  mov     x0, x22
loc_100165e48:
  100165e48  bl      _objc_release
loc_100165e4c:
  100165e4c  ldr     x0, [sp, #0x30]
  100165e50  bl      _objc_release
loc_100165e54:
  100165e54  mov     x0, x21
loc_100165e58:
  100165e58  bl      _objc_release
loc_100165e5c:
  100165e5c  mov     x0, x19
  100165e60  bl      _objc_release
  100165e64  mov     x0, x23
  100165e68  bl      __Unwind_Resume                          ; Unwind_Resume()
  100165e6c  mov     x23, x0
  100165e70  b       loc_100165e5c
  100165e74  mov     x23, x0
  100165e78  mov     x0, x20
  100165e7c  b       loc_100165e58
loc_100165e80:
  100165e80  mov     x23, x0
  100165e84  mov     x0, x22
  100165e88  b       loc_100165e9c
  100165e8c  b       loc_100165eb0
  100165e90  mov     x1, x0
  100165e94  mov     x0, x23
  100165e98  mov     x23, x1
loc_100165e9c:
  100165e9c  bl      _objc_release
  100165ea0  mov     x19, x27
  100165ea4  mov     x21, x28
  100165ea8  b       loc_100165e54
  100165eac  b       loc_100165eb0
loc_100165eb0:
  100165eb0  mov     x19, x27
  100165eb4  mov     x21, x28
  100165eb8  mov     x23, x0
  100165ebc  b       loc_100165e54
  100165ec0  mov     x23, x0
  100165ec4  b       loc_100165e4c
  100165ec8  mov     x23, x0
  100165ecc  mov     x0, x20
  100165ed0  b       loc_100165e48
  100165ed4  b       loc_100165f10
  100165ed8  b       loc_100165f00
  100165edc  mov     x25, x0
  100165ee0  b       loc_100165ef0
  100165ee4  mov     x25, x0
loc_100165ee8:
  100165ee8  mov     x0, x24
  100165eec  bl      _objc_release
loc_100165ef0:
  100165ef0  mov     x0, x20
  100165ef4  bl      _objc_release
  100165ef8  mov     x23, x25
  100165efc  b       loc_100165e44
loc_100165f00:
  100165f00  mov     x2, x21
  100165f04  mov     x1, x19
  100165f08  mov     x23, x0
  100165f0c  b       loc_100165e44
loc_100165f10:
  100165f10  mov     x23, x0
  100165f14  mov     x0, x20
  100165f18  b       loc_100165e40
  100165f1c  mov     x1, x0
  100165f20  mov     x0, x23
  100165f24  mov     x23, x1
  100165f28  b       loc_100165e38
  100165f2c  b       loc_100165f60
  100165f30  mov     x20, x21
  100165f34  mov     x26, x0
  100165f38  b       loc_100165f4c
  100165f3c  mov     x20, x21
  100165f40  mov     x26, x0
loc_100165f44:
  100165f44  mov     x0, x27
  100165f48  bl      _objc_release
loc_100165f4c:
  100165f4c  mov     x0, x24
  100165f50  bl      _objc_release
  100165f54  mov     x21, x20
  100165f58  mov     x23, x26
  100165f5c  b       loc_100165e3c
loc_100165f60:
  100165f60  mov     x2, x21
  100165f64  mov     x1, x19
  100165f68  mov     x23, x0
  100165f6c  b       loc_100165e3c
  100165f70  mov     x1, x0
  100165f74  mov     x0, x23
  100165f78  mov     x23, x1
  100165f7c  b       loc_100165fc4
  100165f80  b       loc_100165fcc
  100165f84  mov     x20, x21
  100165f88  mov     x24, x0
  100165f8c  b       loc_100165fa0
  100165f90  mov     x20, x21
  100165f94  mov     x24, x0
  100165f98  mov     x0, x23
  100165f9c  bl      _objc_release
loc_100165fa0:
  100165fa0  mov     x0, x28
  100165fa4  bl      _objc_release
  100165fa8  mov     x21, x20
  100165fac  mov     x23, x24
  100165fb0  b       loc_100165e34
  100165fb4  b       loc_100165e10
  100165fb8  b       loc_100165e10
  100165fbc  mov     x23, x0
  100165fc0  mov     x0, x20
loc_100165fc4:
  100165fc4  bl      _objc_release
  100165fc8  b       loc_100165e34
loc_100165fcc:
  100165fcc  mov     x2, x21
  100165fd0  mov     x1, x19
  100165fd4  mov     x23, x0
  100165fd8  b       loc_100165e34

; ======================================================================
; +[TAGResourceUtil valueBuilderBasedOnValue:]
; address 0x100165fdc  size 308  kind objc
; ======================================================================
  100165fdc  stp     x29, x30, [sp, #-0x10]!
  100165fe0  mov     x29, sp
  100165fe4  stp     x20, x19, [sp, #-0x10]!
  100165fe8  stp     x22, x21, [sp, #-0x10]!
  100165fec  mov     x0, x2
  100165ff0  bl      _objc_retain
  100165ff4  mov     x19, x0
  100165ff8  adrp    x8, #0x10041e000
  100165ffc  ldr     x0, [x8, #0x7d0]                         ; class TAGPValue
  100166000  adrp    x8, #0x100416000
  100166004  nop
  100166008  ldr     x1, [x8, #0xac8]
  10016600c  bl      _objc_msgSend                            ; [TAGPValue alloc]
  100166010  adrp    x8, #0x100416000
  100166014  nop
  100166018  ldr     x1, [x8, #0xab8]
  10016601c  bl      _objc_msgSend                            ; [[TAGPValue alloc] init]
  100166020  mov     x20, x0
  100166024  adrp    x8, #0x100417000
  100166028  nop
  10016602c  ldr     x1, [x8, #0x9a8]
  100166030  mov     x0, x19
  100166034  bl      _objc_msgSend                            ; [arg1 type]
  100166038  mov     x2, x0
  10016603c  adrp    x8, #0x100417000
  100166040  nop
  100166044  ldr     x1, [x8, #0x9a0]
  100166048  mov     x0, x20
  10016604c  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setType:[arg1 type]]
  100166050  adrp    x8, #0x10041d000
  100166054  nop
  100166058  ldr     x1, [x8, #0x9d0]
  10016605c  mov     x0, x19
  100166060  bl      _objc_msgSend                            ; [arg1 escapingArray]
  100166064  mov     x29, x29
  100166068  bl      _objc_retainAutoreleasedReturnValue
  10016606c  mov     x21, x0
  100166070  adrp    x8, #0x10041d000
  100166074  nop
  100166078  ldr     x1, [x8, #0x728]
  10016607c  mov     x0, x20
  100166080  mov     x2, x21
  100166084  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setEscapingArray:[arg1 escapingArray]]
  100166088  mov     x0, x21
  10016608c  bl      _objc_release
  100166090  adrp    x8, #0x10041d000
  100166094  nop
  100166098  ldr     x1, [x8, #0x9f0]
  10016609c  mov     x0, x19
  1001660a0  bl      _objc_msgSend                            ; [arg1 containsReferences]
  1001660a4  cbz     w0, loc_1001660c0                        ; if ([arg1 containsReferences] == 0)
  1001660a8  adrp    x8, #0x10041d000
  1001660ac  nop
  1001660b0  ldr     x1, [x8, #0x730]
  1001660b4  mov     w2, #1
  1001660b8  mov     x0, x20
  1001660bc  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setContainsReferences:1]
loc_1001660c0:
  1001660c0  mov     x0, x19
  1001660c4  bl      _objc_release
  1001660c8  mov     x0, x20
  1001660cc  ldp     x22, x21, [sp], #0x10
  1001660d0  ldp     x20, x19, [sp], #0x10
  1001660d4  ldp     x29, x30, [sp], #0x10
  1001660d8  b       _objc_autoreleaseReturnValue
  1001660dc  mov     x22, x0
  1001660e0  b       loc_100166100
  1001660e4  mov     x22, x0
  1001660e8  mov     x0, x21
  1001660ec  bl      _objc_release
  1001660f0  b       loc_1001660f8
  1001660f4  mov     x22, x0
loc_1001660f8:
  1001660f8  mov     x0, x20
  1001660fc  bl      _objc_release
loc_100166100:
  100166100  mov     x0, x19
  100166104  bl      _objc_release
  100166108  mov     x0, x22
  10016610c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGResourceUtil expandIthValue:resource:expandedValues:pendingExpansions:]
; address 0x100166110  size 4004  kind objc
; ======================================================================
  100166110  stp     x29, x30, [sp, #-0x10]!
  100166114  mov     x29, sp
  100166118  stp     x20, x19, [sp, #-0x10]!
  10016611c  stp     x22, x21, [sp, #-0x10]!
  100166120  stp     x24, x23, [sp, #-0x10]!
  100166124  stp     x26, x25, [sp, #-0x10]!
  100166128  stp     x28, x27, [sp, #-0x10]!
  10016612c  sub     sp, sp, #0x70
  100166130  mov     x19, x5
  100166134  mov     x20, x4
  100166138  mov     x21, x2
  10016613c  stur    x0, [x29, #-0x58]
  100166140  mov     x0, x3
  100166144  bl      _objc_retain
  100166148  mov     x24, x0
  10016614c  mov     x0, x20
  100166150  bl      _objc_retain
  100166154  mov     x26, x0
  100166158  mov     x0, x19
  10016615c  bl      _objc_retain
  100166160  mov     x28, x0
  100166164  adrp    x27, #0x10041d000
  100166168  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  10016616c  adrp    x8, #0x100417000
  100166170  nop
  100166174  ldr     x25, [x8, #0xd80]
  100166178  mov     x1, x25
  10016617c  mov     x2, x21
  100166180  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:arg1]
  100166184  mov     x29, x29
  100166188  bl      _objc_retainAutoreleasedReturnValue
  10016618c  mov     x19, x0
  100166190  adrp    x8, #0x100417000
  100166194  nop
  100166198  ldr     x1, [x8, #0x280]
  10016619c  mov     x0, x28
  1001661a0  mov     x2, x19
  1001661a4  bl      _objc_msgSend                            ; [arg4 containsObject:[NSNumber numberWithUnsignedInteger:arg1]]
  1001661a8  mov     x20, x0
  1001661ac  mov     x0, x19
  1001661b0  bl      _objc_release
  1001661b4  cbz     w20, loc_100166208                       ; if ([arg4 containsObject:[NSNumber numberWithUnsignedInteger:arg1]] == 0)
  1001661b8  adrp    x8, #0x10041d000
  1001661bc  ldr     x0, [x8, #0xf78]                         ; class NSString
  1001661c0  adrp    x8, #0x100416000
  1001661c4  nop
  1001661c8  ldr     x1, [x8, #0xee8]
  1001661cc  stp     x21, x28, [sp]
  1001661d0  adrp    x2, #0x1003c8000
  1001661d4  add     x2, x2, #0xaf0                           ; @"Value cycle detected.  Current value reference: %lu.  Previous value references: %@."
  1001661d8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Value cycle detected.  Current value reference: %lu.  Previous value references: %@.", arg1, arg4]
  1001661dc  mov     x29, x29
  1001661e0  bl      _objc_retainAutoreleasedReturnValue
  1001661e4  mov     x19, x0
  1001661e8  adrp    x8, #0x10041d000
  1001661ec  nop
  1001661f0  ldr     x1, [x8, #0x738]
  1001661f4  ldur    x0, [x29, #-0x58]
  1001661f8  mov     x2, x19
  1001661fc  bl      _objc_msgSend                            ; [TAGResourceUtil logAndThrow:[NSString stringWithFormat:@"Value cycle detected.  Current value reference: %lu.  Previous value references: %@.", arg1, arg4]]
  100166200  mov     x0, x19
  100166204  bl      _objc_release
loc_100166208:
  100166208  adrp    x22, #0x10041e000
  10016620c  ldr     x20, [x22, #0x888]                       ; class TAGResourceUtil
  100166210  adrp    x8, #0x10041d000
  100166214  nop
  100166218  ldr     x1, [x8, #0x6d0]
  10016621c  mov     x0, x24
  100166220  bl      _objc_msgSend                            ; [arg2 valueArray]
  100166224  mov     x29, x29
  100166228  bl      _objc_retainAutoreleasedReturnValue
  10016622c  mov     x19, x0
  100166230  adrp    x8, #0x10041d000
  100166234  nop
  100166238  ldr     x1, [x8, #0x740]
  10016623c  adrp    x4, #0x1003ba000
  100166240  add     x4, x4, #0x1b0                           ; @"value"
  100166244  mov     x0, x20
  100166248  mov     x2, x19
  10016624c  mov     x3, x21
  100166250  bl      _objc_msgSend                            ; [TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]
  100166254  mov     x29, x29
  100166258  bl      _objc_retainAutoreleasedReturnValue
  10016625c  mov     x23, x0
  100166260  mov     x0, x19
  100166264  bl      _objc_release
  100166268  adrp    x8, #0x100416000
  10016626c  nop
  100166270  ldr     x19, [x8, #0xc30]
  100166274  mov     x0, x26
  100166278  mov     x1, x19
  10016627c  mov     x2, x21
  100166280  bl      _objc_msgSend                            ; [arg3 objectAtIndex:arg1]
  100166284  str     x21, [sp, #0x58]
  100166288  mov     x29, x29
  10016628c  bl      _objc_retainAutoreleasedReturnValue
  100166290  mov     x20, x0
  100166294  adrp    x8, #0x10041e000
  100166298  ldr     x0, [x8, #0x140]                         ; class NSNull
  10016629c  adrp    x8, #0x100418000
  1001662a0  nop
  1001662a4  ldr     x1, [x8, #0x468]
  1001662a8  bl      _objc_msgSend                            ; [NSNull null]
  1001662ac  mov     x29, x29
  1001662b0  bl      _objc_retainAutoreleasedReturnValue
  1001662b4  mov     x21, x0
  1001662b8  bl      _objc_release
  1001662bc  mov     x0, x20
  1001662c0  bl      _objc_release
  1001662c4  cmp     x20, x21
  1001662c8  b.eq    loc_1001662f0                            ; if ([arg3 objectAtIndex:arg1] == [NSNull null])
  1001662cc  mov     x0, x26
  1001662d0  mov     x1, x19
  1001662d4  ldr     x2, [sp, #0x58]
  1001662d8  bl      _objc_msgSend                            ; [arg3 objectAtIndex:arg1]
  1001662dc  mov     x29, x29
  1001662e0  bl      _objc_retainAutoreleasedReturnValue
  1001662e4  mov     x21, x0
  1001662e8  mov     x27, x24
  1001662ec  b       loc_100166d88
loc_1001662f0:
  1001662f0  mov     x20, x27
  1001662f4  ldr     x0, [x20, #0xf68]                        ; class NSNumber
  1001662f8  mov     x21, #0
  1001662fc  mov     x1, x25
  100166300  ldr     x2, [sp, #0x58]
  100166304  mov     x27, x24
  100166308  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:arg1]
  10016630c  mov     x29, x29
  100166310  bl      _objc_retainAutoreleasedReturnValue
  100166314  mov     x19, x0
  100166318  adrp    x8, #0x100416000
  10016631c  nop
  100166320  ldr     x24, [x8, #0xd90]
  100166324  mov     x0, x28
  100166328  mov     x1, x24
  10016632c  mov     x2, x19
  100166330  bl      _objc_msgSend                            ; [arg4 addObject:[NSNumber numberWithUnsignedInteger:arg1]]
  100166334  mov     x0, x19
  100166338  bl      _objc_release
  10016633c  adrp    x8, #0x100417000
  100166340  nop
  100166344  ldr     x1, [x8, #0x9a8]
  100166348  mov     x21, #0
  10016634c  mov     x0, x23
  100166350  bl      _objc_msgSend                            ; [[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"] type]
  100166354  sub     x8, x0, #1
  100166358  cmp     x8, #8
  10016635c  b.hi    loc_100166cf4                            ; if (([[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"] type] - 1) >u 8)
  100166360  adr     x9, #0x100167090                         ; 0x100167090
  100166364  nop
  100166368  ldrsw   x8, [x9, x8, lsl #2]
  10016636c  add     x8, x8, x9
  100166370  br      x8                                       ; switch (([[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"] type] - 1)) { case 0,4,5,7: goto loc_100166374; case 1: goto loc_100166384; case 2: goto loc_10016652c; case 3: goto loc_1001667f4; case 6: goto loc_1001668e0; case 8: goto loc_100166a80 }
loc_100166374:  ; case 0, 4, 5, 7
  100166374  mov     x0, x23
  100166378  bl      _objc_retain
  10016637c  mov     x21, x23
  100166380  b       loc_100166cd0
loc_100166384:  ; case 1
  100166384  ldr     x0, [x22, #0x888]                        ; class TAGResourceUtil
  100166388  adrp    x8, #0x10041d000
  10016638c  nop
  100166390  ldr     x1, [x8, #0x998]
  100166394  mov     x21, #0
  100166398  mov     x2, x23
  10016639c  bl      _objc_msgSend                            ; [TAGResourceUtil valueBuilderBasedOnValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]]
  1001663a0  mov     x29, x29
  1001663a4  bl      _objc_retainAutoreleasedReturnValue
  1001663a8  mov     x19, x0
  1001663ac  ldr     x0, [x22, #0x888]                        ; class TAGResourceUtil
  1001663b0  adrp    x8, #0x10041d000
  1001663b4  nop
  1001663b8  ldr     x1, [x8, #0x748]
  1001663bc  mov     x2, x23
  1001663c0  str     x23, [sp, #0x20]
  1001663c4  bl      _objc_msgSend                            ; [TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]]
  1001663c8  str     x25, [sp, #0x18]
  1001663cc  str     x19, [sp, #0x28]
  1001663d0  mov     x29, x29
  1001663d4  bl      _objc_retainAutoreleasedReturnValue
  1001663d8  mov     x19, x0
  1001663dc  adrp    x8, #0x10041e000
  1001663e0  ldr     x22, [x8, #0x768]                        ; class TAGPBMutableArray
  1001663e4  adrp    x8, #0x10041d000
  1001663e8  nop
  1001663ec  ldr     x23, [x8, #0x9a0]
  1001663f0  mov     x1, x23
  1001663f4  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] listItemArray]
  1001663f8  mov     x29, x29
  1001663fc  bl      _objc_retainAutoreleasedReturnValue
  100166400  mov     x20, x0
  100166404  adrp    x8, #0x100416000
  100166408  nop
  10016640c  ldr     x25, [x8, #0xe30]
  100166410  mov     x1, x25
  100166414  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] listItemArray] count]
  100166418  mov     x3, x0
  10016641c  adrp    x8, #0x10041d000
  100166420  nop
  100166424  ldr     x1, [x8, #0x9a8]
  100166428  mov     w2, #0
  10016642c  mov     x0, x22
  100166430  bl      _objc_msgSend                            ; [TAGPBMutableArray arrayWithValueType:0 capacity:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] listItemArray] count]]
  100166434  str     x28, [sp, #0x60]
  100166438  str     x26, [sp, #0x50]
  10016643c  str     x27, [sp, #0x40]
  100166440  mov     x29, x29
  100166444  bl      _objc_retainAutoreleasedReturnValue
  100166448  mov     x22, x0
  10016644c  mov     x0, x20
  100166450  bl      _objc_release
  100166454  mov     x28, #0
  100166458  adrp    x8, #0x10041c000
  10016645c  nop
  100166460  ldr     x26, [x8, #0x7b8]
  100166464  adrp    x8, #0x10041d000
  100166468  add     x8, x8, #0x6d8                           ; &@selector(expandIthValue:resource:expandedValues:pendingExpansions:)
  10016646c  ldr     x20, [x8]
  100166470  b       loc_100166488
loc_100166474:
  100166474  mov     x0, x21
  100166478  bl      _objc_release
  10016647c  mov     x0, x27
  100166480  bl      _objc_release
  100166484  add     x28, x28, #1
loc_100166488:
  100166488  mov     x0, x19
  10016648c  mov     x1, x23
  100166490  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] listItemArray]
  100166494  mov     x29, x29
  100166498  bl      _objc_retainAutoreleasedReturnValue
  10016649c  mov     x27, x0
  1001664a0  mov     x1, x25
  1001664a4  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] listItemArray] count]
  1001664a8  mov     x21, x0
  1001664ac  mov     x0, x27
  1001664b0  bl      _objc_release
  1001664b4  cmp     x28, x21
  1001664b8  b.hs    loc_100166aa8                            ; if (x28 >=u [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@…)
  1001664bc  mov     x0, x19
  1001664c0  mov     x1, x23
  1001664c4  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] listItemArray]
  1001664c8  mov     x29, x29
  1001664cc  bl      _objc_retainAutoreleasedReturnValue
  1001664d0  mov     x27, x0
  1001664d4  mov     x1, x26
  1001664d8  mov     x2, x28
  1001664dc  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] listItemArray] int32AtIndex:x2]
  1001664e0  sxtw    x2, w0
  1001664e4  ldur    x0, [x29, #-0x58]
  1001664e8  mov     x1, x20
  1001664ec  ldr     x3, [sp, #0x40]
  1001664f0  ldr     x4, [sp, #0x50]
  1001664f4  ldr     x5, [sp, #0x60]
  1001664f8  bl      _objc_msgSend                            ; [TAGResourceUtil expandIthValue:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] listItemArray] int32AtIndex:x2] resource:arg2 expandedValues:arg3 pendingExpansions:arg4]
  1001664fc  mov     x29, x29
  100166500  bl      _objc_retainAutoreleasedReturnValue
  100166504  mov     x21, x0
  100166508  mov     x0, x22
  10016650c  mov     x1, x24
  100166510  mov     x2, x21
  100166514  bl      _objc_msgSend                            ; [[TAGPBMutableArray arrayWithValueType:0 capacity:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] listItemArray] count]] addObject:[TAGResourceUtil expandIthValue:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] listItemArray] int32AtIndex:x2] resource:arg2 expandedValues:arg3 pendingExpansions:arg4]]
  100166518  b       loc_100166474
  10016651c  mov     x24, x0
  100166520  mov     x0, x21
  100166524  bl      _objc_release
  100166528  b       loc_100166f60
loc_10016652c:  ; case 2
  10016652c  adrp    x8, #0x10041d000
  100166530  nop
  100166534  ldr     x1, [x8, #0x998]
  100166538  mov     x21, #0
  10016653c  ldur    x0, [x29, #-0x58]
  100166540  mov     x2, x23
  100166544  bl      _objc_msgSend                            ; [TAGResourceUtil valueBuilderBasedOnValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]]
  100166548  str     x25, [sp, #0x18]
  10016654c  str     x28, [sp, #0x60]
  100166550  str     x26, [sp, #0x50]
  100166554  mov     x29, x29
  100166558  bl      _objc_retainAutoreleasedReturnValue
  10016655c  mov     x25, x0
  100166560  ldr     x0, [x22, #0x888]                        ; class TAGResourceUtil
  100166564  adrp    x8, #0x10041d000
  100166568  nop
  10016656c  ldr     x1, [x8, #0x748]
  100166570  mov     x2, x23
  100166574  str     x23, [sp, #0x20]
  100166578  bl      _objc_msgSend                            ; [TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]]
  10016657c  mov     x29, x29
  100166580  bl      _objc_retainAutoreleasedReturnValue
  100166584  mov     x28, x0
  100166588  adrp    x8, #0x10041d000
  10016658c  nop
  100166590  ldr     x23, [x8, #0xa78]
  100166594  mov     x1, x23
  100166598  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray]
  10016659c  mov     x29, x29
  1001665a0  bl      _objc_retainAutoreleasedReturnValue
  1001665a4  mov     x19, x0
  1001665a8  adrp    x8, #0x100416000
  1001665ac  nop
  1001665b0  ldr     x1, [x8, #0xe30]
  1001665b4  str     x1, [sp, #0x48]
  1001665b8  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray] count]
  1001665bc  mov     x20, x0
  1001665c0  adrp    x8, #0x10041d000
  1001665c4  nop
  1001665c8  ldr     x1, [x8, #0xa70]
  1001665cc  str     x1, [sp, #0x38]
  1001665d0  mov     x0, x28
  1001665d4  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray]
  1001665d8  mov     x29, x29
  1001665dc  bl      _objc_retainAutoreleasedReturnValue
  1001665e0  mov     x21, x0
  1001665e4  ldr     x1, [sp, #0x48]
  1001665e8  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray] count]
  1001665ec  mov     x22, x0
  1001665f0  mov     x0, x21
  1001665f4  bl      _objc_release
  1001665f8  mov     x0, x19
  1001665fc  bl      _objc_release
  100166600  cmp     x20, x22
  100166604  b.eq    loc_1001666b8                            ; if ([[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@… == [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@…)
  100166608  adrp    x8, #0x10041d000
  10016660c  ldr     x22, [x8, #0xf78]                        ; class NSString
  100166610  mov     x0, x28
  100166614  mov     x1, x23
  100166618  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray]
  10016661c  str     x25, [sp, #0x28]
  100166620  mov     x29, x29
  100166624  bl      _objc_retainAutoreleasedReturnValue
  100166628  mov     x19, x0
  10016662c  ldr     x1, [sp, #0x48]
  100166630  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray] count]
  100166634  mov     x25, x0
  100166638  mov     x0, x28
  10016663c  ldr     x1, [sp, #0x38]
  100166640  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray]
  100166644  mov     x29, x29
  100166648  bl      _objc_retainAutoreleasedReturnValue
  10016664c  mov     x20, x0
  100166650  ldr     x1, [sp, #0x48]
  100166654  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray] count]
  100166658  adrp    x8, #0x100416000
  10016665c  nop
  100166660  ldr     x1, [x8, #0xee8]
  100166664  stp     x25, x0, [sp]
  100166668  adrp    x2, #0x1003c8000
  10016666c  add     x2, x2, #0xb10                           ; @"Uneven map keys (%lu) and map values (%lu)"
  100166670  mov     x0, x22
  100166674  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Uneven map keys (%lu) and map values (%lu)", [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck…, [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck…]
  100166678  mov     x29, x29
  10016667c  bl      _objc_retainAutoreleasedReturnValue
  100166680  mov     x22, x0
  100166684  adrp    x8, #0x10041d000
  100166688  nop
  10016668c  ldr     x1, [x8, #0x738]
  100166690  ldur    x0, [x29, #-0x58]
  100166694  mov     x2, x22
  100166698  bl      _objc_msgSend                            ; [TAGResourceUtil logAndThrow:[NSString stringWithFormat:@"Uneven map keys (%lu) and map values (%lu)", [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck…, [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck…]]
  10016669c  mov     x0, x22
  1001666a0  bl      _objc_release
  1001666a4  mov     x0, x20
  1001666a8  bl      _objc_release
  1001666ac  mov     x0, x19
  1001666b0  bl      _objc_release
  1001666b4  ldr     x25, [sp, #0x28]
loc_1001666b8:
  1001666b8  adrp    x26, #0x10041e000
  1001666bc  ldr     x20, [x26, #0x768]                       ; class TAGPBMutableArray
  1001666c0  mov     x0, x28
  1001666c4  mov     x1, x23
  1001666c8  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray]
  1001666cc  mov     x29, x29
  1001666d0  bl      _objc_retainAutoreleasedReturnValue
  1001666d4  mov     x19, x0
  1001666d8  ldr     x1, [sp, #0x48]
  1001666dc  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray] count]
  1001666e0  mov     x3, x0
  1001666e4  adrp    x8, #0x10041d000
  1001666e8  nop
  1001666ec  ldr     x1, [x8, #0x9a8]
  1001666f0  str     x1, [sp, #0x10]
  1001666f4  mov     w2, #0
  1001666f8  mov     x0, x20
  1001666fc  bl      _objc_msgSend                            ; [TAGPBMutableArray arrayWithValueType:0 capacity:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray] count]]
  100166700  str     x25, [sp, #0x28]
  100166704  mov     x29, x29
  100166708  bl      _objc_retainAutoreleasedReturnValue
  10016670c  str     x0, [sp, #0x30]
  100166710  mov     x0, x19
  100166714  bl      _objc_release
  100166718  mov     x22, #0
  10016671c  adrp    x8, #0x10041c000
  100166720  nop
  100166724  ldr     x19, [x8, #0x7b8]
  100166728  adrp    x8, #0x10041d000
  10016672c  add     x8, x8, #0x6d8                           ; &@selector(expandIthValue:resource:expandedValues:pendingExpansions:)
  100166730  ldr     x25, [x8]
  100166734  b       loc_10016674c
loc_100166738:
  100166738  mov     x0, x21
  10016673c  bl      _objc_release
  100166740  mov     x0, x20
  100166744  bl      _objc_release
  100166748  add     x22, x22, #1
loc_10016674c:
  10016674c  mov     x0, x28
  100166750  mov     x1, x23
  100166754  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray]
  100166758  mov     x29, x29
  10016675c  bl      _objc_retainAutoreleasedReturnValue
  100166760  mov     x20, x0
  100166764  ldr     x1, [sp, #0x48]
  100166768  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray] count]
  10016676c  mov     x21, x0
  100166770  mov     x0, x20
  100166774  bl      _objc_release
  100166778  cmp     x22, x21
  10016677c  b.hs    loc_100166b04                            ; if (x22 >=u [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@…)
  100166780  mov     x0, x28
  100166784  mov     x1, x23
  100166788  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray]
  10016678c  mov     x29, x29
  100166790  bl      _objc_retainAutoreleasedReturnValue
  100166794  mov     x20, x0
  100166798  mov     x1, x19
  10016679c  mov     x2, x22
  1001667a0  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray] int32AtIndex:x2]
  1001667a4  sxtw    x2, w0
  1001667a8  ldur    x0, [x29, #-0x58]
  1001667ac  mov     x1, x25
  1001667b0  mov     x3, x27
  1001667b4  ldr     x4, [sp, #0x50]
  1001667b8  ldr     x5, [sp, #0x60]
  1001667bc  bl      _objc_msgSend                            ; [TAGResourceUtil expandIthValue:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray] int32AtIndex:x2] resource:arg2 expandedValues:arg3 pendingExpansions:arg4]
  1001667c0  mov     x29, x29
  1001667c4  bl      _objc_retainAutoreleasedReturnValue
  1001667c8  mov     x21, x0
  1001667cc  ldr     x0, [sp, #0x30]
  1001667d0  mov     x1, x24
  1001667d4  mov     x2, x21
  1001667d8  bl      _objc_msgSend                            ; [[TAGPBMutableArray arrayWithValueType:0 capacity:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray] count]] addObject:[TAGResourceUtil expandIthValue:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray] int32AtIndex:x2] resource:arg2 expandedValues:arg3 pendingExpansions:arg4]]
  1001667dc  b       loc_100166738
  1001667e0  str     x27, [sp, #0x40]
  1001667e4  mov     x24, x0
  1001667e8  mov     x0, x21
  1001667ec  bl      _objc_release
  1001667f0  b       loc_100166f9c
loc_1001667f4:  ; case 3
  1001667f4  adrp    x8, #0x10041d000
  1001667f8  nop
  1001667fc  ldr     x1, [x8, #0x998]
  100166800  mov     x21, #0
  100166804  ldur    x0, [x29, #-0x58]
  100166808  mov     x2, x23
  10016680c  bl      _objc_msgSend                            ; [TAGResourceUtil valueBuilderBasedOnValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]]
  100166810  mov     x24, x27
  100166814  mov     x27, x20
  100166818  mov     x29, x29
  10016681c  bl      _objc_retainAutoreleasedReturnValue
  100166820  mov     x21, x0
  100166824  adrp    x8, #0x10041d000
  100166828  nop
  10016682c  ldr     x1, [x8, #0x748]
  100166830  ldur    x0, [x29, #-0x58]
  100166834  mov     x2, x23
  100166838  bl      _objc_msgSend                            ; [TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]]
  10016683c  mov     x29, x29
  100166840  bl      _objc_retainAutoreleasedReturnValue
  100166844  mov     x19, x0
  100166848  adrp    x8, #0x10041d000
  10016684c  nop
  100166850  ldr     x1, [x8, #0x750]
  100166854  mov     x20, #0
  100166858  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] hasMacroNameReference]
  10016685c  tbz     w0, #0, loc_100166c70                    ; if (!([[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] hasMacroNameReference] & 1))
  100166860  adrp    x8, #0x10041d000
  100166864  nop
  100166868  ldr     x1, [x8, #0x758]
  10016686c  mov     x20, #0
  100166870  mov     x0, x19
  100166874  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] macroNameReference]
  100166878  sxtw    x2, w0
  10016687c  adrp    x8, #0x10041d000
  100166880  nop
  100166884  ldr     x1, [x8, #0x6d8]
  100166888  mov     x20, #0
  10016688c  ldur    x0, [x29, #-0x58]
  100166890  mov     x3, x24
  100166894  mov     x4, x26
  100166898  mov     x5, x28
  10016689c  bl      _objc_msgSend                            ; [TAGResourceUtil expandIthValue:[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] macroNameReference] resource:arg2 expandedValues:arg3 pendingExpansions:arg4]
  1001668a0  mov     x29, x29
  1001668a4  bl      _objc_retainAutoreleasedReturnValue
  1001668a8  mov     x22, x0
  1001668ac  adrp    x8, #0x10041e000
  1001668b0  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  1001668b4  adrp    x8, #0x10041d000
  1001668b8  nop
  1001668bc  ldr     x1, [x8, #0xc18]
  1001668c0  mov     x2, x22
  1001668c4  bl      _objc_msgSend                            ; [TAGTypes valueToString:[TAGResourceUtil expandIthValue:[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] macroNameReference] resource:arg2 expandedValues:arg3 pendingExpansions:arg4]]
  1001668c8  mov     x29, x29
  1001668cc  bl      _objc_retainAutoreleasedReturnValue
  1001668d0  mov     x20, x0
  1001668d4  mov     x0, x22
  1001668d8  bl      _objc_release
  1001668dc  b       loc_100166ca0
loc_1001668e0:  ; case 6
  1001668e0  adrp    x8, #0x10041d000
  1001668e4  nop
  1001668e8  ldr     x1, [x8, #0x998]
  1001668ec  mov     x21, #0
  1001668f0  ldur    x0, [x29, #-0x58]
  1001668f4  mov     x2, x23
  1001668f8  bl      _objc_msgSend                            ; [TAGResourceUtil valueBuilderBasedOnValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]]
  1001668fc  mov     x29, x29
  100166900  bl      _objc_retainAutoreleasedReturnValue
  100166904  mov     x19, x0
  100166908  ldr     x0, [x22, #0x888]                        ; class TAGResourceUtil
  10016690c  adrp    x8, #0x10041d000
  100166910  nop
  100166914  ldr     x1, [x8, #0x748]
  100166918  mov     x2, x23
  10016691c  str     x23, [sp, #0x20]
  100166920  bl      _objc_msgSend                            ; [TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]]
  100166924  str     x25, [sp, #0x18]
  100166928  str     x19, [sp, #0x28]
  10016692c  mov     x29, x29
  100166930  bl      _objc_retainAutoreleasedReturnValue
  100166934  mov     x19, x0
  100166938  adrp    x8, #0x10041e000
  10016693c  ldr     x22, [x8, #0x768]                        ; class TAGPBMutableArray
  100166940  adrp    x8, #0x10041d000
  100166944  nop
  100166948  ldr     x23, [x8, #0x9e0]
  10016694c  mov     x1, x23
  100166950  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] templateTokenArray]
  100166954  mov     x29, x29
  100166958  bl      _objc_retainAutoreleasedReturnValue
  10016695c  mov     x20, x0
  100166960  adrp    x8, #0x100416000
  100166964  nop
  100166968  ldr     x25, [x8, #0xe30]
  10016696c  mov     x1, x25
  100166970  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] templateTokenArray] count]
  100166974  mov     x3, x0
  100166978  adrp    x8, #0x10041d000
  10016697c  nop
  100166980  ldr     x1, [x8, #0x9a8]
  100166984  mov     w2, #0
  100166988  mov     x0, x22
  10016698c  bl      _objc_msgSend                            ; [TAGPBMutableArray arrayWithValueType:0 capacity:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] templateTokenArray] count]]
  100166990  str     x28, [sp, #0x60]
  100166994  str     x26, [sp, #0x50]
  100166998  str     x27, [sp, #0x40]
  10016699c  mov     x29, x29
  1001669a0  bl      _objc_retainAutoreleasedReturnValue
  1001669a4  mov     x22, x0
  1001669a8  mov     x0, x20
  1001669ac  bl      _objc_release
  1001669b0  mov     x28, #0
  1001669b4  adrp    x8, #0x10041c000
  1001669b8  nop
  1001669bc  ldr     x26, [x8, #0x7b8]
  1001669c0  adrp    x8, #0x10041d000
  1001669c4  add     x8, x8, #0x6d8                           ; &@selector(expandIthValue:resource:expandedValues:pendingExpansions:)
  1001669c8  ldr     x20, [x8]
  1001669cc  b       loc_1001669dc
loc_1001669d0:
  1001669d0  mov     x0, x21
  1001669d4  bl      _objc_release
  1001669d8  add     x28, x28, #1
loc_1001669dc:
  1001669dc  mov     x0, x19
  1001669e0  mov     x1, x23
  1001669e4  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] templateTokenArray]
  1001669e8  mov     x29, x29
  1001669ec  bl      _objc_retainAutoreleasedReturnValue
  1001669f0  mov     x21, x0
  1001669f4  mov     x1, x25
  1001669f8  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] templateTokenArray] count]
  1001669fc  mov     x27, x0
  100166a00  mov     x0, x21
  100166a04  bl      _objc_release
  100166a08  cmp     x28, x27
  100166a0c  b.hs    loc_100166acc                            ; if (x28 >=u [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@…)
  100166a10  mov     x0, x19
  100166a14  mov     x1, x23
  100166a18  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] templateTokenArray]
  100166a1c  mov     x29, x29
  100166a20  bl      _objc_retainAutoreleasedReturnValue
  100166a24  mov     x27, x0
  100166a28  mov     x1, x26
  100166a2c  mov     x2, x28
  100166a30  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] templateTokenArray] int32AtIndex:x2]
  100166a34  mov     x21, x0
  100166a38  mov     x0, x27
  100166a3c  bl      _objc_release
  100166a40  sxtw    x2, w21
  100166a44  ldur    x0, [x29, #-0x58]
  100166a48  mov     x1, x20
  100166a4c  ldr     x3, [sp, #0x40]
  100166a50  ldr     x4, [sp, #0x50]
  100166a54  ldr     x5, [sp, #0x60]
  100166a58  bl      _objc_msgSend                            ; [TAGResourceUtil expandIthValue:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] templateTokenArray] int32AtIndex:x2] resource:arg2 expandedValues:arg3 pendingExpansions:arg4]
  100166a5c  mov     x29, x29
  100166a60  bl      _objc_retainAutoreleasedReturnValue
  100166a64  mov     x21, x0
  100166a68  mov     x0, x22
  100166a6c  mov     x1, x24
  100166a70  mov     x2, x21
  100166a74  bl      _objc_msgSend                            ; [[TAGPBMutableArray arrayWithValueType:0 capacity:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] templateTokenArray] count]] addObject:[TAGResourceUtil expandIthValue:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] templateTokenArray] int32AtIndex:x2] resource:arg2 expandedValues:arg3 pendingExpansions:arg4]]
  100166a78  b       loc_1001669d0
  100166a7c  b       loc_100166f50
loc_100166a80:  ; case 8
  100166a80  adrp    x8, #0x10041e000
  100166a84  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100166a88  adrp    x8, #0x10041b000
  100166a8c  nop
  100166a90  ldr     x1, [x8, #0xe90]
  100166a94  mov     x21, #0
  100166a98  adrp    x2, #0x1003c8000
  100166a9c  add     x2, x2, #0xb50                           ; @"Tag type of TagReference shouldn't be present"
  100166aa0  bl      _objc_msgSend                            ; [TAGLog warning:@"Tag type of TagReference shouldn't be present"]
  100166aa4  b       loc_100166cf4
loc_100166aa8:
  100166aa8  adrp    x8, #0x10041d000
  100166aac  nop
  100166ab0  ldr     x1, [x8, #0x9b0]
  100166ab4  ldr     x21, [sp, #0x28]
  100166ab8  mov     x0, x21
  100166abc  mov     x2, x22
  100166ac0  bl      _objc_msgSend                            ; [[TAGResourceUtil valueBuilderBasedOnValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] setListItemArray:[TAGPBMutableArray arrayWithValueType:0 capacity:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] listItemArray] count]]]
  100166ac4  b       loc_100166ae8
  100166ac8  b       loc_100166f70
loc_100166acc:
  100166acc  adrp    x8, #0x10041d000
  100166ad0  nop
  100166ad4  ldr     x1, [x8, #0x9e8]
  100166ad8  ldr     x21, [sp, #0x28]
  100166adc  mov     x0, x21
  100166ae0  mov     x2, x22
  100166ae4  bl      _objc_msgSend                            ; [[TAGResourceUtil valueBuilderBasedOnValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] setTemplateTokenArray:[TAGPBMutableArray arrayWithValueType:0 capacity:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] templateTokenArray] count]]]
loc_100166ae8:
  100166ae8  mov     x0, x22
  100166aec  bl      _objc_release
  100166af0  mov     x0, x19
  100166af4  bl      _objc_release
  100166af8  ldr     x27, [sp, #0x40]
  100166afc  ldr     x26, [sp, #0x50]
  100166b00  b       loc_100166c60
loc_100166b04:
  100166b04  adrp    x8, #0x10041d000
  100166b08  nop
  100166b0c  ldr     x1, [x8, #0x9b8]
  100166b10  ldp     x0, x2, [sp, #0x28]
  100166b14  bl      _objc_msgSend                            ; [[TAGResourceUtil valueBuilderBasedOnValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] setMapKeyArray:[TAGPBMutableArray arrayWithValueType:0 capacity:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapKeyArray] count]]]
  100166b18  ldr     x22, [x26, #0x768]                       ; class TAGPBMutableArray
  100166b1c  mov     x0, x28
  100166b20  ldr     x1, [sp, #0x38]
  100166b24  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray]
  100166b28  mov     x29, x29
  100166b2c  bl      _objc_retainAutoreleasedReturnValue
  100166b30  mov     x20, x0
  100166b34  ldr     x1, [sp, #0x48]
  100166b38  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray] count]
  100166b3c  mov     x3, x0
  100166b40  mov     w2, #0
  100166b44  mov     x0, x22
  100166b48  ldr     x1, [sp, #0x10]
  100166b4c  bl      _objc_msgSend                            ; [TAGPBMutableArray arrayWithValueType:0 capacity:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray] count]]
  100166b50  mov     x29, x29
  100166b54  bl      _objc_retainAutoreleasedReturnValue
  100166b58  mov     x23, x0
  100166b5c  mov     x0, x20
  100166b60  bl      _objc_release
  100166b64  mov     x22, #0
  100166b68  ldr     x26, [sp, #0x50]
  100166b6c  b       loc_100166b84
loc_100166b70:
  100166b70  mov     x0, x21
  100166b74  bl      _objc_release
  100166b78  mov     x0, x20
  100166b7c  bl      _objc_release
  100166b80  add     x22, x22, #1
loc_100166b84:
  100166b84  mov     x0, x28
  100166b88  ldr     x1, [sp, #0x38]
  100166b8c  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray]
  100166b90  mov     x29, x29
  100166b94  bl      _objc_retainAutoreleasedReturnValue
  100166b98  mov     x20, x0
  100166b9c  ldr     x1, [sp, #0x48]
  100166ba0  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray] count]
  100166ba4  mov     x21, x0
  100166ba8  mov     x0, x20
  100166bac  bl      _objc_release
  100166bb0  cmp     x22, x21
  100166bb4  b.hs    loc_100166c2c                            ; if (x22 >=u [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@…)
  100166bb8  mov     x0, x28
  100166bbc  ldr     x1, [sp, #0x38]
  100166bc0  bl      _objc_msgSend                            ; [[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray]
  100166bc4  mov     x29, x29
  100166bc8  bl      _objc_retainAutoreleasedReturnValue
  100166bcc  mov     x20, x0
  100166bd0  mov     x1, x19
  100166bd4  mov     x2, x22
  100166bd8  bl      _objc_msgSend                            ; [[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray] int32AtIndex:x2]
  100166bdc  sxtw    x2, w0
  100166be0  ldur    x0, [x29, #-0x58]
  100166be4  mov     x1, x25
  100166be8  mov     x3, x27
  100166bec  mov     x4, x26
  100166bf0  ldr     x5, [sp, #0x60]
  100166bf4  bl      _objc_msgSend                            ; [TAGResourceUtil expandIthValue:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray] int32AtIndex:x2] resource:arg2 expandedValues:arg3 pendingExpansions:arg4]
  100166bf8  mov     x29, x29
  100166bfc  bl      _objc_retainAutoreleasedReturnValue
  100166c00  mov     x21, x0
  100166c04  mov     x0, x23
  100166c08  mov     x1, x24
  100166c0c  mov     x2, x21
  100166c10  bl      _objc_msgSend                            ; [[TAGPBMutableArray arrayWithValueType:0 capacity:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray] count]] addObject:[TAGResourceUtil expandIthValue:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray] int32AtIndex:x2] resource:arg2 expandedValues:arg3 pendingExpansions:arg4]]
  100166c14  b       loc_100166b70
  100166c18  str     x27, [sp, #0x40]
  100166c1c  mov     x24, x0
  100166c20  mov     x0, x21
  100166c24  bl      _objc_release
  100166c28  b       loc_100166fb4
loc_100166c2c:
  100166c2c  adrp    x8, #0x10041d000
  100166c30  nop
  100166c34  ldr     x1, [x8, #0x9c0]
  100166c38  ldr     x21, [sp, #0x28]
  100166c3c  mov     x0, x21
  100166c40  mov     x2, x23
  100166c44  bl      _objc_msgSend                            ; [[TAGResourceUtil valueBuilderBasedOnValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] setMapValueArray:[TAGPBMutableArray arrayWithValueType:0 capacity:[[[TAGResourceUtil servingValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] mapValueArray] count]]]
  100166c48  mov     x0, x23
  100166c4c  bl      _objc_release
  100166c50  ldr     x0, [sp, #0x30]
  100166c54  bl      _objc_release
  100166c58  mov     x0, x28
  100166c5c  bl      _objc_release
loc_100166c60:
  100166c60  ldr     x28, [sp, #0x60]
  100166c64  ldp     x25, x23, [sp, #0x18]
  100166c68  adrp    x20, #0x10041d000
  100166c6c  b       loc_100166cd0
loc_100166c70:
  100166c70  adrp    x8, #0x10041d000
  100166c74  nop
  100166c78  ldr     x1, [x8, #0x738]
  100166c7c  mov     x20, #0
  100166c80  adrp    x2, #0x1003c8000
  100166c84  add     x2, x2, #0xb30                           ; @"Missing macro name reference"
  100166c88  ldur    x0, [x29, #-0x58]
  100166c8c  bl      _objc_msgSend                            ; [TAGResourceUtil logAndThrow:@"Missing macro name reference"]
  100166c90  adrp    x20, #0x1003b9000
  100166c94  add     x20, x20, #0x870                         ; @""
  100166c98  mov     x0, x20
  100166c9c  bl      _objc_retain
loc_100166ca0:
  100166ca0  adrp    x8, #0x10041d000
  100166ca4  nop
  100166ca8  ldr     x1, [x8, #0x760]
  100166cac  mov     x0, x21
  100166cb0  mov     x2, x20
  100166cb4  bl      _objc_msgSend                            ; [[TAGResourceUtil valueBuilderBasedOnValue:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 listName:@"value"]] setMacroReference:x2]
  100166cb8  mov     x0, x20
  100166cbc  bl      _objc_release
  100166cc0  mov     x0, x19
  100166cc4  bl      _objc_release
  100166cc8  mov     x20, x27
  100166ccc  mov     x27, x24
loc_100166cd0:
  100166cd0  cbz     x21, loc_100166cf4                       ; if (x21 == 0)
  100166cd4  adrp    x8, #0x100418000
  100166cd8  nop
  100166cdc  ldr     x1, [x8, #0x4b8]
  100166ce0  mov     x0, x26
  100166ce4  ldr     x2, [sp, #0x58]
  100166ce8  mov     x3, x21
  100166cec  bl      _objc_msgSend                            ; [arg3 replaceObjectAtIndex:arg1 withObject:x3]
  100166cf0  b       loc_100166d4c
loc_100166cf4:
  100166cf4  adrp    x8, #0x10041d000
  100166cf8  ldr     x0, [x8, #0xf78]                         ; class NSString
  100166cfc  adrp    x8, #0x100416000
  100166d00  nop
  100166d04  ldr     x1, [x8, #0xee8]
  100166d08  mov     x21, #0
  100166d0c  str     x23, [sp]
  100166d10  adrp    x2, #0x1003c8000
  100166d14  add     x2, x2, #0xb70                           ; @"Invalid value: %@"
  100166d18  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Invalid value: %@", [TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 li…]
  100166d1c  mov     x29, x29
  100166d20  bl      _objc_retainAutoreleasedReturnValue
  100166d24  mov     x19, x0
  100166d28  adrp    x8, #0x10041d000
  100166d2c  nop
  100166d30  ldr     x1, [x8, #0x738]
  100166d34  ldur    x0, [x29, #-0x58]
  100166d38  mov     x2, x19
  100166d3c  bl      _objc_msgSend                            ; [TAGResourceUtil logAndThrow:[NSString stringWithFormat:@"Invalid value: %@", [TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 valueArray] index:arg1 li…]]
  100166d40  mov     x0, x19
  100166d44  bl      _objc_release
  100166d48  mov     x21, #0
loc_100166d4c:
  100166d4c  ldr     x0, [x20, #0xf68]                        ; class NSNumber
  100166d50  mov     x1, x25
  100166d54  ldr     x2, [sp, #0x58]
  100166d58  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:arg1]
  100166d5c  mov     x29, x29
  100166d60  bl      _objc_retainAutoreleasedReturnValue
  100166d64  mov     x19, x0
  100166d68  adrp    x8, #0x100416000
  100166d6c  nop
  100166d70  ldr     x1, [x8, #0xe20]
  100166d74  mov     x0, x28
  100166d78  mov     x2, x19
  100166d7c  bl      _objc_msgSend                            ; [arg4 removeObject:[NSNumber numberWithUnsignedInteger:arg1]]
  100166d80  mov     x0, x19
  100166d84  bl      _objc_release
loc_100166d88:
  100166d88  mov     x0, x23
  100166d8c  bl      _objc_release
  100166d90  mov     x0, x28
  100166d94  bl      _objc_release
  100166d98  mov     x0, x26
  100166d9c  bl      _objc_release
  100166da0  mov     x0, x27
  100166da4  bl      _objc_release
  100166da8  mov     x0, x21
  100166dac  sub     sp, x29, #0x50
  100166db0  ldp     x28, x27, [sp], #0x10
  100166db4  ldp     x26, x25, [sp], #0x10
  100166db8  ldp     x24, x23, [sp], #0x10
  100166dbc  ldp     x22, x21, [sp], #0x10
  100166dc0  ldp     x20, x19, [sp], #0x10
  100166dc4  ldp     x29, x30, [sp], #0x10
  100166dc8  b       _objc_autoreleaseReturnValue
  100166dcc  b       loc_100166de8
  100166dd0  b       loc_100166de8
  100166dd4  str     x28, [sp, #0x60]
  100166dd8  str     x26, [sp, #0x50]
  100166ddc  str     x24, [sp, #0x40]
  100166de0  mov     x24, x0
  100166de4  b       loc_100167070
loc_100166de8:
  100166de8  str     x28, [sp, #0x60]
  100166dec  str     x26, [sp, #0x50]
  100166df0  str     x24, [sp, #0x40]
  100166df4  mov     x24, x0
  100166df8  mov     x0, x19
  100166dfc  b       loc_10016706c
  100166e00  str     x23, [sp, #0x20]
  100166e04  str     x28, [sp, #0x60]
  100166e08  str     x26, [sp, #0x50]
  100166e0c  str     x24, [sp, #0x40]
  100166e10  mov     x24, x0
  100166e14  mov     x0, x20
  100166e18  bl      _objc_release
  100166e1c  b       loc_100167068
  100166e20  str     x23, [sp, #0x20]
  100166e24  str     x28, [sp, #0x60]
  100166e28  str     x26, [sp, #0x50]
  100166e2c  str     x24, [sp, #0x40]
  100166e30  mov     x24, x0
  100166e34  b       loc_100167068
  100166e38  b       loc_10016700c
  100166e3c  b       loc_100166f0c
  100166e40  b       loc_100166f24
  100166e44  b       loc_100166f38
  100166e48  mov     x24, x0
  100166e4c  b       loc_100166f60
  100166e50  b       loc_100166f70
  100166e54  mov     x24, x0
  100166e58  b       loc_100166f60
  100166e5c  str     x25, [sp, #0x28]
  100166e60  b       loc_100166f18
  100166e64  b       loc_100166eb8
  100166e68  str     x25, [sp, #0x28]
  100166e6c  str     x27, [sp, #0x40]
  100166e70  mov     x24, x0
  100166e74  mov     x0, x21
  100166e78  b       loc_100166ea0
  100166e7c  b       loc_100166ebc
  100166e80  str     x27, [sp, #0x40]
  100166e84  mov     x24, x0
  100166e88  b       loc_100166e9c
  100166e8c  str     x27, [sp, #0x40]
  100166e90  mov     x24, x0
  100166e94  mov     x0, x22
  100166e98  bl      _objc_release
loc_100166e9c:
  100166e9c  mov     x0, x20
loc_100166ea0:
  100166ea0  bl      _objc_release
  100166ea4  b       loc_100166ec4
  100166ea8  str     x25, [sp, #0x28]
  100166eac  str     x27, [sp, #0x40]
  100166eb0  mov     x24, x0
  100166eb4  b       loc_100166fd8
loc_100166eb8:
  100166eb8  str     x25, [sp, #0x28]
loc_100166ebc:
  100166ebc  str     x27, [sp, #0x40]
  100166ec0  mov     x24, x0
loc_100166ec4:
  100166ec4  mov     x0, x19
  100166ec8  b       loc_100166fd4
  100166ecc  b       loc_100166f94
  100166ed0  b       loc_100166f88
  100166ed4  b       loc_100166f94
  100166ed8  str     x23, [sp, #0x20]
  100166edc  str     x28, [sp, #0x60]
  100166ee0  str     x26, [sp, #0x50]
  100166ee4  str     x24, [sp, #0x40]
  100166ee8  mov     x24, x0
  100166eec  b       loc_100167060
  100166ef0  str     x23, [sp, #0x20]
  100166ef4  str     x28, [sp, #0x60]
  100166ef8  str     x26, [sp, #0x50]
  100166efc  str     x24, [sp, #0x40]
  100166f00  mov     x24, x0
  100166f04  mov     x0, x22
  100166f08  b       loc_100167004
loc_100166f0c:
  100166f0c  str     x19, [sp, #0x28]
  100166f10  str     x28, [sp, #0x60]
  100166f14  str     x26, [sp, #0x50]
loc_100166f18:
  100166f18  str     x27, [sp, #0x40]
  100166f1c  mov     x24, x0
  100166f20  b       loc_100166fe0
loc_100166f24:
  100166f24  str     x28, [sp, #0x60]
  100166f28  str     x26, [sp, #0x50]
  100166f2c  str     x27, [sp, #0x40]
  100166f30  mov     x24, x0
  100166f34  b       loc_100166f7c
loc_100166f38:
  100166f38  str     x28, [sp, #0x60]
  100166f3c  str     x26, [sp, #0x50]
  100166f40  str     x27, [sp, #0x40]
  100166f44  mov     x24, x0
  100166f48  mov     x0, x20
  100166f4c  b       loc_100166f78
loc_100166f50:
  100166f50  mov     x24, x0
  100166f54  mov     x0, x21
  100166f58  b       loc_100166f64
  100166f5c  mov     x24, x0
loc_100166f60:
  100166f60  mov     x0, x27
loc_100166f64:
  100166f64  bl      _objc_release
  100166f68  b       loc_100166f74
  100166f6c  b       loc_100166f70
loc_100166f70:
  100166f70  mov     x24, x0
loc_100166f74:
  100166f74  mov     x0, x22
loc_100166f78:
  100166f78  bl      _objc_release
loc_100166f7c:
  100166f7c  mov     x0, x19
  100166f80  bl      _objc_release
  100166f84  b       loc_100166fe0
loc_100166f88:
  100166f88  str     x27, [sp, #0x40]
  100166f8c  mov     x24, x0
  100166f90  b       loc_100166fd0
loc_100166f94:
  100166f94  str     x27, [sp, #0x40]
  100166f98  mov     x24, x0
loc_100166f9c:
  100166f9c  mov     x0, x20
  100166fa0  b       loc_100166fcc
  100166fa4  b       loc_100166fac
  100166fa8  b       loc_100166fc0
loc_100166fac:
  100166fac  str     x27, [sp, #0x40]
  100166fb0  mov     x24, x0
loc_100166fb4:
  100166fb4  mov     x0, x20
  100166fb8  bl      _objc_release
  100166fbc  b       loc_100166fc8
loc_100166fc0:
  100166fc0  str     x27, [sp, #0x40]
  100166fc4  mov     x24, x0
loc_100166fc8:
  100166fc8  mov     x0, x23
loc_100166fcc:
  100166fcc  bl      _objc_release
loc_100166fd0:
  100166fd0  ldr     x0, [sp, #0x30]
loc_100166fd4:
  100166fd4  bl      _objc_release
loc_100166fd8:
  100166fd8  mov     x0, x28
  100166fdc  bl      _objc_release
loc_100166fe0:
  100166fe0  ldr     x0, [sp, #0x28]
  100166fe4  bl      _objc_release
  100166fe8  b       loc_100167068
  100166fec  str     x23, [sp, #0x20]
  100166ff0  str     x28, [sp, #0x60]
  100166ff4  str     x26, [sp, #0x50]
  100166ff8  str     x24, [sp, #0x40]
  100166ffc  mov     x24, x0
  100167000  mov     x0, x20
loc_100167004:
  100167004  bl      _objc_release
  100167008  b       loc_100167058
loc_10016700c:
  10016700c  str     x23, [sp, #0x20]
  100167010  str     x28, [sp, #0x60]
  100167014  str     x26, [sp, #0x50]
  100167018  str     x27, [sp, #0x40]
  10016701c  mov     x24, x0
  100167020  mov     x0, x19
  100167024  bl      _objc_release
  100167028  b       loc_100167068
  10016702c  str     x23, [sp, #0x20]
  100167030  str     x28, [sp, #0x60]
  100167034  str     x26, [sp, #0x50]
  100167038  str     x27, [sp, #0x40]
  10016703c  mov     x24, x0
  100167040  b       loc_100167060
  100167044  str     x23, [sp, #0x20]
  100167048  str     x28, [sp, #0x60]
  10016704c  str     x26, [sp, #0x50]
  100167050  str     x27, [sp, #0x40]
  100167054  mov     x24, x0
loc_100167058:
  100167058  mov     x0, x19
  10016705c  bl      _objc_release
loc_100167060:
  100167060  mov     x0, x21
  100167064  bl      _objc_release
loc_100167068:
  100167068  ldr     x0, [sp, #0x20]
loc_10016706c:
  10016706c  bl      _objc_release
loc_100167070:
  100167070  ldr     x0, [sp, #0x60]
  100167074  bl      _objc_release
  100167078  ldr     x0, [sp, #0x50]
  10016707c  bl      _objc_release
  100167080  ldr     x0, [sp, #0x40]
  100167084  bl      _objc_release
  100167088  mov     x0, x24
  10016708c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100167090  .word   jump table of 100166370, case 0 -> loc_100166374
  100167094  .word   jump table of 100166370, case 1 -> loc_100166384
  100167098  .word   jump table of 100166370, case 2 -> loc_10016652c
  10016709c  .word   jump table of 100166370, case 3 -> loc_1001667f4
  1001670a0  .word   jump table of 100166370, case 4 -> loc_100166374
  1001670a4  .word   jump table of 100166370, case 5 -> loc_100166374
  1001670a8  .word   jump table of 100166370, case 6 -> loc_1001668e0
  1001670ac  .word   jump table of 100166370, case 7 -> loc_100166374
  1001670b0  .word   jump table of 100166370, case 8 -> loc_100166a80

; ======================================================================
; +[TAGResourceUtil servingValue:]
; address 0x1001670b4  size 292  kind objc
; ======================================================================
  1001670b4  stp     x29, x30, [sp, #-0x10]!
  1001670b8  mov     x29, sp
  1001670bc  stp     x20, x19, [sp, #-0x10]!
  1001670c0  stp     x22, x21, [sp, #-0x10]!
  1001670c4  stp     x24, x23, [sp, #-0x10]!
  1001670c8  mov     x21, x0
  1001670cc  mov     x0, x2
  1001670d0  bl      _objc_retain
  1001670d4  mov     x19, x0
  1001670d8  adrp    x24, #0x10041e000
  1001670dc  ldr     x0, [x24, #0x7f0]                        ; class TAGPServingValue
  1001670e0  adrp    x8, #0x10041d000
  1001670e4  nop
  1001670e8  ldr     x20, [x8, #0x208]
  1001670ec  mov     x1, x20
  1001670f0  bl      _objc_msgSend                            ; [TAGPServingValue ext]
  1001670f4  mov     x29, x29
  1001670f8  bl      _objc_retainAutoreleasedReturnValue
  1001670fc  mov     x22, x0
  100167100  adrp    x8, #0x10041d000
  100167104  nop
  100167108  ldr     x1, [x8, #0x768]
  10016710c  mov     x0, x19
  100167110  mov     x2, x22
  100167114  bl      _objc_msgSend                            ; [arg1 hasExtension:[TAGPServingValue ext]]
  100167118  mov     x23, x0
  10016711c  mov     x0, x22
  100167120  bl      _objc_release
  100167124  tbnz    w23, #0, loc_100167144                   ; if (([arg1 hasExtension:[TAGPServingValue ext]] & 1))
  100167128  adrp    x8, #0x10041d000
  10016712c  nop
  100167130  ldr     x1, [x8, #0x738]
  100167134  adrp    x2, #0x1003c8000
  100167138  add     x2, x2, #0xb90                           ; @"Expected a ServingValue and didn't get one"
  10016713c  mov     x0, x21
  100167140  bl      _objc_msgSend                            ; [TAGResourceUtil logAndThrow:@"Expected a ServingValue and didn't get one"]
loc_100167144:
  100167144  ldr     x0, [x24, #0x7f0]                        ; class TAGPServingValue
  100167148  mov     x1, x20
  10016714c  bl      _objc_msgSend                            ; [TAGPServingValue ext]
  100167150  mov     x29, x29
  100167154  bl      _objc_retainAutoreleasedReturnValue
  100167158  mov     x20, x0
  10016715c  adrp    x8, #0x10041c000
  100167160  nop
  100167164  ldr     x1, [x8, #0xc58]
  100167168  mov     x0, x19
  10016716c  mov     x2, x20
  100167170  bl      _objc_msgSend                            ; [arg1 getExtension:[TAGPServingValue ext]]
  100167174  mov     x29, x29
  100167178  bl      _objc_retainAutoreleasedReturnValue
  10016717c  mov     x21, x0
  100167180  mov     x0, x20
  100167184  bl      _objc_release
  100167188  mov     x0, x19
  10016718c  bl      _objc_release
  100167190  mov     x0, x21
  100167194  ldp     x24, x23, [sp], #0x10
  100167198  ldp     x22, x21, [sp], #0x10
  10016719c  ldp     x20, x19, [sp], #0x10
  1001671a0  ldp     x29, x30, [sp], #0x10
  1001671a4  b       _objc_autoreleaseReturnValue
  1001671a8  mov     x21, x0
  1001671ac  mov     x0, x22
  1001671b0  b       loc_1001671c4
  1001671b4  mov     x21, x0
  1001671b8  b       loc_1001671c8
  1001671bc  mov     x21, x0
  1001671c0  mov     x0, x20
loc_1001671c4:
  1001671c4  bl      _objc_release
loc_1001671c8:
  1001671c8  mov     x0, x19
  1001671cc  bl      _objc_release
  1001671d0  mov     x0, x21
  1001671d4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGResourceUtil logAndThrow:]
; address 0x1001671d8  size 132  kind objc
; ======================================================================
  1001671d8  stp     x29, x30, [sp, #-0x10]!
  1001671dc  mov     x29, sp
  1001671e0  stp     x20, x19, [sp, #-0x10]!
  1001671e4  mov     x0, x2
  1001671e8  bl      _objc_retain
  1001671ec  mov     x19, x0
  1001671f0  adrp    x8, #0x10041e000
  1001671f4  ldr     x0, [x8, #0x538]                         ; class TAGLog
  1001671f8  adrp    x8, #0x10041b000
  1001671fc  nop
  100167200  ldr     x1, [x8, #0xdd0]
  100167204  mov     x2, x19
  100167208  bl      _objc_msgSend                            ; [TAGLog error:arg1]
  10016720c  adrp    x8, #0x10041d000
  100167210  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100167214  adrp    x8, #0x10041b000
  100167218  nop
  10016721c  ldr     x1, [x8, #0x380]
  100167220  mov     x4, #0
  100167224  adrp    x2, #0x1003c7000
  100167228  add     x2, x2, #0x990                           ; @"InvalidResourceException"
  10016722c  adrp    x3, #0x1003c8000
  100167230  add     x3, x3, #0xbb0                           ; @"Resource is invalid"
  100167234  bl      _objc_msgSend                            ; [NSException exceptionWithName:@"InvalidResourceException" reason:@"Resource is invalid" userInfo:0]
  100167238  mov     x29, x29
  10016723c  bl      _objc_retainAutoreleasedReturnValue
  100167240  bl      _objc_autorelease
  100167244  bl      _objc_exception_throw                    ; objc_exception_throw([NSException exceptionWithName:@"InvalidResourceException" reason:@"Resource is invalid" userInfo:0])
  100167248  mov     x20, x0
  10016724c  mov     x0, x19
  100167250  bl      _objc_release
  100167254  mov     x0, x20
  100167258  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:index:listName:]
; address 0x10016725c  size 292  kind objc
; ======================================================================
  10016725c  stp     x29, x30, [sp, #-0x10]!
  100167260  mov     x29, sp
  100167264  stp     x20, x19, [sp, #-0x10]!
  100167268  stp     x22, x21, [sp, #-0x10]!
  10016726c  stp     x24, x23, [sp, #-0x10]!
  100167270  sub     sp, sp, #0x10
  100167274  mov     x20, x4
  100167278  mov     x21, x3
  10016727c  mov     x22, x0
  100167280  mov     x0, x2
  100167284  bl      _objc_retain
  100167288  mov     x19, x0
  10016728c  mov     x0, x20
  100167290  bl      _objc_retain
  100167294  mov     x20, x0
  100167298  adrp    x8, #0x100416000
  10016729c  nop
  1001672a0  ldr     x1, [x8, #0xe30]
  1001672a4  mov     x0, x19
  1001672a8  bl      _objc_msgSend                            ; [arg1 count]
  1001672ac  cmp     x0, x21
  1001672b0  b.hi    loc_100167304                            ; if ([arg1 count] >u arg2)
  1001672b4  adrp    x8, #0x10041d000
  1001672b8  ldr     x0, [x8, #0xf78]                         ; class NSString
  1001672bc  adrp    x8, #0x100416000
  1001672c0  nop
  1001672c4  ldr     x1, [x8, #0xee8]
  1001672c8  stp     x21, x20, [sp]
  1001672cc  adrp    x2, #0x1003c8000
  1001672d0  add     x2, x2, #0xbd0                           ; @"Index out of bounds detected: %lu in %@"
  1001672d4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Index out of bounds detected: %lu in %@", arg2, arg3]
  1001672d8  mov     x29, x29
  1001672dc  bl      _objc_retainAutoreleasedReturnValue
  1001672e0  mov     x23, x0
  1001672e4  adrp    x8, #0x10041d000
  1001672e8  nop
  1001672ec  ldr     x1, [x8, #0x738]
  1001672f0  mov     x0, x22
  1001672f4  mov     x2, x23
  1001672f8  bl      _objc_msgSend                            ; [TAGResourceUtil logAndThrow:[NSString stringWithFormat:@"Index out of bounds detected: %lu in %@", arg2, arg3]]
  1001672fc  mov     x0, x23
  100167300  bl      _objc_release
loc_100167304:
  100167304  adrp    x8, #0x100416000
  100167308  nop
  10016730c  ldr     x1, [x8, #0xc30]
  100167310  mov     x0, x19
  100167314  mov     x2, x21
  100167318  bl      _objc_msgSend                            ; [arg1 objectAtIndex:arg2]
  10016731c  mov     x29, x29
  100167320  bl      _objc_retainAutoreleasedReturnValue
  100167324  mov     x21, x0
  100167328  mov     x0, x20
  10016732c  bl      _objc_release
  100167330  mov     x0, x19
  100167334  bl      _objc_release
  100167338  mov     x0, x21
  10016733c  sub     sp, x29, #0x30
  100167340  ldp     x24, x23, [sp], #0x10
  100167344  ldp     x22, x21, [sp], #0x10
  100167348  ldp     x20, x19, [sp], #0x10
  10016734c  ldp     x29, x30, [sp], #0x10
  100167350  b       _objc_autoreleaseReturnValue
  100167354  mov     x21, x0
  100167358  mov     x0, x23
  10016735c  bl      _objc_release
  100167360  b       loc_100167368
  100167364  mov     x21, x0
loc_100167368:
  100167368  mov     x0, x20
  10016736c  bl      _objc_release
  100167370  mov     x0, x19
  100167374  bl      _objc_release
  100167378  mov     x0, x21
  10016737c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGResourceUtil objectWithNSArrayBoundsCheck:index:listName:]
; address 0x100167380  size 292  kind objc
; ======================================================================
  100167380  stp     x29, x30, [sp, #-0x10]!
  100167384  mov     x29, sp
  100167388  stp     x20, x19, [sp, #-0x10]!
  10016738c  stp     x22, x21, [sp, #-0x10]!
  100167390  stp     x24, x23, [sp, #-0x10]!
  100167394  sub     sp, sp, #0x10
  100167398  mov     x20, x4
  10016739c  mov     x21, x3
  1001673a0  mov     x22, x0
  1001673a4  mov     x0, x2
  1001673a8  bl      _objc_retain
  1001673ac  mov     x19, x0
  1001673b0  mov     x0, x20
  1001673b4  bl      _objc_retain
  1001673b8  mov     x20, x0
  1001673bc  adrp    x8, #0x100416000
  1001673c0  nop
  1001673c4  ldr     x1, [x8, #0xe30]
  1001673c8  mov     x0, x19
  1001673cc  bl      _objc_msgSend                            ; [arg1 count]
  1001673d0  cmp     x0, x21
  1001673d4  b.hi    loc_100167428                            ; if ([arg1 count] >u arg2)
  1001673d8  adrp    x8, #0x10041d000
  1001673dc  ldr     x0, [x8, #0xf78]                         ; class NSString
  1001673e0  adrp    x8, #0x100416000
  1001673e4  nop
  1001673e8  ldr     x1, [x8, #0xee8]
  1001673ec  stp     x21, x20, [sp]
  1001673f0  adrp    x2, #0x1003c8000
  1001673f4  add     x2, x2, #0xbd0                           ; @"Index out of bounds detected: %lu in %@"
  1001673f8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Index out of bounds detected: %lu in %@", arg2, arg3]
  1001673fc  mov     x29, x29
  100167400  bl      _objc_retainAutoreleasedReturnValue
  100167404  mov     x23, x0
  100167408  adrp    x8, #0x10041d000
  10016740c  nop
  100167410  ldr     x1, [x8, #0x738]
  100167414  mov     x0, x22
  100167418  mov     x2, x23
  10016741c  bl      _objc_msgSend                            ; [TAGResourceUtil logAndThrow:[NSString stringWithFormat:@"Index out of bounds detected: %lu in %@", arg2, arg3]]
  100167420  mov     x0, x23
  100167424  bl      _objc_release
loc_100167428:
  100167428  adrp    x8, #0x100416000
  10016742c  nop
  100167430  ldr     x1, [x8, #0xc30]
  100167434  mov     x0, x19
  100167438  mov     x2, x21
  10016743c  bl      _objc_msgSend                            ; [arg1 objectAtIndex:arg2]
  100167440  mov     x29, x29
  100167444  bl      _objc_retainAutoreleasedReturnValue
  100167448  mov     x21, x0
  10016744c  mov     x0, x20
  100167450  bl      _objc_release
  100167454  mov     x0, x19
  100167458  bl      _objc_release
  10016745c  mov     x0, x21
  100167460  sub     sp, x29, #0x30
  100167464  ldp     x24, x23, [sp], #0x10
  100167468  ldp     x22, x21, [sp], #0x10
  10016746c  ldp     x20, x19, [sp], #0x10
  100167470  ldp     x29, x30, [sp], #0x10
  100167474  b       _objc_autoreleaseReturnValue
  100167478  mov     x21, x0
  10016747c  mov     x0, x23
  100167480  bl      _objc_release
  100167484  b       loc_10016748c
  100167488  mov     x21, x0
loc_10016748c:
  10016748c  mov     x0, x20
  100167490  bl      _objc_release
  100167494  mov     x0, x19
  100167498  bl      _objc_release
  10016749c  mov     x0, x21
  1001674a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGResourceUtil expandFunctionCall:resource:expandedValues:index:]
; address 0x1001674a4  size 948  kind objc
; ======================================================================
  1001674a4  stp     x29, x30, [sp, #-0x10]!
  1001674a8  mov     x29, sp
  1001674ac  stp     x20, x19, [sp, #-0x10]!
  1001674b0  stp     x22, x21, [sp, #-0x10]!
  1001674b4  stp     x24, x23, [sp, #-0x10]!
  1001674b8  stp     x26, x25, [sp, #-0x10]!
  1001674bc  stp     x28, x27, [sp, #-0x10]!
  1001674c0  sub     sp, sp, #0x50
  1001674c4  mov     x21, x4
  1001674c8  mov     x20, x3
  1001674cc  mov     x23, x0
  1001674d0  mov     x0, x2
  1001674d4  bl      _objc_retain
  1001674d8  mov     x19, x0
  1001674dc  mov     x0, x20
  1001674e0  bl      _objc_retain
  1001674e4  mov     x20, x0
  1001674e8  mov     x0, x21
  1001674ec  bl      _objc_retain
  1001674f0  str     x0, [sp, #0x40]
  1001674f4  adrp    x8, #0x10041e000
  1001674f8  ldr     x0, [x8, #0xb30]                         ; class TAGExpandedFunctionCall
  1001674fc  adrp    x8, #0x10041c000
  100167500  nop
  100167504  ldr     x1, [x8, #0xbb0]
  100167508  bl      _objc_msgSend                            ; [TAGExpandedFunctionCall builder]
  10016750c  mov     x29, x29
  100167510  bl      _objc_retainAutoreleasedReturnValue
  100167514  str     x0, [sp, #0x38]
  100167518  mov     x24, #0
  10016751c  adrp    x8, #0x10041d000
  100167520  nop
  100167524  adrp    x9, #0x100416000
  100167528  add     x9, x9, #0xe30                           ; &@selector(count)
  10016752c  adrp    x10, #0x10041c000
  100167530  add     x10, x10, #0x7b8                         ; &@selector(int32AtIndex:)
  100167534  adrp    x11, #0x10041d000
  100167538  add     x11, x11, #0x740                         ; &@selector(objectWithTAGPBArrayBoundsCheck:index:listName:)
  10016753c  adrp    x12, #0x10041d000
  100167540  add     x12, x12, #0x778                         ; &@selector(keyArray)
  100167544  ldr     x25, [x8, #0x770]
  100167548  ldr     x8, [x9]
  10016754c  str     x8, [sp, #0x48]
  100167550  ldr     x8, [x10]
  100167554  str     x8, [sp, #0x30]
  100167558  ldr     x28, [x11]
  10016755c  ldr     x8, [x12]
  100167560  str     x8, [sp, #0x28]
  100167564  adrp    x8, #0x100419000
  100167568  nop
  10016756c  ldr     x8, [x8, #0x3e8]
  100167570  str     x8, [sp, #0x20]
  100167574  adrp    x8, #0x100418000
  100167578  nop
  10016757c  ldr     x8, [x8, #0x800]
  100167580  str     x8, [sp, #0x18]
  100167584  adrp    x8, #0x10041d000
  100167588  nop
  10016758c  ldr     x8, [x8, #0x780]
  100167590  str     x8, [sp, #0x10]
  100167594  adrp    x8, #0x100416000
  100167598  nop
  10016759c  ldr     x22, [x8, #0xf58]
  1001675a0  adrp    x8, #0x10041d000
  1001675a4  nop
  1001675a8  ldr     x8, [x8, #0x788]
  1001675ac  str     x8, [sp, #8]
  1001675b0  adrp    x8, #0x10041d000
  1001675b4  nop
  1001675b8  ldr     x8, [x8, #0xa88]
  1001675bc  str     x8, [sp]
  1001675c0  b       loc_1001675e0
loc_1001675c4:
  1001675c4  mov     x0, x21
  1001675c8  bl      _objc_release
  1001675cc  mov     x0, x26
  1001675d0  bl      _objc_release
  1001675d4  mov     x0, x27
  1001675d8  bl      _objc_release
  1001675dc  add     x24, x24, #1
loc_1001675e0:
  1001675e0  mov     x0, x19
  1001675e4  mov     x1, x25
  1001675e8  bl      _objc_msgSend                            ; [arg1 propertyArray]
  1001675ec  mov     x29, x29
  1001675f0  bl      _objc_retainAutoreleasedReturnValue
  1001675f4  mov     x21, x0
  1001675f8  ldr     x1, [sp, #0x48]
  1001675fc  bl      _objc_msgSend                            ; [[arg1 propertyArray] count]
  100167600  mov     x26, x0
  100167604  mov     x0, x21
  100167608  bl      _objc_release
  10016760c  cmp     x24, x26
  100167610  b.hs    loc_100167764                            ; if (x24 >=u [[arg1 propertyArray] count])
  100167614  mov     x0, x20
  100167618  mov     x1, x25
  10016761c  bl      _objc_msgSend                            ; [arg2 propertyArray]
  100167620  mov     x29, x29
  100167624  bl      _objc_retainAutoreleasedReturnValue
  100167628  mov     x26, x0
  10016762c  mov     x0, x19
  100167630  mov     x1, x25
  100167634  bl      _objc_msgSend                            ; [arg1 propertyArray]
  100167638  mov     x29, x29
  10016763c  bl      _objc_retainAutoreleasedReturnValue
  100167640  mov     x21, x0
  100167644  ldr     x1, [sp, #0x30]
  100167648  mov     x2, x24
  10016764c  bl      _objc_msgSend                            ; [[arg1 propertyArray] int32AtIndex:x2]
  100167650  sxtw    x3, w0
  100167654  mov     x0, x23
  100167658  mov     x1, x28
  10016765c  mov     x2, x26
  100167660  adrp    x4, #0x1003c4000
  100167664  add     x4, x4, #0xe90                           ; @"properties"
  100167668  bl      _objc_msgSend                            ; [TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 propertyArray] index:[[arg1 propertyArray] int32AtIndex:x2] listName:@"properties"]
  10016766c  mov     x29, x29
  100167670  bl      _objc_retainAutoreleasedReturnValue
  100167674  mov     x27, x0
  100167678  mov     x0, x21
  10016767c  bl      _objc_release
  100167680  mov     x0, x26
  100167684  bl      _objc_release
  100167688  mov     x0, x20
  10016768c  ldr     x1, [sp, #0x28]
  100167690  bl      _objc_msgSend                            ; [arg2 keyArray]
  100167694  mov     x29, x29
  100167698  bl      _objc_retainAutoreleasedReturnValue
  10016769c  mov     x21, x0
  1001676a0  mov     x0, x27
  1001676a4  ldr     x1, [sp, #0x20]
  1001676a8  bl      _objc_msgSend                            ; [[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 propertyArray] index:[[arg1 propertyArray] int32AtIndex:x2] listName:@"properties"] key]
  1001676ac  sxtw    x3, w0
  1001676b0  mov     x0, x23
  1001676b4  mov     x1, x28
  1001676b8  mov     x2, x21
  1001676bc  adrp    x4, #0x1003c8000
  1001676c0  add     x4, x4, #0xbf0                           ; @"keys"
  1001676c4  bl      _objc_msgSend                            ; [TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 keyArray] index:[[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 propertyArray] index:[[arg1 propertyArray] int32AtIndex:x2] listName:@"properties"] key] listName:@"keys"]
  1001676c8  mov     x29, x29
  1001676cc  bl      _objc_retainAutoreleasedReturnValue
  1001676d0  mov     x26, x0
  1001676d4  mov     x0, x21
  1001676d8  bl      _objc_release
  1001676dc  mov     x0, x27
  1001676e0  ldr     x1, [sp, #0x18]
  1001676e4  bl      _objc_msgSend                            ; [[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 propertyArray] index:[[arg1 propertyArray] int32AtIndex:x2] listName:@"properties"] value]
  1001676e8  sxtw    x3, w0
  1001676ec  mov     x0, x23
  1001676f0  ldr     x1, [sp, #0x10]
  1001676f4  ldr     x2, [sp, #0x40]
  1001676f8  adrp    x4, #0x1003c8000
  1001676fc  add     x4, x4, #0xc10                           ; @"values"
  100167700  bl      _objc_msgSend                            ; [TAGResourceUtil objectWithNSArrayBoundsCheck:arg3 index:[[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 propertyArray] index:[[arg1 propertyArray] int32AtIndex:x2] listName:@"properties"] value] listName:@"values"]
  100167704  mov     x29, x29
  100167708  bl      _objc_retainAutoreleasedReturnValue
  10016770c  mov     x21, x0
  100167710  mov     x0, x26
  100167714  mov     x1, x22
  100167718  adrp    x2, #0x1003c8000
  10016771c  add     x2, x2, #0xa70                           ; @"push_after_evaluate"
  100167720  bl      _objc_msgSend                            ; [[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 keyArray] index:[[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 propertyArray] index:[[arg1 propertyArray] int32AtIndex:x2] listName:@"properties"] key] listName:@"keys"] isEqualToString:@"push_after_evaluate"]
  100167724  cbz     w0, loc_10016773c                        ; if ([[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 keyArray] index:[[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 propertyArray] index:[[arg1 propertyArray] int32AtIndex:x2] listName:@"properties"] key] listName:@"keys"] isEqualToString:@"push_after_evaluate"] == 0)
  100167728  ldr     x0, [sp, #0x38]
  10016772c  ldr     x1, [sp, #8]
  100167730  mov     x2, x21
  100167734  bl      _objc_msgSend                            ; [[TAGExpandedFunctionCall builder] setPushAfterEvaluate:[TAGResourceUtil objectWithNSArrayBoundsCheck:arg3 index:[[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 propertyArray] index:[[arg1 propertyArray] int32AtIndex:x2] listName:@"properties"] value] listName:@"values"]]
  100167738  b       loc_1001675c4
loc_10016773c:
  10016773c  ldr     x0, [sp, #0x38]
  100167740  ldr     x1, [sp]
  100167744  mov     x2, x21
  100167748  mov     x3, x26
  10016774c  bl      _objc_msgSend                            ; [[TAGExpandedFunctionCall builder] addPropertyWithValue:[TAGResourceUtil objectWithNSArrayBoundsCheck:arg3 index:[[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 propertyArray] index:[[arg1 propertyArray] int32AtIndex:x2] listName:@"properties"] value] listName:@"values"] forKey:[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 keyArray] index:[[TAGResourceUtil objectWithTAGPBArrayBoundsCheck:[arg2 propertyArray] index:[[arg1 propertyArray] int32AtIndex:x2] listName:@"properties"] ke…
  100167750  b       loc_1001675c4
  100167754  mov     x22, x0
  100167758  mov     x0, x21
  10016775c  bl      _objc_release
  100167760  b       loc_100167818
loc_100167764:
  100167764  adrp    x8, #0x100417000
  100167768  nop
  10016776c  ldr     x1, [x8, #0x310]
  100167770  ldr     x22, [sp, #0x38]
  100167774  mov     x0, x22
  100167778  bl      _objc_msgSend                            ; [[TAGExpandedFunctionCall builder] build]
  10016777c  mov     x29, x29
  100167780  bl      _objc_retainAutoreleasedReturnValue
  100167784  mov     x21, x0
  100167788  mov     x0, x22
  10016778c  bl      _objc_release
  100167790  ldr     x0, [sp, #0x40]
  100167794  bl      _objc_release
  100167798  mov     x0, x20
  10016779c  bl      _objc_release
  1001677a0  mov     x0, x19
  1001677a4  bl      _objc_release
  1001677a8  mov     x0, x21
  1001677ac  sub     sp, x29, #0x50
  1001677b0  ldp     x28, x27, [sp], #0x10
  1001677b4  ldp     x26, x25, [sp], #0x10
  1001677b8  ldp     x24, x23, [sp], #0x10
  1001677bc  ldp     x22, x21, [sp], #0x10
  1001677c0  ldp     x20, x19, [sp], #0x10
  1001677c4  ldp     x29, x30, [sp], #0x10
  1001677c8  b       _objc_autoreleaseReturnValue
  1001677cc  mov     x22, x0
  1001677d0  b       loc_100167838
  1001677d4  mov     x22, x0
  1001677d8  mov     x0, x21
  1001677dc  b       loc_100167824
  1001677e0  b       loc_10016782c
  1001677e4  mov     x22, x0
  1001677e8  b       loc_1001677f8
  1001677ec  mov     x22, x0
  1001677f0  mov     x0, x21
  1001677f4  bl      _objc_release
loc_1001677f8:
  1001677f8  mov     x0, x26
  1001677fc  b       loc_100167824
  100167800  mov     x22, x0
  100167804  b       loc_100167820
  100167808  mov     x22, x0
  10016780c  mov     x0, x21
  100167810  b       loc_10016781c
  100167814  mov     x22, x0
loc_100167818:
  100167818  mov     x0, x26
loc_10016781c:
  10016781c  bl      _objc_release
loc_100167820:
  100167820  mov     x0, x27
loc_100167824:
  100167824  bl      _objc_release
  100167828  b       loc_100167830
loc_10016782c:
  10016782c  mov     x22, x0
loc_100167830:
  100167830  ldr     x0, [sp, #0x38]
  100167834  bl      _objc_release
loc_100167838:
  100167838  ldr     x0, [sp, #0x40]
  10016783c  bl      _objc_release
  100167840  mov     x0, x20
  100167844  bl      _objc_release
  100167848  mov     x0, x19
  10016784c  bl      _objc_release
  100167850  mov     x0, x22
  100167854  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGResourceUtil expandRule:tags:macros:predicates:]
; address 0x100167858  size 1580  kind objc
; ======================================================================
  100167858  stp     x29, x30, [sp, #-0x10]!
  10016785c  mov     x29, sp
  100167860  stp     x20, x19, [sp, #-0x10]!
  100167864  stp     x22, x21, [sp, #-0x10]!
  100167868  stp     x24, x23, [sp, #-0x10]!
  10016786c  stp     x26, x25, [sp, #-0x10]!
  100167870  stp     x28, x27, [sp, #-0x10]!
  100167874  sub     sp, sp, #0x20
  100167878  mov     x20, x5
  10016787c  mov     x21, x4
  100167880  mov     x22, x3
  100167884  mov     x0, x2
  100167888  bl      _objc_retain
  10016788c  mov     x19, x0
  100167890  mov     x0, x22
  100167894  bl      _objc_retain
  100167898  str     x0, [sp, #0x10]
  10016789c  mov     x0, x21
  1001678a0  bl      _objc_retain
  1001678a4  str     x0, [sp, #8]
  1001678a8  mov     x0, x20
  1001678ac  bl      _objc_retain
  1001678b0  str     x0, [sp, #0x18]
  1001678b4  adrp    x8, #0x10041e000
  1001678b8  ldr     x0, [x8, #0x998]                         ; class TAGExpandedRule
  1001678bc  adrp    x8, #0x10041c000
  1001678c0  nop
  1001678c4  ldr     x1, [x8, #0xbb0]
  1001678c8  bl      _objc_msgSend                            ; [TAGExpandedRule builder]
  1001678cc  mov     x29, x29
  1001678d0  bl      _objc_retainAutoreleasedReturnValue
  1001678d4  mov     x23, x0
  1001678d8  mov     x27, #0
  1001678dc  adrp    x8, #0x10041d000
  1001678e0  nop
  1001678e4  ldr     x28, [x8, #0x790]
  1001678e8  adrp    x8, #0x100416000
  1001678ec  nop
  1001678f0  ldr     x24, [x8, #0xe30]
  1001678f4  adrp    x8, #0x10041c000
  1001678f8  nop
  1001678fc  ldr     x25, [x8, #0x7b8]
  100167900  adrp    x8, #0x100416000
  100167904  nop
  100167908  ldr     x26, [x8, #0xc30]
  10016790c  adrp    x8, #0x10041d000
  100167910  add     x8, x8, #0x798                           ; &@selector(addPositivePredicate:)
  100167914  ldr     x21, [x8]
  100167918  b       loc_100167930
loc_10016791c:
  10016791c  mov     x0, x22
  100167920  bl      _objc_release
  100167924  mov     x0, x20
  100167928  bl      _objc_release
  10016792c  add     x27, x27, #1
loc_100167930:
  100167930  mov     x0, x19
  100167934  mov     x1, x28
  100167938  bl      _objc_msgSend                            ; [arg1 positivePredicateArray]
  10016793c  mov     x29, x29
  100167940  bl      _objc_retainAutoreleasedReturnValue
  100167944  mov     x20, x0
  100167948  mov     x1, x24
  10016794c  bl      _objc_msgSend                            ; [[arg1 positivePredicateArray] count]
  100167950  mov     x22, x0
  100167954  mov     x0, x20
  100167958  bl      _objc_release
  10016795c  cmp     x27, x22
  100167960  b.hs    loc_1001679bc                            ; if (x27 >=u [[arg1 positivePredicateArray] count])
  100167964  mov     x0, x19
  100167968  mov     x1, x28
  10016796c  bl      _objc_msgSend                            ; [arg1 positivePredicateArray]
  100167970  mov     x29, x29
  100167974  bl      _objc_retainAutoreleasedReturnValue
  100167978  mov     x20, x0
  10016797c  mov     x1, x25
  100167980  mov     x2, x27
  100167984  bl      _objc_msgSend                            ; [[arg1 positivePredicateArray] int32AtIndex:x2]
  100167988  sxtw    x2, w0
  10016798c  ldr     x0, [sp, #0x18]
  100167990  mov     x1, x26
  100167994  bl      _objc_msgSend                            ; [arg4 objectAtIndex:[[arg1 positivePredicateArray] int32AtIndex:x2]]
  100167998  mov     x29, x29
  10016799c  bl      _objc_retainAutoreleasedReturnValue
  1001679a0  mov     x22, x0
  1001679a4  mov     x0, x23
  1001679a8  mov     x1, x21
  1001679ac  mov     x2, x22
  1001679b0  bl      _objc_msgSend                            ; [[TAGExpandedRule builder] addPositivePredicate:[arg4 objectAtIndex:[[arg1 positivePredicateArray] int32AtIndex:x2]]]
  1001679b4  b       loc_10016791c
  1001679b8  b       loc_100167d78
loc_1001679bc:
  1001679bc  mov     x27, #0
  1001679c0  adrp    x8, #0x10041d000
  1001679c4  nop
  1001679c8  ldr     x28, [x8, #0x7a0]
  1001679cc  adrp    x8, #0x10041d000
  1001679d0  add     x8, x8, #0x7a8                           ; &@selector(addNegativePredicate:)
  1001679d4  ldr     x21, [x8]
  1001679d8  b       loc_1001679f0
loc_1001679dc:
  1001679dc  mov     x0, x22
  1001679e0  bl      _objc_release
  1001679e4  mov     x0, x20
  1001679e8  bl      _objc_release
  1001679ec  add     x27, x27, #1
loc_1001679f0:
  1001679f0  mov     x0, x19
  1001679f4  mov     x1, x28
  1001679f8  bl      _objc_msgSend                            ; [arg1 negativePredicateArray]
  1001679fc  mov     x29, x29
  100167a00  bl      _objc_retainAutoreleasedReturnValue
  100167a04  mov     x20, x0
  100167a08  mov     x1, x24
  100167a0c  bl      _objc_msgSend                            ; [[arg1 negativePredicateArray] count]
  100167a10  mov     x22, x0
  100167a14  mov     x0, x20
  100167a18  bl      _objc_release
  100167a1c  cmp     x27, x22
  100167a20  b.hs    loc_100167a7c                            ; if (x27 >=u [[arg1 negativePredicateArray] count])
  100167a24  mov     x0, x19
  100167a28  mov     x1, x28
  100167a2c  bl      _objc_msgSend                            ; [arg1 negativePredicateArray]
  100167a30  mov     x29, x29
  100167a34  bl      _objc_retainAutoreleasedReturnValue
  100167a38  mov     x20, x0
  100167a3c  mov     x1, x25
  100167a40  mov     x2, x27
  100167a44  bl      _objc_msgSend                            ; [[arg1 negativePredicateArray] int32AtIndex:x2]
  100167a48  sxtw    x2, w0
  100167a4c  ldr     x0, [sp, #0x18]
  100167a50  mov     x1, x26
  100167a54  bl      _objc_msgSend                            ; [arg4 objectAtIndex:[[arg1 negativePredicateArray] int32AtIndex:x2]]
  100167a58  mov     x29, x29
  100167a5c  bl      _objc_retainAutoreleasedReturnValue
  100167a60  mov     x22, x0
  100167a64  mov     x0, x23
  100167a68  mov     x1, x21
  100167a6c  mov     x2, x22
  100167a70  bl      _objc_msgSend                            ; [[TAGExpandedRule builder] addNegativePredicate:[arg4 objectAtIndex:[[arg1 negativePredicateArray] int32AtIndex:x2]]]
  100167a74  b       loc_1001679dc
  100167a78  b       loc_100167d78
loc_100167a7c:
  100167a7c  mov     x27, #0
  100167a80  adrp    x8, #0x10041d000
  100167a84  nop
  100167a88  ldr     x28, [x8, #0x7b0]
  100167a8c  adrp    x8, #0x10041d000
  100167a90  add     x8, x8, #0x7b8                           ; &@selector(addAddTag:)
  100167a94  ldr     x21, [x8]
  100167a98  b       loc_100167ab0
loc_100167a9c:
  100167a9c  mov     x0, x22
  100167aa0  bl      _objc_release
  100167aa4  mov     x0, x20
  100167aa8  bl      _objc_release
  100167aac  add     x27, x27, #1
loc_100167ab0:
  100167ab0  mov     x0, x19
  100167ab4  mov     x1, x28
  100167ab8  bl      _objc_msgSend                            ; [arg1 addTagArray]
  100167abc  mov     x29, x29
  100167ac0  bl      _objc_retainAutoreleasedReturnValue
  100167ac4  mov     x20, x0
  100167ac8  mov     x1, x24
  100167acc  bl      _objc_msgSend                            ; [[arg1 addTagArray] count]
  100167ad0  mov     x22, x0
  100167ad4  mov     x0, x20
  100167ad8  bl      _objc_release
  100167adc  cmp     x27, x22
  100167ae0  b.hs    loc_100167b3c                            ; if (x27 >=u [[arg1 addTagArray] count])
  100167ae4  mov     x0, x19
  100167ae8  mov     x1, x28
  100167aec  bl      _objc_msgSend                            ; [arg1 addTagArray]
  100167af0  mov     x29, x29
  100167af4  bl      _objc_retainAutoreleasedReturnValue
  100167af8  mov     x20, x0
  100167afc  mov     x1, x25
  100167b00  mov     x2, x27
  100167b04  bl      _objc_msgSend                            ; [[arg1 addTagArray] int32AtIndex:x2]
  100167b08  sxtw    x2, w0
  100167b0c  ldr     x0, [sp, #0x10]
  100167b10  mov     x1, x26
  100167b14  bl      _objc_msgSend                            ; [arg2 objectAtIndex:[[arg1 addTagArray] int32AtIndex:x2]]
  100167b18  mov     x29, x29
  100167b1c  bl      _objc_retainAutoreleasedReturnValue
  100167b20  mov     x22, x0
  100167b24  mov     x0, x23
  100167b28  mov     x1, x21
  100167b2c  mov     x2, x22
  100167b30  bl      _objc_msgSend                            ; [[TAGExpandedRule builder] addAddTag:[arg2 objectAtIndex:[[arg1 addTagArray] int32AtIndex:x2]]]
  100167b34  b       loc_100167a9c
  100167b38  b       loc_100167d78
loc_100167b3c:
  100167b3c  mov     x27, #0
  100167b40  adrp    x8, #0x10041d000
  100167b44  nop
  100167b48  ldr     x28, [x8, #0x7c0]
  100167b4c  adrp    x8, #0x10041d000
  100167b50  add     x8, x8, #0x7c8                           ; &@selector(addRemoveTag:)
  100167b54  ldr     x21, [x8]
  100167b58  b       loc_100167b70
loc_100167b5c:
  100167b5c  mov     x0, x22
  100167b60  bl      _objc_release
  100167b64  mov     x0, x20
  100167b68  bl      _objc_release
  100167b6c  add     x27, x27, #1
loc_100167b70:
  100167b70  mov     x0, x19
  100167b74  mov     x1, x28
  100167b78  bl      _objc_msgSend                            ; [arg1 removeTagArray]
  100167b7c  mov     x29, x29
  100167b80  bl      _objc_retainAutoreleasedReturnValue
  100167b84  mov     x20, x0
  100167b88  mov     x1, x24
  100167b8c  bl      _objc_msgSend                            ; [[arg1 removeTagArray] count]
  100167b90  mov     x22, x0
  100167b94  mov     x0, x20
  100167b98  bl      _objc_release
  100167b9c  cmp     x27, x22
  100167ba0  b.hs    loc_100167bfc                            ; if (x27 >=u [[arg1 removeTagArray] count])
  100167ba4  mov     x0, x19
  100167ba8  mov     x1, x28
  100167bac  bl      _objc_msgSend                            ; [arg1 removeTagArray]
  100167bb0  mov     x29, x29
  100167bb4  bl      _objc_retainAutoreleasedReturnValue
  100167bb8  mov     x20, x0
  100167bbc  mov     x1, x25
  100167bc0  mov     x2, x27
  100167bc4  bl      _objc_msgSend                            ; [[arg1 removeTagArray] int32AtIndex:x2]
  100167bc8  sxtw    x2, w0
  100167bcc  ldr     x0, [sp, #0x10]
  100167bd0  mov     x1, x26
  100167bd4  bl      _objc_msgSend                            ; [arg2 objectAtIndex:[[arg1 removeTagArray] int32AtIndex:x2]]
  100167bd8  mov     x29, x29
  100167bdc  bl      _objc_retainAutoreleasedReturnValue
  100167be0  mov     x22, x0
  100167be4  mov     x0, x23
  100167be8  mov     x1, x21
  100167bec  mov     x2, x22
  100167bf0  bl      _objc_msgSend                            ; [[TAGExpandedRule builder] addRemoveTag:[arg2 objectAtIndex:[[arg1 removeTagArray] int32AtIndex:x2]]]
  100167bf4  b       loc_100167b5c
  100167bf8  b       loc_100167d78
loc_100167bfc:
  100167bfc  mov     x27, #0
  100167c00  adrp    x8, #0x10041d000
  100167c04  nop
  100167c08  ldr     x28, [x8, #0x7d0]
  100167c0c  adrp    x8, #0x10041d000
  100167c10  add     x8, x8, #0x7d8                           ; &@selector(addAddMacro:)
  100167c14  ldr     x21, [x8]
  100167c18  b       loc_100167c30
loc_100167c1c:
  100167c1c  mov     x0, x22
  100167c20  bl      _objc_release
  100167c24  mov     x0, x20
  100167c28  bl      _objc_release
  100167c2c  add     x27, x27, #1
loc_100167c30:
  100167c30  mov     x0, x19
  100167c34  mov     x1, x28
  100167c38  bl      _objc_msgSend                            ; [arg1 addMacroArray]
  100167c3c  mov     x29, x29
  100167c40  bl      _objc_retainAutoreleasedReturnValue
  100167c44  mov     x20, x0
  100167c48  mov     x1, x24
  100167c4c  bl      _objc_msgSend                            ; [[arg1 addMacroArray] count]
  100167c50  mov     x22, x0
  100167c54  mov     x0, x20
  100167c58  bl      _objc_release
  100167c5c  cmp     x27, x22
  100167c60  b.hs    loc_100167cbc                            ; if (x27 >=u [[arg1 addMacroArray] count])
  100167c64  mov     x0, x19
  100167c68  mov     x1, x28
  100167c6c  bl      _objc_msgSend                            ; [arg1 addMacroArray]
  100167c70  mov     x29, x29
  100167c74  bl      _objc_retainAutoreleasedReturnValue
  100167c78  mov     x20, x0
  100167c7c  mov     x1, x25
  100167c80  mov     x2, x27
  100167c84  bl      _objc_msgSend                            ; [[arg1 addMacroArray] int32AtIndex:x2]
  100167c88  sxtw    x2, w0
  100167c8c  ldr     x0, [sp, #8]
  100167c90  mov     x1, x26
  100167c94  bl      _objc_msgSend                            ; [arg3 objectAtIndex:[[arg1 addMacroArray] int32AtIndex:x2]]
  100167c98  mov     x29, x29
  100167c9c  bl      _objc_retainAutoreleasedReturnValue
  100167ca0  mov     x22, x0
  100167ca4  mov     x0, x23
  100167ca8  mov     x1, x21
  100167cac  mov     x2, x22
  100167cb0  bl      _objc_msgSend                            ; [[TAGExpandedRule builder] addAddMacro:[arg3 objectAtIndex:[[arg1 addMacroArray] int32AtIndex:x2]]]
  100167cb4  b       loc_100167c1c
  100167cb8  b       loc_100167d78
loc_100167cbc:
  100167cbc  mov     x27, #0
  100167cc0  adrp    x8, #0x10041d000
  100167cc4  nop
  100167cc8  ldr     x28, [x8, #0x7e0]
  100167ccc  adrp    x8, #0x10041d000
  100167cd0  add     x8, x8, #0x7e8                           ; &@selector(addRemoveMacro:)
  100167cd4  ldr     x21, [x8]
  100167cd8  b       loc_100167cf0
loc_100167cdc:
  100167cdc  mov     x0, x22
  100167ce0  bl      _objc_release
  100167ce4  mov     x0, x20
  100167ce8  bl      _objc_release
  100167cec  add     x27, x27, #1
loc_100167cf0:
  100167cf0  mov     x0, x19
  100167cf4  mov     x1, x28
  100167cf8  bl      _objc_msgSend                            ; [arg1 removeMacroArray]
  100167cfc  mov     x29, x29
  100167d00  bl      _objc_retainAutoreleasedReturnValue
  100167d04  mov     x20, x0
  100167d08  mov     x1, x24
  100167d0c  bl      _objc_msgSend                            ; [[arg1 removeMacroArray] count]
  100167d10  mov     x22, x0
  100167d14  mov     x0, x20
  100167d18  bl      _objc_release
  100167d1c  cmp     x27, x22
  100167d20  b.hs    loc_100167d88                            ; if (x27 >=u [[arg1 removeMacroArray] count])
  100167d24  mov     x0, x19
  100167d28  mov     x1, x28
  100167d2c  bl      _objc_msgSend                            ; [arg1 removeMacroArray]
  100167d30  mov     x29, x29
  100167d34  bl      _objc_retainAutoreleasedReturnValue
  100167d38  mov     x20, x0
  100167d3c  mov     x1, x25
  100167d40  mov     x2, x27
  100167d44  bl      _objc_msgSend                            ; [[arg1 removeMacroArray] int32AtIndex:x2]
  100167d48  sxtw    x2, w0
  100167d4c  ldr     x0, [sp, #8]
  100167d50  mov     x1, x26
  100167d54  bl      _objc_msgSend                            ; [arg3 objectAtIndex:[[arg1 removeMacroArray] int32AtIndex:x2]]
  100167d58  mov     x29, x29
  100167d5c  bl      _objc_retainAutoreleasedReturnValue
  100167d60  mov     x22, x0
  100167d64  mov     x0, x23
  100167d68  mov     x1, x21
  100167d6c  mov     x2, x22
  100167d70  bl      _objc_msgSend                            ; [[TAGExpandedRule builder] addRemoveMacro:[arg3 objectAtIndex:[[arg1 removeMacroArray] int32AtIndex:x2]]]
  100167d74  b       loc_100167cdc
loc_100167d78:
  100167d78  mov     x21, x0
  100167d7c  mov     x0, x22
  100167d80  bl      _objc_release
  100167d84  b       loc_100167e44
loc_100167d88:
  100167d88  adrp    x8, #0x100417000
  100167d8c  nop
  100167d90  ldr     x1, [x8, #0x310]
  100167d94  mov     x0, x23
  100167d98  bl      _objc_msgSend                            ; [[TAGExpandedRule builder] build]
  100167d9c  mov     x29, x29
  100167da0  bl      _objc_retainAutoreleasedReturnValue
  100167da4  mov     x20, x0
  100167da8  mov     x0, x23
  100167dac  bl      _objc_release
  100167db0  ldr     x0, [sp, #0x18]
  100167db4  bl      _objc_release
  100167db8  ldr     x0, [sp, #8]
  100167dbc  bl      _objc_release
  100167dc0  ldr     x0, [sp, #0x10]
  100167dc4  bl      _objc_release
  100167dc8  mov     x0, x19
  100167dcc  bl      _objc_release
  100167dd0  mov     x0, x20
  100167dd4  sub     sp, x29, #0x50
  100167dd8  ldp     x28, x27, [sp], #0x10
  100167ddc  ldp     x26, x25, [sp], #0x10
  100167de0  ldp     x24, x23, [sp], #0x10
  100167de4  ldp     x22, x21, [sp], #0x10
  100167de8  ldp     x20, x19, [sp], #0x10
  100167dec  ldp     x29, x30, [sp], #0x10
  100167df0  b       _objc_autoreleaseReturnValue
  100167df4  mov     x21, x0
  100167df8  b       loc_100167e5c
  100167dfc  b       loc_100167e40
  100167e00  b       loc_100167e50
  100167e04  b       loc_100167e40
  100167e08  b       loc_100167e40
  100167e0c  b       loc_100167e50
  100167e10  b       loc_100167e40
  100167e14  b       loc_100167e40
  100167e18  b       loc_100167e50
  100167e1c  b       loc_100167e40
  100167e20  b       loc_100167e40
  100167e24  b       loc_100167e50
  100167e28  b       loc_100167e40
  100167e2c  b       loc_100167e40
  100167e30  b       loc_100167e50
  100167e34  b       loc_100167e40
  100167e38  b       loc_100167e40
  100167e3c  b       loc_100167e50
loc_100167e40:
  100167e40  mov     x21, x0
loc_100167e44:
  100167e44  mov     x0, x20
  100167e48  bl      _objc_release
  100167e4c  b       loc_100167e54
loc_100167e50:
  100167e50  mov     x21, x0
loc_100167e54:
  100167e54  mov     x0, x23
  100167e58  bl      _objc_release
loc_100167e5c:
  100167e5c  ldr     x0, [sp, #0x18]
  100167e60  bl      _objc_release
  100167e64  ldr     x0, [sp, #8]
  100167e68  bl      _objc_release
  100167e6c  ldr     x0, [sp, #0x10]
  100167e70  bl      _objc_release
  100167e74  mov     x0, x19
  100167e78  bl      _objc_release
  100167e7c  mov     x0, x21
  100167e80  bl      __Unwind_Resume                          ; Unwind_Resume()
