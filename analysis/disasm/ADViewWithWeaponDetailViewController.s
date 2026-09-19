// unit ADViewWithWeaponDetailViewController — 33 functions
//   0x10003680c     300  -[ADViewWithWeaponDetailViewController initWithNibName:bundle:]
//   0x100036938     896  -[ADViewWithWeaponDetailViewController initDetailScroller]
//   0x100036cb8    1856  -[ADViewWithWeaponDetailViewController loadArmoryDetailAtIndex:]
//   0x1000373f8      32  -[ADViewWithWeaponDetailViewController scrollViewDidEndDragging:willDecelerate:]
//   0x100037418      32  -[ADViewWithWeaponDetailViewController scrollViewDidEndDecelerating:]
//   0x100037438      32  -[ADViewWithWeaponDetailViewController scrollViewDidEndScrollingAnimation:]
//   0x100037458     256  -[ADViewWithWeaponDetailViewController loadDetailsAroundView]
//   0x100037558    1076  -[ADViewWithWeaponDetailViewController nextWeaponButtonPressed:]
//   0x10003798c    1016  -[ADViewWithWeaponDetailViewController previousWeaponButtonPressed:]
//   0x100037d84     552  -[ADViewWithWeaponDetailViewController checkArrowsAfterClick]
//   0x100037fac     468  -[ADViewWithWeaponDetailViewController sendDetailViewToBack]
//   0x100038180     424  -[ADViewWithWeaponDetailViewController openDescriptionForItemWithName:withButton:]
//   0x100038328    1280  -[ADViewWithWeaponDetailViewController openDescriptionForItemAtIndex:withButton:]
//   0x100038828       4  -[ADViewWithWeaponDetailViewController showNotEnoughMoneyAlert]
//   0x10003882c     104  -[ADViewWithWeaponDetailViewController backButtonPressed]
//   0x100038894     112  -[ADViewWithWeaponDetailViewController viewDidLoad]
//   0x100038904      60  -[ADViewWithWeaponDetailViewController didReceiveMemoryWarning]
//   0x100038940     608  -[ADViewWithWeaponDetailViewController dealloc]
//   0x100038ba0      16  -[ADViewWithWeaponDetailViewController detailView]
//   0x100038bb0      56  -[ADViewWithWeaponDetailViewController setDetailView:]
//   0x100038be8      16  -[ADViewWithWeaponDetailViewController detailScroller]
//   0x100038bf8      56  -[ADViewWithWeaponDetailViewController setDetailScroller:]
//   0x100038c30      16  -[ADViewWithWeaponDetailViewController rightArrow]
//   0x100038c40      56  -[ADViewWithWeaponDetailViewController setRightArrow:]
//   0x100038c78      16  -[ADViewWithWeaponDetailViewController leftArrow]
//   0x100038c88      56  -[ADViewWithWeaponDetailViewController setLeftArrow:]
//   0x100038cc0      16  -[ADViewWithWeaponDetailViewController itemNames]
//   0x100038cd0      56  -[ADViewWithWeaponDetailViewController setItemNames:]
//   0x100038d08      16  -[ADViewWithWeaponDetailViewController hideEquipButtonsOnDetailView]
//   0x100038d18      16  -[ADViewWithWeaponDetailViewController setHideEquipButtonsOnDetailView:]
//   0x100038d28      16  -[ADViewWithWeaponDetailViewController currentWeaponBrowseIndex]
//   0x100038d38      16  -[ADViewWithWeaponDetailViewController setCurrentWeaponBrowseIndex:]
//   0x100038d48     144  -[ADViewWithWeaponDetailViewController .cxx_destruct]

; ======================================================================
; -[ADViewWithWeaponDetailViewController initWithNibName:bundle:]
; address 0x10003680c  size 300  kind objc
; ======================================================================
  10003680c  stp     x24, x23, [sp, #-0x40]!
  100036810  stp     x22, x21, [sp, #0x10]
  100036814  stp     x20, x19, [sp, #0x20]
  100036818  stp     x29, x30, [sp, #0x30]
  10003681c  add     x29, sp, #0x30
  100036820  sub     sp, sp, #0x10
  100036824  mov     x20, x3
  100036828  mov     x21, x0
  10003682c  mov     x0, x2
  100036830  bl      _objc_retain
  100036834  mov     x19, x0
  100036838  mov     x0, x20
  10003683c  bl      _objc_retain
  100036840  mov     x20, x0
  100036844  str     x21, [sp]
  100036848  adrp    x8, #0x10041e000
  10003684c  ldr     x8, [x8, #0xc98]
  100036850  str     x8, [sp, #8]
  100036854  adrp    x8, #0x100416000
  100036858  nop
  10003685c  ldr     x1, [x8, #0xb40]
  100036860  mov     x22, #0
  100036864  mov     x0, sp
  100036868  mov     x2, x19
  10003686c  mov     x3, x20
  100036870  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  100036874  mov     x21, x0
  100036878  cbz     x21, loc_1000368d0                       ; if (self == 0)
  10003687c  mov     x22, x21
  100036880  adrp    x8, #0x10041d000
  100036884  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100036888  adrp    x8, #0x100416000
  10003688c  nop
  100036890  ldr     x1, [x8, #0xac8]
  100036894  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100036898  mov     x22, x21
  10003689c  adrp    x8, #0x100416000
  1000368a0  nop
  1000368a4  ldr     x1, [x8, #0xab8]
  1000368a8  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000368ac  mov     x23, x0
  1000368b0  adrp    x8, #0x100418000
  1000368b4  nop
  1000368b8  ldr     x1, [x8, #0x460]
  1000368bc  mov     x0, x21
  1000368c0  mov     x2, x23
  1000368c4  bl      _objc_msgSend                            ; [self setItemNames:[[NSMutableArray alloc] init]]
  1000368c8  mov     x0, x23
  1000368cc  bl      _objc_release
loc_1000368d0:
  1000368d0  mov     x0, x20
  1000368d4  bl      _objc_release
  1000368d8  mov     x0, x19
  1000368dc  bl      _objc_release
  1000368e0  mov     x0, x21
  1000368e4  sub     sp, x29, #0x30
  1000368e8  ldp     x29, x30, [sp, #0x30]
  1000368ec  ldp     x20, x19, [sp, #0x20]
  1000368f0  ldp     x22, x21, [sp, #0x10]
  1000368f4  ldp     x24, x23, [sp], #0x40
  1000368f8  ret
  1000368fc  mov     x23, x0
  100036900  b       loc_100036918
  100036904  mov     x1, x23
  100036908  mov     x23, x0
  10003690c  mov     x0, x1
  100036910  bl      _objc_release
  100036914  mov     x22, x21
loc_100036918:
  100036918  mov     x0, x20
  10003691c  bl      _objc_release
  100036920  mov     x0, x19
  100036924  bl      _objc_release
  100036928  mov     x0, x22
  10003692c  bl      _objc_release
  100036930  mov     x0, x23
  100036934  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADViewWithWeaponDetailViewController initDetailScroller]
; address 0x100036938  size 896  kind objc
; ======================================================================
  100036938  stp     d9, d8, [sp, #-0x70]!
  10003693c  stp     x28, x27, [sp, #0x10]
  100036940  stp     x26, x25, [sp, #0x20]
  100036944  stp     x24, x23, [sp, #0x30]
  100036948  stp     x22, x21, [sp, #0x40]
  10003694c  stp     x20, x19, [sp, #0x50]
  100036950  stp     x29, x30, [sp, #0x60]
  100036954  add     x29, sp, #0x60
  100036958  sub     sp, sp, #0x10
  10003695c  mov     x19, x0
  100036960  adrp    x8, #0x10041d000
  100036964  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100036968  adrp    x8, #0x100416000
  10003696c  nop
  100036970  ldr     x1, [x8, #0xac8]
  100036974  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100036978  mov     x24, x0
  10003697c  adrp    x8, #0x10041d000
  100036980  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100036984  adrp    x8, #0x100416000
  100036988  nop
  10003698c  ldr     x22, [x8, #0xec8]
  100036990  mov     x1, x22
  100036994  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100036998  mov     x29, x29
  10003699c  bl      _objc_retainAutoreleasedReturnValue
  1000369a0  mov     x23, x0
  1000369a4  adrp    x8, #0x100417000
  1000369a8  nop
  1000369ac  ldr     x20, [x8, #0xd0]
  1000369b0  mov     x1, x20
  1000369b4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weapons]
  1000369b8  mov     x29, x29
  1000369bc  bl      _objc_retainAutoreleasedReturnValue
  1000369c0  mov     x25, x0
  1000369c4  adrp    x8, #0x100416000
  1000369c8  nop
  1000369cc  ldr     x21, [x8, #0xe30]
  1000369d0  mov     x1, x21
  1000369d4  bl      _objc_msgSend                            ; [[[ADInventory sharedInventory] weapons] count]
  1000369d8  mov     x2, x0
  1000369dc  adrp    x8, #0x100417000
  1000369e0  nop
  1000369e4  ldr     x1, [x8, #0x288]
  1000369e8  mov     x0, x24
  1000369ec  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithCapacity:[[[ADInventory sharedInventory] weapons] count]]
  1000369f0  adrp    x8, #0x10041f000
  1000369f4  ldrsw   x28, [x8, #0x854]                        ; ivar offset ADViewWithWeaponDetailViewController.armoryDetails (+0x140)
  1000369f8  str     x19, [sp, #8]
  1000369fc  ldr     x8, [x19, x28]                           ; x8 = self->armoryDetails
  100036a00  str     x0, [x19, x28]                           ; self->armoryDetails = [[NSMutableArray alloc] initWithCapacity:[[[ADInventory sharedInventory] weapons] count]]
  100036a04  mov     x0, x8
  100036a08  bl      _objc_release
  100036a0c  mov     x0, x25
  100036a10  bl      _objc_release
  100036a14  mov     x0, x23
  100036a18  bl      _objc_release
  100036a1c  adrp    x8, #0x100418000
  100036a20  nop
  100036a24  ldr     x23, [x8, #0x468]
  100036a28  adrp    x8, #0x100416000
  100036a2c  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  100036a30  ldr     x24, [x8]
  100036a34  mov     x19, #-1
  100036a38  b       loc_100036a44
loc_100036a3c:
  100036a3c  mov     x0, x25
  100036a40  bl      _objc_release
loc_100036a44:
  100036a44  adrp    x8, #0x10041d000
  100036a48  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100036a4c  mov     x1, x22
  100036a50  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100036a54  mov     x29, x29
  100036a58  bl      _objc_retainAutoreleasedReturnValue
  100036a5c  mov     x25, x0
  100036a60  mov     x1, x20
  100036a64  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weapons]
  100036a68  mov     x29, x29
  100036a6c  bl      _objc_retainAutoreleasedReturnValue
  100036a70  mov     x26, x0
  100036a74  mov     x1, x21
  100036a78  bl      _objc_msgSend                            ; [[[ADInventory sharedInventory] weapons] count]
  100036a7c  mov     x27, x0
  100036a80  mov     x0, x26
  100036a84  bl      _objc_release
  100036a88  mov     x0, x25
  100036a8c  bl      _objc_release
  100036a90  add     x19, x19, #1
  100036a94  cmp     x19, x27
  100036a98  b.hs    loc_100036adc                            ; if ((x19 + 1) >=u [[[ADInventory sharedInventory] weapons] count])
  100036a9c  ldr     x8, [sp, #8]
  100036aa0  ldr     x26, [x8, x28]                           ; x26 = self->armoryDetails
  100036aa4  adrp    x8, #0x10041e000
  100036aa8  ldr     x0, [x8, #0x140]                         ; class NSNull
  100036aac  mov     x1, x23
  100036ab0  bl      _objc_msgSend                            ; [NSNull null]
  100036ab4  mov     x29, x29
  100036ab8  bl      _objc_retainAutoreleasedReturnValue
  100036abc  mov     x25, x0
  100036ac0  mov     x0, x26
  100036ac4  mov     x1, x24
  100036ac8  mov     x2, x25
  100036acc  bl      _objc_msgSend                            ; [self->armoryDetails addObject:[NSNull null]]
  100036ad0  b       loc_100036a3c
  100036ad4  mov     x19, x0
  100036ad8  b       loc_100036c3c
loc_100036adc:
  100036adc  adrp    x8, #0x100418000
  100036ae0  nop
  100036ae4  ldr     x24, [x8, #0x470]
  100036ae8  ldr     x0, [sp, #8]
  100036aec  mov     x1, x24
  100036af0  bl      _objc_msgSend                            ; [self detailScroller]
  100036af4  mov     x29, x29
  100036af8  bl      _objc_retainAutoreleasedReturnValue
  100036afc  mov     x23, x0
  100036b00  adrp    x8, #0x10041d000
  100036b04  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100036b08  mov     x1, x22
  100036b0c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100036b10  mov     x29, x29
  100036b14  bl      _objc_retainAutoreleasedReturnValue
  100036b18  mov     x22, x0
  100036b1c  mov     x1, x20
  100036b20  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weapons]
  100036b24  mov     x29, x29
  100036b28  bl      _objc_retainAutoreleasedReturnValue
  100036b2c  mov     x20, x0
  100036b30  mov     x1, x21
  100036b34  bl      _objc_msgSend                            ; [[[ADInventory sharedInventory] weapons] count]
  100036b38  mov     x25, x0
  100036b3c  ldr     x0, [sp, #8]
  100036b40  mov     x1, x24
  100036b44  bl      _objc_msgSend                            ; [self detailScroller]
  100036b48  mov     x29, x29
  100036b4c  bl      _objc_retainAutoreleasedReturnValue
  100036b50  mov     x21, x0
  100036b54  adrp    x8, #0x100416000
  100036b58  nop
  100036b5c  ldr     x27, [x8, #0xf38]
  100036b60  mov     x1, x27
  100036b64  bl      _objc_msgSend                            ; [[self detailScroller] frame]
  100036b68  mov     v8.16b, v2.16b
  100036b6c  ldr     x0, [sp, #8]
  100036b70  mov     x1, x24
  100036b74  bl      _objc_msgSend                            ; [self detailScroller]
  100036b78  mov     x29, x29
  100036b7c  bl      _objc_retainAutoreleasedReturnValue
  100036b80  mov     x26, x0
  100036b84  mov     x1, x27
  100036b88  bl      _objc_msgSend                            ; [[self detailScroller] frame]
  100036b8c  ucvtf   d0, x25
  100036b90  fmul    d0, d0, d8
  100036b94  adrp    x8, #0x100417000
  100036b98  nop
  100036b9c  ldr     x1, [x8, #0x690]
  100036ba0  mov     x0, x23
  100036ba4  mov     v1.16b, v3.16b
  100036ba8  bl      _objc_msgSend                            ; [[self detailScroller] setContentSize:{((float)[[[ADInventory sharedInventory] weapons] count] * [[self detailScroller] frame].2), [[self detailScroller] frame].3}]
  100036bac  mov     x0, x26
  100036bb0  bl      _objc_release
  100036bb4  mov     x0, x21
  100036bb8  bl      _objc_release
  100036bbc  mov     x0, x20
  100036bc0  bl      _objc_release
  100036bc4  mov     x0, x22
  100036bc8  bl      _objc_release
  100036bcc  mov     x0, x23
  100036bd0  bl      _objc_release
  100036bd4  ldr     x0, [sp, #8]
  100036bd8  mov     x1, x24
  100036bdc  bl      _objc_msgSend                            ; [self detailScroller]
  100036be0  mov     x29, x29
  100036be4  bl      _objc_retainAutoreleasedReturnValue
  100036be8  mov     x20, x0
  100036bec  adrp    x8, #0x100417000
  100036bf0  nop
  100036bf4  ldr     x1, [x8, #0x698]
  100036bf8  mov     w2, #1
  100036bfc  bl      _objc_msgSend                            ; [[self detailScroller] setPagingEnabled:1]
  100036c00  mov     x0, x20
  100036c04  sub     sp, x29, #0x60
  100036c08  ldp     x29, x30, [sp, #0x60]
  100036c0c  ldp     x20, x19, [sp, #0x50]
  100036c10  ldp     x22, x21, [sp, #0x40]
  100036c14  ldp     x24, x23, [sp, #0x30]
  100036c18  ldp     x26, x25, [sp, #0x20]
  100036c1c  ldp     x28, x27, [sp, #0x10]
  100036c20  ldp     d9, d8, [sp], #0x70
  100036c24  b       _objc_release
  100036c28  mov     x19, x0
  100036c2c  b       loc_100036c3c
  100036c30  mov     x19, x0
  100036c34  mov     x0, x26
  100036c38  bl      _objc_release
loc_100036c3c:
  100036c3c  mov     x0, x25
loc_100036c40:
  100036c40  bl      _objc_release
  100036c44  mov     x0, x19
  100036c48  bl      __Unwind_Resume                          ; Unwind_Resume()
  100036c4c  mov     x19, x0
  100036c50  mov     x0, x25
  100036c54  b       loc_100036c88
  100036c58  mov     x19, x0
  100036c5c  b       loc_100036c7c
  100036c60  mov     x19, x0
  100036c64  b       loc_100036c74
  100036c68  mov     x19, x0
  100036c6c  mov     x0, x26
  100036c70  bl      _objc_release
loc_100036c74:
  100036c74  mov     x0, x21
  100036c78  bl      _objc_release
loc_100036c7c:
  100036c7c  mov     x0, x20
  100036c80  bl      _objc_release
loc_100036c84:
  100036c84  mov     x0, x22
loc_100036c88:
  100036c88  bl      _objc_release
loc_100036c8c:
  100036c8c  mov     x0, x23
  100036c90  b       loc_100036c40
  100036c94  mov     x19, x0
  100036c98  b       loc_100036c8c
  100036c9c  mov     x19, x0
  100036ca0  b       loc_100036c8c
  100036ca4  mov     x19, x0
  100036ca8  b       loc_100036c84
  100036cac  mov     x19, x0
  100036cb0  mov     x0, x20
  100036cb4  b       loc_100036c40

; ======================================================================
; -[ADViewWithWeaponDetailViewController loadArmoryDetailAtIndex:]
; address 0x100036cb8  size 1856  kind objc
; ======================================================================
  100036cb8  stp     d9, d8, [sp, #-0x70]!
  100036cbc  stp     x28, x27, [sp, #0x10]
  100036cc0  stp     x26, x25, [sp, #0x20]
  100036cc4  stp     x24, x23, [sp, #0x30]
  100036cc8  stp     x22, x21, [sp, #0x40]
  100036ccc  stp     x20, x19, [sp, #0x50]
  100036cd0  stp     x29, x30, [sp, #0x60]
  100036cd4  add     x29, sp, #0x60
  100036cd8  sub     sp, sp, #0x10
  100036cdc  mov     x21, x2
  100036ce0  mov     x19, x0
  100036ce4  tbnz    w21, 0x1f, loc_100036ef4                 ; if (arg1 < 0)
  100036ce8  adrp    x8, #0x10041d000
  100036cec  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100036cf0  adrp    x8, #0x100416000
  100036cf4  nop
  100036cf8  ldr     x1, [x8, #0xec8]
  100036cfc  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100036d00  mov     x29, x29
  100036d04  bl      _objc_retainAutoreleasedReturnValue
  100036d08  mov     x20, x0
  100036d0c  adrp    x8, #0x100417000
  100036d10  nop
  100036d14  ldr     x1, [x8, #0xd0]
  100036d18  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weapons]
  100036d1c  mov     x29, x29
  100036d20  bl      _objc_retainAutoreleasedReturnValue
  100036d24  mov     x23, x0
  100036d28  adrp    x8, #0x100416000
  100036d2c  nop
  100036d30  ldr     x1, [x8, #0xe30]
  100036d34  bl      _objc_msgSend                            ; [[[ADInventory sharedInventory] weapons] count]
  100036d38  mov     x24, x0
  100036d3c  sxtw    x22, w21
  100036d40  mov     x0, x23
  100036d44  bl      _objc_release
  100036d48  mov     x0, x20
  100036d4c  bl      _objc_release
  100036d50  cmp     x22, x24
  100036d54  b.hs    loc_100036ef4                            ; if (arg1 >=u [[[ADInventory sharedInventory] weapons] count])
  100036d58  adrp    x8, #0x10041f000
  100036d5c  ldrsw   x28, [x8, #0x854]                        ; ivar offset ADViewWithWeaponDetailViewController.armoryDetails (+0x140)
  100036d60  ldr     x0, [x19, x28]                           ; x0 = self->armoryDetails
  100036d64  adrp    x8, #0x100416000
  100036d68  nop
  100036d6c  ldr     x20, [x8, #0xc30]
  100036d70  mov     x1, x20
  100036d74  mov     x2, x22
  100036d78  bl      _objc_msgSend                            ; [self->armoryDetails objectAtIndex:arg1]
  100036d7c  mov     x29, x29
  100036d80  bl      _objc_retainAutoreleasedReturnValue
  100036d84  mov     x23, x0
  100036d88  adrp    x27, #0x10041e000
  100036d8c  ldr     x0, [x27, #0x148]                        ; class ADArmoryWeaponDescriptionViewController
  100036d90  adrp    x8, #0x100417000
  100036d94  nop
  100036d98  ldr     x1, [x8, #0x2e0]
  100036d9c  bl      _objc_msgSend                            ; [ADArmoryWeaponDescriptionViewController class]
  100036da0  mov     x2, x0
  100036da4  adrp    x8, #0x100417000
  100036da8  nop
  100036dac  ldr     x1, [x8, #0x3b8]
  100036db0  mov     x0, x23
  100036db4  bl      _objc_msgSend                            ; [[self->armoryDetails objectAtIndex:arg1] isKindOfClass:[ADArmoryWeaponDescriptionViewController class]]
  100036db8  mov     x24, x0
  100036dbc  mov     x0, x23
  100036dc0  bl      _objc_release
  100036dc4  cbz     w24, loc_100036f18                       ; if ([[self->armoryDetails objectAtIndex:arg1] isKindOfClass:[ADArmoryWeaponDescriptionViewController class]] == 0)
  100036dc8  ldr     x0, [x19, x28]                           ; x0 = self->armoryDetails
  100036dcc  mov     x1, x20
  100036dd0  mov     x2, x22
  100036dd4  bl      _objc_msgSend                            ; [self->armoryDetails objectAtIndex:arg1]
  100036dd8  mov     x29, x29
  100036ddc  bl      _objc_retainAutoreleasedReturnValue
  100036de0  mov     x21, x0
  100036de4  adrp    x8, #0x100418000
  100036de8  nop
  100036dec  ldr     x1, [x8, #0x478]
  100036df0  mov     x0, x19
  100036df4  bl      _objc_msgSend                            ; [self hideEquipButtonsOnDetailView]
  100036df8  mov     x2, x0
  100036dfc  adrp    x8, #0x100418000
  100036e00  nop
  100036e04  ldr     x1, [x8, #0x480]
  100036e08  mov     x0, x21
  100036e0c  bl      _objc_msgSend                            ; [[self->armoryDetails objectAtIndex:arg1] setHideEquipButtons:[self hideEquipButtonsOnDetailView]]
  100036e10  mov     x0, x21
  100036e14  bl      _objc_release
  100036e18  ldr     x0, [x19, x28]                           ; x0 = self->armoryDetails
  100036e1c  mov     x1, x20
  100036e20  mov     x2, x22
  100036e24  bl      _objc_msgSend                            ; [self->armoryDetails objectAtIndex:arg1]
  100036e28  mov     x29, x29
  100036e2c  bl      _objc_retainAutoreleasedReturnValue
  100036e30  mov     x21, x0
  100036e34  adrp    x8, #0x100418000
  100036e38  nop
  100036e3c  ldr     x1, [x8, #0x488]
  100036e40  bl      _objc_msgSend                            ; [[self->armoryDetails objectAtIndex:arg1] initForCurrentLevel]
  100036e44  mov     x0, x21
  100036e48  bl      _objc_release
  100036e4c  ldr     x0, [x19, x28]                           ; x0 = self->armoryDetails
  100036e50  mov     x1, x20
  100036e54  mov     x2, x22
  100036e58  bl      _objc_msgSend                            ; [self->armoryDetails objectAtIndex:arg1]
  100036e5c  mov     x29, x29
  100036e60  bl      _objc_retainAutoreleasedReturnValue
  100036e64  mov     x21, x0
  100036e68  adrp    x8, #0x100416000
  100036e6c  nop
  100036e70  ldr     x1, [x8, #0xfa0]
  100036e74  bl      _objc_msgSend                            ; [[self->armoryDetails objectAtIndex:arg1] armoryViewController]
  100036e78  mov     x29, x29
  100036e7c  bl      _objc_retainAutoreleasedReturnValue
  100036e80  mov     x23, x0
  100036e84  adrp    x8, #0x100417000
  100036e88  nop
  100036e8c  ldr     x1, [x8, #0x2a8]
  100036e90  bl      _objc_msgSend                            ; [[[self->armoryDetails objectAtIndex:arg1] armoryViewController] statusBarViewController]
  100036e94  mov     x29, x29
  100036e98  bl      _objc_retainAutoreleasedReturnValue
  100036e9c  mov     x24, x0
  100036ea0  ldr     x0, [x19, x28]                           ; x0 = self->armoryDetails
  100036ea4  mov     x1, x20
  100036ea8  mov     x2, x22
  100036eac  bl      _objc_msgSend                            ; [self->armoryDetails objectAtIndex:arg1]
  100036eb0  mov     x29, x29
  100036eb4  bl      _objc_retainAutoreleasedReturnValue
  100036eb8  mov     x20, x0
  100036ebc  adrp    x8, #0x100418000
  100036ec0  nop
  100036ec4  ldr     x1, [x8, #0x490]
  100036ec8  mov     x0, x24
  100036ecc  mov     x2, x20
  100036ed0  bl      _objc_msgSend                            ; [[[[self->armoryDetails objectAtIndex:arg1] armoryViewController] statusBarViewController] setBackButtonDelegate:[self->armoryDetails objectAtIndex:arg1]]
  100036ed4  mov     x0, x20
  100036ed8  bl      _objc_release
  100036edc  mov     x0, x24
  100036ee0  bl      _objc_release
  100036ee4  mov     x0, x23
  100036ee8  bl      _objc_release
  100036eec  mov     x0, x21
  100036ef0  b       loc_1000372b4
loc_100036ef4:
  100036ef4  sub     sp, x29, #0x60
  100036ef8  ldp     x29, x30, [sp, #0x60]
  100036efc  ldp     x20, x19, [sp, #0x50]
  100036f00  ldp     x22, x21, [sp, #0x40]
  100036f04  ldp     x24, x23, [sp, #0x30]
  100036f08  ldp     x26, x25, [sp, #0x20]
  100036f0c  ldp     x28, x27, [sp, #0x10]
  100036f10  ldp     d9, d8, [sp], #0x70
  100036f14  ret
loc_100036f18:
  100036f18  adrp    x8, #0x100418000
  100036f1c  nop
  100036f20  ldr     x1, [x8, #0x498]
  100036f24  mov     x0, x19
  100036f28  bl      _objc_msgSend                            ; [self itemNames]
  100036f2c  mov     x29, x29
  100036f30  bl      _objc_retainAutoreleasedReturnValue
  100036f34  mov     x23, x0
  100036f38  mov     x1, x20
  100036f3c  mov     x2, x22
  100036f40  bl      _objc_msgSend                            ; [[self itemNames] objectAtIndex:arg1]
  100036f44  mov     x29, x29
  100036f48  bl      _objc_retainAutoreleasedReturnValue
  100036f4c  str     x0, [sp, #8]
  100036f50  mov     x0, x23
  100036f54  bl      _objc_release
  100036f58  adrp    x20, #0x10041d000
  100036f5c  ldr     x0, [x20, #0xf88]                        ; class ADWeaponManager
  100036f60  adrp    x8, #0x100417000
  100036f64  nop
  100036f68  ldr     x24, [x8, #0xa0]
  100036f6c  mov     x23, #0
  100036f70  mov     x1, x24
  100036f74  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100036f78  mov     x29, x29
  100036f7c  bl      _objc_retainAutoreleasedReturnValue
  100036f80  mov     x23, x0
  100036f84  adrp    x8, #0x100418000
  100036f88  nop
  100036f8c  ldr     x25, [x8, #0x4a0]
  100036f90  mov     x1, x25
  100036f94  ldr     x2, [sp, #8]
  100036f98  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:[[self itemNames] objectAtIndex:arg1]]
  100036f9c  mov     x29, x29
  100036fa0  bl      _objc_retainAutoreleasedReturnValue
  100036fa4  mov     x26, x0
  100036fa8  bl      _objc_release
  100036fac  mov     x0, x23
  100036fb0  bl      _objc_release
  100036fb4  cbz     x26, loc_10003703c                       ; if ([[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:[[self itemNames] objectAtIndex:arg1]] == 0)
  100036fb8  adrp    x8, #0x10041e000
  100036fbc  ldr     x0, [x8, #0x150]                         ; class ADArmoryItemDescriptionViewController
  100036fc0  adrp    x8, #0x100416000
  100036fc4  nop
  100036fc8  ldr     x1, [x8, #0xac8]
  100036fcc  mov     x23, #0
  100036fd0  bl      _objc_msgSend                            ; [ADArmoryItemDescriptionViewController alloc]
  100036fd4  mov     x26, x0
  100036fd8  ldr     x0, [x20, #0xf88]                        ; class ADWeaponManager
  100036fdc  mov     x23, #0
  100036fe0  mov     x1, x24
  100036fe4  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100036fe8  mov     x29, x29
  100036fec  bl      _objc_retainAutoreleasedReturnValue
  100036ff0  mov     x24, x0
  100036ff4  mov     x1, x25
  100036ff8  ldr     x2, [sp, #8]
  100036ffc  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:[[self itemNames] objectAtIndex:arg1]]
  100037000  mov     x29, x29
  100037004  bl      _objc_retainAutoreleasedReturnValue
  100037008  mov     x25, x0
  10003700c  adrp    x8, #0x100418000
  100037010  nop
  100037014  ldr     x1, [x8, #0x4a8]
  100037018  mov     x0, x26
  10003701c  mov     x2, x25
  100037020  bl      _objc_msgSend                            ; [[ADArmoryItemDescriptionViewController alloc] initWithWeaponDictionary:[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:[[self itemNames] objectAtIndex:arg1]]]
  100037024  mov     x23, x0
  100037028  mov     x0, x25
  10003702c  bl      _objc_release
  100037030  mov     x0, x24
  100037034  bl      _objc_release
  100037038  b       loc_1000370ec
loc_10003703c:
  10003703c  ldr     x0, [x27, #0x148]                        ; class ADArmoryWeaponDescriptionViewController
  100037040  adrp    x8, #0x100416000
  100037044  nop
  100037048  ldr     x1, [x8, #0xac8]
  10003704c  mov     x23, #0
  100037050  bl      _objc_msgSend                            ; [ADArmoryWeaponDescriptionViewController alloc]
  100037054  mov     x25, x0
  100037058  ldr     x0, [x20, #0xf88]                        ; class ADWeaponManager
  10003705c  mov     x23, #0
  100037060  mov     x1, x24
  100037064  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100037068  mov     x29, x29
  10003706c  bl      _objc_retainAutoreleasedReturnValue
  100037070  mov     x24, x0
  100037074  adrp    x8, #0x100417000
  100037078  nop
  10003707c  ldr     x1, [x8, #0xa48]
  100037080  ldr     x2, [sp, #8]
  100037084  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:[[self itemNames] objectAtIndex:arg1]]
  100037088  mov     x29, x29
  10003708c  bl      _objc_retainAutoreleasedReturnValue
  100037090  mov     x26, x0
  100037094  adrp    x8, #0x100418000
  100037098  nop
  10003709c  ldr     x1, [x8, #0x4a8]
  1000370a0  mov     x0, x25
  1000370a4  mov     x2, x26
  1000370a8  bl      _objc_msgSend                            ; [[ADArmoryWeaponDescriptionViewController alloc] initWithWeaponDictionary:[[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:[[self itemNames] objectAtIndex:arg1]]]
  1000370ac  mov     x23, x0
  1000370b0  mov     x0, x26
  1000370b4  bl      _objc_release
  1000370b8  mov     x0, x24
  1000370bc  bl      _objc_release
  1000370c0  adrp    x8, #0x100418000
  1000370c4  nop
  1000370c8  ldr     x1, [x8, #0x478]
  1000370cc  mov     x0, x19
  1000370d0  bl      _objc_msgSend                            ; [self hideEquipButtonsOnDetailView]
  1000370d4  mov     x2, x0
  1000370d8  adrp    x8, #0x100418000
  1000370dc  nop
  1000370e0  ldr     x1, [x8, #0x480]
  1000370e4  mov     x0, x23
  1000370e8  bl      _objc_msgSend                            ; [[[ADArmoryWeaponDescriptionViewController alloc] initWithWeaponDictionary:[[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:[[self itemNames] objectAtIndex:arg1]]] setHideEquipButtons:[self hideEquipButtonsOnDetailView]]
loc_1000370ec:
  1000370ec  adrp    x8, #0x100418000
  1000370f0  nop
  1000370f4  ldr     x1, [x8, #0x4b0]
  1000370f8  mov     x0, x23
  1000370fc  mov     x2, x19
  100037100  bl      _objc_msgSend                            ; [x0 setArmoryViewController:self]
  100037104  adrp    x8, #0x100416000
  100037108  nop
  10003710c  ldr     x1, [x8, #0xfa0]
  100037110  mov     x0, x23
  100037114  bl      _objc_msgSend                            ; [x0 armoryViewController]
  100037118  mov     x29, x29
  10003711c  bl      _objc_retainAutoreleasedReturnValue
  100037120  mov     x24, x0
  100037124  adrp    x8, #0x100417000
  100037128  nop
  10003712c  ldr     x1, [x8, #0x2a8]
  100037130  bl      _objc_msgSend                            ; [[x0 armoryViewController] statusBarViewController]
  100037134  mov     x29, x29
  100037138  bl      _objc_retainAutoreleasedReturnValue
  10003713c  mov     x25, x0
  100037140  adrp    x8, #0x100418000
  100037144  nop
  100037148  ldr     x1, [x8, #0x490]
  10003714c  mov     x2, x23
  100037150  bl      _objc_msgSend                            ; [[[x0 armoryViewController] statusBarViewController] setBackButtonDelegate:x2]
  100037154  mov     x0, x25
  100037158  bl      _objc_release
  10003715c  mov     x0, x24
  100037160  bl      _objc_release
  100037164  adrp    x8, #0x100418000
  100037168  nop
  10003716c  ldr     x24, [x8, #0x470]
  100037170  mov     x0, x19
  100037174  mov     x1, x24
  100037178  bl      _objc_msgSend                            ; [self detailScroller]
  10003717c  mov     x29, x29
  100037180  bl      _objc_retainAutoreleasedReturnValue
  100037184  mov     x26, x0
  100037188  adrp    x8, #0x100416000
  10003718c  nop
  100037190  ldr     x25, [x8, #0xf18]
  100037194  mov     x0, x23
  100037198  mov     x1, x25
  10003719c  bl      _objc_msgSend                            ; [x0 view]
  1000371a0  mov     x29, x29
  1000371a4  bl      _objc_retainAutoreleasedReturnValue
  1000371a8  mov     x27, x0
  1000371ac  adrp    x8, #0x100416000
  1000371b0  nop
  1000371b4  ldr     x1, [x8, #0xf20]
  1000371b8  mov     x0, x26
  1000371bc  mov     x2, x27
  1000371c0  bl      _objc_msgSend                            ; [[self detailScroller] addSubview:[x0 view]]
  1000371c4  mov     x0, x27
  1000371c8  bl      _objc_release
  1000371cc  mov     x0, x26
  1000371d0  bl      _objc_release
  1000371d4  ldr     x0, [x19, x28]                           ; x0 = self->armoryDetails
  1000371d8  adrp    x8, #0x100418000
  1000371dc  nop
  1000371e0  ldr     x1, [x8, #0x4b8]
  1000371e4  mov     x2, x22
  1000371e8  mov     x3, x23
  1000371ec  bl      _objc_msgSend                            ; [self->armoryDetails replaceObjectAtIndex:arg1 withObject:x3]
  1000371f0  mov     x0, x23
  1000371f4  mov     x1, x25
  1000371f8  bl      _objc_msgSend                            ; [x0 view]
  1000371fc  mov     x29, x29
  100037200  bl      _objc_retainAutoreleasedReturnValue
  100037204  mov     x22, x0
  100037208  adrp    x8, #0x100416000
  10003720c  nop
  100037210  ldr     x26, [x8, #0xf38]
  100037214  mov     x1, x26
  100037218  bl      _objc_msgSend                            ; [[x0 view] frame]
  10003721c  mov     v8.16b, v2.16b
  100037220  mov     x0, x22
  100037224  bl      _objc_release
  100037228  mov     x0, x23
  10003722c  mov     x1, x25
  100037230  bl      _objc_msgSend                            ; [x0 view]
  100037234  mov     x29, x29
  100037238  bl      _objc_retainAutoreleasedReturnValue
  10003723c  mov     x22, x0
  100037240  mov     x0, x19
  100037244  mov     x1, x24
  100037248  bl      _objc_msgSend                            ; [self detailScroller]
  10003724c  mov     x29, x29
  100037250  bl      _objc_retainAutoreleasedReturnValue
  100037254  mov     x24, x0
  100037258  mov     x1, x26
  10003725c  bl      _objc_msgSend                            ; [[self detailScroller] frame]
  100037260  fcvt    s0, d8
  100037264  fmov    s1, #0.50000000
  100037268  fmul    s1, s0, s1
  10003726c  scvtf   s2, w21
  100037270  fmul    s0, s2, s0
  100037274  fadd    s0, s1, s0
  100037278  fcvt    d0, s0
  10003727c  fmov    d1, #0.50000000
  100037280  fmul    d1, d3, d1
  100037284  adrp    x8, #0x100417000
  100037288  nop
  10003728c  ldr     x1, [x8, #0x1f8]
  100037290  mov     x0, x22
  100037294  bl      _objc_msgSend                            ; [[x0 view] setCenter:{(([[x0 view] frame].2 * 0.5) + ((float)arg1 * [[x0 view] frame].2)), ([[self detailScroller] frame].3 * 0.5)}]
  100037298  mov     x0, x24
  10003729c  bl      _objc_release
  1000372a0  mov     x0, x22
  1000372a4  bl      _objc_release
  1000372a8  mov     x0, x23
  1000372ac  bl      _objc_release
  1000372b0  ldr     x0, [sp, #8]
loc_1000372b4:
  1000372b4  sub     sp, x29, #0x60
  1000372b8  ldp     x29, x30, [sp, #0x60]
  1000372bc  ldp     x20, x19, [sp, #0x50]
  1000372c0  ldp     x22, x21, [sp, #0x40]
  1000372c4  ldp     x24, x23, [sp, #0x30]
  1000372c8  ldp     x26, x25, [sp, #0x20]
  1000372cc  ldp     x28, x27, [sp, #0x10]
  1000372d0  ldp     d9, d8, [sp], #0x70
  1000372d4  b       _objc_release
loc_1000372d8:
  1000372d8  mov     x19, x0
  1000372dc  b       loc_1000373b0
  1000372e0  mov     x19, x0
  1000372e4  b       loc_1000372f4
  1000372e8  mov     x19, x0
  1000372ec  mov     x0, x23
  1000372f0  bl      _objc_release
loc_1000372f4:
  1000372f4  mov     x0, x20
  1000372f8  b       loc_1000373bc
  1000372fc  b       loc_100037354
  100037300  b       loc_100037318
  100037304  mov     x19, x0
  100037308  mov     x0, x24
  10003730c  bl      _objc_release
  100037310  b       loc_1000373a8
  100037314  b       loc_100037318
loc_100037318:
  100037318  mov     x19, x0
  10003731c  b       loc_10003734c
  100037320  mov     x19, x0
  100037324  b       loc_100037344
  100037328  mov     x19, x0
  10003732c  b       loc_10003733c
  100037330  mov     x19, x0
  100037334  mov     x0, x20
  100037338  bl      _objc_release
loc_10003733c:
  10003733c  mov     x0, x24
  100037340  bl      _objc_release
loc_100037344:
  100037344  mov     x0, x23
  100037348  bl      _objc_release
loc_10003734c:
  10003734c  mov     x0, x21
  100037350  b       loc_1000373bc
loc_100037354:
  100037354  mov     x19, x0
  100037358  mov     x0, x23
  10003735c  b       loc_1000373bc
  100037360  b       loc_1000372d8
  100037364  mov     x19, x0
  100037368  b       loc_100037378
  10003736c  mov     x19, x0
  100037370  mov     x0, x25
  100037374  bl      _objc_release
loc_100037378:
  100037378  mov     x0, x24
  10003737c  b       loc_1000373ac
  100037380  mov     x19, x0
  100037384  b       loc_100037394
  100037388  mov     x19, x0
  10003738c  mov     x0, x27
  100037390  bl      _objc_release
loc_100037394:
  100037394  mov     x0, x26
  100037398  b       loc_1000373ac
  10003739c  mov     x19, x0
  1000373a0  b       loc_1000373a8
  1000373a4  mov     x19, x0
loc_1000373a8:
  1000373a8  mov     x0, x22
loc_1000373ac:
  1000373ac  bl      _objc_release
loc_1000373b0:
  1000373b0  mov     x0, x23
loc_1000373b4:
  1000373b4  bl      _objc_release
  1000373b8  ldr     x0, [sp, #8]
loc_1000373bc:
  1000373bc  bl      _objc_release
  1000373c0  mov     x0, x19
  1000373c4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000373c8  mov     x19, x0
  1000373cc  b       loc_1000373f0
  1000373d0  mov     x19, x0
  1000373d4  mov     x0, x25
  1000373d8  b       loc_1000373ec
  1000373dc  mov     x19, x0
  1000373e0  b       loc_1000373f0
  1000373e4  mov     x19, x0
  1000373e8  mov     x0, x26
loc_1000373ec:
  1000373ec  bl      _objc_release
loc_1000373f0:
  1000373f0  mov     x0, x24
  1000373f4  b       loc_1000373b4

; ======================================================================
; -[ADViewWithWeaponDetailViewController scrollViewDidEndDragging:willDecelerate:]
; address 0x1000373f8  size 32  kind objc
; ======================================================================
  1000373f8  stp     x29, x30, [sp, #-0x10]!
  1000373fc  mov     x29, sp
  100037400  adrp    x8, #0x100418000
  100037404  nop
  100037408  ldr     x1, [x8, #0x4c0]
  10003740c  bl      _objc_msgSend                            ; [self loadDetailsAroundView]
  100037410  ldp     x29, x30, [sp], #0x10
  100037414  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController scrollViewDidEndDecelerating:]
; address 0x100037418  size 32  kind objc
; ======================================================================
  100037418  stp     x29, x30, [sp, #-0x10]!
  10003741c  mov     x29, sp
  100037420  adrp    x8, #0x100418000
  100037424  nop
  100037428  ldr     x1, [x8, #0x4c0]
  10003742c  bl      _objc_msgSend                            ; [self loadDetailsAroundView]
  100037430  ldp     x29, x30, [sp], #0x10
  100037434  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController scrollViewDidEndScrollingAnimation:]
; address 0x100037438  size 32  kind objc
; ======================================================================
  100037438  stp     x29, x30, [sp, #-0x10]!
  10003743c  mov     x29, sp
  100037440  adrp    x8, #0x100418000
  100037444  nop
  100037448  ldr     x1, [x8, #0x4c0]
  10003744c  bl      _objc_msgSend                            ; [self loadDetailsAroundView]
  100037450  ldp     x29, x30, [sp], #0x10
  100037454  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController loadDetailsAroundView]
; address 0x100037458  size 256  kind objc
; ======================================================================
  100037458  stp     d9, d8, [sp, #-0x40]!
  10003745c  stp     x22, x21, [sp, #0x10]
  100037460  stp     x20, x19, [sp, #0x20]
  100037464  stp     x29, x30, [sp, #0x30]
  100037468  add     x29, sp, #0x30
  10003746c  mov     x19, x0
  100037470  adrp    x8, #0x100418000
  100037474  nop
  100037478  ldr     x21, [x8, #0x470]
  10003747c  mov     x1, x21
  100037480  bl      _objc_msgSend                            ; [self detailScroller]
  100037484  mov     x29, x29
  100037488  bl      _objc_retainAutoreleasedReturnValue
  10003748c  mov     x20, x0
  100037490  adrp    x8, #0x100416000
  100037494  nop
  100037498  ldr     x1, [x8, #0xfb0]
  10003749c  bl      _objc_msgSend                            ; [[self detailScroller] contentOffset]
  1000374a0  mov     v8.16b, v0.16b
  1000374a4  mov     x0, x19
  1000374a8  mov     x1, x21
  1000374ac  bl      _objc_msgSend                            ; [self detailScroller]
  1000374b0  mov     x29, x29
  1000374b4  bl      _objc_retainAutoreleasedReturnValue
  1000374b8  mov     x21, x0
  1000374bc  adrp    x8, #0x100416000
  1000374c0  nop
  1000374c4  ldr     x1, [x8, #0xf38]
  1000374c8  bl      _objc_msgSend                            ; [[self detailScroller] frame]
  1000374cc  fcvtzs  w8, d8
  1000374d0  fcvtzs  w9, d2
  1000374d4  sdiv    w22, w8, w9
  1000374d8  mov     x0, x21
  1000374dc  bl      _objc_release
  1000374e0  mov     x0, x20
  1000374e4  bl      _objc_release
  1000374e8  adrp    x8, #0x100418000
  1000374ec  nop
  1000374f0  ldr     x20, [x8, #0x4c8]
  1000374f4  mov     x0, x19
  1000374f8  mov     x1, x20
  1000374fc  mov     x2, x22
  100037500  bl      _objc_msgSend                            ; [self loadArmoryDetailAtIndex:((int)[[self detailScroller] contentOffset].0 / (int)[[self detailScroller] frame].2)]
  100037504  sub     w2, w22, #1
  100037508  mov     x0, x19
  10003750c  mov     x1, x20
  100037510  bl      _objc_msgSend                            ; [self loadArmoryDetailAtIndex:(((int)[[self detailScroller] contentOffset].0 / (int)[[self detailScroller] frame].2) - 1)]
  100037514  add     w2, w22, #1
  100037518  mov     x0, x19
  10003751c  mov     x1, x20
  100037520  ldp     x29, x30, [sp, #0x30]
  100037524  ldp     x20, x19, [sp, #0x20]
  100037528  ldp     x22, x21, [sp, #0x10]
  10003752c  ldp     d9, d8, [sp], #0x40
  100037530  b       _objc_msgSend                            ; [self loadArmoryDetailAtIndex:(((int)[[self detailScroller] contentOffset].0 / (int)[[self detailScroller] frame].2) + 1)]
  100037534  mov     x19, x0
  100037538  b       loc_100037548
  10003753c  mov     x19, x0
  100037540  mov     x0, x21
  100037544  bl      _objc_release
loc_100037548:
  100037548  mov     x0, x20
  10003754c  bl      _objc_release
  100037550  mov     x0, x19
  100037554  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADViewWithWeaponDetailViewController nextWeaponButtonPressed:]
; address 0x100037558  size 1076  kind objc
; ======================================================================
  100037558  stp     d9, d8, [sp, #-0x60]!
  10003755c  stp     x26, x25, [sp, #0x10]
  100037560  stp     x24, x23, [sp, #0x20]
  100037564  stp     x22, x21, [sp, #0x30]
  100037568  stp     x20, x19, [sp, #0x40]
  10003756c  stp     x29, x30, [sp, #0x50]
  100037570  add     x29, sp, #0x50
  100037574  sub     sp, sp, #0x10
  100037578  mov     x19, x0
  10003757c  adrp    x8, #0x100418000
  100037580  nop
  100037584  ldr     x20, [x8, #0x470]
  100037588  mov     x1, x20
  10003758c  bl      _objc_msgSend                            ; [self detailScroller]
  100037590  mov     x29, x29
  100037594  bl      _objc_retainAutoreleasedReturnValue
  100037598  mov     x21, x0
  10003759c  adrp    x8, #0x100418000
  1000375a0  nop
  1000375a4  ldr     x1, [x8, #0x4d0]
  1000375a8  bl      _objc_msgSend                            ; [[self detailScroller] isDecelerating]
  1000375ac  cbz     w0, loc_1000375d4                        ; if ([[self detailScroller] isDecelerating] == 0)
  1000375b0  mov     x0, x21
loc_1000375b4:
  1000375b4  sub     sp, x29, #0x50
  1000375b8  ldp     x29, x30, [sp, #0x50]
  1000375bc  ldp     x20, x19, [sp, #0x40]
  1000375c0  ldp     x22, x21, [sp, #0x30]
  1000375c4  ldp     x24, x23, [sp, #0x20]
  1000375c8  ldp     x26, x25, [sp, #0x10]
  1000375cc  ldp     d9, d8, [sp], #0x60
  1000375d0  b       _objc_release
loc_1000375d4:
  1000375d4  mov     x0, x19
  1000375d8  mov     x1, x20
  1000375dc  bl      _objc_msgSend                            ; [self detailScroller]
  1000375e0  mov     x29, x29
  1000375e4  bl      _objc_retainAutoreleasedReturnValue
  1000375e8  mov     x22, x0
  1000375ec  adrp    x8, #0x100418000
  1000375f0  nop
  1000375f4  ldr     x1, [x8, #0x4d8]
  1000375f8  bl      _objc_msgSend                            ; [[self detailScroller] isDragging]
  1000375fc  mov     x23, x0
  100037600  mov     x0, x22
  100037604  bl      _objc_release
  100037608  mov     x0, x21
  10003760c  bl      _objc_release
  100037610  tbnz    w23, #0, loc_1000378c4                   ; if (([[self detailScroller] isDragging] & 1))
  100037614  mov     x0, x19
  100037618  mov     x1, x20
  10003761c  bl      _objc_msgSend                            ; [self detailScroller]
  100037620  mov     x29, x29
  100037624  bl      _objc_retainAutoreleasedReturnValue
  100037628  mov     x23, x0
  10003762c  adrp    x8, #0x100416000
  100037630  nop
  100037634  ldr     x21, [x8, #0xfb0]
  100037638  mov     x1, x21
  10003763c  bl      _objc_msgSend                            ; [[self detailScroller] contentOffset]
  100037640  mov     v8.16b, v0.16b
  100037644  mov     x0, x19
  100037648  mov     x1, x20
  10003764c  bl      _objc_msgSend                            ; [self detailScroller]
  100037650  mov     x29, x29
  100037654  bl      _objc_retainAutoreleasedReturnValue
  100037658  mov     x24, x0
  10003765c  adrp    x8, #0x100416000
  100037660  nop
  100037664  ldr     x22, [x8, #0xf38]
  100037668  mov     x1, x22
  10003766c  bl      _objc_msgSend                            ; [[self detailScroller] frame]
  100037670  fcvtzs  w8, d8
  100037674  fcvtzs  w9, d2
  100037678  sdiv    w10, w8, w9
  10003767c  msub    w25, w10, w9, w8                         ; t1 = ((int)[[self detailScroller] contentOffset].0 - ((int)[[self detailScroller] contentOffset].0 / (int)[[self detailScroller] frame].2) * (int)[[self detailScroller] frame].2)
  100037680  mov     x0, x24
  100037684  bl      _objc_release
  100037688  mov     x0, x23
  10003768c  bl      _objc_release
  100037690  cbnz    w25, loc_1000378c4                       ; if (t1 != 0)
  100037694  mov     x0, x19
  100037698  mov     x1, x20
  10003769c  bl      _objc_msgSend                            ; [self detailScroller]
  1000376a0  mov     x29, x29
  1000376a4  bl      _objc_retainAutoreleasedReturnValue
  1000376a8  mov     x23, x0
  1000376ac  mov     x1, x21
  1000376b0  bl      _objc_msgSend                            ; [[self detailScroller] contentOffset]
  1000376b4  mov     v8.16b, v0.16b
  1000376b8  mov     x0, x19
  1000376bc  mov     x1, x20
  1000376c0  bl      _objc_msgSend                            ; [self detailScroller]
  1000376c4  mov     x29, x29
  1000376c8  bl      _objc_retainAutoreleasedReturnValue
  1000376cc  mov     x24, x0
  1000376d0  adrp    x8, #0x100417000
  1000376d4  nop
  1000376d8  ldr     x1, [x8, #0x740]
  1000376dc  bl      _objc_msgSend                            ; [[self detailScroller] contentSize]
  1000376e0  mov     v9.16b, v0.16b
  1000376e4  mov     x0, x19
  1000376e8  mov     x1, x20
  1000376ec  bl      _objc_msgSend                            ; [self detailScroller]
  1000376f0  mov     x29, x29
  1000376f4  bl      _objc_retainAutoreleasedReturnValue
  1000376f8  mov     x25, x0
  1000376fc  mov     x1, x22
  100037700  bl      _objc_msgSend                            ; [[self detailScroller] frame]
  100037704  fsub    d9, d9, d2
  100037708  mov     x0, x25
  10003770c  bl      _objc_release
  100037710  mov     x0, x24
  100037714  bl      _objc_release
  100037718  mov     x0, x23
  10003771c  bl      _objc_release
  100037720  fcmp    d8, d9
  100037724  b.pl    loc_1000378c4                            ; if ([[self detailScroller] contentOffset].0 >= (or unordered) ([[self detailScroller] contentSize].0 - [[self detailScroller] frame].2))
  100037728  adrp    x8, #0x100418000
  10003772c  nop
  100037730  ldr     x24, [x8, #0x4e0]
  100037734  mov     x0, x19
  100037738  mov     x1, x24
  10003773c  bl      _objc_msgSend                            ; [self currentWeaponBrowseIndex]
  100037740  add     x2, x0, #1
  100037744  adrp    x8, #0x100418000
  100037748  nop
  10003774c  ldr     x1, [x8, #0x4e8]
  100037750  mov     x0, x19
  100037754  bl      _objc_msgSend                            ; [self setCurrentWeaponBrowseIndex:([self currentWeaponBrowseIndex] + 1)]
  100037758  adrp    x8, #0x100418000
  10003775c  nop
  100037760  ldr     x1, [x8, #0x498]
  100037764  mov     x0, x19
  100037768  bl      _objc_msgSend                            ; [self itemNames]
  10003776c  mov     x29, x29
  100037770  bl      _objc_retainAutoreleasedReturnValue
  100037774  mov     x25, x0
  100037778  mov     x0, x19
  10003777c  mov     x1, x24
  100037780  bl      _objc_msgSend                            ; [self currentWeaponBrowseIndex]
  100037784  mov     x2, x0
  100037788  adrp    x8, #0x100416000
  10003778c  nop
  100037790  ldr     x1, [x8, #0xc30]
  100037794  mov     x0, x25
  100037798  bl      _objc_msgSend                            ; [[self itemNames] objectAtIndex:[self currentWeaponBrowseIndex]]
  10003779c  mov     x29, x29
  1000377a0  bl      _objc_retainAutoreleasedReturnValue
  1000377a4  mov     x23, x0
  1000377a8  mov     x0, x25
  1000377ac  bl      _objc_release
  1000377b0  adrp    x8, #0x10041e000
  1000377b4  ldr     x0, [x8, #8]                             ; class ADTracker
  1000377b8  adrp    x8, #0x100416000
  1000377bc  nop
  1000377c0  ldr     x1, [x8, #0xac0]
  1000377c4  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000377c8  mov     x29, x29
  1000377cc  bl      _objc_retainAutoreleasedReturnValue
  1000377d0  mov     x25, x0
  1000377d4  adrp    x8, #0x100418000
  1000377d8  nop
  1000377dc  ldr     x1, [x8, #0x4f0]
  1000377e0  adrp    x3, #0x1003bc000
  1000377e4  add     x3, x3, #0x490                           ; @"enumerator"
  1000377e8  mov     x2, x23
  1000377ec  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordWeaponBrowse:[[self itemNames] objectAtIndex:[self currentWeaponBrowseIndex]] BrowseForm:@"enumerator"]
  1000377f0  mov     x0, x25
  1000377f4  bl      _objc_release
  1000377f8  mov     x0, x19
  1000377fc  mov     x1, x24
  100037800  bl      _objc_msgSend                            ; [self currentWeaponBrowseIndex]
  100037804  str     x0, [sp]
  100037808  adrp    x0, #0x1003bc000
  10003780c  add     x0, x0, #0x4b0                           ; @"The current browse index = %d"
  100037810  bl      _NSLog                                   ; NSLog(@"The current browse index = %d", [self currentWeaponBrowseIndex])
  100037814  mov     x0, x19
  100037818  mov     x1, x20
  10003781c  bl      _objc_msgSend                            ; [self detailScroller]
  100037820  mov     x29, x29
  100037824  bl      _objc_retainAutoreleasedReturnValue
  100037828  mov     x24, x0
  10003782c  mov     x0, x19
  100037830  mov     x1, x20
  100037834  bl      _objc_msgSend                            ; [self detailScroller]
  100037838  mov     x29, x29
  10003783c  bl      _objc_retainAutoreleasedReturnValue
  100037840  mov     x25, x0
  100037844  mov     x1, x21
  100037848  bl      _objc_msgSend                            ; [[self detailScroller] contentOffset]
  10003784c  mov     v8.16b, v0.16b
  100037850  mov     x0, x19
  100037854  mov     x1, x20
  100037858  bl      _objc_msgSend                            ; [self detailScroller]
  10003785c  mov     x29, x29
  100037860  bl      _objc_retainAutoreleasedReturnValue
  100037864  mov     x20, x0
  100037868  mov     x1, x22
  10003786c  bl      _objc_msgSend                            ; [[self detailScroller] frame]
  100037870  fadd    d0, d8, d2
  100037874  adrp    x8, #0x100418000
  100037878  nop
  10003787c  ldr     x1, [x8, #0x4f8]
  100037880  movi    v1.16b, #0
  100037884  mov     w2, #1
  100037888  mov     x0, x24
  10003788c  bl      _objc_msgSend                            ; [[self detailScroller] setContentOffset:{([[self detailScroller] contentOffset].0 + [[self detailScroller] frame].2), 0} animated:1]
  100037890  mov     x0, x20
  100037894  bl      _objc_release
  100037898  mov     x0, x25
  10003789c  bl      _objc_release
  1000378a0  mov     x0, x24
  1000378a4  bl      _objc_release
  1000378a8  adrp    x8, #0x100418000
  1000378ac  nop
  1000378b0  ldr     x1, [x8, #0x500]
  1000378b4  mov     x0, x19
  1000378b8  bl      _objc_msgSend                            ; [self checkArrowsAfterClick]
  1000378bc  mov     x0, x23
  1000378c0  b       loc_1000375b4
loc_1000378c4:
  1000378c4  sub     sp, x29, #0x50
  1000378c8  ldp     x29, x30, [sp, #0x50]
  1000378cc  ldp     x20, x19, [sp, #0x40]
  1000378d0  ldp     x22, x21, [sp, #0x30]
  1000378d4  ldp     x24, x23, [sp, #0x20]
  1000378d8  ldp     x26, x25, [sp, #0x10]
  1000378dc  ldp     d9, d8, [sp], #0x60
  1000378e0  ret
  1000378e4  mov     x19, x0
  1000378e8  b       loc_100037900
  1000378ec  mov     x19, x0
  1000378f0  b       loc_100037984
  1000378f4  mov     x19, x0
  1000378f8  mov     x0, x22
  1000378fc  bl      _objc_release
loc_100037900:
  100037900  mov     x0, x21
  100037904  bl      _objc_release
  100037908  b       loc_100037984
  10003790c  mov     x19, x0
  100037910  b       loc_10003797c
  100037914  b       loc_100037970
  100037918  mov     x19, x0
  10003791c  b       loc_10003797c
  100037920  mov     x19, x0
  100037924  b       loc_10003797c
  100037928  b       loc_100037970
  10003792c  mov     x19, x0
  100037930  b       loc_100037958
  100037934  mov     x19, x0
  100037938  mov     x0, x25
  10003793c  bl      _objc_release
  100037940  b       loc_100037984
  100037944  mov     x19, x0
  100037948  b       loc_100037958
  10003794c  mov     x19, x0
  100037950  mov     x0, x20
  100037954  bl      _objc_release
loc_100037958:
  100037958  mov     x0, x25
  10003795c  bl      _objc_release
  100037960  b       loc_100037974
  100037964  mov     x19, x0
  100037968  mov     x0, x25
  10003796c  b       loc_100037978
loc_100037970:
  100037970  mov     x19, x0
loc_100037974:
  100037974  mov     x0, x24
loc_100037978:
  100037978  bl      _objc_release
loc_10003797c:
  10003797c  mov     x0, x23
  100037980  bl      _objc_release
loc_100037984:
  100037984  mov     x0, x19
  100037988  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADViewWithWeaponDetailViewController previousWeaponButtonPressed:]
; address 0x10003798c  size 1016  kind objc
; ======================================================================
  10003798c  stp     d9, d8, [sp, #-0x60]!
  100037990  stp     x26, x25, [sp, #0x10]
  100037994  stp     x24, x23, [sp, #0x20]
  100037998  stp     x22, x21, [sp, #0x30]
  10003799c  stp     x20, x19, [sp, #0x40]
  1000379a0  stp     x29, x30, [sp, #0x50]
  1000379a4  add     x29, sp, #0x50
  1000379a8  sub     sp, sp, #0x10
  1000379ac  mov     x19, x0
  1000379b0  adrp    x8, #0x100418000
  1000379b4  nop
  1000379b8  ldr     x20, [x8, #0x470]
  1000379bc  mov     x1, x20
  1000379c0  bl      _objc_msgSend                            ; [self detailScroller]
  1000379c4  mov     x29, x29
  1000379c8  bl      _objc_retainAutoreleasedReturnValue
  1000379cc  mov     x21, x0
  1000379d0  adrp    x8, #0x100418000
  1000379d4  nop
  1000379d8  ldr     x1, [x8, #0x4d0]
  1000379dc  bl      _objc_msgSend                            ; [[self detailScroller] isDecelerating]
  1000379e0  cbz     w0, loc_100037a08                        ; if ([[self detailScroller] isDecelerating] == 0)
  1000379e4  mov     x0, x21
loc_1000379e8:
  1000379e8  sub     sp, x29, #0x50
  1000379ec  ldp     x29, x30, [sp, #0x50]
  1000379f0  ldp     x20, x19, [sp, #0x40]
  1000379f4  ldp     x22, x21, [sp, #0x30]
  1000379f8  ldp     x24, x23, [sp, #0x20]
  1000379fc  ldp     x26, x25, [sp, #0x10]
  100037a00  ldp     d9, d8, [sp], #0x60
  100037a04  b       _objc_release
loc_100037a08:
  100037a08  mov     x0, x19
  100037a0c  mov     x1, x20
  100037a10  bl      _objc_msgSend                            ; [self detailScroller]
  100037a14  mov     x29, x29
  100037a18  bl      _objc_retainAutoreleasedReturnValue
  100037a1c  mov     x22, x0
  100037a20  adrp    x8, #0x100418000
  100037a24  nop
  100037a28  ldr     x1, [x8, #0x4d8]
  100037a2c  bl      _objc_msgSend                            ; [[self detailScroller] isDragging]
  100037a30  mov     x23, x0
  100037a34  mov     x0, x22
  100037a38  bl      _objc_release
  100037a3c  mov     x0, x21
  100037a40  bl      _objc_release
  100037a44  tbnz    w23, #0, loc_100037b28                   ; if (([[self detailScroller] isDragging] & 1))
  100037a48  mov     x0, x19
  100037a4c  mov     x1, x20
  100037a50  bl      _objc_msgSend                            ; [self detailScroller]
  100037a54  mov     x29, x29
  100037a58  bl      _objc_retainAutoreleasedReturnValue
  100037a5c  mov     x23, x0
  100037a60  adrp    x8, #0x100416000
  100037a64  nop
  100037a68  ldr     x21, [x8, #0xfb0]
  100037a6c  mov     x1, x21
  100037a70  bl      _objc_msgSend                            ; [[self detailScroller] contentOffset]
  100037a74  mov     v8.16b, v0.16b
  100037a78  mov     x0, x19
  100037a7c  mov     x1, x20
  100037a80  bl      _objc_msgSend                            ; [self detailScroller]
  100037a84  mov     x29, x29
  100037a88  bl      _objc_retainAutoreleasedReturnValue
  100037a8c  mov     x24, x0
  100037a90  adrp    x8, #0x100416000
  100037a94  nop
  100037a98  ldr     x22, [x8, #0xf38]
  100037a9c  mov     x1, x22
  100037aa0  bl      _objc_msgSend                            ; [[self detailScroller] frame]
  100037aa4  fcvtzs  w8, d8
  100037aa8  fcvtzs  w9, d2
  100037aac  sdiv    w10, w8, w9
  100037ab0  msub    w25, w10, w9, w8                         ; t1 = ((int)[[self detailScroller] contentOffset].0 - ((int)[[self detailScroller] contentOffset].0 / (int)[[self detailScroller] frame].2) * (int)[[self detailScroller] frame].2)
  100037ab4  mov     x0, x24
  100037ab8  bl      _objc_release
  100037abc  mov     x0, x23
  100037ac0  bl      _objc_release
  100037ac4  cbnz    w25, loc_100037b28                       ; if (t1 != 0)
  100037ac8  mov     x0, x19
  100037acc  mov     x1, x20
  100037ad0  bl      _objc_msgSend                            ; [self detailScroller]
  100037ad4  mov     x29, x29
  100037ad8  bl      _objc_retainAutoreleasedReturnValue
  100037adc  mov     x23, x0
  100037ae0  mov     x1, x21
  100037ae4  bl      _objc_msgSend                            ; [[self detailScroller] contentOffset]
  100037ae8  mov     v8.16b, v0.16b
  100037aec  mov     x0, x19
  100037af0  mov     x1, x20
  100037af4  bl      _objc_msgSend                            ; [self detailScroller]
  100037af8  mov     x29, x29
  100037afc  bl      _objc_retainAutoreleasedReturnValue
  100037b00  mov     x24, x0
  100037b04  mov     x1, x22
  100037b08  bl      _objc_msgSend                            ; [[self detailScroller] frame]
  100037b0c  mov     v9.16b, v2.16b
  100037b10  mov     x0, x24
  100037b14  bl      _objc_release
  100037b18  mov     x0, x23
  100037b1c  bl      _objc_release
  100037b20  fcmp    d8, d9
  100037b24  b.ge    loc_100037b48                            ; if ([[self detailScroller] contentOffset].0 >= [[self detailScroller] frame].2)
loc_100037b28:
  100037b28  sub     sp, x29, #0x50
  100037b2c  ldp     x29, x30, [sp, #0x50]
  100037b30  ldp     x20, x19, [sp, #0x40]
  100037b34  ldp     x22, x21, [sp, #0x30]
  100037b38  ldp     x24, x23, [sp, #0x20]
  100037b3c  ldp     x26, x25, [sp, #0x10]
  100037b40  ldp     d9, d8, [sp], #0x60
  100037b44  ret
loc_100037b48:
  100037b48  adrp    x8, #0x100418000
  100037b4c  nop
  100037b50  ldr     x24, [x8, #0x4e0]
  100037b54  mov     x0, x19
  100037b58  mov     x1, x24
  100037b5c  bl      _objc_msgSend                            ; [self currentWeaponBrowseIndex]
  100037b60  sub     x2, x0, #1
  100037b64  adrp    x8, #0x100418000
  100037b68  nop
  100037b6c  ldr     x1, [x8, #0x4e8]
  100037b70  mov     x0, x19
  100037b74  bl      _objc_msgSend                            ; [self setCurrentWeaponBrowseIndex:([self currentWeaponBrowseIndex] - 1)]
  100037b78  adrp    x8, #0x100418000
  100037b7c  nop
  100037b80  ldr     x1, [x8, #0x498]
  100037b84  mov     x0, x19
  100037b88  bl      _objc_msgSend                            ; [self itemNames]
  100037b8c  mov     x29, x29
  100037b90  bl      _objc_retainAutoreleasedReturnValue
  100037b94  mov     x25, x0
  100037b98  mov     x0, x19
  100037b9c  mov     x1, x24
  100037ba0  bl      _objc_msgSend                            ; [self currentWeaponBrowseIndex]
  100037ba4  mov     x2, x0
  100037ba8  adrp    x8, #0x100416000
  100037bac  nop
  100037bb0  ldr     x1, [x8, #0xc30]
  100037bb4  mov     x0, x25
  100037bb8  bl      _objc_msgSend                            ; [[self itemNames] objectAtIndex:[self currentWeaponBrowseIndex]]
  100037bbc  mov     x29, x29
  100037bc0  bl      _objc_retainAutoreleasedReturnValue
  100037bc4  mov     x23, x0
  100037bc8  mov     x0, x25
  100037bcc  bl      _objc_release
  100037bd0  adrp    x8, #0x10041e000
  100037bd4  ldr     x0, [x8, #8]                             ; class ADTracker
  100037bd8  adrp    x8, #0x100416000
  100037bdc  nop
  100037be0  ldr     x1, [x8, #0xac0]
  100037be4  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100037be8  mov     x29, x29
  100037bec  bl      _objc_retainAutoreleasedReturnValue
  100037bf0  mov     x25, x0
  100037bf4  adrp    x8, #0x100418000
  100037bf8  nop
  100037bfc  ldr     x1, [x8, #0x4f0]
  100037c00  adrp    x3, #0x1003bc000
  100037c04  add     x3, x3, #0x490                           ; @"enumerator"
  100037c08  mov     x2, x23
  100037c0c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordWeaponBrowse:[[self itemNames] objectAtIndex:[self currentWeaponBrowseIndex]] BrowseForm:@"enumerator"]
  100037c10  mov     x0, x25
  100037c14  bl      _objc_release
  100037c18  mov     x0, x19
  100037c1c  mov     x1, x24
  100037c20  bl      _objc_msgSend                            ; [self currentWeaponBrowseIndex]
  100037c24  str     x0, [sp]
  100037c28  adrp    x0, #0x1003bc000
  100037c2c  add     x0, x0, #0x4b0                           ; @"The current browse index = %d"
  100037c30  bl      _NSLog                                   ; NSLog(@"The current browse index = %d", [self currentWeaponBrowseIndex])
  100037c34  mov     x0, x19
  100037c38  mov     x1, x20
  100037c3c  bl      _objc_msgSend                            ; [self detailScroller]
  100037c40  mov     x29, x29
  100037c44  bl      _objc_retainAutoreleasedReturnValue
  100037c48  mov     x24, x0
  100037c4c  mov     x0, x19
  100037c50  mov     x1, x20
  100037c54  bl      _objc_msgSend                            ; [self detailScroller]
  100037c58  mov     x29, x29
  100037c5c  bl      _objc_retainAutoreleasedReturnValue
  100037c60  mov     x25, x0
  100037c64  mov     x1, x21
  100037c68  bl      _objc_msgSend                            ; [[self detailScroller] contentOffset]
  100037c6c  mov     v8.16b, v0.16b
  100037c70  mov     x0, x19
  100037c74  mov     x1, x20
  100037c78  bl      _objc_msgSend                            ; [self detailScroller]
  100037c7c  mov     x29, x29
  100037c80  bl      _objc_retainAutoreleasedReturnValue
  100037c84  mov     x20, x0
  100037c88  mov     x1, x22
  100037c8c  bl      _objc_msgSend                            ; [[self detailScroller] frame]
  100037c90  fsub    d0, d8, d2
  100037c94  adrp    x8, #0x100418000
  100037c98  nop
  100037c9c  ldr     x1, [x8, #0x4f8]
  100037ca0  movi    v1.16b, #0
  100037ca4  mov     w2, #1
  100037ca8  mov     x0, x24
  100037cac  bl      _objc_msgSend                            ; [[self detailScroller] setContentOffset:{([[self detailScroller] contentOffset].0 - [[self detailScroller] frame].2), 0} animated:1]
  100037cb0  mov     x0, x20
  100037cb4  bl      _objc_release
  100037cb8  mov     x0, x25
  100037cbc  bl      _objc_release
  100037cc0  mov     x0, x24
  100037cc4  bl      _objc_release
  100037cc8  adrp    x8, #0x100418000
  100037ccc  nop
  100037cd0  ldr     x1, [x8, #0x500]
  100037cd4  mov     x0, x19
  100037cd8  bl      _objc_msgSend                            ; [self checkArrowsAfterClick]
  100037cdc  mov     x0, x23
  100037ce0  b       loc_1000379e8
  100037ce4  mov     x19, x0
  100037ce8  b       loc_100037d00
  100037cec  mov     x19, x0
  100037cf0  b       loc_100037d7c
  100037cf4  mov     x19, x0
  100037cf8  mov     x0, x22
  100037cfc  bl      _objc_release
loc_100037d00:
  100037d00  mov     x0, x21
  100037d04  bl      _objc_release
  100037d08  b       loc_100037d7c
  100037d0c  mov     x19, x0
  100037d10  b       loc_100037d74
  100037d14  b       loc_100037d68
  100037d18  mov     x19, x0
  100037d1c  b       loc_100037d74
  100037d20  mov     x19, x0
  100037d24  b       loc_100037d74
  100037d28  b       loc_100037d68
  100037d2c  mov     x19, x0
  100037d30  mov     x0, x25
  100037d34  bl      _objc_release
  100037d38  b       loc_100037d7c
  100037d3c  mov     x19, x0
  100037d40  b       loc_100037d50
  100037d44  mov     x19, x0
  100037d48  mov     x0, x20
  100037d4c  bl      _objc_release
loc_100037d50:
  100037d50  mov     x0, x25
  100037d54  bl      _objc_release
  100037d58  b       loc_100037d6c
  100037d5c  mov     x19, x0
  100037d60  mov     x0, x25
  100037d64  b       loc_100037d70
loc_100037d68:
  100037d68  mov     x19, x0
loc_100037d6c:
  100037d6c  mov     x0, x24
loc_100037d70:
  100037d70  bl      _objc_release
loc_100037d74:
  100037d74  mov     x0, x23
  100037d78  bl      _objc_release
loc_100037d7c:
  100037d7c  mov     x0, x19
  100037d80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADViewWithWeaponDetailViewController checkArrowsAfterClick]
; address 0x100037d84  size 552  kind objc
; ======================================================================
  100037d84  stp     x24, x23, [sp, #-0x40]!
  100037d88  stp     x22, x21, [sp, #0x10]
  100037d8c  stp     x20, x19, [sp, #0x20]
  100037d90  stp     x29, x30, [sp, #0x30]
  100037d94  add     x29, sp, #0x30
  100037d98  mov     x19, x0
  100037d9c  adrp    x8, #0x100418000
  100037da0  nop
  100037da4  ldr     x20, [x8, #0x4e0]
  100037da8  mov     x1, x20
  100037dac  bl      _objc_msgSend                            ; [self currentWeaponBrowseIndex]
  100037db0  mov     x23, x0
  100037db4  adrp    x8, #0x100418000
  100037db8  nop
  100037dbc  ldr     x1, [x8, #0x498]
  100037dc0  mov     x0, x19
  100037dc4  bl      _objc_msgSend                            ; [self itemNames]
  100037dc8  mov     x29, x29
  100037dcc  bl      _objc_retainAutoreleasedReturnValue
  100037dd0  mov     x21, x0
  100037dd4  adrp    x8, #0x100416000
  100037dd8  nop
  100037ddc  ldr     x1, [x8, #0xe30]
  100037de0  bl      _objc_msgSend                            ; [[self itemNames] count]
  100037de4  sub     x24, x0, #1
  100037de8  mov     x0, x21
  100037dec  bl      _objc_release
  100037df0  adrp    x8, #0x100416000
  100037df4  nop
  100037df8  ldr     x22, [x8, #0xf18]
  100037dfc  mov     x0, x19
  100037e00  mov     x1, x22
  100037e04  bl      _objc_msgSend                            ; [self view]
  100037e08  mov     x29, x29
  100037e0c  bl      _objc_retainAutoreleasedReturnValue
  100037e10  mov     x21, x0
  100037e14  adrp    x8, #0x100418000
  100037e18  add     x8, x8, #0x508                           ; &@selector(rightArrow)
  100037e1c  ldr     x1, [x8]
  100037e20  cmp     x23, x24
  100037e24  b.hs    loc_100037e5c                            ; if ([self currentWeaponBrowseIndex] >=u ([[self itemNames] count] - 1))
  100037e28  mov     x0, x19
  100037e2c  bl      _objc_msgSend                            ; [self rightArrow]
  100037e30  mov     x29, x29
  100037e34  bl      _objc_retainAutoreleasedReturnValue
  100037e38  mov     x23, x0
  100037e3c  adrp    x8, #0x100417000
  100037e40  nop
  100037e44  ldr     x1, [x8, #0x190]
  100037e48  mov     x0, x21
  100037e4c  mov     x2, x23
  100037e50  bl      _objc_msgSend                            ; [[self view] bringSubviewToFront:[self rightArrow]]
  100037e54  b       loc_100037e88
  100037e58  b       loc_100037f74
loc_100037e5c:
  100037e5c  mov     x0, x19
  100037e60  bl      _objc_msgSend                            ; [self rightArrow]
  100037e64  mov     x29, x29
  100037e68  bl      _objc_retainAutoreleasedReturnValue
  100037e6c  mov     x23, x0
  100037e70  adrp    x8, #0x100417000
  100037e74  nop
  100037e78  ldr     x1, [x8, #0x820]
  100037e7c  mov     x0, x21
  100037e80  mov     x2, x23
  100037e84  bl      _objc_msgSend                            ; [[self view] sendSubviewToBack:[self rightArrow]]
loc_100037e88:
  100037e88  mov     x0, x23
  100037e8c  bl      _objc_release
  100037e90  mov     x0, x21
  100037e94  bl      _objc_release
  100037e98  mov     x0, x19
  100037e9c  mov     x1, x20
  100037ea0  bl      _objc_msgSend                            ; [self currentWeaponBrowseIndex]
  100037ea4  mov     x21, x0
  100037ea8  mov     x0, x19
  100037eac  mov     x1, x22
  100037eb0  bl      _objc_msgSend                            ; [self view]
  100037eb4  mov     x29, x29
  100037eb8  bl      _objc_retainAutoreleasedReturnValue
  100037ebc  mov     x20, x0
  100037ec0  adrp    x8, #0x100418000
  100037ec4  add     x8, x8, #0x510                           ; &@selector(leftArrow)
  100037ec8  ldr     x1, [x8]
  100037ecc  cmp     x21, #0
  100037ed0  b.le    loc_100037f08                            ; if ([self currentWeaponBrowseIndex] <= 0)
  100037ed4  mov     x0, x19
  100037ed8  bl      _objc_msgSend                            ; [self leftArrow]
  100037edc  mov     x29, x29
  100037ee0  bl      _objc_retainAutoreleasedReturnValue
  100037ee4  mov     x21, x0
  100037ee8  adrp    x8, #0x100417000
  100037eec  nop
  100037ef0  ldr     x1, [x8, #0x190]
  100037ef4  mov     x0, x20
  100037ef8  mov     x2, x21
  100037efc  bl      _objc_msgSend                            ; [[self view] bringSubviewToFront:[self leftArrow]]
  100037f00  b       loc_100037f34
  100037f04  b       loc_100037f90
loc_100037f08:
  100037f08  mov     x0, x19
  100037f0c  bl      _objc_msgSend                            ; [self leftArrow]
  100037f10  mov     x29, x29
  100037f14  bl      _objc_retainAutoreleasedReturnValue
  100037f18  mov     x21, x0
  100037f1c  adrp    x8, #0x100417000
  100037f20  nop
  100037f24  ldr     x1, [x8, #0x820]
  100037f28  mov     x0, x20
  100037f2c  mov     x2, x21
  100037f30  bl      _objc_msgSend                            ; [[self view] sendSubviewToBack:[self leftArrow]]
loc_100037f34:
  100037f34  mov     x0, x21
  100037f38  bl      _objc_release
  100037f3c  mov     x0, x20
  100037f40  ldp     x29, x30, [sp, #0x30]
  100037f44  ldp     x20, x19, [sp, #0x20]
  100037f48  ldp     x22, x21, [sp, #0x10]
  100037f4c  ldp     x24, x23, [sp], #0x40
  100037f50  b       _objc_release
  100037f54  mov     x19, x0
  100037f58  b       loc_100037f80
  100037f5c  mov     x19, x0
  100037f60  b       loc_100037f9c
  100037f64  mov     x19, x0
  100037f68  b       loc_100037f80
  100037f6c  mov     x19, x0
  100037f70  b       loc_100037f80
loc_100037f74:
  100037f74  mov     x19, x0
  100037f78  mov     x0, x23
  100037f7c  bl      _objc_release
loc_100037f80:
  100037f80  mov     x0, x21
  100037f84  b       loc_100037fa0
  100037f88  mov     x19, x0
  100037f8c  b       loc_100037f9c
loc_100037f90:
  100037f90  mov     x19, x0
  100037f94  mov     x0, x21
  100037f98  bl      _objc_release
loc_100037f9c:
  100037f9c  mov     x0, x20
loc_100037fa0:
  100037fa0  bl      _objc_release
  100037fa4  mov     x0, x19
  100037fa8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADViewWithWeaponDetailViewController sendDetailViewToBack]
; address 0x100037fac  size 468  kind objc
; ======================================================================
  100037fac  stp     x24, x23, [sp, #-0x40]!
  100037fb0  stp     x22, x21, [sp, #0x10]
  100037fb4  stp     x20, x19, [sp, #0x20]
  100037fb8  stp     x29, x30, [sp, #0x30]
  100037fbc  add     x29, sp, #0x30
  100037fc0  mov     x19, x0
  100037fc4  adrp    x8, #0x100416000
  100037fc8  nop
  100037fcc  ldr     x21, [x8, #0xf18]
  100037fd0  mov     x1, x21
  100037fd4  bl      _objc_msgSend                            ; [self view]
  100037fd8  mov     x29, x29
  100037fdc  bl      _objc_retainAutoreleasedReturnValue
  100037fe0  mov     x23, x0
  100037fe4  adrp    x8, #0x100418000
  100037fe8  nop
  100037fec  ldr     x20, [x8, #0x518]
  100037ff0  mov     x0, x19
  100037ff4  mov     x1, x20
  100037ff8  bl      _objc_msgSend                            ; [self detailView]
  100037ffc  mov     x29, x29
  100038000  bl      _objc_retainAutoreleasedReturnValue
  100038004  mov     x24, x0
  100038008  adrp    x8, #0x100417000
  10003800c  nop
  100038010  ldr     x22, [x8, #0x820]
  100038014  mov     x0, x23
  100038018  mov     x1, x22
  10003801c  mov     x2, x24
  100038020  bl      _objc_msgSend                            ; [[self view] sendSubviewToBack:[self detailView]]
  100038024  mov     x0, x24
  100038028  bl      _objc_release
  10003802c  mov     x0, x23
  100038030  bl      _objc_release
  100038034  mov     x0, x19
  100038038  mov     x1, x21
  10003803c  bl      _objc_msgSend                            ; [self view]
  100038040  mov     x29, x29
  100038044  bl      _objc_retainAutoreleasedReturnValue
  100038048  mov     x23, x0
  10003804c  adrp    x8, #0x100418000
  100038050  nop
  100038054  ldr     x1, [x8, #0x508]
  100038058  mov     x0, x19
  10003805c  bl      _objc_msgSend                            ; [self rightArrow]
  100038060  mov     x29, x29
  100038064  bl      _objc_retainAutoreleasedReturnValue
  100038068  mov     x24, x0
  10003806c  mov     x0, x23
  100038070  mov     x1, x22
  100038074  mov     x2, x24
  100038078  bl      _objc_msgSend                            ; [[self view] sendSubviewToBack:[self rightArrow]]
  10003807c  mov     x0, x24
  100038080  bl      _objc_release
  100038084  mov     x0, x23
  100038088  bl      _objc_release
  10003808c  mov     x0, x19
  100038090  mov     x1, x21
  100038094  bl      _objc_msgSend                            ; [self view]
  100038098  mov     x29, x29
  10003809c  bl      _objc_retainAutoreleasedReturnValue
  1000380a0  mov     x21, x0
  1000380a4  adrp    x8, #0x100418000
  1000380a8  nop
  1000380ac  ldr     x1, [x8, #0x510]
  1000380b0  mov     x0, x19
  1000380b4  bl      _objc_msgSend                            ; [self leftArrow]
  1000380b8  mov     x29, x29
  1000380bc  bl      _objc_retainAutoreleasedReturnValue
  1000380c0  mov     x23, x0
  1000380c4  mov     x0, x21
  1000380c8  mov     x1, x22
  1000380cc  mov     x2, x23
  1000380d0  bl      _objc_msgSend                            ; [[self view] sendSubviewToBack:[self leftArrow]]
  1000380d4  mov     x0, x23
  1000380d8  bl      _objc_release
  1000380dc  mov     x0, x21
  1000380e0  bl      _objc_release
  1000380e4  mov     x0, x19
  1000380e8  mov     x1, x20
  1000380ec  bl      _objc_msgSend                            ; [self detailView]
  1000380f0  mov     x29, x29
  1000380f4  bl      _objc_retainAutoreleasedReturnValue
  1000380f8  mov     x20, x0
  1000380fc  adrp    x8, #0x100417000
  100038100  nop
  100038104  ldr     x1, [x8, #0x828]
  100038108  movi    v0.16b, #0
  10003810c  bl      _objc_msgSend                            ; [[self detailView] setAlpha:0]
  100038110  mov     x0, x20
  100038114  ldp     x29, x30, [sp, #0x30]
  100038118  ldp     x20, x19, [sp, #0x20]
  10003811c  ldp     x22, x21, [sp, #0x10]
  100038120  ldp     x24, x23, [sp], #0x40
  100038124  b       _objc_release
  100038128  mov     x19, x0
  10003812c  b       loc_100038148
  100038130  b       loc_10003813c
  100038134  mov     x19, x0
  100038138  b       loc_100038148
loc_10003813c:
  10003813c  mov     x19, x0
  100038140  mov     x0, x24
  100038144  bl      _objc_release
loc_100038148:
  100038148  mov     x0, x23
  10003814c  b       loc_100038174
  100038150  mov     x19, x0
  100038154  b       loc_100038164
  100038158  mov     x19, x0
  10003815c  mov     x0, x23
  100038160  bl      _objc_release
loc_100038164:
  100038164  mov     x0, x21
  100038168  b       loc_100038174
  10003816c  mov     x19, x0
  100038170  mov     x0, x20
loc_100038174:
  100038174  bl      _objc_release
  100038178  mov     x0, x19
  10003817c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADViewWithWeaponDetailViewController openDescriptionForItemWithName:withButton:]
; address 0x100038180  size 424  kind objc
; ======================================================================
  100038180  stp     x28, x27, [sp, #-0x60]!
  100038184  stp     x26, x25, [sp, #0x10]
  100038188  stp     x24, x23, [sp, #0x20]
  10003818c  stp     x22, x21, [sp, #0x30]
  100038190  stp     x20, x19, [sp, #0x40]
  100038194  stp     x29, x30, [sp, #0x50]
  100038198  add     x29, sp, #0x50
  10003819c  sub     sp, sp, #0xe0
  1000381a0  mov     x22, x3
  1000381a4  mov     x21, x0
  1000381a8  adrp    x20, #0x1003b0000
  1000381ac  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  1000381b0  ldr     x20, [x20]                               ; x20 = ___stack_chk_guard[+0x0]
  1000381b4  stur    x20, [x29, #-0x58]
  1000381b8  mov     x0, x2
  1000381bc  bl      _objc_retain
  1000381c0  mov     x19, x0
  1000381c4  stp     xzr, xzr, [sp, #0x48]
  1000381c8  stp     xzr, xzr, [sp, #0x38]
  1000381cc  stp     xzr, xzr, [sp, #0x28]
  1000381d0  stp     xzr, xzr, [sp, #0x18]
  1000381d4  adrp    x8, #0x100418000
  1000381d8  nop
  1000381dc  ldr     x1, [x8, #0x498]
  1000381e0  mov     x0, x21
  1000381e4  bl      _objc_msgSend                            ; [self itemNames]
  1000381e8  str     w22, [sp, #0x14]
  1000381ec  mov     x29, x29
  1000381f0  bl      _objc_retainAutoreleasedReturnValue
  1000381f4  mov     x22, x0
  1000381f8  adrp    x8, #0x100416000
  1000381fc  nop
  100038200  ldr     x23, [x8, #0xe00]
  100038204  add     x2, sp, #0x18
  100038208  add     x3, sp, #0x58
  10003820c  mov     w4, #0x10
  100038210  mov     x1, x23
  100038214  bl      _objc_msgSend                            ; [[self itemNames] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  100038218  mov     x24, x0
  10003821c  cbz     x24, loc_1000382bc                       ; if ([[self itemNames] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  100038220  mov     w27, #0
  100038224  ldr     x8, [sp, #0x28]
  100038228  ldr     x28, [x8]
  10003822c  adrp    x8, #0x100416000
  100038230  add     x8, x8, #0xf58                           ; &@selector(isEqualToString:)
  100038234  ldr     x25, [x8]
loc_100038238:
  100038238  mov     x26, #0
loc_10003823c:
  10003823c  ldr     x8, [sp, #0x28]
  100038240  ldr     x8, [x8]
  100038244  cmp     x8, x28
  100038248  b.eq    loc_100038254                            ; if (x8 == x28)
  10003824c  mov     x0, x22
  100038250  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self itemNames])
loc_100038254:
  100038254  ldr     x8, [sp, #0x20]
  100038258  ldr     x0, [x8, x26, lsl #3]
  10003825c  mov     x1, x25
  100038260  mov     x2, x19
  100038264  bl      _objc_msgSend                            ; [x0 isEqualToString:arg1]
  100038268  cbnz    w0, loc_1000382a0                        ; if ([x0 isEqualToString:arg1] != 0)
  10003826c  add     x26, x26, #1
  100038270  cmp     x26, x24
  100038274  b.lo    loc_10003823c                            ; if ((x26 + 1) <u [[self itemNames] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  100038278  add     x2, sp, #0x18
  10003827c  add     x3, sp, #0x58
  100038280  mov     w4, #0x10
  100038284  mov     x0, x22
  100038288  mov     x1, x23
  10003828c  bl      _objc_msgSend                            ; [[self itemNames] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  100038290  mov     x24, x0
  100038294  add     x27, x26, w27, uxtw
  100038298  cbnz    x24, loc_100038238                       ; if ([[self itemNames] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
  10003829c  b       loc_1000382bc
loc_1000382a0:
  1000382a0  adrp    x8, #0x100416000
  1000382a4  nop
  1000382a8  ldr     x1, [x8, #0xfa8]
  1000382ac  add     w2, w27, w26
  1000382b0  mov     x0, x21
  1000382b4  ldr     w3, [sp, #0x14]
  1000382b8  bl      _objc_msgSend                            ; [self openDescriptionForItemAtIndex:(w27 + w26) withButton:arg2]
loc_1000382bc:
  1000382bc  mov     x0, x22
  1000382c0  bl      _objc_release
  1000382c4  mov     x0, x19
  1000382c8  bl      _objc_release
  1000382cc  ldur    x8, [x29, #-0x58]
  1000382d0  sub     x8, x20, x8
  1000382d4  cbnz    x8, loc_1000382f8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000382d8  sub     sp, x29, #0x50
  1000382dc  ldp     x29, x30, [sp, #0x50]
  1000382e0  ldp     x20, x19, [sp, #0x40]
  1000382e4  ldp     x22, x21, [sp, #0x30]
  1000382e8  ldp     x24, x23, [sp, #0x20]
  1000382ec  ldp     x26, x25, [sp, #0x10]
  1000382f0  ldp     x28, x27, [sp], #0x60
  1000382f4  ret
loc_1000382f8:
  1000382f8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000382fc:
  1000382fc  mov     x20, x0
  100038300  mov     x0, x22
  100038304  bl      _objc_release
loc_100038308:
  100038308  mov     x0, x19
  10003830c  bl      _objc_release
  100038310  mov     x0, x20
  100038314  bl      __Unwind_Resume                          ; Unwind_Resume()
  100038318  b       loc_1000382fc
  10003831c  mov     x20, x0
  100038320  b       loc_100038308
  100038324  b       loc_1000382fc

; ======================================================================
; -[ADViewWithWeaponDetailViewController openDescriptionForItemAtIndex:withButton:]
; address 0x100038328  size 1280  kind objc
; ======================================================================
  100038328  stp     x28, x27, [sp, #-0x60]!
  10003832c  stp     x26, x25, [sp, #0x10]
  100038330  stp     x24, x23, [sp, #0x20]
  100038334  stp     x22, x21, [sp, #0x30]
  100038338  stp     x20, x19, [sp, #0x40]
  10003833c  stp     x29, x30, [sp, #0x50]
  100038340  add     x29, sp, #0x50
  100038344  sub     sp, sp, #0xf0
  100038348  mov     x20, x2
  10003834c  mov     x19, x0
  100038350  adrp    x8, #0x1003b0000
  100038354  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100038358  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10003835c  stur    x8, [x29, #-0x58]
  100038360  eor     w2, w3, #1
  100038364  adrp    x8, #0x100418000
  100038368  nop
  10003836c  ldr     x1, [x8, #0x520]
  100038370  bl      _objc_msgSend                            ; [self setHideEquipButtonsOnDetailView:(arg2 ^ 1)]
  100038374  adrp    x8, #0x100418000
  100038378  nop
  10003837c  ldr     x21, [x8, #0x4c8]
  100038380  mov     x0, x19
  100038384  mov     x1, x21
  100038388  mov     x2, x20
  10003838c  bl      _objc_msgSend                            ; [self loadArmoryDetailAtIndex:arg1]
  100038390  sub     w2, w20, #1
  100038394  mov     x0, x19
  100038398  mov     x1, x21
  10003839c  bl      _objc_msgSend                            ; [self loadArmoryDetailAtIndex:(arg1 - 1)]
  1000383a0  add     w2, w20, #1
  1000383a4  mov     x0, x19
  1000383a8  mov     x1, x21
  1000383ac  bl      _objc_msgSend                            ; [self loadArmoryDetailAtIndex:(arg1 + 1)]
  1000383b0  adrp    x8, #0x100416000
  1000383b4  nop
  1000383b8  ldr     x22, [x8, #0xf18]
  1000383bc  mov     x0, x19
  1000383c0  mov     x1, x22
  1000383c4  bl      _objc_msgSend                            ; [self view]
  1000383c8  mov     x29, x29
  1000383cc  bl      _objc_retainAutoreleasedReturnValue
  1000383d0  mov     x24, x0
  1000383d4  adrp    x8, #0x100418000
  1000383d8  nop
  1000383dc  ldr     x21, [x8, #0x518]
  1000383e0  mov     x0, x19
  1000383e4  mov     x1, x21
  1000383e8  bl      _objc_msgSend                            ; [self detailView]
  1000383ec  mov     x29, x29
  1000383f0  bl      _objc_retainAutoreleasedReturnValue
  1000383f4  mov     x25, x0
  1000383f8  adrp    x8, #0x100417000
  1000383fc  nop
  100038400  ldr     x23, [x8, #0x190]
  100038404  mov     x0, x24
  100038408  mov     x1, x23
  10003840c  mov     x2, x25
  100038410  bl      _objc_msgSend                            ; [[self view] bringSubviewToFront:[self detailView]]
  100038414  mov     x0, x25
  100038418  bl      _objc_release
  10003841c  mov     x0, x24
  100038420  bl      _objc_release
  100038424  adrp    x8, #0x100418000
  100038428  nop
  10003842c  ldr     x25, [x8, #0x470]
  100038430  mov     x0, x19
  100038434  mov     x1, x25
  100038438  bl      _objc_msgSend                            ; [self detailScroller]
  10003843c  mov     x29, x29
  100038440  bl      _objc_retainAutoreleasedReturnValue
  100038444  mov     x24, x0
  100038448  mov     x0, x19
  10003844c  mov     x1, x25
  100038450  bl      _objc_msgSend                            ; [self detailScroller]
  100038454  mov     x29, x29
  100038458  bl      _objc_retainAutoreleasedReturnValue
  10003845c  mov     x25, x0
  100038460  adrp    x8, #0x100416000
  100038464  nop
  100038468  ldr     x1, [x8, #0xf38]
  10003846c  bl      _objc_msgSend                            ; [[self detailScroller] frame]
  100038470  scvtf   d0, w20
  100038474  fmul    d0, d0, d2
  100038478  adrp    x8, #0x100417000
  10003847c  nop
  100038480  ldr     x1, [x8, #0x758]
  100038484  movi    v1.16b, #0
  100038488  mov     x0, x24
  10003848c  bl      _objc_msgSend                            ; [[self detailScroller] setContentOffset:{((float)arg1 * [[self detailScroller] frame].2), 0}]
  100038490  mov     x0, x25
  100038494  bl      _objc_release
  100038498  mov     x0, x24
  10003849c  bl      _objc_release
  1000384a0  mov     x0, x19
  1000384a4  mov     x1, x22
  1000384a8  bl      _objc_msgSend                            ; [self view]
  1000384ac  mov     x29, x29
  1000384b0  bl      _objc_retainAutoreleasedReturnValue
  1000384b4  mov     x24, x0
  1000384b8  adrp    x8, #0x100417000
  1000384bc  nop
  1000384c0  ldr     x1, [x8, #0x2a8]
  1000384c4  mov     x0, x19
  1000384c8  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000384cc  mov     x29, x29
  1000384d0  bl      _objc_retainAutoreleasedReturnValue
  1000384d4  mov     x25, x0
  1000384d8  mov     x1, x22
  1000384dc  bl      _objc_msgSend                            ; [[self statusBarViewController] view]
  1000384e0  mov     x29, x29
  1000384e4  bl      _objc_retainAutoreleasedReturnValue
  1000384e8  mov     x22, x0
  1000384ec  mov     x0, x24
  1000384f0  mov     x1, x23
  1000384f4  mov     x2, x22
  1000384f8  bl      _objc_msgSend                            ; [[self view] bringSubviewToFront:[[self statusBarViewController] view]]
  1000384fc  mov     x0, x22
  100038500  bl      _objc_release
  100038504  mov     x0, x25
  100038508  bl      _objc_release
  10003850c  mov     x0, x24
  100038510  bl      _objc_release
  100038514  sxtw    x2, w20
  100038518  adrp    x8, #0x100418000
  10003851c  nop
  100038520  ldr     x1, [x8, #0x4e8]
  100038524  mov     x0, x19
  100038528  bl      _objc_msgSend                            ; [self setCurrentWeaponBrowseIndex:arg1]
  10003852c  adrp    x8, #0x100418000
  100038530  nop
  100038534  ldr     x1, [x8, #0x498]
  100038538  mov     x0, x19
  10003853c  bl      _objc_msgSend                            ; [self itemNames]
  100038540  mov     x29, x29
  100038544  bl      _objc_retainAutoreleasedReturnValue
  100038548  mov     x23, x0
  10003854c  adrp    x8, #0x100418000
  100038550  nop
  100038554  ldr     x22, [x8, #0x4e0]
  100038558  mov     x0, x19
  10003855c  mov     x1, x22
  100038560  bl      _objc_msgSend                            ; [self currentWeaponBrowseIndex]
  100038564  mov     x2, x0
  100038568  adrp    x8, #0x100416000
  10003856c  nop
  100038570  ldr     x1, [x8, #0xc30]
  100038574  mov     x0, x23
  100038578  bl      _objc_msgSend                            ; [[self itemNames] objectAtIndex:[self currentWeaponBrowseIndex]]
  10003857c  mov     x29, x29
  100038580  bl      _objc_retainAutoreleasedReturnValue
  100038584  mov     x20, x0
  100038588  mov     x0, x23
  10003858c  bl      _objc_release
  100038590  adrp    x8, #0x10041e000
  100038594  ldr     x0, [x8, #8]                             ; class ADTracker
  100038598  adrp    x8, #0x100416000
  10003859c  nop
  1000385a0  ldr     x1, [x8, #0xac0]
  1000385a4  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000385a8  mov     x29, x29
  1000385ac  bl      _objc_retainAutoreleasedReturnValue
  1000385b0  mov     x23, x0
  1000385b4  adrp    x8, #0x100418000
  1000385b8  nop
  1000385bc  ldr     x1, [x8, #0x4f0]
  1000385c0  adrp    x3, #0x1003bc000
  1000385c4  add     x3, x3, #0x4d0                           ; @"table"
  1000385c8  mov     x2, x20
  1000385cc  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordWeaponBrowse:[[self itemNames] objectAtIndex:[self currentWeaponBrowseIndex]] BrowseForm:@"table"]
  1000385d0  mov     x0, x23
  1000385d4  bl      _objc_release
  1000385d8  mov     x0, x19
  1000385dc  mov     x1, x22
  1000385e0  bl      _objc_msgSend                            ; [self currentWeaponBrowseIndex]
  1000385e4  str     x0, [sp]
  1000385e8  adrp    x0, #0x1003bc000
  1000385ec  add     x0, x0, #0x4b0                           ; @"The current browse index = %d"
  1000385f0  bl      _NSLog                                   ; NSLog(@"The current browse index = %d", [self currentWeaponBrowseIndex])
  1000385f4  mov     x0, x19
  1000385f8  mov     x1, x21
  1000385fc  bl      _objc_msgSend                            ; [self detailView]
  100038600  mov     x29, x29
  100038604  bl      _objc_retainAutoreleasedReturnValue
  100038608  mov     x21, x0
  10003860c  adrp    x8, #0x100417000
  100038610  nop
  100038614  ldr     x1, [x8, #0x828]
  100038618  fmov    d0, #1.00000000
  10003861c  bl      _objc_msgSend                            ; [[self detailView] setAlpha:1]
  100038620  str     x20, [sp, #0x20]
  100038624  mov     x0, x21
  100038628  bl      _objc_release
  10003862c  stp     xzr, xzr, [sp, #0x58]
  100038630  stp     xzr, xzr, [sp, #0x48]
  100038634  stp     xzr, xzr, [sp, #0x38]
  100038638  stp     xzr, xzr, [sp, #0x28]
  10003863c  adrp    x8, #0x10041f000
  100038640  ldrsw   x8, [x8, #0x854]                         ; ivar offset ADViewWithWeaponDetailViewController.armoryDetails (+0x140)
  100038644  ldr     x0, [x19, x8]                            ; x0 = self->armoryDetails
  100038648  str     x19, [sp, #0x18]
  10003864c  bl      _objc_retain
  100038650  mov     x21, x0
  100038654  adrp    x8, #0x100416000
  100038658  nop
  10003865c  ldr     x22, [x8, #0xe00]
  100038660  add     x2, sp, #0x28
  100038664  add     x3, sp, #0x68
  100038668  mov     w4, #0x10
  10003866c  mov     x1, x22
  100038670  bl      _objc_msgSend                            ; [self->armoryDetails countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  100038674  mov     x23, x0
  100038678  cbz     x23, loc_100038728                       ; if ([self->armoryDetails countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] == 0)
  10003867c  ldr     x8, [sp, #0x38]
  100038680  ldr     x28, [x8]
  100038684  adrp    x8, #0x100417000
  100038688  nop
  10003868c  adrp    x9, #0x100417000
  100038690  add     x9, x9, #0x3b8                           ; &@selector(isKindOfClass:)
  100038694  ldr     x24, [x8, #0x2e0]
  100038698  ldr     x25, [x9]
  10003869c  adrp    x8, #0x100418000
  1000386a0  add     x8, x8, #0x528                           ; &@selector(checkEquipButtons)
  1000386a4  ldr     x26, [x8]
  1000386a8  adrp    x20, #0x10041e000
loc_1000386ac:
  1000386ac  mov     x19, #0
loc_1000386b0:
  1000386b0  ldr     x8, [sp, #0x38]
  1000386b4  ldr     x8, [x8]
  1000386b8  cmp     x8, x28
  1000386bc  b.eq    loc_1000386c8                            ; if (x8 == x28)
  1000386c0  mov     x0, x21
  1000386c4  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->armoryDetails)
loc_1000386c8:
  1000386c8  ldr     x8, [sp, #0x30]
  1000386cc  ldr     x27, [x8, x19, lsl #3]
  1000386d0  ldr     x0, [x20, #0x148]                        ; class ADArmoryWeaponDescriptionViewController
  1000386d4  mov     x1, x24
  1000386d8  bl      _objc_msgSend                            ; [ADArmoryWeaponDescriptionViewController class]
  1000386dc  mov     x2, x0
  1000386e0  mov     x0, x27
  1000386e4  mov     x1, x25
  1000386e8  bl      _objc_msgSend                            ; [x0 isKindOfClass:[ADArmoryWeaponDescriptionViewController class]]
  1000386ec  cbz     w0, loc_1000386fc                        ; if ([x0 isKindOfClass:[ADArmoryWeaponDescriptionViewController class]] == 0)
  1000386f0  mov     x0, x27
  1000386f4  mov     x1, x26
  1000386f8  bl      _objc_msgSend                            ; [x0 checkEquipButtons]
loc_1000386fc:
  1000386fc  add     x19, x19, #1
  100038700  cmp     x19, x23
  100038704  b.lo    loc_1000386b0                            ; if ((x19 + 1) <u [self->armoryDetails countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16])
  100038708  add     x2, sp, #0x28
  10003870c  add     x3, sp, #0x68
  100038710  mov     w4, #0x10
  100038714  mov     x0, x21
  100038718  mov     x1, x22
  10003871c  bl      _objc_msgSend                            ; [self->armoryDetails countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  100038720  mov     x23, x0
  100038724  cbnz    x23, loc_1000386ac                       ; if ([self->armoryDetails countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] != 0)
loc_100038728:
  100038728  mov     x0, x21
  10003872c  bl      _objc_release
  100038730  adrp    x8, #0x100418000
  100038734  nop
  100038738  ldr     x1, [x8, #0x500]
  10003873c  ldp     x0, x20, [sp, #0x18]
  100038740  bl      _objc_msgSend                            ; [self checkArrowsAfterClick]
  100038744  adrp    x19, #0x1003b0000
  100038748  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  10003874c  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  100038750  mov     x0, x20
  100038754  bl      _objc_release
  100038758  ldur    x8, [x29, #-0x58]
  10003875c  sub     x8, x19, x8
  100038760  cbnz    x8, loc_100038784                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100038764  sub     sp, x29, #0x50
  100038768  ldp     x29, x30, [sp, #0x50]
  10003876c  ldp     x20, x19, [sp, #0x40]
  100038770  ldp     x22, x21, [sp, #0x30]
  100038774  ldp     x24, x23, [sp, #0x20]
  100038778  ldp     x26, x25, [sp, #0x10]
  10003877c  ldp     x28, x27, [sp], #0x60
  100038780  ret
loc_100038784:
  100038784  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100038788:
  100038788  mov     x19, x0
  10003878c  mov     x0, x21
  100038790  bl      _objc_release
  100038794  ldr     x20, [sp, #0x20]
loc_100038798:
  100038798  mov     x0, x20
loc_10003879c:
  10003879c  bl      _objc_release
  1000387a0  mov     x0, x19
  1000387a4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000387a8  b       loc_100038788
  1000387ac  mov     x19, x0
  1000387b0  b       loc_100038798
  1000387b4  b       loc_1000387e0
  1000387b8  mov     x19, x0
  1000387bc  mov     x0, x23
  1000387c0  b       loc_10003879c
  1000387c4  mov     x19, x0
  1000387c8  b       loc_1000387fc
  1000387cc  b       loc_1000387e0
  1000387d0  mov     x19, x0
  1000387d4  b       loc_1000387fc
  1000387d8  mov     x19, x0
  1000387dc  b       loc_1000387fc
loc_1000387e0:
  1000387e0  mov     x19, x0
  1000387e4  b       loc_1000387f4
  1000387e8  mov     x19, x0
  1000387ec  mov     x0, x22
  1000387f0  bl      _objc_release
loc_1000387f4:
  1000387f4  mov     x0, x25
  1000387f8  bl      _objc_release
loc_1000387fc:
  1000387fc  mov     x0, x24
  100038800  b       loc_10003879c
  100038804  mov     x19, x0
  100038808  mov     x0, x23
  10003880c  bl      _objc_release
  100038810  b       loc_100038798
  100038814  mov     x19, x0
  100038818  mov     x0, x21
  10003881c  bl      _objc_release
  100038820  b       loc_100038798
  100038824  b       loc_100038788

; ======================================================================
; -[ADViewWithWeaponDetailViewController showNotEnoughMoneyAlert]
; address 0x100038828  size 4  kind objc
; ======================================================================
  100038828  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController backButtonPressed]
; address 0x10003882c  size 104  kind objc
; ======================================================================
  10003882c  stp     x20, x19, [sp, #-0x20]!
  100038830  stp     x29, x30, [sp, #0x10]
  100038834  add     x29, sp, #0x10
  100038838  sub     sp, sp, #0x10
  10003883c  adrp    x8, #0x100417000
  100038840  nop
  100038844  ldr     x1, [x8, #0x2e0]
  100038848  bl      _objc_msgSend                            ; [self class]
  10003884c  bl      _NSStringFromClass                       ; NSStringFromClass([self class])
  100038850  mov     x29, x29
  100038854  bl      _objc_retainAutoreleasedReturnValue
  100038858  mov     x19, x0
  10003885c  str     x19, [sp]
  100038860  adrp    x0, #0x1003bc000
  100038864  add     x0, x0, #0x4f0                           ; @"The %@ class' back button was pressed"
  100038868  bl      _NSLog                                   ; NSLog(@"The %@ class' back button was pressed", NSStringFromClass([self class]))
  10003886c  mov     x0, x19
  100038870  sub     sp, x29, #0x10
  100038874  ldp     x29, x30, [sp, #0x10]
  100038878  ldp     x20, x19, [sp], #0x20
  10003887c  b       _objc_release
  100038880  mov     x20, x0
  100038884  mov     x0, x19
  100038888  bl      _objc_release
  10003888c  mov     x0, x20
  100038890  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADViewWithWeaponDetailViewController viewDidLoad]
; address 0x100038894  size 112  kind objc
; ======================================================================
  100038894  stp     x20, x19, [sp, #-0x20]!
  100038898  stp     x29, x30, [sp, #0x10]
  10003889c  add     x29, sp, #0x10
  1000388a0  sub     sp, sp, #0x10
  1000388a4  mov     x19, x0
  1000388a8  str     x19, [sp]
  1000388ac  adrp    x8, #0x10041e000
  1000388b0  ldr     x8, [x8, #0xc98]
  1000388b4  str     x8, [sp, #8]
  1000388b8  adrp    x8, #0x100416000
  1000388bc  nop
  1000388c0  ldr     x1, [x8, #0xb48]
  1000388c4  mov     x0, sp
  1000388c8  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000388cc  adrp    x8, #0x100418000
  1000388d0  nop
  1000388d4  ldr     x1, [x8, #0x530]
  1000388d8  mov     x0, x19
  1000388dc  bl      _objc_msgSend                            ; [self initDetailScroller]
  1000388e0  adrp    x8, #0x100418000
  1000388e4  nop
  1000388e8  ldr     x1, [x8, #0x538]
  1000388ec  mov     x0, x19
  1000388f0  bl      _objc_msgSend                            ; [self sendDetailViewToBack]
  1000388f4  sub     sp, x29, #0x10
  1000388f8  ldp     x29, x30, [sp, #0x10]
  1000388fc  ldp     x20, x19, [sp], #0x20
  100038900  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController didReceiveMemoryWarning]
; address 0x100038904  size 60  kind objc
; ======================================================================
  100038904  stp     x29, x30, [sp, #-0x10]!
  100038908  mov     x29, sp
  10003890c  sub     sp, sp, #0x10
  100038910  str     x0, [sp]
  100038914  adrp    x8, #0x10041e000
  100038918  ldr     x8, [x8, #0xc98]
  10003891c  str     x8, [sp, #8]
  100038920  adrp    x8, #0x100416000
  100038924  nop
  100038928  ldr     x1, [x8, #0xbf8]
  10003892c  mov     x0, sp
  100038930  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  100038934  mov     sp, x29
  100038938  ldp     x29, x30, [sp], #0x10
  10003893c  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController dealloc]
; address 0x100038940  size 608  kind objc
; ======================================================================
  100038940  stp     x28, x27, [sp, #-0x60]!
  100038944  stp     x26, x25, [sp, #0x10]
  100038948  stp     x24, x23, [sp, #0x20]
  10003894c  stp     x22, x21, [sp, #0x30]
  100038950  stp     x20, x19, [sp, #0x40]
  100038954  stp     x29, x30, [sp, #0x50]
  100038958  add     x29, sp, #0x50
  10003895c  sub     sp, sp, #0x120
  100038960  str     x0, [sp, #0x18]
  100038964  adrp    x8, #0x1003b0000
  100038968  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10003896c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100038970  stur    x8, [x29, #-0x58]
  100038974  stp     xzr, xzr, [sp, #0x88]
  100038978  stp     xzr, xzr, [sp, #0x78]
  10003897c  stp     xzr, xzr, [sp, #0x68]
  100038980  stp     xzr, xzr, [sp, #0x58]
  100038984  adrp    x8, #0x10041f000
  100038988  ldrsw   x8, [x8, #0x854]                         ; ivar offset ADViewWithWeaponDetailViewController.armoryDetails (+0x140)
  10003898c  str     x8, [sp, #0x10]
  100038990  ldr     x0, [x0, x8]                             ; x0 = self->armoryDetails
  100038994  bl      _objc_retain
  100038998  str     x0, [sp, #0x30]
  10003899c  adrp    x8, #0x100416000
  1000389a0  nop
  1000389a4  ldr     x1, [x8, #0xe00]
  1000389a8  str     x1, [sp, #0x20]
  1000389ac  add     x2, sp, #0x58
  1000389b0  add     x3, sp, #0x98
  1000389b4  mov     w4, #0x10
  1000389b8  bl      _objc_msgSend                            ; [self->armoryDetails countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  1000389bc  mov     x22, x0
  1000389c0  cbz     x22, loc_100038ab4                       ; if ([self->armoryDetails countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] == 0)
  1000389c4  ldr     x8, [sp, #0x68]
  1000389c8  adrp    x9, #0x100418000
  1000389cc  nop
  1000389d0  ldr     x21, [x8]
  1000389d4  ldr     x23, [x9, #0x468]
  1000389d8  adrp    x8, #0x100417000
  1000389dc  nop
  1000389e0  adrp    x9, #0x100416000
  1000389e4  add     x9, x9, #0xf18                           ; &@selector(view)
  1000389e8  ldr     x24, [x8, #0x218]
  1000389ec  ldr     x8, [x9]
  1000389f0  str     x8, [sp, #0x28]
  1000389f4  adrp    x8, #0x100417000
  1000389f8  add     x8, x8, #0x1d0                           ; &@selector(removeFromSuperview)
  1000389fc  ldr     x26, [x8]
  100038a00  adrp    x20, #0x10041e000
loc_100038a04:
  100038a04  mov     x25, #0
loc_100038a08:
  100038a08  ldr     x8, [sp, #0x68]
  100038a0c  ldr     x8, [x8]
  100038a10  cmp     x8, x21
  100038a14  b.eq    loc_100038a20                            ; if (x8 == x21)
  100038a18  ldr     x0, [sp, #0x30]
  100038a1c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->armoryDetails)
loc_100038a20:
  100038a20  ldr     x8, [sp, #0x60]
  100038a24  ldr     x27, [x8, x25, lsl #3]
  100038a28  ldr     x0, [x20, #0x140]                        ; class NSNull
  100038a2c  mov     x1, x23
  100038a30  bl      _objc_msgSend                            ; [NSNull null]
  100038a34  mov     x29, x29
  100038a38  bl      _objc_retainAutoreleasedReturnValue
  100038a3c  mov     x28, x0
  100038a40  mov     x0, x27
  100038a44  mov     x1, x24
  100038a48  mov     x2, x28
  100038a4c  bl      _objc_msgSend                            ; [x0 isEqual:[NSNull null]]
  100038a50  mov     x19, x0
  100038a54  mov     x0, x28
  100038a58  bl      _objc_release
  100038a5c  tbnz    w19, #0, loc_100038a88                   ; if (([x0 isEqual:[NSNull null]] & 1))
  100038a60  mov     x0, x27
  100038a64  ldr     x1, [sp, #0x28]
  100038a68  bl      _objc_msgSend                            ; [x0 view]
  100038a6c  mov     x29, x29
  100038a70  bl      _objc_retainAutoreleasedReturnValue
  100038a74  mov     x27, x0
  100038a78  mov     x1, x26
  100038a7c  bl      _objc_msgSend                            ; [[x0 view] removeFromSuperview]
  100038a80  mov     x0, x27
  100038a84  bl      _objc_release
loc_100038a88:
  100038a88  add     x25, x25, #1
  100038a8c  cmp     x25, x22
  100038a90  b.lo    loc_100038a08                            ; if ((x25 + 1) <u [self->armoryDetails countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16])
  100038a94  add     x2, sp, #0x58
  100038a98  add     x3, sp, #0x98
  100038a9c  mov     w4, #0x10
  100038aa0  ldr     x0, [sp, #0x30]
  100038aa4  ldr     x1, [sp, #0x20]
  100038aa8  bl      _objc_msgSend                            ; [self->armoryDetails countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  100038aac  mov     x22, x0
  100038ab0  cbnz    x22, loc_100038a04                       ; if ([self->armoryDetails countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] != 0)
loc_100038ab4:
  100038ab4  ldr     x0, [sp, #0x30]
  100038ab8  bl      _objc_release
  100038abc  ldp     x8, x19, [sp, #0x10]
  100038ac0  ldr     x0, [x19, x8]                            ; x0 = self->armoryDetails
  100038ac4  adrp    x8, #0x100417000
  100038ac8  nop
  100038acc  ldr     x1, [x8, #0x1b8]
  100038ad0  bl      _objc_msgSend                            ; [self->armoryDetails removeAllObjects]
  100038ad4  str     x19, [sp, #0x48]
  100038ad8  adrp    x8, #0x10041e000
  100038adc  ldr     x8, [x8, #0xc98]
  100038ae0  str     x8, [sp, #0x50]
  100038ae4  adrp    x8, #0x100416000
  100038ae8  nop
  100038aec  ldr     x1, [x8, #0xfc8]
  100038af0  add     x0, sp, #0x48
  100038af4  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100038af8  ldur    x8, [x29, #-0x58]
  100038afc  adrp    x9, #0x1003b0000
  100038b00  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100038b04  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100038b08  sub     x8, x9, x8
  100038b0c  cbnz    x8, loc_100038b30                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100038b10  sub     sp, x29, #0x50
  100038b14  ldp     x29, x30, [sp, #0x50]
  100038b18  ldp     x20, x19, [sp, #0x40]
  100038b1c  ldp     x22, x21, [sp, #0x30]
  100038b20  ldp     x24, x23, [sp, #0x20]
  100038b24  ldp     x26, x25, [sp, #0x10]
  100038b28  ldp     x28, x27, [sp], #0x60
  100038b2c  ret
loc_100038b30:
  100038b30  bl      ___stack_chk_fail                        ; stack_chk_fail([super dealloc])
loc_100038b34:
  100038b34  mov     x21, x0
  100038b38  b       loc_100038b54
  100038b3c  mov     x21, x0
  100038b40  mov     x0, x28
  100038b44  b       loc_100038b50
  100038b48  mov     x21, x0
  100038b4c  mov     x0, x27
loc_100038b50:
  100038b50  bl      _objc_release
loc_100038b54:
  100038b54  ldr     x19, [sp, #0x18]
  100038b58  ldr     x0, [sp, #0x30]
  100038b5c  bl      _objc_release
loc_100038b60:
  100038b60  str     x19, [sp, #0x38]
  100038b64  adrp    x8, #0x10041e000
  100038b68  ldr     x8, [x8, #0xc98]
  100038b6c  str     x8, [sp, #0x40]
  100038b70  adrp    x8, #0x100416000
  100038b74  nop
  100038b78  ldr     x1, [x8, #0xfc8]
  100038b7c  add     x0, sp, #0x38
  100038b80  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100038b84  mov     x0, x21
  100038b88  bl      __Unwind_Resume                          ; Unwind_Resume()
  100038b8c  bl      sub_10000b760
  100038b90  b       loc_100038b34
  100038b94  b       loc_100038b34
  100038b98  mov     x21, x0
  100038b9c  b       loc_100038b60

; ======================================================================
; -[ADViewWithWeaponDetailViewController detailView]
; address 0x100038ba0  size 16  kind objc
; ======================================================================
  100038ba0  adrp    x8, #0x10041f000
  100038ba4  ldrsw   x8, [x8, #0x858]                         ; ivar offset ADViewWithWeaponDetailViewController._detailView (+0x150)
  100038ba8  ldr     x0, [x0, x8]                             ; x0 = self->_detailView
  100038bac  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController setDetailView:]
; address 0x100038bb0  size 56  kind objc
; ======================================================================
  100038bb0  stp     x20, x19, [sp, #-0x20]!
  100038bb4  stp     x29, x30, [sp, #0x10]
  100038bb8  add     x29, sp, #0x10
  100038bbc  mov     x19, x0
  100038bc0  adrp    x8, #0x10041f000
  100038bc4  ldrsw   x20, [x8, #0x858]                        ; ivar offset ADViewWithWeaponDetailViewController._detailView (+0x150)
  100038bc8  mov     x0, x2
  100038bcc  bl      _objc_retain
  100038bd0  ldr     x8, [x19, x20]                           ; x8 = self->_detailView
  100038bd4  str     x0, [x19, x20]                           ; self->_detailView = arg1
  100038bd8  mov     x0, x8
  100038bdc  ldp     x29, x30, [sp, #0x10]
  100038be0  ldp     x20, x19, [sp], #0x20
  100038be4  b       _objc_release

; ======================================================================
; -[ADViewWithWeaponDetailViewController detailScroller]
; address 0x100038be8  size 16  kind objc
; ======================================================================
  100038be8  adrp    x8, #0x10041f000
  100038bec  ldrsw   x8, [x8, #0x85c]                         ; ivar offset ADViewWithWeaponDetailViewController._detailScroller (+0x158)
  100038bf0  ldr     x0, [x0, x8]                             ; x0 = self->_detailScroller
  100038bf4  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController setDetailScroller:]
; address 0x100038bf8  size 56  kind objc
; ======================================================================
  100038bf8  stp     x20, x19, [sp, #-0x20]!
  100038bfc  stp     x29, x30, [sp, #0x10]
  100038c00  add     x29, sp, #0x10
  100038c04  mov     x19, x0
  100038c08  adrp    x8, #0x10041f000
  100038c0c  ldrsw   x20, [x8, #0x85c]                        ; ivar offset ADViewWithWeaponDetailViewController._detailScroller (+0x158)
  100038c10  mov     x0, x2
  100038c14  bl      _objc_retain
  100038c18  ldr     x8, [x19, x20]                           ; x8 = self->_detailScroller
  100038c1c  str     x0, [x19, x20]                           ; self->_detailScroller = arg1
  100038c20  mov     x0, x8
  100038c24  ldp     x29, x30, [sp, #0x10]
  100038c28  ldp     x20, x19, [sp], #0x20
  100038c2c  b       _objc_release

; ======================================================================
; -[ADViewWithWeaponDetailViewController rightArrow]
; address 0x100038c30  size 16  kind objc
; ======================================================================
  100038c30  adrp    x8, #0x10041f000
  100038c34  ldrsw   x8, [x8, #0x860]                         ; ivar offset ADViewWithWeaponDetailViewController._rightArrow (+0x160)
  100038c38  ldr     x0, [x0, x8]                             ; x0 = self->_rightArrow
  100038c3c  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController setRightArrow:]
; address 0x100038c40  size 56  kind objc
; ======================================================================
  100038c40  stp     x20, x19, [sp, #-0x20]!
  100038c44  stp     x29, x30, [sp, #0x10]
  100038c48  add     x29, sp, #0x10
  100038c4c  mov     x19, x0
  100038c50  adrp    x8, #0x10041f000
  100038c54  ldrsw   x20, [x8, #0x860]                        ; ivar offset ADViewWithWeaponDetailViewController._rightArrow (+0x160)
  100038c58  mov     x0, x2
  100038c5c  bl      _objc_retain
  100038c60  ldr     x8, [x19, x20]                           ; x8 = self->_rightArrow
  100038c64  str     x0, [x19, x20]                           ; self->_rightArrow = arg1
  100038c68  mov     x0, x8
  100038c6c  ldp     x29, x30, [sp, #0x10]
  100038c70  ldp     x20, x19, [sp], #0x20
  100038c74  b       _objc_release

; ======================================================================
; -[ADViewWithWeaponDetailViewController leftArrow]
; address 0x100038c78  size 16  kind objc
; ======================================================================
  100038c78  adrp    x8, #0x10041f000
  100038c7c  ldrsw   x8, [x8, #0x864]                         ; ivar offset ADViewWithWeaponDetailViewController._leftArrow (+0x168)
  100038c80  ldr     x0, [x0, x8]                             ; x0 = self->_leftArrow
  100038c84  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController setLeftArrow:]
; address 0x100038c88  size 56  kind objc
; ======================================================================
  100038c88  stp     x20, x19, [sp, #-0x20]!
  100038c8c  stp     x29, x30, [sp, #0x10]
  100038c90  add     x29, sp, #0x10
  100038c94  mov     x19, x0
  100038c98  adrp    x8, #0x10041f000
  100038c9c  ldrsw   x20, [x8, #0x864]                        ; ivar offset ADViewWithWeaponDetailViewController._leftArrow (+0x168)
  100038ca0  mov     x0, x2
  100038ca4  bl      _objc_retain
  100038ca8  ldr     x8, [x19, x20]                           ; x8 = self->_leftArrow
  100038cac  str     x0, [x19, x20]                           ; self->_leftArrow = arg1
  100038cb0  mov     x0, x8
  100038cb4  ldp     x29, x30, [sp, #0x10]
  100038cb8  ldp     x20, x19, [sp], #0x20
  100038cbc  b       _objc_release

; ======================================================================
; -[ADViewWithWeaponDetailViewController itemNames]
; address 0x100038cc0  size 16  kind objc
; ======================================================================
  100038cc0  adrp    x8, #0x10041f000
  100038cc4  ldrsw   x8, [x8, #0x868]                         ; ivar offset ADViewWithWeaponDetailViewController._itemNames (+0x170)
  100038cc8  ldr     x0, [x0, x8]                             ; x0 = self->_itemNames
  100038ccc  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController setItemNames:]
; address 0x100038cd0  size 56  kind objc
; ======================================================================
  100038cd0  stp     x20, x19, [sp, #-0x20]!
  100038cd4  stp     x29, x30, [sp, #0x10]
  100038cd8  add     x29, sp, #0x10
  100038cdc  mov     x19, x0
  100038ce0  adrp    x8, #0x10041f000
  100038ce4  ldrsw   x20, [x8, #0x868]                        ; ivar offset ADViewWithWeaponDetailViewController._itemNames (+0x170)
  100038ce8  mov     x0, x2
  100038cec  bl      _objc_retain
  100038cf0  ldr     x8, [x19, x20]                           ; x8 = self->_itemNames
  100038cf4  str     x0, [x19, x20]                           ; self->_itemNames = arg1
  100038cf8  mov     x0, x8
  100038cfc  ldp     x29, x30, [sp, #0x10]
  100038d00  ldp     x20, x19, [sp], #0x20
  100038d04  b       _objc_release

; ======================================================================
; -[ADViewWithWeaponDetailViewController hideEquipButtonsOnDetailView]
; address 0x100038d08  size 16  kind objc
; ======================================================================
  100038d08  adrp    x8, #0x10041f000
  100038d0c  ldrsw   x8, [x8, #0x86c]                         ; ivar offset ADViewWithWeaponDetailViewController._hideEquipButtonsOnDetailView (+0x148)
  100038d10  ldrb    w0, [x0, x8]                             ; w0 = self->_hideEquipButtonsOnDetailView
  100038d14  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController setHideEquipButtonsOnDetailView:]
; address 0x100038d18  size 16  kind objc
; ======================================================================
  100038d18  adrp    x8, #0x10041f000
  100038d1c  ldrsw   x8, [x8, #0x86c]                         ; ivar offset ADViewWithWeaponDetailViewController._hideEquipButtonsOnDetailView (+0x148)
  100038d20  strb    w2, [x0, x8]                             ; self->_hideEquipButtonsOnDetailView = arg1
  100038d24  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController currentWeaponBrowseIndex]
; address 0x100038d28  size 16  kind objc
; ======================================================================
  100038d28  adrp    x8, #0x10041f000
  100038d2c  ldrsw   x8, [x8, #0x870]                         ; ivar offset ADViewWithWeaponDetailViewController._currentWeaponBrowseIndex (+0x178)
  100038d30  ldr     x0, [x0, x8]                             ; x0 = self->_currentWeaponBrowseIndex
  100038d34  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController setCurrentWeaponBrowseIndex:]
; address 0x100038d38  size 16  kind objc
; ======================================================================
  100038d38  adrp    x8, #0x10041f000
  100038d3c  ldrsw   x8, [x8, #0x870]                         ; ivar offset ADViewWithWeaponDetailViewController._currentWeaponBrowseIndex (+0x178)
  100038d40  str     x2, [x0, x8]                             ; self->_currentWeaponBrowseIndex = arg1
  100038d44  ret

; ======================================================================
; -[ADViewWithWeaponDetailViewController .cxx_destruct]
; address 0x100038d48  size 144  kind objc
; ======================================================================
  100038d48  stp     x20, x19, [sp, #-0x20]!
  100038d4c  stp     x29, x30, [sp, #0x10]
  100038d50  add     x29, sp, #0x10
  100038d54  mov     x19, x0
  100038d58  adrp    x8, #0x10041f000
  100038d5c  ldrsw   x8, [x8, #0x868]                         ; ivar offset ADViewWithWeaponDetailViewController._itemNames (+0x170)
  100038d60  add     x0, x19, x8
  100038d64  mov     x1, #0
  100038d68  bl      _objc_storeStrong
  100038d6c  adrp    x8, #0x10041f000
  100038d70  ldrsw   x8, [x8, #0x864]                         ; ivar offset ADViewWithWeaponDetailViewController._leftArrow (+0x168)
  100038d74  add     x0, x19, x8
  100038d78  mov     x1, #0
  100038d7c  bl      _objc_storeStrong
  100038d80  adrp    x8, #0x10041f000
  100038d84  ldrsw   x8, [x8, #0x860]                         ; ivar offset ADViewWithWeaponDetailViewController._rightArrow (+0x160)
  100038d88  add     x0, x19, x8
  100038d8c  mov     x1, #0
  100038d90  bl      _objc_storeStrong
  100038d94  adrp    x8, #0x10041f000
  100038d98  ldrsw   x8, [x8, #0x85c]                         ; ivar offset ADViewWithWeaponDetailViewController._detailScroller (+0x158)
  100038d9c  add     x0, x19, x8
  100038da0  mov     x1, #0
  100038da4  bl      _objc_storeStrong
  100038da8  adrp    x8, #0x10041f000
  100038dac  ldrsw   x8, [x8, #0x858]                         ; ivar offset ADViewWithWeaponDetailViewController._detailView (+0x150)
  100038db0  add     x0, x19, x8
  100038db4  mov     x1, #0
  100038db8  bl      _objc_storeStrong
  100038dbc  mov     x1, #0
  100038dc0  adrp    x8, #0x10041f000
  100038dc4  ldrsw   x8, [x8, #0x854]                         ; ivar offset ADViewWithWeaponDetailViewController.armoryDetails (+0x140)
  100038dc8  add     x0, x19, x8
  100038dcc  ldp     x29, x30, [sp, #0x10]
  100038dd0  ldp     x20, x19, [sp], #0x20
  100038dd4  b       _objc_storeStrong
