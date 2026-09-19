// unit ADArmoryViewController — 47 functions
//   0x100073864     224  -[ADArmoryViewController initWithNibName:bundle:loadoutEnabled:]
//   0x100073944     312  -[ADArmoryViewController initWithNibName:bundle:tab:loadoutEnabled:]
//   0x100073a7c     808  -[ADArmoryViewController loadView]
//   0x100073da4     244  -[ADArmoryViewController initWithNibName:bundle:weapon:]
//   0x100073e98    2792  -[ADArmoryViewController viewDidLoad]
//   0x100074980      28  -[ADArmoryViewController updateBrowseTimer:]
//   0x10007499c      32  -[ADArmoryViewController browse_dt]
//   0x1000749bc     740  -[ADArmoryViewController loadWeapons]
//   0x100074ca0     140  -[ADArmoryViewController loadWeapons]_block_invoke
//   0x100074d2c       8  sub_100074d2c
//   0x100074d34       8  sub_100074d34
//   0x100074d3c     780  -[ADArmoryViewController loadLoadout]
//   0x100075048     648  -[ADArmoryViewController loadPowerUps]
//   0x1000752d0     652  -[ADArmoryViewController loadCurrency]
//   0x10007555c     448  -[ADArmoryViewController weaponsButtonPressed:]
//   0x10007571c     844  -[ADArmoryViewController loadoutButtonPressed:]
//   0x100075a68     448  -[ADArmoryViewController powerUpButtonPressed:]
//   0x100075c28     448  -[ADArmoryViewController currencyButtonPressed:]
//   0x100075de8     604  -[ADArmoryViewController updateTabsAfterButtonPressed:]
//   0x100076044      60  -[ADArmoryViewController didReceiveMemoryWarning]
//   0x100076080     372  -[ADArmoryViewController backButtonPressed]
//   0x1000761f4       4  -[ADArmoryViewController backButtonPressed]_block_invoke
//   0x1000761f8    1056  -[ADArmoryViewController trackBrowsingTime]
//   0x100076618      60  -[ADArmoryViewController sendDetailViewToBack]
//   0x100076654      44  -[ADArmoryViewController setAccessibilityOnView:to:]
//   0x100076680     596  -[ADArmoryViewController toggleAccessibilityAfterTabWasSelected:]
//   0x1000768d4     684  -[ADArmoryViewController showNotEnoughMoneyAlert]
//   0x100076b80     320  -[ADArmoryViewController alertView:willDismissWithButtonIndex:]
//   0x100076cc0     268  -[ADArmoryViewController dealloc]
//   0x100076dcc      16  -[ADArmoryViewController contentContainer]
//   0x100076ddc      56  -[ADArmoryViewController setContentContainer:]
//   0x100076e14      16  -[ADArmoryViewController weaponsButton]
//   0x100076e24      56  -[ADArmoryViewController setWeaponsButton:]
//   0x100076e5c      16  -[ADArmoryViewController powerUpButton]
//   0x100076e6c      56  -[ADArmoryViewController setPowerUpButton:]
//   0x100076ea4      16  -[ADArmoryViewController currencyButton]
//   0x100076eb4      56  -[ADArmoryViewController setCurrencyButton:]
//   0x100076eec      16  -[ADArmoryViewController loadOutButton]
//   0x100076efc      56  -[ADArmoryViewController setLoadOutButton:]
//   0x100076f34      16  -[ADArmoryViewController browsingTime]
//   0x100076f44      12  -[ADArmoryViewController setBrowsingTime:]
//   0x100076f50      16  -[ADArmoryViewController setBrowse_dt:]
//   0x100076f60      16  -[ADArmoryViewController previousTab]
//   0x100076f70      12  -[ADArmoryViewController setPreviousTab:]
//   0x100076f7c      20  -[ADArmoryViewController loadoutEnabled]
//   0x100076f90      16  -[ADArmoryViewController setLoadoutEnabled:]
//   0x100076fa0     284  -[ADArmoryViewController .cxx_destruct]

; ======================================================================
; -[ADArmoryViewController initWithNibName:bundle:loadoutEnabled:]
; address 0x100073864  size 224  kind objc
; ======================================================================
  100073864  stp     x24, x23, [sp, #-0x40]!
  100073868  stp     x22, x21, [sp, #0x10]
  10007386c  stp     x20, x19, [sp, #0x20]
  100073870  stp     x29, x30, [sp, #0x30]
  100073874  add     x29, sp, #0x30
  100073878  sub     sp, sp, #0x10
  10007387c  mov     x20, x4
  100073880  mov     x21, x3
  100073884  mov     x22, x0
  100073888  mov     x0, x2
  10007388c  bl      _objc_retain
  100073890  mov     x19, x0
  100073894  mov     x0, x21
  100073898  bl      _objc_retain
  10007389c  mov     x21, x0
  1000738a0  str     x22, [sp]
  1000738a4  adrp    x8, #0x10041e000
  1000738a8  ldr     x8, [x8, #0xdf0]
  1000738ac  str     x8, [sp, #8]
  1000738b0  adrp    x8, #0x100416000
  1000738b4  nop
  1000738b8  ldr     x1, [x8, #0xb40]
  1000738bc  mov     x22, #0
  1000738c0  mov     x0, sp
  1000738c4  mov     x2, x19
  1000738c8  mov     x3, x21
  1000738cc  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000738d0  mov     x23, x0
  1000738d4  cbz     x23, loc_1000738f4                       ; if (self == 0)
  1000738d8  mov     x22, x23
  1000738dc  adrp    x8, #0x100419000
  1000738e0  nop
  1000738e4  ldr     x1, [x8, #0x820]
  1000738e8  mov     x0, x23
  1000738ec  mov     x2, x20
  1000738f0  bl      _objc_msgSend                            ; [self setLoadoutEnabled:arg3]
loc_1000738f4:
  1000738f4  mov     x0, x21
  1000738f8  bl      _objc_release
  1000738fc  mov     x0, x19
  100073900  bl      _objc_release
  100073904  mov     x0, x23
  100073908  sub     sp, x29, #0x30
  10007390c  ldp     x29, x30, [sp, #0x30]
  100073910  ldp     x20, x19, [sp, #0x20]
  100073914  ldp     x22, x21, [sp, #0x10]
  100073918  ldp     x24, x23, [sp], #0x40
  10007391c  ret
  100073920  mov     x20, x0
  100073924  mov     x0, x21
  100073928  bl      _objc_release
  10007392c  mov     x0, x19
  100073930  bl      _objc_release
  100073934  mov     x0, x22
  100073938  bl      _objc_release
  10007393c  mov     x0, x20
  100073940  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryViewController initWithNibName:bundle:tab:loadoutEnabled:]
; address 0x100073944  size 312  kind objc
; ======================================================================
  100073944  stp     x24, x23, [sp, #-0x40]!
  100073948  stp     x22, x21, [sp, #0x10]
  10007394c  stp     x20, x19, [sp, #0x20]
  100073950  stp     x29, x30, [sp, #0x30]
  100073954  add     x29, sp, #0x30
  100073958  sub     sp, sp, #0x10
  10007395c  mov     x21, x5
  100073960  mov     x22, x4
  100073964  mov     x20, x3
  100073968  mov     x23, x0
  10007396c  mov     x0, x2
  100073970  bl      _objc_retain
  100073974  mov     x19, x0
  100073978  mov     x0, x20
  10007397c  bl      _objc_retain
  100073980  mov     x20, x0
  100073984  mov     x0, x22
  100073988  bl      _objc_retain
  10007398c  mov     x22, x0
  100073990  str     x23, [sp]
  100073994  adrp    x8, #0x10041e000
  100073998  ldr     x8, [x8, #0xdf0]
  10007399c  str     x8, [sp, #8]
  1000739a0  adrp    x8, #0x100416000
  1000739a4  nop
  1000739a8  ldr     x1, [x8, #0xb40]
  1000739ac  mov     x23, #0
  1000739b0  mov     x0, sp
  1000739b4  mov     x2, x19
  1000739b8  mov     x3, x20
  1000739bc  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000739c0  mov     x24, x0
  1000739c4  cbz     x24, loc_100073a1c                       ; if (self == 0)
  1000739c8  mov     x23, x24
  1000739cc  adrp    x8, #0x100419000
  1000739d0  nop
  1000739d4  ldr     x1, [x8, #0x828]
  1000739d8  mov     x0, x24
  1000739dc  mov     x2, x22
  1000739e0  bl      _objc_msgSend                            ; [self setPreviousTab:arg3]
  1000739e4  mov     x23, x24
  1000739e8  adrp    x8, #0x100419000
  1000739ec  nop
  1000739f0  ldr     x1, [x8, #0x830]
  1000739f4  movi    v0.16b, #0
  1000739f8  mov     x0, x24
  1000739fc  bl      _objc_msgSend                            ; [self setBrowse_dt:0]
  100073a00  mov     x23, x24
  100073a04  adrp    x8, #0x100419000
  100073a08  nop
  100073a0c  ldr     x1, [x8, #0x820]
  100073a10  mov     x0, x24
  100073a14  mov     x2, x21
  100073a18  bl      _objc_msgSend                            ; [self setLoadoutEnabled:arg4]
loc_100073a1c:
  100073a1c  mov     x0, x22
  100073a20  bl      _objc_release
  100073a24  mov     x0, x20
  100073a28  bl      _objc_release
  100073a2c  mov     x0, x19
  100073a30  bl      _objc_release
  100073a34  mov     x0, x24
  100073a38  sub     sp, x29, #0x30
  100073a3c  ldp     x29, x30, [sp, #0x30]
  100073a40  ldp     x20, x19, [sp, #0x20]
  100073a44  ldp     x22, x21, [sp, #0x10]
  100073a48  ldp     x24, x23, [sp], #0x40
  100073a4c  ret
  100073a50  mov     x21, x0
  100073a54  mov     x0, x22
  100073a58  bl      _objc_release
  100073a5c  mov     x0, x20
  100073a60  bl      _objc_release
  100073a64  mov     x0, x19
  100073a68  bl      _objc_release
  100073a6c  mov     x0, x23
  100073a70  bl      _objc_release
  100073a74  mov     x0, x21
  100073a78  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryViewController loadView]
; address 0x100073a7c  size 808  kind objc
; ======================================================================
  100073a7c  stp     x28, x27, [sp, #-0x60]!
  100073a80  stp     x26, x25, [sp, #0x10]
  100073a84  stp     x24, x23, [sp, #0x20]
  100073a88  stp     x22, x21, [sp, #0x30]
  100073a8c  stp     x20, x19, [sp, #0x40]
  100073a90  stp     x29, x30, [sp, #0x50]
  100073a94  add     x29, sp, #0x50
  100073a98  sub     sp, sp, #0xb0
  100073a9c  mov     x19, x0
  100073aa0  adrp    x27, #0x1003b0000
  100073aa4  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  100073aa8  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  100073aac  stur    x27, [x29, #-0x58]
  100073ab0  adrp    x8, #0x1003bf000
  100073ab4  add     x8, x8, #0x70                            ; @"contentContainer"
  100073ab8  str     x8, [sp, #0x18]
  100073abc  adrp    x21, #0x10041d000
  100073ac0  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100073ac4  adrp    x8, #0x100416000
  100073ac8  nop
  100073acc  ldr     x25, [x8, #0xec0]
  100073ad0  mov     w2, #1
  100073ad4  mov     x1, x25
  100073ad8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  100073adc  mov     x29, x29
  100073ae0  bl      _objc_retainAutoreleasedReturnValue
  100073ae4  str     x0, [sp, #0x10]
  100073ae8  str     x0, [sp, #0x60]
  100073aec  adrp    x8, #0x1003bf000
  100073af0  add     x8, x8, #0x90                            ; @"weaponsButton"
  100073af4  str     x8, [sp, #0x20]
  100073af8  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100073afc  mov     w2, #2
  100073b00  mov     x1, x25
  100073b04  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  100073b08  bl      _objc_retain
  100073b0c  str     x0, [sp, #8]
  100073b10  str     x0, [sp, #0x68]
  100073b14  adrp    x8, #0x1003bf000
  100073b18  add     x8, x8, #0xb0                            ; @"powerUpButton"
  100073b1c  str     x8, [sp, #0x28]
  100073b20  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100073b24  mov     w2, #3
  100073b28  mov     x1, x25
  100073b2c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  100073b30  bl      _objc_retain
  100073b34  mov     x22, x0
  100073b38  str     x22, [sp, #0x70]
  100073b3c  adrp    x8, #0x1003bf000
  100073b40  add     x8, x8, #0xd0                            ; @"currencyButton"
  100073b44  str     x8, [sp, #0x30]
  100073b48  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100073b4c  mov     w2, #4
  100073b50  mov     x1, x25
  100073b54  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  100073b58  bl      _objc_retain
  100073b5c  mov     x23, x0
  100073b60  str     x23, [sp, #0x78]
  100073b64  adrp    x8, #0x1003bf000
  100073b68  add     x8, x8, #0xf0                            ; @"loadOutButton"
  100073b6c  str     x8, [sp, #0x38]
  100073b70  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100073b74  mov     w2, #5
  100073b78  mov     x1, x25
  100073b7c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:5]
  100073b80  bl      _objc_retain
  100073b84  mov     x24, x0
  100073b88  str     x24, [sp, #0x80]
  100073b8c  adrp    x8, #0x1003bf000
  100073b90  add     x8, x8, #0x110                           ; @"leftArrow"
  100073b94  str     x8, [sp, #0x40]
  100073b98  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100073b9c  mov     w2, #6
  100073ba0  mov     x1, x25
  100073ba4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:6]
  100073ba8  bl      _objc_retain
  100073bac  mov     x26, x0
  100073bb0  str     x26, [sp, #0x88]
  100073bb4  adrp    x8, #0x1003bf000
  100073bb8  add     x8, x8, #0x130                           ; @"rightArrow"
  100073bbc  str     x8, [sp, #0x48]
  100073bc0  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100073bc4  mov     w2, #7
  100073bc8  mov     x1, x25
  100073bcc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:7]
  100073bd0  mov     x20, x19
  100073bd4  mov     x19, x27
  100073bd8  bl      _objc_retain
  100073bdc  mov     x27, x0
  100073be0  str     x27, [sp, #0x90]
  100073be4  adrp    x8, #0x1003bf000
  100073be8  add     x8, x8, #0x150                           ; @"detailView"
  100073bec  str     x8, [sp, #0x50]
  100073bf0  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100073bf4  mov     w2, #8
  100073bf8  mov     x1, x25
  100073bfc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:8]
  100073c00  bl      _objc_retain
  100073c04  mov     x28, x0
  100073c08  str     x28, [sp, #0x98]
  100073c0c  adrp    x8, #0x1003bf000
  100073c10  add     x8, x8, #0x170                           ; @"detailScroller"
  100073c14  str     x8, [sp, #0x58]
  100073c18  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100073c1c  mov     w2, #9
  100073c20  mov     x1, x25
  100073c24  bl      _objc_msgSend                            ; [NSNumber numberWithInt:9]
  100073c28  bl      _objc_retain
  100073c2c  mov     x21, x0
  100073c30  str     x21, [sp, #0xa0]
  100073c34  adrp    x8, #0x10041d000
  100073c38  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100073c3c  adrp    x8, #0x100416000
  100073c40  nop
  100073c44  ldr     x1, [x8, #0xcd0]
  100073c48  add     x2, sp, #0x60
  100073c4c  add     x3, sp, #0x18
  100073c50  mov     w4, #9
  100073c54  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x60] forKeys:&sp[0x18] count:9]
  100073c58  mov     x29, x29
  100073c5c  bl      _objc_retainAutoreleasedReturnValue
  100073c60  mov     x25, x0
  100073c64  mov     x0, x21
  100073c68  bl      _objc_release
  100073c6c  mov     x0, x28
  100073c70  bl      _objc_release
  100073c74  mov     x0, x27
  100073c78  bl      _objc_release
  100073c7c  mov     x0, x26
  100073c80  bl      _objc_release
  100073c84  mov     x0, x24
  100073c88  bl      _objc_release
  100073c8c  mov     x0, x23
  100073c90  bl      _objc_release
  100073c94  mov     x0, x22
  100073c98  bl      _objc_release
  100073c9c  ldr     x0, [sp, #8]
  100073ca0  bl      _objc_release
  100073ca4  ldr     x0, [sp, #0x10]
  100073ca8  bl      _objc_release
  100073cac  adrp    x8, #0x100416000
  100073cb0  nop
  100073cb4  ldr     x1, [x8, #0xbf0]
  100073cb8  adrp    x2, #0x1003b9000
  100073cbc  add     x2, x2, #0xfb0                           ; @"ADArmoryViewController"
  100073cc0  mov     x0, x20
  100073cc4  mov     x3, x25
  100073cc8  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADArmoryViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x60] forKeys:&sp[0x18] count:9]]
  100073ccc  mov     x0, x25
  100073cd0  bl      _objc_release
  100073cd4  ldur    x8, [x29, #-0x58]
  100073cd8  sub     x8, x19, x8
  100073cdc  cbnz    x8, loc_100073d00                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100073ce0  sub     sp, x29, #0x50
  100073ce4  ldp     x29, x30, [sp, #0x50]
  100073ce8  ldp     x20, x19, [sp, #0x40]
  100073cec  ldp     x22, x21, [sp, #0x30]
  100073cf0  ldp     x24, x23, [sp, #0x20]
  100073cf4  ldp     x26, x25, [sp, #0x10]
  100073cf8  ldp     x28, x27, [sp], #0x60
  100073cfc  ret
loc_100073d00:
  100073d00  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100073d04  mov     x19, x0
  100073d08  b       loc_100073d88
  100073d0c  mov     x19, x0
  100073d10  b       loc_100073d80
  100073d14  mov     x19, x0
  100073d18  b       loc_100073d78
  100073d1c  mov     x19, x0
  100073d20  b       loc_100073d70
  100073d24  mov     x19, x0
  100073d28  b       loc_100073d68
  100073d2c  mov     x19, x0
  100073d30  b       loc_100073d60
  100073d34  mov     x19, x0
  100073d38  b       loc_100073d58
  100073d3c  mov     x19, x0
  100073d40  b       loc_100073d50
  100073d44  mov     x19, x0
  100073d48  mov     x0, x21
  100073d4c  bl      _objc_release
loc_100073d50:
  100073d50  mov     x0, x28
  100073d54  bl      _objc_release
loc_100073d58:
  100073d58  mov     x0, x27
  100073d5c  bl      _objc_release
loc_100073d60:
  100073d60  mov     x0, x26
  100073d64  bl      _objc_release
loc_100073d68:
  100073d68  mov     x0, x24
  100073d6c  bl      _objc_release
loc_100073d70:
  100073d70  mov     x0, x23
  100073d74  bl      _objc_release
loc_100073d78:
  100073d78  mov     x0, x22
  100073d7c  bl      _objc_release
loc_100073d80:
  100073d80  ldr     x0, [sp, #8]
  100073d84  bl      _objc_release
loc_100073d88:
  100073d88  ldr     x0, [sp, #0x10]
loc_100073d8c:
  100073d8c  bl      _objc_release
  100073d90  mov     x0, x19
  100073d94  bl      __Unwind_Resume                          ; Unwind_Resume()
  100073d98  mov     x19, x0
  100073d9c  mov     x0, x25
  100073da0  b       loc_100073d8c

; ======================================================================
; -[ADArmoryViewController initWithNibName:bundle:weapon:]
; address 0x100073da4  size 244  kind objc
; ======================================================================
  100073da4  stp     x24, x23, [sp, #-0x40]!
  100073da8  stp     x22, x21, [sp, #0x10]
  100073dac  stp     x20, x19, [sp, #0x20]
  100073db0  stp     x29, x30, [sp, #0x30]
  100073db4  add     x29, sp, #0x30
  100073db8  sub     sp, sp, #0x10
  100073dbc  mov     x19, x4
  100073dc0  mov     x21, x3
  100073dc4  mov     x23, x0
  100073dc8  mov     x0, x2
  100073dcc  bl      _objc_retain
  100073dd0  mov     x20, x0
  100073dd4  mov     x0, x21
  100073dd8  bl      _objc_retain
  100073ddc  mov     x22, x0
  100073de0  mov     x0, x19
  100073de4  bl      _objc_retain
  100073de8  mov     x19, x0
  100073dec  str     x23, [sp]
  100073df0  adrp    x8, #0x10041e000
  100073df4  ldr     x8, [x8, #0xdf0]
  100073df8  str     x8, [sp, #8]
  100073dfc  adrp    x8, #0x100416000
  100073e00  nop
  100073e04  ldr     x1, [x8, #0xb40]
  100073e08  mov     x0, sp
  100073e0c  mov     x2, x20
  100073e10  mov     x3, x22
  100073e14  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  100073e18  mov     x21, x0
  100073e1c  mov     x0, x22
  100073e20  bl      _objc_release
  100073e24  mov     x0, x20
  100073e28  bl      _objc_release
  100073e2c  cbz     x21, loc_100073e50                       ; if (self == 0)
  100073e30  adrp    x8, #0x10041f000
  100073e34  ldrsw   x20, [x8, #0xd40]                        ; ivar offset ADArmoryViewController.weaponName (+0x140)
  100073e38  mov     x0, x19
  100073e3c  bl      _objc_retain
  100073e40  ldr     x8, [x21, x20]                           ; x8 = self->weaponName
  100073e44  str     x0, [x21, x20]                           ; self->weaponName = arg3
  100073e48  mov     x0, x8
  100073e4c  bl      _objc_release
loc_100073e50:
  100073e50  mov     x0, x19
  100073e54  bl      _objc_release
  100073e58  mov     x0, x21
  100073e5c  sub     sp, x29, #0x30
  100073e60  ldp     x29, x30, [sp, #0x30]
  100073e64  ldp     x20, x19, [sp, #0x20]
  100073e68  ldp     x22, x21, [sp, #0x10]
  100073e6c  ldp     x24, x23, [sp], #0x40
  100073e70  ret
  100073e74  mov     x21, x0
  100073e78  mov     x0, x22
  100073e7c  bl      _objc_release
  100073e80  mov     x0, x20
  100073e84  bl      _objc_release
  100073e88  mov     x0, x19
  100073e8c  bl      _objc_release
  100073e90  mov     x0, x21
  100073e94  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryViewController viewDidLoad]
; address 0x100073e98  size 2792  kind objc
; ======================================================================
  100073e98  stp     d9, d8, [sp, #-0x70]!
  100073e9c  stp     x28, x27, [sp, #0x10]
  100073ea0  stp     x26, x25, [sp, #0x20]
  100073ea4  stp     x24, x23, [sp, #0x30]
  100073ea8  stp     x22, x21, [sp, #0x40]
  100073eac  stp     x20, x19, [sp, #0x50]
  100073eb0  stp     x29, x30, [sp, #0x60]
  100073eb4  add     x29, sp, #0x60
  100073eb8  sub     sp, sp, #0x110
  100073ebc  mov     x19, x0
  100073ec0  adrp    x8, #0x1003b0000
  100073ec4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100073ec8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100073ecc  stur    x8, [x29, #-0x68]
  100073ed0  str     x19, [sp, #0x78]
  100073ed4  adrp    x8, #0x10041e000
  100073ed8  ldr     x8, [x8, #0xdf0]
  100073edc  str     x8, [sp, #0x80]
  100073ee0  adrp    x8, #0x100416000
  100073ee4  nop
  100073ee8  ldr     x1, [x8, #0xb48]
  100073eec  add     x0, sp, #0x78
  100073ef0  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100073ef4  adrp    x8, #0x100419000
  100073ef8  nop
  100073efc  ldr     x20, [x8, #0x838]
  100073f00  mov     x2, #0
  100073f04  mov     x0, x19
  100073f08  mov     x1, x20
  100073f0c  bl      _objc_msgSend                            ; [self setBrowsingTime:0]
  100073f10  adrp    x8, #0x100417000
  100073f14  nop
  100073f18  ldr     x21, [x8, #0x2a8]
  100073f1c  mov     x0, x19
  100073f20  mov     x1, x21
  100073f24  bl      _objc_msgSend                            ; [self statusBarViewController]
  100073f28  mov     x29, x29
  100073f2c  bl      _objc_retainAutoreleasedReturnValue
  100073f30  mov     x22, x0
  100073f34  adrp    x8, #0x100417000
  100073f38  nop
  100073f3c  ldr     x1, [x8, #0x7d8]
  100073f40  mov     x2, x19
  100073f44  bl      _objc_msgSend                            ; [[self statusBarViewController] setDelegate:self]
  100073f48  mov     x0, x22
  100073f4c  bl      _objc_release
  100073f50  mov     x0, x19
  100073f54  mov     x1, x21
  100073f58  bl      _objc_msgSend                            ; [self statusBarViewController]
  100073f5c  mov     x29, x29
  100073f60  bl      _objc_retainAutoreleasedReturnValue
  100073f64  mov     x22, x0
  100073f68  adrp    x8, #0x100417000
  100073f6c  nop
  100073f70  ldr     x1, [x8, #0x2c8]
  100073f74  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  100073f78  mov     x29, x29
  100073f7c  bl      _objc_retainAutoreleasedReturnValue
  100073f80  mov     x23, x0
  100073f84  adrp    x8, #0x100416000
  100073f88  nop
  100073f8c  ldr     x1, [x8, #0xb68]
  100073f90  adrp    x2, #0x1003bf000
  100073f94  add     x2, x2, #0x190                           ; @"ARMORY"
  100073f98  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"ARMORY"]
  100073f9c  mov     x0, x23
  100073fa0  bl      _objc_release
  100073fa4  mov     x0, x22
  100073fa8  bl      _objc_release
  100073fac  mov     x0, x19
  100073fb0  mov     x1, x21
  100073fb4  bl      _objc_msgSend                            ; [self statusBarViewController]
  100073fb8  mov     x29, x29
  100073fbc  bl      _objc_retainAutoreleasedReturnValue
  100073fc0  mov     x21, x0
  100073fc4  adrp    x8, #0x100417000
  100073fc8  nop
  100073fcc  ldr     x1, [x8, #0x2b0]
  100073fd0  mov     w2, #0
  100073fd4  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:0]
  100073fd8  mov     x0, x21
  100073fdc  bl      _objc_release
  100073fe0  adrp    x8, #0x100419000
  100073fe4  nop
  100073fe8  ldr     x1, [x8, #0x840]
  100073fec  mov     x0, x19
  100073ff0  bl      _objc_msgSend                            ; [self previousTab]
  100073ff4  mov     x29, x29
  100073ff8  bl      _objc_retainAutoreleasedReturnValue
  100073ffc  mov     x21, x0
  100074000  adrp    x8, #0x100416000
  100074004  nop
  100074008  ldr     x1, [x8, #0xf58]
  10007400c  adrp    x2, #0x1003ba000
  100074010  add     x2, x2, #0xa90                           ; @"loadout"
  100074014  bl      _objc_msgSend                            ; [[self previousTab] isEqualToString:@"loadout"]
  100074018  cbz     w0, loc_100074054                        ; if ([[self previousTab] isEqualToString:@"loadout"] == 0)
  10007401c  adrp    x8, #0x100419000
  100074020  nop
  100074024  ldr     x1, [x8, #0x848]
  100074028  mov     x0, x19
  10007402c  bl      _objc_msgSend                            ; [self loadoutEnabled]
  100074030  mov     x22, x0
  100074034  mov     x0, x21
  100074038  bl      _objc_release
  10007403c  cbz     w22, loc_10007405c                       ; if ([self loadoutEnabled] == 0)
  100074040  adrp    x8, #0x100419000
  100074044  add     x8, x8, #0x850                           ; &@selector(loadoutButtonPressed:)
  100074048  ldr     x1, [x8]
  10007404c  mov     x2, #0
  100074050  b       loc_100074088
loc_100074054:
  100074054  mov     x0, x21
  100074058  bl      _objc_release
loc_10007405c:
  10007405c  adrp    x8, #0x100419000
  100074060  nop
  100074064  ldr     x1, [x8, #0x858]
  100074068  mov     x2, #0
  10007406c  mov     x0, x19
  100074070  bl      _objc_msgSend                            ; [self weaponsButtonPressed:0]
  100074074  adrp    x8, #0x100419000
  100074078  add     x8, x8, #0x828                           ; &@selector(setPreviousTab:)
  10007407c  ldr     x1, [x8]
  100074080  adrp    x2, #0x1003bf000
  100074084  add     x2, x2, #0x1b0                           ; @"weaponsTab"
loc_100074088:
  100074088  mov     x0, x19
  10007408c  bl      _objc_msgSend                            ; [self <sel x1>]
  100074090  adrp    x8, #0x100419000
  100074094  nop
  100074098  ldr     x22, [x8, #0x860]
  10007409c  mov     x0, x19
  1000740a0  mov     x1, x22
  1000740a4  bl      _objc_msgSend                            ; [self contentContainer]
  1000740a8  mov     x29, x29
  1000740ac  bl      _objc_retainAutoreleasedReturnValue
  1000740b0  mov     x21, x0
  1000740b4  mov     x0, x19
  1000740b8  mov     x1, x22
  1000740bc  bl      _objc_msgSend                            ; [self contentContainer]
  1000740c0  mov     x29, x29
  1000740c4  bl      _objc_retainAutoreleasedReturnValue
  1000740c8  mov     x23, x0
  1000740cc  adrp    x8, #0x100416000
  1000740d0  nop
  1000740d4  ldr     x25, [x8, #0xf38]
  1000740d8  mov     x1, x25
  1000740dc  bl      _objc_msgSend                            ; [[self contentContainer] frame]
  1000740e0  mov     v8.16b, v2.16b
  1000740e4  mov     x0, x19
  1000740e8  mov     x1, x22
  1000740ec  bl      _objc_msgSend                            ; [self contentContainer]
  1000740f0  mov     x29, x29
  1000740f4  bl      _objc_retainAutoreleasedReturnValue
  1000740f8  mov     x24, x0
  1000740fc  mov     x1, x25
  100074100  bl      _objc_msgSend                            ; [[self contentContainer] frame]
  100074104  fmov    d0, #4.00000000
  100074108  fmul    d0, d8, d0
  10007410c  fmov    d1, #0.50000000
  100074110  fmul    d1, d3, d1
  100074114  adrp    x8, #0x100417000
  100074118  nop
  10007411c  ldr     x1, [x8, #0x690]
  100074120  mov     x0, x21
  100074124  bl      _objc_msgSend                            ; [[self contentContainer] setContentSize:{([[self contentContainer] frame].2 * 4), ([[self contentContainer] frame].3 * 0.5)}]
  100074128  mov     x0, x24
  10007412c  bl      _objc_release
  100074130  mov     x0, x23
  100074134  bl      _objc_release
  100074138  mov     x0, x21
  10007413c  bl      _objc_release
  100074140  mov     x0, x19
  100074144  mov     x1, x22
  100074148  bl      _objc_msgSend                            ; [self contentContainer]
  10007414c  mov     x29, x29
  100074150  bl      _objc_retainAutoreleasedReturnValue
  100074154  mov     x21, x0
  100074158  adrp    x8, #0x100417000
  10007415c  nop
  100074160  ldr     x1, [x8, #0xcd8]
  100074164  mov     w2, #0
  100074168  bl      _objc_msgSend                            ; [[self contentContainer] setScrollEnabled:0]
  10007416c  mov     x0, x21
  100074170  bl      _objc_release
  100074174  adrp    x8, #0x10041e000
  100074178  ldr     x0, [x8, #0x30]                          ; class NSTimer
  10007417c  adrp    x8, #0x100419000
  100074180  nop
  100074184  ldr     x3, [x8, #0x868]
  100074188  adrp    x8, #0x100419000
  10007418c  nop
  100074190  ldr     x1, [x8, #0x870]
  100074194  adrp    x8, #0x100181000
  100074198  ldr     d0, [x8, #0xca0]                         ; d0 = 0.001
  10007419c  mov     w5, #1
  1000741a0  mov     x2, x19
  1000741a4  mov     x4, #0
  1000741a8  bl      _objc_msgSend                            ; [NSTimer timerWithTimeInterval:0.001 target:self selector:@selector(updateBrowseTimer:) userInfo:0 repeats:1]
  1000741ac  mov     x29, x29
  1000741b0  bl      _objc_retainAutoreleasedReturnValue
  1000741b4  mov     x21, x0
  1000741b8  mov     x0, x19
  1000741bc  mov     x1, x20
  1000741c0  mov     x2, x21
  1000741c4  bl      _objc_msgSend                            ; [self setBrowsingTime:[NSTimer timerWithTimeInterval:0.001 target:self selector:@selector(updateBrowseTimer:) userInfo:0 repeats:1]]
  1000741c8  mov     x0, x21
  1000741cc  bl      _objc_release
  1000741d0  adrp    x8, #0x10041e000
  1000741d4  ldr     x0, [x8, #0x40]                          ; class NSRunLoop
  1000741d8  adrp    x8, #0x100417000
  1000741dc  nop
  1000741e0  ldr     x1, [x8, #0x718]
  1000741e4  bl      _objc_msgSend                            ; [NSRunLoop mainRunLoop]
  1000741e8  mov     x29, x29
  1000741ec  bl      _objc_retainAutoreleasedReturnValue
  1000741f0  mov     x20, x0
  1000741f4  adrp    x8, #0x100419000
  1000741f8  nop
  1000741fc  ldr     x1, [x8, #0x878]
  100074200  mov     x0, x19
  100074204  bl      _objc_msgSend                            ; [self browsingTime]
  100074208  mov     x29, x29
  10007420c  bl      _objc_retainAutoreleasedReturnValue
  100074210  mov     x21, x0
  100074214  adrp    x8, #0x1003b0000
  100074218  ldr     x8, [x8, #0x80]                          ; _NSRunLoopCommonModes
  10007421c  ldr     x3, [x8]                                 ; x3 = _NSRunLoopCommonModes[+0x0]
  100074220  adrp    x8, #0x100417000
  100074224  nop
  100074228  ldr     x1, [x8, #0x728]
  10007422c  mov     x0, x20
  100074230  mov     x2, x21
  100074234  bl      _objc_msgSend                            ; [[NSRunLoop mainRunLoop] addTimer:[self browsingTime] forMode:_NSRunLoopCommonModes[+0x0]]
  100074238  str     x19, [sp, #0x20]
  10007423c  mov     x0, x21
  100074240  bl      _objc_release
  100074244  mov     x0, x20
  100074248  bl      _objc_release
  10007424c  adrp    x28, #0x10041e000
  100074250  ldr     x0, [x28, #8]                            ; class ADTracker
  100074254  adrp    x8, #0x100416000
  100074258  nop
  10007425c  ldr     x20, [x8, #0xac0]
  100074260  mov     x1, x20
  100074264  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100074268  mov     x29, x29
  10007426c  bl      _objc_retainAutoreleasedReturnValue
  100074270  mov     x24, x0
  100074274  adrp    x8, #0x100418000
  100074278  nop
  10007427c  ldr     x21, [x8, #0x10]
  100074280  mov     x1, x21
  100074284  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] trackerInventory]
  100074288  mov     x29, x29
  10007428c  bl      _objc_retainAutoreleasedReturnValue
  100074290  mov     x25, x0
  100074294  adrp    x19, #0x10041d000
  100074298  ldr     x0, [x19, #0xf70]                        ; class ADInventory
  10007429c  adrp    x8, #0x100416000
  1000742a0  nop
  1000742a4  ldr     x22, [x8, #0xec8]
  1000742a8  mov     x1, x22
  1000742ac  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000742b0  mov     x29, x29
  1000742b4  bl      _objc_retainAutoreleasedReturnValue
  1000742b8  mov     x26, x0
  1000742bc  adrp    x8, #0x100416000
  1000742c0  nop
  1000742c4  ldr     x1, [x8, #0xed0]
  1000742c8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot1]
  1000742cc  mov     x29, x29
  1000742d0  bl      _objc_retainAutoreleasedReturnValue
  1000742d4  mov     x27, x0
  1000742d8  adrp    x8, #0x100416000
  1000742dc  nop
  1000742e0  ldr     x23, [x8, #0xdc8]
  1000742e4  adrp    x3, #0x1003bf000
  1000742e8  add     x3, x3, #0x1d0                           ; @"slot1"
  1000742ec  mov     x0, x25
  1000742f0  mov     x1, x23
  1000742f4  mov     x2, x27
  1000742f8  bl      _objc_msgSend                            ; [[[ADTracker sharedInstance] trackerInventory] setObject:[[ADInventory sharedInventory] weaponSlot1] forKey:@"slot1"]
  1000742fc  mov     x0, x27
  100074300  bl      _objc_release
  100074304  mov     x0, x26
  100074308  bl      _objc_release
  10007430c  mov     x0, x25
  100074310  bl      _objc_release
  100074314  mov     x0, x24
  100074318  bl      _objc_release
  10007431c  ldr     x0, [x28, #8]                            ; class ADTracker
  100074320  mov     x1, x20
  100074324  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100074328  mov     x29, x29
  10007432c  bl      _objc_retainAutoreleasedReturnValue
  100074330  mov     x24, x0
  100074334  mov     x1, x21
  100074338  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] trackerInventory]
  10007433c  mov     x29, x29
  100074340  bl      _objc_retainAutoreleasedReturnValue
  100074344  mov     x25, x0
  100074348  ldr     x0, [x19, #0xf70]                        ; class ADInventory
  10007434c  mov     x1, x22
  100074350  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100074354  mov     x29, x29
  100074358  bl      _objc_retainAutoreleasedReturnValue
  10007435c  mov     x26, x0
  100074360  adrp    x8, #0x100416000
  100074364  nop
  100074368  ldr     x1, [x8, #0xed8]
  10007436c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot2]
  100074370  mov     x29, x29
  100074374  bl      _objc_retainAutoreleasedReturnValue
  100074378  mov     x27, x0
  10007437c  adrp    x3, #0x1003bf000
  100074380  add     x3, x3, #0x1f0                           ; @"slot2"
  100074384  mov     x0, x25
  100074388  mov     x1, x23
  10007438c  mov     x2, x27
  100074390  bl      _objc_msgSend                            ; [[[ADTracker sharedInstance] trackerInventory] setObject:[[ADInventory sharedInventory] weaponSlot2] forKey:@"slot2"]
  100074394  mov     x0, x27
  100074398  bl      _objc_release
  10007439c  mov     x0, x26
  1000743a0  bl      _objc_release
  1000743a4  mov     x0, x25
  1000743a8  bl      _objc_release
  1000743ac  mov     x0, x24
  1000743b0  bl      _objc_release
  1000743b4  ldr     x0, [x28, #8]                            ; class ADTracker
  1000743b8  mov     x1, x20
  1000743bc  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000743c0  mov     x29, x29
  1000743c4  bl      _objc_retainAutoreleasedReturnValue
  1000743c8  mov     x20, x0
  1000743cc  mov     x1, x21
  1000743d0  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] trackerInventory]
  1000743d4  mov     x29, x29
  1000743d8  bl      _objc_retainAutoreleasedReturnValue
  1000743dc  mov     x21, x0
  1000743e0  ldr     x0, [x19, #0xf70]                        ; class ADInventory
  1000743e4  mov     x1, x22
  1000743e8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000743ec  mov     x29, x29
  1000743f0  bl      _objc_retainAutoreleasedReturnValue
  1000743f4  mov     x22, x0
  1000743f8  adrp    x8, #0x100416000
  1000743fc  nop
  100074400  ldr     x1, [x8, #0xee0]
  100074404  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlotMelee]
  100074408  ldr     x28, [sp, #0x20]
  10007440c  mov     x29, x29
  100074410  bl      _objc_retainAutoreleasedReturnValue
  100074414  mov     x24, x0
  100074418  adrp    x3, #0x1003bf000
  10007441c  add     x3, x3, #0x210                           ; @"slotMelee"
  100074420  mov     x0, x21
  100074424  mov     x1, x23
  100074428  mov     x2, x24
  10007442c  bl      _objc_msgSend                            ; [[[ADTracker sharedInstance] trackerInventory] setObject:[[ADInventory sharedInventory] weaponSlotMelee] forKey:@"slotMelee"]
  100074430  mov     x0, x24
  100074434  bl      _objc_release
  100074438  mov     x0, x22
  10007443c  bl      _objc_release
  100074440  mov     x0, x21
  100074444  bl      _objc_release
  100074448  mov     x0, x20
  10007444c  bl      _objc_release
  100074450  adrp    x8, #0x10041d000
  100074454  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100074458  adrp    x8, #0x100416000
  10007445c  nop
  100074460  ldr     x20, [x8, #0xac8]
  100074464  mov     x1, x20
  100074468  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  10007446c  mov     x25, x0
  100074470  adrp    x19, #0x10041d000
  100074474  ldr     x0, [x19, #0xf88]                        ; class ADWeaponManager
  100074478  adrp    x8, #0x100417000
  10007447c  nop
  100074480  ldr     x22, [x8, #0xa0]
  100074484  mov     x1, x22
  100074488  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10007448c  mov     x29, x29
  100074490  bl      _objc_retainAutoreleasedReturnValue
  100074494  mov     x21, x0
  100074498  adrp    x8, #0x100417000
  10007449c  nop
  1000744a0  ldr     x23, [x8, #0xa8]
  1000744a4  mov     x1, x23
  1000744a8  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  1000744ac  mov     x29, x29
  1000744b0  bl      _objc_retainAutoreleasedReturnValue
  1000744b4  mov     x24, x0
  1000744b8  adrp    x8, #0x100416000
  1000744bc  nop
  1000744c0  ldr     x1, [x8, #0xe30]
  1000744c4  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] count]
  1000744c8  mov     x2, x0
  1000744cc  adrp    x8, #0x100417000
  1000744d0  nop
  1000744d4  ldr     x1, [x8, #0x288]
  1000744d8  mov     x0, x25
  1000744dc  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithCapacity:[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] count]]
  1000744e0  mov     x25, x0
  1000744e4  adrp    x8, #0x100418000
  1000744e8  nop
  1000744ec  ldr     x1, [x8, #0x460]
  1000744f0  mov     x0, x28
  1000744f4  mov     x2, x25
  1000744f8  bl      _objc_msgSend                            ; [self setItemNames:[[NSMutableArray alloc] initWithCapacity:[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] count]]]
  1000744fc  str     x20, [sp, #0x10]
  100074500  mov     x0, x25
  100074504  bl      _objc_release
  100074508  mov     x0, x24
  10007450c  bl      _objc_release
  100074510  mov     x0, x21
  100074514  bl      _objc_release
  100074518  stp     xzr, xzr, [sp, #0x68]
  10007451c  stp     xzr, xzr, [sp, #0x58]
  100074520  stp     xzr, xzr, [sp, #0x48]
  100074524  stp     xzr, xzr, [sp, #0x38]
  100074528  ldr     x0, [x19, #0xf88]                        ; class ADWeaponManager
  10007452c  mov     x1, x22
  100074530  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100074534  mov     x29, x29
  100074538  bl      _objc_retainAutoreleasedReturnValue
  10007453c  mov     x22, x0
  100074540  mov     x1, x23
  100074544  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  100074548  mov     x29, x29
  10007454c  bl      _objc_retainAutoreleasedReturnValue
  100074550  mov     x19, x0
  100074554  str     x19, [sp, #0x28]
  100074558  mov     x0, x22
  10007455c  bl      _objc_release
  100074560  adrp    x8, #0x100416000
  100074564  nop
  100074568  ldr     x1, [x8, #0xe00]
  10007456c  str     x1, [sp, #0x18]
  100074570  add     x2, sp, #0x38
  100074574  add     x3, sp, #0x88
  100074578  mov     w4, #0x10
  10007457c  mov     x0, x19
  100074580  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x88] count:16]
  100074584  mov     x23, x0
  100074588  cbz     x23, loc_10007468c                       ; if ([[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x88] count:16] == 0)
  10007458c  mov     x9, #0
  100074590  ldr     x8, [sp, #0x48]
  100074594  ldr     x8, [x8]
  100074598  str     x8, [sp, #0x30]
  10007459c  adrp    x8, #0x100418000
  1000745a0  nop
  1000745a4  ldr     x24, [x8, #0x498]
  1000745a8  adrp    x8, #0x100417000
  1000745ac  nop
  1000745b0  ldr     x25, [x8, #0x40]
  1000745b4  adrp    x8, #0x100419000
  1000745b8  add     x8, x8, #0x880                           ; &@selector(setObject:atIndexedSubscript:)
  1000745bc  ldr     x26, [x8]
loc_1000745c0:
  1000745c0  str     x9, [sp, #0x20]
  1000745c4  mov     x21, #0
  1000745c8  sxtw    x27, w9
loc_1000745cc:
  1000745cc  ldr     x8, [sp, #0x48]
  1000745d0  ldr     x8, [x8]
  1000745d4  ldr     x9, [sp, #0x30]
  1000745d8  cmp     x8, x9
  1000745dc  b.eq    loc_1000745e8                            ; if (x8 == x9)
  1000745e0  ldr     x0, [sp, #0x28]
  1000745e4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[ADWeaponManager sharedWeaponManager] getAllWeaponsArray])
loc_1000745e8:
  1000745e8  ldr     x8, [sp, #0x40]
  1000745ec  ldr     x20, [x8, x21, lsl #3]
  1000745f0  mov     x0, x28
  1000745f4  mov     x1, x24
  1000745f8  bl      _objc_msgSend                            ; [self itemNames]
  1000745fc  mov     x19, x28
  100074600  mov     x29, x29
  100074604  bl      _objc_retainAutoreleasedReturnValue
  100074608  mov     x28, x0
  10007460c  mov     x0, x20
  100074610  mov     x1, x25
  100074614  adrp    x2, #0x1003b9000
  100074618  add     x2, x2, #0xdb0                           ; @"name"
  10007461c  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  100074620  add     x22, x27, x21
  100074624  mov     x29, x29
  100074628  bl      _objc_retainAutoreleasedReturnValue
  10007462c  mov     x20, x0
  100074630  mov     x0, x28
  100074634  mov     x1, x26
  100074638  mov     x2, x20
  10007463c  mov     x3, x22
  100074640  bl      _objc_msgSend                            ; [[self itemNames] setObject:[x0 objectForKey:@"name"] atIndexedSubscript:(x27 + x21)]
  100074644  mov     x0, x20
  100074648  bl      _objc_release
  10007464c  mov     x0, x28
  100074650  bl      _objc_release
  100074654  add     x21, x21, #1
  100074658  cmp     x21, x23
  10007465c  mov     x28, x19
  100074660  b.lo    loc_1000745cc                            ; if ((x21 + 1) <u [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x88] coun…)
  100074664  add     x2, sp, #0x38
  100074668  add     x3, sp, #0x88
  10007466c  mov     w4, #0x10
  100074670  ldr     x0, [sp, #0x28]
  100074674  ldr     x1, [sp, #0x18]
  100074678  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x88] count:16]
  10007467c  mov     x23, x0
  100074680  ldr     x9, [sp, #0x20]
  100074684  add     x9, x21, w9, sxtw
  100074688  cbnz    x23, loc_1000745c0                       ; if ([[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x88] count:16] != 0)
loc_10007468c:
  10007468c  ldr     x0, [sp, #0x28]
  100074690  bl      _objc_release
  100074694  adrp    x8, #0x100418000
  100074698  nop
  10007469c  ldr     x1, [x8, #0x520]
  1000746a0  mov     w2, #1
  1000746a4  mov     x0, x28
  1000746a8  bl      _objc_msgSend                            ; [self setHideEquipButtonsOnDetailView:1]
  1000746ac  adrp    x19, #0x10041e000
  1000746b0  ldr     x0, [x19, #0x20]                         ; class UITapGestureRecognizer
  1000746b4  ldr     x25, [sp, #0x10]
  1000746b8  mov     x1, x25
  1000746bc  bl      _objc_msgSend                            ; [UITapGestureRecognizer alloc]
  1000746c0  adrp    x8, #0x100419000
  1000746c4  nop
  1000746c8  ldr     x3, [x8, #0x888]
  1000746cc  adrp    x8, #0x100417000
  1000746d0  nop
  1000746d4  ldr     x24, [x8, #0x638]
  1000746d8  mov     x1, x24
  1000746dc  mov     x2, x28
  1000746e0  bl      _objc_msgSend                            ; [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(nextWeaponButtonPressed:)]
  1000746e4  mov     x21, x0
  1000746e8  adrp    x8, #0x100417000
  1000746ec  nop
  1000746f0  ldr     x22, [x8, #0x640]
  1000746f4  mov     w2, #1
  1000746f8  mov     x1, x22
  1000746fc  bl      _objc_msgSend                            ; [[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(nextWeaponButtonPressed:)] setNumberOfTapsRequired:1]
  100074700  adrp    x8, #0x100418000
  100074704  nop
  100074708  ldr     x1, [x8, #0x508]
  10007470c  mov     x0, x28
  100074710  bl      _objc_msgSend                            ; [self rightArrow]
  100074714  mov     x29, x29
  100074718  bl      _objc_retainAutoreleasedReturnValue
  10007471c  mov     x20, x0
  100074720  adrp    x8, #0x100417000
  100074724  nop
  100074728  ldr     x23, [x8, #0x668]
  10007472c  mov     x1, x23
  100074730  mov     x2, x21
  100074734  bl      _objc_msgSend                            ; [[self rightArrow] addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(nextWeaponButtonPressed:)]]
  100074738  mov     x0, x20
  10007473c  bl      _objc_release
  100074740  ldr     x0, [x19, #0x20]                         ; class UITapGestureRecognizer
  100074744  mov     x1, x25
  100074748  bl      _objc_msgSend                            ; [UITapGestureRecognizer alloc]
  10007474c  adrp    x8, #0x100419000
  100074750  nop
  100074754  ldr     x3, [x8, #0x890]
  100074758  mov     x1, x24
  10007475c  mov     x2, x28
  100074760  bl      _objc_msgSend                            ; [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(previousWeaponButtonPressed:)]
  100074764  mov     x20, x0
  100074768  mov     w2, #1
  10007476c  mov     x0, x20
  100074770  mov     x1, x22
  100074774  bl      _objc_msgSend                            ; [[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(previousWeaponButtonPressed:)] setNumberOfTapsRequired:1]
  100074778  adrp    x8, #0x100418000
  10007477c  nop
  100074780  ldr     x1, [x8, #0x510]
  100074784  mov     x0, x28
  100074788  bl      _objc_msgSend                            ; [self leftArrow]
  10007478c  mov     x29, x29
  100074790  bl      _objc_retainAutoreleasedReturnValue
  100074794  mov     x22, x0
  100074798  mov     x1, x23
  10007479c  mov     x2, x20
  1000747a0  bl      _objc_msgSend                            ; [[self leftArrow] addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(previousWeaponButtonPressed:)]]
  1000747a4  adrp    x19, #0x1003b0000
  1000747a8  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  1000747ac  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  1000747b0  mov     x0, x22
  1000747b4  bl      _objc_release
  1000747b8  mov     x0, x20
  1000747bc  bl      _objc_release
  1000747c0  mov     x0, x21
  1000747c4  bl      _objc_release
  1000747c8  ldur    x8, [x29, #-0x68]
  1000747cc  sub     x8, x19, x8
  1000747d0  cbnz    x8, loc_1000747f8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000747d4  sub     sp, x29, #0x60
  1000747d8  ldp     x29, x30, [sp, #0x60]
  1000747dc  ldp     x20, x19, [sp, #0x50]
  1000747e0  ldp     x22, x21, [sp, #0x40]
  1000747e4  ldp     x24, x23, [sp, #0x30]
  1000747e8  ldp     x26, x25, [sp, #0x20]
  1000747ec  ldp     x28, x27, [sp, #0x10]
  1000747f0  ldp     d9, d8, [sp], #0x70
  1000747f4  ret
loc_1000747f8:
  1000747f8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000747fc:
  1000747fc  mov     x19, x0
  100074800  b       loc_100074820
  100074804  mov     x19, x0
  100074808  b       loc_100074818
  10007480c  mov     x19, x0
  100074810  mov     x0, x20
  100074814  bl      _objc_release
loc_100074818:
  100074818  mov     x0, x28
  10007481c  bl      _objc_release
loc_100074820:
  100074820  ldr     x0, [sp, #0x28]
loc_100074824:
  100074824  bl      _objc_release
  100074828  mov     x0, x19
  10007482c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100074830  b       loc_1000747fc
  100074834  b       loc_100074930
  100074838  mov     x19, x0
  10007483c  b       loc_10007484c
  100074840  mov     x19, x0
  100074844  mov     x0, x24
  100074848  bl      _objc_release
loc_10007484c:
  10007484c  mov     x0, x23
  100074850  b       loc_100074974
  100074854  mov     x19, x0
  100074858  b       loc_100074944
  10007485c  mov     x19, x0
  100074860  b       loc_100074970
  100074864  b       loc_100074930
  100074868  b       loc_10007494c
  10007486c  b       loc_10007494c
  100074870  mov     x19, x0
  100074874  mov     x0, x23
  100074878  bl      _objc_release
  10007487c  b       loc_100074950
  100074880  b       loc_100074930
  100074884  b       loc_100074930
  100074888  b       loc_100074930
  10007488c  b       loc_100074930
  100074890  mov     x19, x0
  100074894  b       loc_100074928
  100074898  b       loc_1000748fc
  10007489c  mov     x19, x0
  1000748a0  b       loc_1000748ec
  1000748a4  mov     x19, x0
  1000748a8  b       loc_1000748e4
  1000748ac  mov     x19, x0
  1000748b0  b       loc_1000748dc
  1000748b4  b       loc_1000748d0
  1000748b8  mov     x19, x0
  1000748bc  b       loc_1000748ec
  1000748c0  mov     x19, x0
  1000748c4  b       loc_1000748e4
  1000748c8  mov     x19, x0
  1000748cc  b       loc_1000748dc
loc_1000748d0:
  1000748d0  mov     x19, x0
  1000748d4  mov     x0, x27
  1000748d8  bl      _objc_release
loc_1000748dc:
  1000748dc  mov     x0, x26
  1000748e0  bl      _objc_release
loc_1000748e4:
  1000748e4  mov     x0, x25
  1000748e8  bl      _objc_release
loc_1000748ec:
  1000748ec  mov     x0, x24
  1000748f0  b       loc_100074824
  1000748f4  mov     x19, x0
  1000748f8  b       loc_100074928
loc_1000748fc:
  1000748fc  mov     x19, x0
  100074900  b       loc_100074920
  100074904  mov     x19, x0
  100074908  b       loc_100074918
  10007490c  mov     x19, x0
  100074910  mov     x0, x24
  100074914  bl      _objc_release
loc_100074918:
  100074918  mov     x0, x22
  10007491c  bl      _objc_release
loc_100074920:
  100074920  mov     x0, x21
  100074924  bl      _objc_release
loc_100074928:
  100074928  mov     x0, x20
  10007492c  b       loc_100074824
loc_100074930:
  100074930  mov     x19, x0
  100074934  b       loc_100074978
  100074938  mov     x19, x0
  10007493c  mov     x0, x25
  100074940  bl      _objc_release
loc_100074944:
  100074944  mov     x0, x24
  100074948  b       loc_100074974
loc_10007494c:
  10007494c  mov     x19, x0
loc_100074950:
  100074950  mov     x0, x22
  100074954  b       loc_100074824
  100074958  b       loc_1000747fc
  10007495c  mov     x19, x0
  100074960  b       loc_100074970
  100074964  mov     x19, x0
  100074968  mov     x0, x22
  10007496c  bl      _objc_release
loc_100074970:
  100074970  mov     x0, x20
loc_100074974:
  100074974  bl      _objc_release
loc_100074978:
  100074978  mov     x0, x21
  10007497c  b       loc_100074824

; ======================================================================
; -[ADArmoryViewController updateBrowseTimer:]
; address 0x100074980  size 28  kind objc
; ======================================================================
  100074980  adrp    x8, #0x10041f000
  100074984  ldrsw   x8, [x8, #0xd44]                         ; ivar offset ADArmoryViewController._browse_dt (+0x1a8)
  100074988  ldr     d0, [x0, x8]                             ; d0 = self->_browse_dt
  10007498c  fmov    d1, #1.00000000
  100074990  fadd    d0, d0, d1
  100074994  str     d0, [x0, x8]                             ; self->_browse_dt = (self->_browse_dt + 1)
  100074998  ret

; ======================================================================
; -[ADArmoryViewController browse_dt]
; address 0x10007499c  size 32  kind objc
; ======================================================================
  10007499c  adrp    x8, #0x10041f000
  1000749a0  ldrsw   x8, [x8, #0xd44]                         ; ivar offset ADArmoryViewController._browse_dt (+0x1a8)
  1000749a4  ldr     d0, [x0, x8]                             ; d0 = self->_browse_dt
  1000749a8  adrp    x9, #0x100181000
  1000749ac  ldr     d1, [x9, #0xca8]                         ; d1 = 1000.0
  1000749b0  fdiv    d0, d0, d1
  1000749b4  str     xzr, [x0, x8]                            ; self->_browse_dt = 0
  1000749b8  ret

; ======================================================================
; -[ADArmoryViewController loadWeapons]
; address 0x1000749bc  size 740  kind objc
; ======================================================================
  1000749bc  stp     d9, d8, [sp, #-0x50]!
  1000749c0  stp     x24, x23, [sp, #0x10]
  1000749c4  stp     x22, x21, [sp, #0x20]
  1000749c8  stp     x20, x19, [sp, #0x30]
  1000749cc  stp     x29, x30, [sp, #0x40]
  1000749d0  add     x29, sp, #0x40
  1000749d4  sub     sp, sp, #0x30
  1000749d8  mov     x19, x0
  1000749dc  adrp    x8, #0x10041f000
  1000749e0  ldrsw   x24, [x8, #0xd48]                        ; ivar offset ADArmoryViewController.shop (+0x150)
  1000749e4  ldr     x8, [x19, x24]                           ; x8 = self->shop
  1000749e8  cbnz    x8, loc_100074ba8                        ; if (self->shop != 0)
  1000749ec  adrp    x8, #0x10041e000
  1000749f0  ldr     x0, [x8, #0x278]                         ; class ADArmoryShopViewController
  1000749f4  adrp    x8, #0x100416000
  1000749f8  nop
  1000749fc  ldr     x1, [x8, #0xac8]
  100074a00  bl      _objc_msgSend                            ; [ADArmoryShopViewController alloc]
  100074a04  adrp    x8, #0x100416000
  100074a08  nop
  100074a0c  ldr     x1, [x8, #0xb40]
  100074a10  mov     x3, #0
  100074a14  adrp    x2, #0x1003bf000
  100074a18  add     x2, x2, #0x230                           ; @"ADArmoryShopViewController"
  100074a1c  bl      _objc_msgSend                            ; [[ADArmoryShopViewController alloc] initWithNibName:@"ADArmoryShopViewController" bundle:0]
  100074a20  ldr     x8, [x19, x24]                           ; x8 = self->shop
  100074a24  str     x0, [x19, x24]                           ; self->shop = [[ADArmoryShopViewController alloc] initWithNibName:@"ADArmoryShopViewController" bundle:0]
  100074a28  mov     x0, x8
  100074a2c  bl      _objc_release
  100074a30  adrp    x8, #0x100419000
  100074a34  nop
  100074a38  ldr     x21, [x8, #0x860]
  100074a3c  mov     x0, x19
  100074a40  mov     x1, x21
  100074a44  bl      _objc_msgSend                            ; [self contentContainer]
  100074a48  mov     x29, x29
  100074a4c  bl      _objc_retainAutoreleasedReturnValue
  100074a50  mov     x20, x0
  100074a54  ldr     x0, [x19, x24]                           ; x0 = self->shop
  100074a58  adrp    x8, #0x100416000
  100074a5c  nop
  100074a60  ldr     x22, [x8, #0xf18]
  100074a64  mov     x1, x22
  100074a68  bl      _objc_msgSend                            ; [self->shop view]
  100074a6c  mov     x29, x29
  100074a70  bl      _objc_retainAutoreleasedReturnValue
  100074a74  mov     x23, x0
  100074a78  adrp    x8, #0x100416000
  100074a7c  nop
  100074a80  ldr     x1, [x8, #0xf20]
  100074a84  mov     x0, x20
  100074a88  mov     x2, x23
  100074a8c  bl      _objc_msgSend                            ; [[self contentContainer] addSubview:[self->shop view]]
  100074a90  mov     x0, x23
  100074a94  bl      _objc_release
  100074a98  mov     x0, x20
  100074a9c  bl      _objc_release
  100074aa0  ldr     x0, [x19, x24]                           ; x0 = self->shop
  100074aa4  mov     x1, x22
  100074aa8  bl      _objc_msgSend                            ; [self->shop view]
  100074aac  mov     x29, x29
  100074ab0  bl      _objc_retainAutoreleasedReturnValue
  100074ab4  mov     x20, x0
  100074ab8  mov     x0, x19
  100074abc  mov     x1, x21
  100074ac0  bl      _objc_msgSend                            ; [self contentContainer]
  100074ac4  mov     x29, x29
  100074ac8  bl      _objc_retainAutoreleasedReturnValue
  100074acc  mov     x22, x0
  100074ad0  adrp    x8, #0x100416000
  100074ad4  nop
  100074ad8  ldr     x23, [x8, #0xf38]
  100074adc  mov     x1, x23
  100074ae0  bl      _objc_msgSend                            ; [[self contentContainer] frame]
  100074ae4  mov     v8.16b, v2.16b
  100074ae8  mov     x0, x19
  100074aec  mov     x1, x21
  100074af0  bl      _objc_msgSend                            ; [self contentContainer]
  100074af4  mov     x29, x29
  100074af8  bl      _objc_retainAutoreleasedReturnValue
  100074afc  mov     x21, x0
  100074b00  mov     x1, x23
  100074b04  bl      _objc_msgSend                            ; [[self contentContainer] frame]
  100074b08  fmov    d1, #0.50000000
  100074b0c  fmul    d0, d8, d1
  100074b10  fmul    d1, d3, d1
  100074b14  adrp    x8, #0x100417000
  100074b18  nop
  100074b1c  ldr     x1, [x8, #0x1f8]
  100074b20  mov     x0, x20
  100074b24  bl      _objc_msgSend                            ; [[self->shop view] setCenter:{([[self contentContainer] frame].2 * 0.5), ([[self contentContainer] frame].3 * 0.5)}]
  100074b28  mov     x0, x21
  100074b2c  bl      _objc_release
  100074b30  mov     x0, x22
  100074b34  bl      _objc_release
  100074b38  mov     x0, x20
  100074b3c  bl      _objc_release
  100074b40  ldr     x0, [x19, x24]                           ; x0 = self->shop
  100074b44  adrp    x8, #0x100418000
  100074b48  nop
  100074b4c  ldr     x1, [x8, #0x4b0]
  100074b50  mov     x2, x19
  100074b54  bl      _objc_msgSend                            ; [self->shop setArmoryViewController:self]
  100074b58  adrp    x8, #0x1003b0000
  100074b5c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100074b60  mov     w9, #-0x3e000000
  100074b64  str     x8, [sp, #8]
  100074b68  stp     w9, wzr, [sp, #0x10]
  100074b6c  adr     x8, #0x100074ca0                         ; &-[ADArmoryViewController loadWeapons]_block_invoke
  100074b70  nop
  100074b74  str     x8, [sp, #0x18]
  100074b78  adrp    x8, #0x1003b1000
  100074b7c  add     x8, x8, #0xe70                           ; &d_1003b1e70
  100074b80  str     x8, [sp, #0x20]
  100074b84  mov     x0, x19
  100074b88  bl      _objc_retain
  100074b8c  str     x0, [sp, #0x28]
  100074b90  adrp    x0, #0x1003b0000
  100074b94  ldr     x0, [x0, #0x1e8]                         ; __dispatch_main_q
  100074b98  add     x1, sp, #8
  100074b9c  bl      _dispatch_async                          ; dispatch_async(__dispatch_main_q, ^{-[ADArmoryViewController loadWeapons]_block_invoke captures +0x20=self})
  100074ba0  ldr     x0, [sp, #0x28]
  100074ba4  bl      _objc_release
loc_100074ba8:
  100074ba8  adrp    x8, #0x100419000
  100074bac  nop
  100074bb0  ldr     x21, [x8, #0x860]
  100074bb4  mov     x0, x19
  100074bb8  mov     x1, x21
  100074bbc  bl      _objc_msgSend                            ; [self contentContainer]
  100074bc0  mov     x29, x29
  100074bc4  bl      _objc_retainAutoreleasedReturnValue
  100074bc8  mov     x20, x0
  100074bcc  mov     x0, x19
  100074bd0  mov     x1, x21
  100074bd4  bl      _objc_msgSend                            ; [self contentContainer]
  100074bd8  mov     x29, x29
  100074bdc  bl      _objc_retainAutoreleasedReturnValue
  100074be0  mov     x21, x0
  100074be4  adrp    x8, #0x100416000
  100074be8  nop
  100074bec  ldr     x1, [x8, #0xf38]
  100074bf0  bl      _objc_msgSend                            ; [[self contentContainer] frame]
  100074bf4  movi    v0.16b, #0
  100074bf8  fmul    d0, d2, d0
  100074bfc  adrp    x8, #0x100418000
  100074c00  nop
  100074c04  ldr     x1, [x8, #0x4f8]
  100074c08  movi    v1.16b, #0
  100074c0c  mov     w2, #1
  100074c10  mov     x0, x20
  100074c14  bl      _objc_msgSend                            ; [[self contentContainer] setContentOffset:{([[self contentContainer] frame].2 * 0), 0} animated:1]
  100074c18  mov     x0, x21
  100074c1c  bl      _objc_release
  100074c20  mov     x0, x20
  100074c24  bl      _objc_release
  100074c28  sub     sp, x29, #0x40
  100074c2c  ldp     x29, x30, [sp, #0x40]
  100074c30  ldp     x20, x19, [sp, #0x30]
  100074c34  ldp     x22, x21, [sp, #0x20]
  100074c38  ldp     x24, x23, [sp, #0x10]
  100074c3c  ldp     d9, d8, [sp], #0x50
  100074c40  ret
  100074c44  mov     x19, x0
  100074c48  mov     x0, x21
  100074c4c  b       loc_100074c84
  100074c50  mov     x19, x0
  100074c54  b       loc_100074c88
  100074c58  mov     x19, x0
  100074c5c  b       loc_100074c6c
  100074c60  mov     x19, x0
  100074c64  mov     x0, x21
  100074c68  bl      _objc_release
loc_100074c6c:
  100074c6c  mov     x0, x22
  100074c70  b       loc_100074c84
  100074c74  mov     x19, x0
  100074c78  b       loc_100074c88
  100074c7c  mov     x19, x0
  100074c80  mov     x0, x23
loc_100074c84:
  100074c84  bl      _objc_release
loc_100074c88:
  100074c88  mov     x0, x20
  100074c8c  bl      _objc_release
  100074c90  mov     x0, x19
  100074c94  bl      __Unwind_Resume                          ; Unwind_Resume()
  100074c98  mov     x19, x0
  100074c9c  b       loc_100074c88

; ======================================================================
; -[ADArmoryViewController loadWeapons]_block_invoke
; address 0x100074ca0  size 140  kind block
; ======================================================================
  100074ca0  stp     x20, x19, [sp, #-0x20]!
  100074ca4  stp     x29, x30, [sp, #0x10]
  100074ca8  add     x29, sp, #0x10
  100074cac  mov     x19, x0
  100074cb0  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100074cb4  adrp    x9, #0x10041f000
  100074cb8  ldrsw   x20, [x9, #0xd40]                        ; ivar offset ADArmoryViewController.weaponName (+0x140)
  100074cbc  ldr     x8, [x8, x20]                            ; x8 = self->weaponName
  100074cc0  cbz     x8, loc_100074d00                        ; if (self->weaponName == 0)
  100074cc4  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  100074cc8  mov     x8, x0
  100074ccc  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100074cd0  tbz     w8, #0, loc_100074d0c                    ; if (!(UIAccessibilityIsVoiceOverRunning() & 1))
  100074cd4  adrp    x8, #0x10041f000
  100074cd8  ldrsw   x8, [x8, #0xd48]                         ; ivar offset ADArmoryViewController.shop (+0x150)
  100074cdc  ldr     x8, [x0, x8]                             ; x8 = self->shop
  100074ce0  ldr     x2, [x0, x20]                            ; x2 = self->weaponName
  100074ce4  adrp    x9, #0x100419000
  100074ce8  nop
  100074cec  ldr     x1, [x9, #0x898]
  100074cf0  mov     x0, x8
  100074cf4  ldp     x29, x30, [sp, #0x10]
  100074cf8  ldp     x20, x19, [sp], #0x20
  100074cfc  b       _objc_msgSend                            ; [self->shop showAccessibleDetailViewForWeaponWithName:self->weaponName]
loc_100074d00:
  100074d00  ldp     x29, x30, [sp, #0x10]
  100074d04  ldp     x20, x19, [sp], #0x20
  100074d08  ret
loc_100074d0c:
  100074d0c  mov     w3, #0
  100074d10  ldr     x2, [x0, x20]                            ; x2 = self->weaponName
  100074d14  adrp    x8, #0x100418000
  100074d18  nop
  100074d1c  ldr     x1, [x8, #0x8b0]
  100074d20  ldp     x29, x30, [sp, #0x10]
  100074d24  ldp     x20, x19, [sp], #0x20
  100074d28  b       _objc_msgSend                            ; [self openDescriptionForItemWithName:self->weaponName withButton:0]

; ======================================================================
; sub_100074d2c
; address 0x100074d2c  size 8  kind sub
; ======================================================================
  100074d2c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100074d30  b       _objc_retain

; ======================================================================
; sub_100074d34
; address 0x100074d34  size 8  kind sub
; ======================================================================
  100074d34  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100074d38  b       _objc_release

; ======================================================================
; -[ADArmoryViewController loadLoadout]
; address 0x100074d3c  size 780  kind objc
; ======================================================================
  100074d3c  stp     d9, d8, [sp, #-0x50]!
  100074d40  stp     x24, x23, [sp, #0x10]
  100074d44  stp     x22, x21, [sp, #0x20]
  100074d48  stp     x20, x19, [sp, #0x30]
  100074d4c  stp     x29, x30, [sp, #0x40]
  100074d50  add     x29, sp, #0x40
  100074d54  mov     x19, x0
  100074d58  adrp    x8, #0x10041f000
  100074d5c  ldrsw   x24, [x8, #0xd4c]                        ; ivar offset ADArmoryViewController.loadOut (+0x168)
  100074d60  ldr     x8, [x19, x24]                           ; x8 = self->loadOut
  100074d64  cbnz    x8, loc_100074f54                        ; if (self->loadOut != 0)
  100074d68  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  100074d6c  tbz     w0, #0, loc_100074da4                    ; if (!(UIAccessibilityIsVoiceOverRunning() & 1))
  100074d70  adrp    x8, #0x10041e000
  100074d74  ldr     x0, [x8, #0x288]                         ; class Accessible_ADArmoryLoadoutViewController
  100074d78  adrp    x8, #0x100416000
  100074d7c  nop
  100074d80  ldr     x1, [x8, #0xac8]
  100074d84  bl      _objc_msgSend                            ; [Accessible_ADArmoryLoadoutViewController alloc]
  100074d88  adrp    x8, #0x100416000
  100074d8c  add     x8, x8, #0xb40                           ; &@selector(initWithNibName:bundle:)
  100074d90  ldr     x1, [x8]
  100074d94  mov     x3, #0
  100074d98  adrp    x2, #0x1003bf000
  100074d9c  add     x2, x2, #0x250                           ; @"Accessible_ADArmoryLoadoutViewController"
  100074da0  b       loc_100074dd4
loc_100074da4:
  100074da4  adrp    x8, #0x10041e000
  100074da8  ldr     x0, [x8, #0x280]                         ; class ADArmoryLoadoutViewController
  100074dac  adrp    x8, #0x100416000
  100074db0  nop
  100074db4  ldr     x1, [x8, #0xac8]
  100074db8  bl      _objc_msgSend                            ; [ADArmoryLoadoutViewController alloc]
  100074dbc  adrp    x8, #0x100416000
  100074dc0  add     x8, x8, #0xb40                           ; &@selector(initWithNibName:bundle:)
  100074dc4  ldr     x1, [x8]
  100074dc8  mov     x3, #0
  100074dcc  adrp    x2, #0x1003b9000
  100074dd0  add     x2, x2, #0xbf0                           ; @"ADArmoryLoadoutViewController"
loc_100074dd4:
  100074dd4  bl      _objc_msgSend                            ; [x0 initWithNibName:one of {@"ADArmoryLoadoutViewController", @"Accessible_ADArmoryLoadoutViewController"} bundle:0]
  100074dd8  ldr     x8, [x19, x24]                           ; x8 = self->loadOut
  100074ddc  str     x0, [x19, x24]                           ; self->loadOut = [x0 initWithNibName:one of {@"ADArmoryLoadoutViewController", @"Accessible_ADArmoryLoadoutViewController"} bundle:0]
  100074de0  mov     x0, x8
  100074de4  bl      _objc_release
  100074de8  ldr     x0, [x19, x24]                           ; x0 = self->loadOut
  100074dec  adrp    x8, #0x100418000
  100074df0  nop
  100074df4  ldr     x1, [x8, #0x4b0]
  100074df8  mov     x2, x19
  100074dfc  bl      _objc_msgSend                            ; [self->loadOut setArmoryViewController:self]
  100074e00  adrp    x8, #0x100419000
  100074e04  nop
  100074e08  ldr     x21, [x8, #0x860]
  100074e0c  mov     x0, x19
  100074e10  mov     x1, x21
  100074e14  bl      _objc_msgSend                            ; [self contentContainer]
  100074e18  mov     x29, x29
  100074e1c  bl      _objc_retainAutoreleasedReturnValue
  100074e20  mov     x20, x0
  100074e24  ldr     x0, [x19, x24]                           ; x0 = self->loadOut
  100074e28  adrp    x8, #0x100416000
  100074e2c  nop
  100074e30  ldr     x22, [x8, #0xf18]
  100074e34  mov     x1, x22
  100074e38  bl      _objc_msgSend                            ; [self->loadOut view]
  100074e3c  mov     x29, x29
  100074e40  bl      _objc_retainAutoreleasedReturnValue
  100074e44  mov     x23, x0
  100074e48  adrp    x8, #0x100416000
  100074e4c  nop
  100074e50  ldr     x1, [x8, #0xf20]
  100074e54  mov     x0, x20
  100074e58  mov     x2, x23
  100074e5c  bl      _objc_msgSend                            ; [[self contentContainer] addSubview:[self->loadOut view]]
  100074e60  mov     x0, x23
  100074e64  bl      _objc_release
  100074e68  mov     x0, x20
  100074e6c  bl      _objc_release
  100074e70  ldr     x0, [x19, x24]                           ; x0 = self->loadOut
  100074e74  mov     x1, x22
  100074e78  bl      _objc_msgSend                            ; [self->loadOut view]
  100074e7c  mov     x29, x29
  100074e80  bl      _objc_retainAutoreleasedReturnValue
  100074e84  mov     x20, x0
  100074e88  mov     x0, x19
  100074e8c  mov     x1, x21
  100074e90  bl      _objc_msgSend                            ; [self contentContainer]
  100074e94  mov     x29, x29
  100074e98  bl      _objc_retainAutoreleasedReturnValue
  100074e9c  mov     x22, x0
  100074ea0  adrp    x8, #0x100416000
  100074ea4  nop
  100074ea8  ldr     x23, [x8, #0xf38]
  100074eac  mov     x1, x23
  100074eb0  bl      _objc_msgSend                            ; [[self contentContainer] frame]
  100074eb4  mov     v8.16b, v2.16b
  100074eb8  mov     x0, x19
  100074ebc  mov     x1, x21
  100074ec0  bl      _objc_msgSend                            ; [self contentContainer]
  100074ec4  mov     x29, x29
  100074ec8  bl      _objc_retainAutoreleasedReturnValue
  100074ecc  mov     x21, x0
  100074ed0  mov     x1, x23
  100074ed4  bl      _objc_msgSend                            ; [[self contentContainer] frame]
  100074ed8  fmov    d0, #1.50000000
  100074edc  fmul    d0, d8, d0
  100074ee0  fmov    d1, #0.50000000
  100074ee4  fmul    d1, d3, d1
  100074ee8  adrp    x8, #0x100417000
  100074eec  nop
  100074ef0  ldr     x1, [x8, #0x1f8]
  100074ef4  mov     x0, x20
  100074ef8  bl      _objc_msgSend                            ; [[self->loadOut view] setCenter:{([[self contentContainer] frame].2 * 1.5), ([[self contentContainer] frame].3 * 0.5)}]
  100074efc  mov     x0, x21
  100074f00  bl      _objc_release
  100074f04  mov     x0, x22
  100074f08  bl      _objc_release
  100074f0c  mov     x0, x20
  100074f10  bl      _objc_release
  100074f14  adrp    x8, #0x100419000
  100074f18  nop
  100074f1c  ldr     x1, [x8, #0x8a0]
  100074f20  mov     x0, x19
  100074f24  bl      _objc_msgSend                            ; [self loadOutButton]
  100074f28  mov     x29, x29
  100074f2c  bl      _objc_retainAutoreleasedReturnValue
  100074f30  mov     x20, x0
  100074f34  adrp    x8, #0x100419000
  100074f38  nop
  100074f3c  ldr     x1, [x8, #0x8a8]
  100074f40  mov     x0, x19
  100074f44  mov     x2, x20
  100074f48  bl      _objc_msgSend                            ; [self updateTabsAfterButtonPressed:[self loadOutButton]]
  100074f4c  mov     x0, x20
  100074f50  bl      _objc_release
loc_100074f54:
  100074f54  adrp    x8, #0x100419000
  100074f58  nop
  100074f5c  ldr     x21, [x8, #0x860]
  100074f60  mov     x0, x19
  100074f64  mov     x1, x21
  100074f68  bl      _objc_msgSend                            ; [self contentContainer]
  100074f6c  mov     x29, x29
  100074f70  bl      _objc_retainAutoreleasedReturnValue
  100074f74  mov     x20, x0
  100074f78  mov     x0, x19
  100074f7c  mov     x1, x21
  100074f80  bl      _objc_msgSend                            ; [self contentContainer]
  100074f84  mov     x29, x29
  100074f88  bl      _objc_retainAutoreleasedReturnValue
  100074f8c  mov     x21, x0
  100074f90  adrp    x8, #0x100416000
  100074f94  nop
  100074f98  ldr     x1, [x8, #0xf38]
  100074f9c  bl      _objc_msgSend                            ; [[self contentContainer] frame]
  100074fa0  adrp    x8, #0x100418000
  100074fa4  nop
  100074fa8  ldr     x1, [x8, #0x4f8]
  100074fac  movi    v1.16b, #0
  100074fb0  mov     w2, #1
  100074fb4  mov     x0, x20
  100074fb8  mov     v0.16b, v2.16b
  100074fbc  bl      _objc_msgSend                            ; [[self contentContainer] setContentOffset:{[[self contentContainer] frame].2, 0} animated:1]
  100074fc0  mov     x0, x21
  100074fc4  bl      _objc_release
  100074fc8  mov     x0, x20
  100074fcc  ldp     x29, x30, [sp, #0x40]
  100074fd0  ldp     x20, x19, [sp, #0x30]
  100074fd4  ldp     x22, x21, [sp, #0x20]
  100074fd8  ldp     x24, x23, [sp, #0x10]
  100074fdc  ldp     d9, d8, [sp], #0x50
  100074fe0  b       _objc_release
  100074fe4  mov     x19, x0
  100074fe8  mov     x0, x21
  100074fec  b       loc_100075024
  100074ff0  mov     x19, x0
  100074ff4  b       loc_100075028
  100074ff8  mov     x19, x0
  100074ffc  b       loc_10007500c
  100075000  mov     x19, x0
  100075004  mov     x0, x21
  100075008  bl      _objc_release
loc_10007500c:
  10007500c  mov     x0, x22
  100075010  b       loc_100075024
  100075014  mov     x19, x0
  100075018  b       loc_100075028
  10007501c  mov     x19, x0
  100075020  mov     x0, x23
loc_100075024:
  100075024  bl      _objc_release
loc_100075028:
  100075028  mov     x0, x20
  10007502c  bl      _objc_release
  100075030  mov     x0, x19
  100075034  bl      __Unwind_Resume                          ; Unwind_Resume()
  100075038  mov     x19, x0
  10007503c  b       loc_100075028
  100075040  mov     x19, x0
  100075044  b       loc_100075028

; ======================================================================
; -[ADArmoryViewController loadPowerUps]
; address 0x100075048  size 648  kind objc
; ======================================================================
  100075048  stp     d9, d8, [sp, #-0x50]!
  10007504c  stp     x24, x23, [sp, #0x10]
  100075050  stp     x22, x21, [sp, #0x20]
  100075054  stp     x20, x19, [sp, #0x30]
  100075058  stp     x29, x30, [sp, #0x40]
  10007505c  add     x29, sp, #0x40
  100075060  mov     x19, x0
  100075064  adrp    x8, #0x10041f000
  100075068  ldrsw   x24, [x8, #0xd50]                        ; ivar offset ADArmoryViewController.powerups (+0x158)
  10007506c  ldr     x8, [x19, x24]                           ; x8 = self->powerups
  100075070  cbnz    x8, loc_1000751e4                        ; if (self->powerups != 0)
  100075074  adrp    x8, #0x10041e000
  100075078  ldr     x0, [x8, #0x290]                         ; class ADArmoryPowerUpViewController
  10007507c  adrp    x8, #0x100416000
  100075080  nop
  100075084  ldr     x1, [x8, #0xac8]
  100075088  bl      _objc_msgSend                            ; [ADArmoryPowerUpViewController alloc]
  10007508c  adrp    x8, #0x100416000
  100075090  nop
  100075094  ldr     x1, [x8, #0xb40]
  100075098  mov     x3, #0
  10007509c  adrp    x2, #0x1003bc000
  1000750a0  add     x2, x2, #0x6f0                           ; @"ADArmoryPowerUpViewController"
  1000750a4  bl      _objc_msgSend                            ; [[ADArmoryPowerUpViewController alloc] initWithNibName:@"ADArmoryPowerUpViewController" bundle:0]
  1000750a8  ldr     x8, [x19, x24]                           ; x8 = self->powerups
  1000750ac  str     x0, [x19, x24]                           ; self->powerups = [[ADArmoryPowerUpViewController alloc] initWithNibName:@"ADArmoryPowerUpViewController" bundle:0]
  1000750b0  mov     x0, x8
  1000750b4  bl      _objc_release
  1000750b8  adrp    x8, #0x100419000
  1000750bc  nop
  1000750c0  ldr     x21, [x8, #0x860]
  1000750c4  mov     x0, x19
  1000750c8  mov     x1, x21
  1000750cc  bl      _objc_msgSend                            ; [self contentContainer]
  1000750d0  mov     x29, x29
  1000750d4  bl      _objc_retainAutoreleasedReturnValue
  1000750d8  mov     x20, x0
  1000750dc  ldr     x0, [x19, x24]                           ; x0 = self->powerups
  1000750e0  adrp    x8, #0x100416000
  1000750e4  nop
  1000750e8  ldr     x22, [x8, #0xf18]
  1000750ec  mov     x1, x22
  1000750f0  bl      _objc_msgSend                            ; [self->powerups view]
  1000750f4  mov     x29, x29
  1000750f8  bl      _objc_retainAutoreleasedReturnValue
  1000750fc  mov     x23, x0
  100075100  adrp    x8, #0x100416000
  100075104  nop
  100075108  ldr     x1, [x8, #0xf20]
  10007510c  mov     x0, x20
  100075110  mov     x2, x23
  100075114  bl      _objc_msgSend                            ; [[self contentContainer] addSubview:[self->powerups view]]
  100075118  mov     x0, x23
  10007511c  bl      _objc_release
  100075120  mov     x0, x20
  100075124  bl      _objc_release
  100075128  ldr     x0, [x19, x24]                           ; x0 = self->powerups
  10007512c  mov     x1, x22
  100075130  bl      _objc_msgSend                            ; [self->powerups view]
  100075134  mov     x29, x29
  100075138  bl      _objc_retainAutoreleasedReturnValue
  10007513c  mov     x20, x0
  100075140  mov     x0, x19
  100075144  mov     x1, x21
  100075148  bl      _objc_msgSend                            ; [self contentContainer]
  10007514c  mov     x29, x29
  100075150  bl      _objc_retainAutoreleasedReturnValue
  100075154  mov     x22, x0
  100075158  adrp    x8, #0x100416000
  10007515c  nop
  100075160  ldr     x23, [x8, #0xf38]
  100075164  mov     x1, x23
  100075168  bl      _objc_msgSend                            ; [[self contentContainer] frame]
  10007516c  mov     v8.16b, v2.16b
  100075170  mov     x0, x19
  100075174  mov     x1, x21
  100075178  bl      _objc_msgSend                            ; [self contentContainer]
  10007517c  mov     x29, x29
  100075180  bl      _objc_retainAutoreleasedReturnValue
  100075184  mov     x21, x0
  100075188  mov     x1, x23
  10007518c  bl      _objc_msgSend                            ; [[self contentContainer] frame]
  100075190  fmov    d0, #2.50000000
  100075194  fmul    d0, d8, d0
  100075198  fmov    d1, #0.50000000
  10007519c  fmul    d1, d3, d1
  1000751a0  adrp    x8, #0x100417000
  1000751a4  nop
  1000751a8  ldr     x1, [x8, #0x1f8]
  1000751ac  mov     x0, x20
  1000751b0  bl      _objc_msgSend                            ; [[self->powerups view] setCenter:{([[self contentContainer] frame].2 * 2.5), ([[self contentContainer] frame].3 * 0.5)}]
  1000751b4  mov     x0, x21
  1000751b8  bl      _objc_release
  1000751bc  mov     x0, x22
  1000751c0  bl      _objc_release
  1000751c4  mov     x0, x20
  1000751c8  bl      _objc_release
  1000751cc  ldr     x0, [x19, x24]                           ; x0 = self->powerups
  1000751d0  adrp    x8, #0x100418000
  1000751d4  nop
  1000751d8  ldr     x1, [x8, #0x4b0]
  1000751dc  mov     x2, x19
  1000751e0  bl      _objc_msgSend                            ; [self->powerups setArmoryViewController:self]
loc_1000751e4:
  1000751e4  adrp    x8, #0x100419000
  1000751e8  nop
  1000751ec  ldr     x21, [x8, #0x860]
  1000751f0  mov     x0, x19
  1000751f4  mov     x1, x21
  1000751f8  bl      _objc_msgSend                            ; [self contentContainer]
  1000751fc  mov     x29, x29
  100075200  bl      _objc_retainAutoreleasedReturnValue
  100075204  mov     x20, x0
  100075208  mov     x0, x19
  10007520c  mov     x1, x21
  100075210  bl      _objc_msgSend                            ; [self contentContainer]
  100075214  mov     x29, x29
  100075218  bl      _objc_retainAutoreleasedReturnValue
  10007521c  mov     x21, x0
  100075220  adrp    x8, #0x100416000
  100075224  nop
  100075228  ldr     x1, [x8, #0xf38]
  10007522c  bl      _objc_msgSend                            ; [[self contentContainer] frame]
  100075230  fadd    d0, d2, d2
  100075234  adrp    x8, #0x100418000
  100075238  nop
  10007523c  ldr     x1, [x8, #0x4f8]
  100075240  movi    v1.16b, #0
  100075244  mov     w2, #1
  100075248  mov     x0, x20
  10007524c  bl      _objc_msgSend                            ; [[self contentContainer] setContentOffset:{([[self contentContainer] frame].2 + [[self contentContainer] frame].2), 0} animated:1]
  100075250  mov     x0, x21
  100075254  bl      _objc_release
  100075258  mov     x0, x20
  10007525c  ldp     x29, x30, [sp, #0x40]
  100075260  ldp     x20, x19, [sp, #0x30]
  100075264  ldp     x22, x21, [sp, #0x20]
  100075268  ldp     x24, x23, [sp, #0x10]
  10007526c  ldp     d9, d8, [sp], #0x50
  100075270  b       _objc_release
  100075274  mov     x19, x0
  100075278  mov     x0, x21
  10007527c  b       loc_1000752b4
  100075280  mov     x19, x0
  100075284  b       loc_1000752b8
  100075288  mov     x19, x0
  10007528c  b       loc_10007529c
  100075290  mov     x19, x0
  100075294  mov     x0, x21
  100075298  bl      _objc_release
loc_10007529c:
  10007529c  mov     x0, x22
  1000752a0  b       loc_1000752b4
  1000752a4  mov     x19, x0
  1000752a8  b       loc_1000752b8
  1000752ac  mov     x19, x0
  1000752b0  mov     x0, x23
loc_1000752b4:
  1000752b4  bl      _objc_release
loc_1000752b8:
  1000752b8  mov     x0, x20
  1000752bc  bl      _objc_release
  1000752c0  mov     x0, x19
  1000752c4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000752c8  mov     x19, x0
  1000752cc  b       loc_1000752b8

; ======================================================================
; -[ADArmoryViewController loadCurrency]
; address 0x1000752d0  size 652  kind objc
; ======================================================================
  1000752d0  stp     d9, d8, [sp, #-0x50]!
  1000752d4  stp     x24, x23, [sp, #0x10]
  1000752d8  stp     x22, x21, [sp, #0x20]
  1000752dc  stp     x20, x19, [sp, #0x30]
  1000752e0  stp     x29, x30, [sp, #0x40]
  1000752e4  add     x29, sp, #0x40
  1000752e8  mov     x19, x0
  1000752ec  adrp    x8, #0x10041f000
  1000752f0  ldrsw   x24, [x8, #0xd54]                        ; ivar offset ADArmoryViewController.currency (+0x160)
  1000752f4  ldr     x8, [x19, x24]                           ; x8 = self->currency
  1000752f8  cbnz    x8, loc_10007546c                        ; if (self->currency != 0)
  1000752fc  adrp    x8, #0x10041e000
  100075300  ldr     x0, [x8, #0x298]                         ; class ADArmoryCurrencyViewController
  100075304  adrp    x8, #0x100416000
  100075308  nop
  10007530c  ldr     x1, [x8, #0xac8]
  100075310  bl      _objc_msgSend                            ; [ADArmoryCurrencyViewController alloc]
  100075314  adrp    x8, #0x100416000
  100075318  nop
  10007531c  ldr     x1, [x8, #0xb40]
  100075320  mov     x3, #0
  100075324  adrp    x2, #0x1003bb000
  100075328  add     x2, x2, #0x2d0                           ; @"ADArmoryCurrencyViewController"
  10007532c  bl      _objc_msgSend                            ; [[ADArmoryCurrencyViewController alloc] initWithNibName:@"ADArmoryCurrencyViewController" bundle:0]
  100075330  ldr     x8, [x19, x24]                           ; x8 = self->currency
  100075334  str     x0, [x19, x24]                           ; self->currency = [[ADArmoryCurrencyViewController alloc] initWithNibName:@"ADArmoryCurrencyViewController" bundle:0]
  100075338  mov     x0, x8
  10007533c  bl      _objc_release
  100075340  ldr     x0, [x19, x24]                           ; x0 = self->currency
  100075344  adrp    x8, #0x100419000
  100075348  nop
  10007534c  ldr     x1, [x8, #0x8b0]
  100075350  mov     x2, x19
  100075354  bl      _objc_msgSend                            ; [self->currency setArmoryVCDelegate:self]
  100075358  adrp    x8, #0x100419000
  10007535c  nop
  100075360  ldr     x21, [x8, #0x860]
  100075364  mov     x0, x19
  100075368  mov     x1, x21
  10007536c  bl      _objc_msgSend                            ; [self contentContainer]
  100075370  mov     x29, x29
  100075374  bl      _objc_retainAutoreleasedReturnValue
  100075378  mov     x20, x0
  10007537c  ldr     x0, [x19, x24]                           ; x0 = self->currency
  100075380  adrp    x8, #0x100416000
  100075384  nop
  100075388  ldr     x22, [x8, #0xf18]
  10007538c  mov     x1, x22
  100075390  bl      _objc_msgSend                            ; [self->currency view]
  100075394  mov     x29, x29
  100075398  bl      _objc_retainAutoreleasedReturnValue
  10007539c  mov     x23, x0
  1000753a0  adrp    x8, #0x100416000
  1000753a4  nop
  1000753a8  ldr     x1, [x8, #0xf20]
  1000753ac  mov     x0, x20
  1000753b0  mov     x2, x23
  1000753b4  bl      _objc_msgSend                            ; [[self contentContainer] addSubview:[self->currency view]]
  1000753b8  mov     x0, x23
  1000753bc  bl      _objc_release
  1000753c0  mov     x0, x20
  1000753c4  bl      _objc_release
  1000753c8  ldr     x0, [x19, x24]                           ; x0 = self->currency
  1000753cc  mov     x1, x22
  1000753d0  bl      _objc_msgSend                            ; [self->currency view]
  1000753d4  mov     x29, x29
  1000753d8  bl      _objc_retainAutoreleasedReturnValue
  1000753dc  mov     x20, x0
  1000753e0  mov     x0, x19
  1000753e4  mov     x1, x21
  1000753e8  bl      _objc_msgSend                            ; [self contentContainer]
  1000753ec  mov     x29, x29
  1000753f0  bl      _objc_retainAutoreleasedReturnValue
  1000753f4  mov     x22, x0
  1000753f8  adrp    x8, #0x100416000
  1000753fc  nop
  100075400  ldr     x23, [x8, #0xf38]
  100075404  mov     x1, x23
  100075408  bl      _objc_msgSend                            ; [[self contentContainer] frame]
  10007540c  mov     v8.16b, v2.16b
  100075410  mov     x0, x19
  100075414  mov     x1, x21
  100075418  bl      _objc_msgSend                            ; [self contentContainer]
  10007541c  mov     x29, x29
  100075420  bl      _objc_retainAutoreleasedReturnValue
  100075424  mov     x21, x0
  100075428  mov     x1, x23
  10007542c  bl      _objc_msgSend                            ; [[self contentContainer] frame]
  100075430  fmov    d0, #3.50000000
  100075434  fmul    d0, d8, d0
  100075438  fmov    d1, #0.50000000
  10007543c  fmul    d1, d3, d1
  100075440  adrp    x8, #0x100417000
  100075444  nop
  100075448  ldr     x1, [x8, #0x1f8]
  10007544c  mov     x0, x20
  100075450  bl      _objc_msgSend                            ; [[self->currency view] setCenter:{([[self contentContainer] frame].2 * 3.5), ([[self contentContainer] frame].3 * 0.5)}]
  100075454  mov     x0, x21
  100075458  bl      _objc_release
  10007545c  mov     x0, x22
  100075460  bl      _objc_release
  100075464  mov     x0, x20
  100075468  bl      _objc_release
loc_10007546c:
  10007546c  adrp    x8, #0x100419000
  100075470  nop
  100075474  ldr     x21, [x8, #0x860]
  100075478  mov     x0, x19
  10007547c  mov     x1, x21
  100075480  bl      _objc_msgSend                            ; [self contentContainer]
  100075484  mov     x29, x29
  100075488  bl      _objc_retainAutoreleasedReturnValue
  10007548c  mov     x20, x0
  100075490  mov     x0, x19
  100075494  mov     x1, x21
  100075498  bl      _objc_msgSend                            ; [self contentContainer]
  10007549c  mov     x29, x29
  1000754a0  bl      _objc_retainAutoreleasedReturnValue
  1000754a4  mov     x21, x0
  1000754a8  adrp    x8, #0x100416000
  1000754ac  nop
  1000754b0  ldr     x1, [x8, #0xf38]
  1000754b4  bl      _objc_msgSend                            ; [[self contentContainer] frame]
  1000754b8  fmov    d0, #3.00000000
  1000754bc  fmul    d0, d2, d0
  1000754c0  adrp    x8, #0x100418000
  1000754c4  nop
  1000754c8  ldr     x1, [x8, #0x4f8]
  1000754cc  movi    v1.16b, #0
  1000754d0  mov     w2, #1
  1000754d4  mov     x0, x20
  1000754d8  bl      _objc_msgSend                            ; [[self contentContainer] setContentOffset:{([[self contentContainer] frame].2 * 3), 0} animated:1]
  1000754dc  mov     x0, x21
  1000754e0  bl      _objc_release
  1000754e4  mov     x0, x20
  1000754e8  ldp     x29, x30, [sp, #0x40]
  1000754ec  ldp     x20, x19, [sp, #0x30]
  1000754f0  ldp     x22, x21, [sp, #0x20]
  1000754f4  ldp     x24, x23, [sp, #0x10]
  1000754f8  ldp     d9, d8, [sp], #0x50
  1000754fc  b       _objc_release
  100075500  mov     x19, x0
  100075504  mov     x0, x21
  100075508  b       loc_100075540
  10007550c  mov     x19, x0
  100075510  b       loc_100075544
  100075514  mov     x19, x0
  100075518  b       loc_100075528
  10007551c  mov     x19, x0
  100075520  mov     x0, x21
  100075524  bl      _objc_release
loc_100075528:
  100075528  mov     x0, x22
  10007552c  b       loc_100075540
  100075530  mov     x19, x0
  100075534  b       loc_100075544
  100075538  mov     x19, x0
  10007553c  mov     x0, x23
loc_100075540:
  100075540  bl      _objc_release
loc_100075544:
  100075544  mov     x0, x20
  100075548  bl      _objc_release
  10007554c  mov     x0, x19
  100075550  bl      __Unwind_Resume                          ; Unwind_Resume()
  100075554  mov     x19, x0
  100075558  b       loc_100075544

; ======================================================================
; -[ADArmoryViewController weaponsButtonPressed:]
; address 0x10007555c  size 448  kind objc
; ======================================================================
  10007555c  stp     d9, d8, [sp, #-0x40]!
  100075560  stp     x22, x21, [sp, #0x10]
  100075564  stp     x20, x19, [sp, #0x20]
  100075568  stp     x29, x30, [sp, #0x30]
  10007556c  add     x29, sp, #0x30
  100075570  mov     x19, x0
  100075574  adrp    x8, #0x100419000
  100075578  nop
  10007557c  ldr     x1, [x8, #0x878]
  100075580  bl      _objc_msgSend                            ; [self browsingTime]
  100075584  mov     x29, x29
  100075588  bl      _objc_retainAutoreleasedReturnValue
  10007558c  mov     x20, x0
  100075590  bl      _objc_release
  100075594  cbz     x20, loc_10007563c                       ; if ([self browsingTime] == 0)
  100075598  adrp    x8, #0x100419000
  10007559c  nop
  1000755a0  ldr     x1, [x8, #0x8b8]
  1000755a4  mov     x0, x19
  1000755a8  bl      _objc_msgSend                            ; [self browse_dt]
  1000755ac  mov     v8.16b, v0.16b
  1000755b0  adrp    x8, #0x10041e000
  1000755b4  ldr     x0, [x8, #8]                             ; class ADTracker
  1000755b8  adrp    x8, #0x100416000
  1000755bc  nop
  1000755c0  ldr     x1, [x8, #0xac0]
  1000755c4  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000755c8  mov     x29, x29
  1000755cc  bl      _objc_retainAutoreleasedReturnValue
  1000755d0  mov     x20, x0
  1000755d4  adrp    x8, #0x100419000
  1000755d8  nop
  1000755dc  ldr     x1, [x8, #0x840]
  1000755e0  mov     x0, x19
  1000755e4  bl      _objc_msgSend                            ; [self previousTab]
  1000755e8  mov     x29, x29
  1000755ec  bl      _objc_retainAutoreleasedReturnValue
  1000755f0  mov     x21, x0
  1000755f4  adrp    x8, #0x100419000
  1000755f8  nop
  1000755fc  ldr     x1, [x8, #0x8c0]
  100075600  mov     x0, x20
  100075604  mov     x2, x21
  100075608  mov     v0.16b, v8.16b
  10007560c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordTabChangeEventWithTabName:[self previousTab] TimeSpentInTab:[self browse_dt]]
  100075610  mov     x0, x21
  100075614  bl      _objc_release
  100075618  mov     x0, x20
  10007561c  bl      _objc_release
  100075620  adrp    x8, #0x100419000
  100075624  nop
  100075628  ldr     x1, [x8, #0x828]
  10007562c  adrp    x2, #0x1003bf000
  100075630  add     x2, x2, #0x1b0                           ; @"weaponsTab"
  100075634  mov     x0, x19
  100075638  bl      _objc_msgSend                            ; [self setPreviousTab:@"weaponsTab"]
loc_10007563c:
  10007563c  adrp    x8, #0x100419000
  100075640  nop
  100075644  ldr     x1, [x8, #0x8c8]
  100075648  mov     x0, x19
  10007564c  bl      _objc_msgSend                            ; [self weaponsButton]
  100075650  mov     x29, x29
  100075654  bl      _objc_retainAutoreleasedReturnValue
  100075658  mov     x20, x0
  10007565c  adrp    x8, #0x100419000
  100075660  nop
  100075664  ldr     x1, [x8, #0x8a8]
  100075668  mov     x0, x19
  10007566c  mov     x2, x20
  100075670  bl      _objc_msgSend                            ; [self updateTabsAfterButtonPressed:[self weaponsButton]]
  100075674  mov     x0, x20
  100075678  bl      _objc_release
  10007567c  adrp    x8, #0x100419000
  100075680  nop
  100075684  ldr     x1, [x8, #0x8d0]
  100075688  mov     x0, x19
  10007568c  bl      _objc_msgSend                            ; [self loadWeapons]
  100075690  adrp    x8, #0x10041f000
  100075694  ldrsw   x8, [x8, #0xd48]                         ; ivar offset ADArmoryViewController.shop (+0x150)
  100075698  ldr     x0, [x19, x8]                            ; x0 = self->shop
  10007569c  adrp    x8, #0x100416000
  1000756a0  nop
  1000756a4  ldr     x1, [x8, #0xf18]
  1000756a8  bl      _objc_msgSend                            ; [self->shop view]
  1000756ac  mov     x29, x29
  1000756b0  bl      _objc_retainAutoreleasedReturnValue
  1000756b4  mov     x20, x0
  1000756b8  adrp    x8, #0x100419000
  1000756bc  nop
  1000756c0  ldr     x1, [x8, #0x8d8]
  1000756c4  mov     x0, x19
  1000756c8  mov     x2, x20
  1000756cc  bl      _objc_msgSend                            ; [self toggleAccessibilityAfterTabWasSelected:[self->shop view]]
  1000756d0  mov     x0, x20
  1000756d4  ldp     x29, x30, [sp, #0x30]
  1000756d8  ldp     x20, x19, [sp, #0x20]
  1000756dc  ldp     x22, x21, [sp, #0x10]
  1000756e0  ldp     d9, d8, [sp], #0x40
  1000756e4  b       _objc_release
  1000756e8  mov     x19, x0
  1000756ec  b       loc_100075714
  1000756f0  b       loc_1000756f8
  1000756f4  b       loc_1000756f8
loc_1000756f8:
  1000756f8  mov     x19, x0
  1000756fc  b       loc_10007570c
  100075700  mov     x19, x0
  100075704  mov     x0, x21
  100075708  bl      _objc_release
loc_10007570c:
  10007570c  mov     x0, x20
  100075710  bl      _objc_release
loc_100075714:
  100075714  mov     x0, x19
  100075718  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryViewController loadoutButtonPressed:]
; address 0x10007571c  size 844  kind objc
; ======================================================================
  10007571c  stp     d9, d8, [sp, #-0x50]!
  100075720  stp     x24, x23, [sp, #0x10]
  100075724  stp     x22, x21, [sp, #0x20]
  100075728  stp     x20, x19, [sp, #0x30]
  10007572c  stp     x29, x30, [sp, #0x40]
  100075730  add     x29, sp, #0x40
  100075734  mov     x19, x0
  100075738  adrp    x8, #0x100419000
  10007573c  nop
  100075740  ldr     x1, [x8, #0x848]
  100075744  bl      _objc_msgSend                            ; [self loadoutEnabled]
  100075748  cbz     w0, loc_1000758b4                        ; if ([self loadoutEnabled] == 0)
  10007574c  adrp    x8, #0x100419000
  100075750  nop
  100075754  ldr     x1, [x8, #0x878]
  100075758  mov     x0, x19
  10007575c  bl      _objc_msgSend                            ; [self browsingTime]
  100075760  mov     x29, x29
  100075764  bl      _objc_retainAutoreleasedReturnValue
  100075768  mov     x20, x0
  10007576c  bl      _objc_release
  100075770  cbz     x20, loc_100075818                       ; if ([self browsingTime] == 0)
  100075774  adrp    x8, #0x100419000
  100075778  nop
  10007577c  ldr     x1, [x8, #0x8b8]
  100075780  mov     x0, x19
  100075784  bl      _objc_msgSend                            ; [self browse_dt]
  100075788  mov     v8.16b, v0.16b
  10007578c  adrp    x8, #0x10041e000
  100075790  ldr     x0, [x8, #8]                             ; class ADTracker
  100075794  adrp    x8, #0x100416000
  100075798  nop
  10007579c  ldr     x1, [x8, #0xac0]
  1000757a0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000757a4  mov     x29, x29
  1000757a8  bl      _objc_retainAutoreleasedReturnValue
  1000757ac  mov     x20, x0
  1000757b0  adrp    x8, #0x100419000
  1000757b4  nop
  1000757b8  ldr     x1, [x8, #0x840]
  1000757bc  mov     x0, x19
  1000757c0  bl      _objc_msgSend                            ; [self previousTab]
  1000757c4  mov     x29, x29
  1000757c8  bl      _objc_retainAutoreleasedReturnValue
  1000757cc  mov     x22, x0
  1000757d0  adrp    x8, #0x100419000
  1000757d4  nop
  1000757d8  ldr     x1, [x8, #0x8c0]
  1000757dc  mov     x0, x20
  1000757e0  mov     x2, x22
  1000757e4  mov     v0.16b, v8.16b
  1000757e8  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordTabChangeEventWithTabName:[self previousTab] TimeSpentInTab:[self browse_dt]]
  1000757ec  mov     x0, x22
  1000757f0  bl      _objc_release
  1000757f4  mov     x0, x20
  1000757f8  bl      _objc_release
  1000757fc  adrp    x8, #0x100419000
  100075800  nop
  100075804  ldr     x1, [x8, #0x828]
  100075808  adrp    x2, #0x1003bf000
  10007580c  add     x2, x2, #0x270                           ; @"loadOutTab"
  100075810  mov     x0, x19
  100075814  bl      _objc_msgSend                            ; [self setPreviousTab:@"loadOutTab"]
loc_100075818:
  100075818  adrp    x8, #0x100419000
  10007581c  nop
  100075820  ldr     x1, [x8, #0x8a0]
  100075824  mov     x0, x19
  100075828  bl      _objc_msgSend                            ; [self loadOutButton]
  10007582c  mov     x29, x29
  100075830  bl      _objc_retainAutoreleasedReturnValue
  100075834  mov     x20, x0
  100075838  adrp    x8, #0x100419000
  10007583c  nop
  100075840  ldr     x1, [x8, #0x8a8]
  100075844  mov     x0, x19
  100075848  mov     x2, x20
  10007584c  bl      _objc_msgSend                            ; [self updateTabsAfterButtonPressed:[self loadOutButton]]
  100075850  mov     x0, x20
  100075854  bl      _objc_release
  100075858  adrp    x8, #0x100419000
  10007585c  nop
  100075860  ldr     x1, [x8, #0x8e0]
  100075864  mov     x0, x19
  100075868  bl      _objc_msgSend                            ; [self loadLoadout]
  10007586c  adrp    x8, #0x10041f000
  100075870  ldrsw   x8, [x8, #0xd4c]                         ; ivar offset ADArmoryViewController.loadOut (+0x168)
  100075874  ldr     x0, [x19, x8]                            ; x0 = self->loadOut
  100075878  adrp    x8, #0x100416000
  10007587c  nop
  100075880  ldr     x1, [x8, #0xf18]
  100075884  bl      _objc_msgSend                            ; [self->loadOut view]
  100075888  mov     x29, x29
  10007588c  bl      _objc_retainAutoreleasedReturnValue
  100075890  mov     x20, x0
  100075894  adrp    x8, #0x100419000
  100075898  nop
  10007589c  ldr     x1, [x8, #0x8d8]
  1000758a0  mov     x0, x19
  1000758a4  mov     x2, x20
  1000758a8  bl      _objc_msgSend                            ; [self toggleAccessibilityAfterTabWasSelected:[self->loadOut view]]
  1000758ac  mov     x0, x20
  1000758b0  b       loc_1000759d4
loc_1000758b4:
  1000758b4  adrp    x8, #0x10041e000
  1000758b8  ldr     x0, [x8, #0x80]                          ; class UIAlertView
  1000758bc  adrp    x8, #0x100416000
  1000758c0  nop
  1000758c4  ldr     x1, [x8, #0xac8]
  1000758c8  bl      _objc_msgSend                            ; [UIAlertView alloc]
  1000758cc  mov     x21, x0
  1000758d0  adrp    x24, #0x10041d000
  1000758d4  ldr     x0, [x24, #0xee8]                        ; class NSBundle
  1000758d8  adrp    x8, #0x100416000
  1000758dc  nop
  1000758e0  ldr     x22, [x8, #0xb58]
  1000758e4  mov     x1, x22
  1000758e8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000758ec  mov     x29, x29
  1000758f0  bl      _objc_retainAutoreleasedReturnValue
  1000758f4  mov     x19, x0
  1000758f8  adrp    x8, #0x100416000
  1000758fc  nop
  100075900  ldr     x23, [x8, #0xb60]
  100075904  mov     x4, #0
  100075908  adrp    x2, #0x1003bf000
  10007590c  add     x2, x2, #0x290                           ; @"EQUIP_ALERT_TITLE"
  100075910  adrp    x3, #0x1003b9000
  100075914  add     x3, x3, #0x870                           ; @""
  100075918  mov     x1, x23
  10007591c  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"EQUIP_ALERT_TITLE" value:@"" table:0]
  100075920  mov     x29, x29
  100075924  bl      _objc_retainAutoreleasedReturnValue
  100075928  mov     x20, x0
  10007592c  ldr     x0, [x24, #0xee8]                        ; class NSBundle
  100075930  mov     x1, x22
  100075934  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100075938  mov     x29, x29
  10007593c  bl      _objc_retainAutoreleasedReturnValue
  100075940  mov     x22, x0
  100075944  mov     x4, #0
  100075948  adrp    x2, #0x1003bf000
  10007594c  add     x2, x2, #0x2b0                           ; @"EQUIP_ALERT_CONTENT"
  100075950  adrp    x3, #0x1003b9000
  100075954  add     x3, x3, #0x870                           ; @""
  100075958  mov     x1, x23
  10007595c  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"EQUIP_ALERT_CONTENT" value:@"" table:0]
  100075960  mov     x29, x29
  100075964  bl      _objc_retainAutoreleasedReturnValue
  100075968  mov     x24, x0
  10007596c  adrp    x8, #0x100417000
  100075970  nop
  100075974  ldr     x1, [x8, #0x800]
  100075978  mov     x4, #0
  10007597c  mov     x6, #0
  100075980  adrp    x5, #0x1003ba000
  100075984  add     x5, x5, #0xaf0                           ; @"OK"
  100075988  mov     x0, x21
  10007598c  mov     x2, x20
  100075990  mov     x3, x24
  100075994  bl      _objc_msgSend                            ; [[UIAlertView alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"EQUIP_ALERT_TITLE" value:@"" table:0] message:[[NSBundle mainBundle] localizedStringForKey:@"EQUIP_ALERT_CONTENT" value:@"" table:0] delegate:0 cancelButtonTitle:@"OK" otherButtonTitles:0]
  100075998  mov     x23, x0
  10007599c  mov     x0, x24
  1000759a0  bl      _objc_release
  1000759a4  mov     x0, x22
  1000759a8  bl      _objc_release
  1000759ac  mov     x0, x20
  1000759b0  bl      _objc_release
  1000759b4  mov     x0, x19
  1000759b8  bl      _objc_release
  1000759bc  adrp    x8, #0x100417000
  1000759c0  nop
  1000759c4  ldr     x1, [x8, #0x810]
  1000759c8  mov     x0, x23
  1000759cc  bl      _objc_msgSend                            ; [[[UIAlertView alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"EQUIP_ALERT_TITLE" value:@"" table:0] message:[[NSBundle mainBundle] localizedStringForKey:@"EQUIP_ALERT_CONTENT" value:@"" table:0] delegate:0 cancelButtonTitle:@"OK" otherButtonTitles:0] show]
  1000759d0  mov     x0, x23
loc_1000759d4:
  1000759d4  ldp     x29, x30, [sp, #0x40]
  1000759d8  ldp     x20, x19, [sp, #0x30]
  1000759dc  ldp     x22, x21, [sp, #0x20]
  1000759e0  ldp     x24, x23, [sp, #0x10]
  1000759e4  ldp     d9, d8, [sp], #0x50
  1000759e8  b       _objc_release
  1000759ec  mov     x21, x0
  1000759f0  b       loc_100075a60
  1000759f4  b       loc_100075a44
  1000759f8  b       loc_100075a44
  1000759fc  mov     x21, x0
  100075a00  b       loc_100075a30
  100075a04  mov     x21, x0
  100075a08  b       loc_100075a28
  100075a0c  mov     x21, x0
  100075a10  b       loc_100075a20
  100075a14  mov     x21, x0
  100075a18  mov     x0, x24
  100075a1c  bl      _objc_release
loc_100075a20:
  100075a20  mov     x0, x22
  100075a24  bl      _objc_release
loc_100075a28:
  100075a28  mov     x0, x20
  100075a2c  bl      _objc_release
loc_100075a30:
  100075a30  mov     x0, x19
  100075a34  b       loc_100075a5c
  100075a38  mov     x21, x0
  100075a3c  mov     x0, x23
  100075a40  b       loc_100075a5c
loc_100075a44:
  100075a44  mov     x21, x0
  100075a48  b       loc_100075a58
  100075a4c  mov     x21, x0
  100075a50  mov     x0, x22
  100075a54  bl      _objc_release
loc_100075a58:
  100075a58  mov     x0, x20
loc_100075a5c:
  100075a5c  bl      _objc_release
loc_100075a60:
  100075a60  mov     x0, x21
  100075a64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryViewController powerUpButtonPressed:]
; address 0x100075a68  size 448  kind objc
; ======================================================================
  100075a68  stp     d9, d8, [sp, #-0x40]!
  100075a6c  stp     x22, x21, [sp, #0x10]
  100075a70  stp     x20, x19, [sp, #0x20]
  100075a74  stp     x29, x30, [sp, #0x30]
  100075a78  add     x29, sp, #0x30
  100075a7c  mov     x19, x0
  100075a80  adrp    x8, #0x100419000
  100075a84  nop
  100075a88  ldr     x1, [x8, #0x878]
  100075a8c  bl      _objc_msgSend                            ; [self browsingTime]
  100075a90  mov     x29, x29
  100075a94  bl      _objc_retainAutoreleasedReturnValue
  100075a98  mov     x20, x0
  100075a9c  bl      _objc_release
  100075aa0  cbz     x20, loc_100075b48                       ; if ([self browsingTime] == 0)
  100075aa4  adrp    x8, #0x100419000
  100075aa8  nop
  100075aac  ldr     x1, [x8, #0x8b8]
  100075ab0  mov     x0, x19
  100075ab4  bl      _objc_msgSend                            ; [self browse_dt]
  100075ab8  mov     v8.16b, v0.16b
  100075abc  adrp    x8, #0x10041e000
  100075ac0  ldr     x0, [x8, #8]                             ; class ADTracker
  100075ac4  adrp    x8, #0x100416000
  100075ac8  nop
  100075acc  ldr     x1, [x8, #0xac0]
  100075ad0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100075ad4  mov     x29, x29
  100075ad8  bl      _objc_retainAutoreleasedReturnValue
  100075adc  mov     x20, x0
  100075ae0  adrp    x8, #0x100419000
  100075ae4  nop
  100075ae8  ldr     x1, [x8, #0x840]
  100075aec  mov     x0, x19
  100075af0  bl      _objc_msgSend                            ; [self previousTab]
  100075af4  mov     x29, x29
  100075af8  bl      _objc_retainAutoreleasedReturnValue
  100075afc  mov     x21, x0
  100075b00  adrp    x8, #0x100419000
  100075b04  nop
  100075b08  ldr     x1, [x8, #0x8c0]
  100075b0c  mov     x0, x20
  100075b10  mov     x2, x21
  100075b14  mov     v0.16b, v8.16b
  100075b18  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordTabChangeEventWithTabName:[self previousTab] TimeSpentInTab:[self browse_dt]]
  100075b1c  mov     x0, x21
  100075b20  bl      _objc_release
  100075b24  mov     x0, x20
  100075b28  bl      _objc_release
  100075b2c  adrp    x8, #0x100419000
  100075b30  nop
  100075b34  ldr     x1, [x8, #0x828]
  100075b38  adrp    x2, #0x1003bf000
  100075b3c  add     x2, x2, #0x2d0                           ; @"powerupTab"
  100075b40  mov     x0, x19
  100075b44  bl      _objc_msgSend                            ; [self setPreviousTab:@"powerupTab"]
loc_100075b48:
  100075b48  adrp    x8, #0x100419000
  100075b4c  nop
  100075b50  ldr     x1, [x8, #0x8e8]
  100075b54  mov     x0, x19
  100075b58  bl      _objc_msgSend                            ; [self powerUpButton]
  100075b5c  mov     x29, x29
  100075b60  bl      _objc_retainAutoreleasedReturnValue
  100075b64  mov     x20, x0
  100075b68  adrp    x8, #0x100419000
  100075b6c  nop
  100075b70  ldr     x1, [x8, #0x8a8]
  100075b74  mov     x0, x19
  100075b78  mov     x2, x20
  100075b7c  bl      _objc_msgSend                            ; [self updateTabsAfterButtonPressed:[self powerUpButton]]
  100075b80  mov     x0, x20
  100075b84  bl      _objc_release
  100075b88  adrp    x8, #0x100419000
  100075b8c  nop
  100075b90  ldr     x1, [x8, #0x8f0]
  100075b94  mov     x0, x19
  100075b98  bl      _objc_msgSend                            ; [self loadPowerUps]
  100075b9c  adrp    x8, #0x10041f000
  100075ba0  ldrsw   x8, [x8, #0xd50]                         ; ivar offset ADArmoryViewController.powerups (+0x158)
  100075ba4  ldr     x0, [x19, x8]                            ; x0 = self->powerups
  100075ba8  adrp    x8, #0x100416000
  100075bac  nop
  100075bb0  ldr     x1, [x8, #0xf18]
  100075bb4  bl      _objc_msgSend                            ; [self->powerups view]
  100075bb8  mov     x29, x29
  100075bbc  bl      _objc_retainAutoreleasedReturnValue
  100075bc0  mov     x20, x0
  100075bc4  adrp    x8, #0x100419000
  100075bc8  nop
  100075bcc  ldr     x1, [x8, #0x8d8]
  100075bd0  mov     x0, x19
  100075bd4  mov     x2, x20
  100075bd8  bl      _objc_msgSend                            ; [self toggleAccessibilityAfterTabWasSelected:[self->powerups view]]
  100075bdc  mov     x0, x20
  100075be0  ldp     x29, x30, [sp, #0x30]
  100075be4  ldp     x20, x19, [sp, #0x20]
  100075be8  ldp     x22, x21, [sp, #0x10]
  100075bec  ldp     d9, d8, [sp], #0x40
  100075bf0  b       _objc_release
  100075bf4  mov     x19, x0
  100075bf8  b       loc_100075c20
  100075bfc  b       loc_100075c04
  100075c00  b       loc_100075c04
loc_100075c04:
  100075c04  mov     x19, x0
  100075c08  b       loc_100075c18
  100075c0c  mov     x19, x0
  100075c10  mov     x0, x21
  100075c14  bl      _objc_release
loc_100075c18:
  100075c18  mov     x0, x20
  100075c1c  bl      _objc_release
loc_100075c20:
  100075c20  mov     x0, x19
  100075c24  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryViewController currencyButtonPressed:]
; address 0x100075c28  size 448  kind objc
; ======================================================================
  100075c28  stp     d9, d8, [sp, #-0x40]!
  100075c2c  stp     x22, x21, [sp, #0x10]
  100075c30  stp     x20, x19, [sp, #0x20]
  100075c34  stp     x29, x30, [sp, #0x30]
  100075c38  add     x29, sp, #0x30
  100075c3c  mov     x19, x0
  100075c40  adrp    x8, #0x100419000
  100075c44  nop
  100075c48  ldr     x1, [x8, #0x878]
  100075c4c  bl      _objc_msgSend                            ; [self browsingTime]
  100075c50  mov     x29, x29
  100075c54  bl      _objc_retainAutoreleasedReturnValue
  100075c58  mov     x20, x0
  100075c5c  bl      _objc_release
  100075c60  cbz     x20, loc_100075d08                       ; if ([self browsingTime] == 0)
  100075c64  adrp    x8, #0x100419000
  100075c68  nop
  100075c6c  ldr     x1, [x8, #0x8b8]
  100075c70  mov     x0, x19
  100075c74  bl      _objc_msgSend                            ; [self browse_dt]
  100075c78  mov     v8.16b, v0.16b
  100075c7c  adrp    x8, #0x10041e000
  100075c80  ldr     x0, [x8, #8]                             ; class ADTracker
  100075c84  adrp    x8, #0x100416000
  100075c88  nop
  100075c8c  ldr     x1, [x8, #0xac0]
  100075c90  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100075c94  mov     x29, x29
  100075c98  bl      _objc_retainAutoreleasedReturnValue
  100075c9c  mov     x20, x0
  100075ca0  adrp    x8, #0x100419000
  100075ca4  nop
  100075ca8  ldr     x1, [x8, #0x840]
  100075cac  mov     x0, x19
  100075cb0  bl      _objc_msgSend                            ; [self previousTab]
  100075cb4  mov     x29, x29
  100075cb8  bl      _objc_retainAutoreleasedReturnValue
  100075cbc  mov     x21, x0
  100075cc0  adrp    x8, #0x100419000
  100075cc4  nop
  100075cc8  ldr     x1, [x8, #0x8c0]
  100075ccc  mov     x0, x20
  100075cd0  mov     x2, x21
  100075cd4  mov     v0.16b, v8.16b
  100075cd8  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordTabChangeEventWithTabName:[self previousTab] TimeSpentInTab:[self browse_dt]]
  100075cdc  mov     x0, x21
  100075ce0  bl      _objc_release
  100075ce4  mov     x0, x20
  100075ce8  bl      _objc_release
  100075cec  adrp    x8, #0x100419000
  100075cf0  nop
  100075cf4  ldr     x1, [x8, #0x828]
  100075cf8  adrp    x2, #0x1003bf000
  100075cfc  add     x2, x2, #0x2f0                           ; @"currencyTab"
  100075d00  mov     x0, x19
  100075d04  bl      _objc_msgSend                            ; [self setPreviousTab:@"currencyTab"]
loc_100075d08:
  100075d08  adrp    x8, #0x100419000
  100075d0c  nop
  100075d10  ldr     x1, [x8, #0x8f8]
  100075d14  mov     x0, x19
  100075d18  bl      _objc_msgSend                            ; [self currencyButton]
  100075d1c  mov     x29, x29
  100075d20  bl      _objc_retainAutoreleasedReturnValue
  100075d24  mov     x20, x0
  100075d28  adrp    x8, #0x100419000
  100075d2c  nop
  100075d30  ldr     x1, [x8, #0x8a8]
  100075d34  mov     x0, x19
  100075d38  mov     x2, x20
  100075d3c  bl      _objc_msgSend                            ; [self updateTabsAfterButtonPressed:[self currencyButton]]
  100075d40  mov     x0, x20
  100075d44  bl      _objc_release
  100075d48  adrp    x8, #0x100419000
  100075d4c  nop
  100075d50  ldr     x1, [x8, #0x900]
  100075d54  mov     x0, x19
  100075d58  bl      _objc_msgSend                            ; [self loadCurrency]
  100075d5c  adrp    x8, #0x10041f000
  100075d60  ldrsw   x8, [x8, #0xd54]                         ; ivar offset ADArmoryViewController.currency (+0x160)
  100075d64  ldr     x0, [x19, x8]                            ; x0 = self->currency
  100075d68  adrp    x8, #0x100416000
  100075d6c  nop
  100075d70  ldr     x1, [x8, #0xf18]
  100075d74  bl      _objc_msgSend                            ; [self->currency view]
  100075d78  mov     x29, x29
  100075d7c  bl      _objc_retainAutoreleasedReturnValue
  100075d80  mov     x20, x0
  100075d84  adrp    x8, #0x100419000
  100075d88  nop
  100075d8c  ldr     x1, [x8, #0x8d8]
  100075d90  mov     x0, x19
  100075d94  mov     x2, x20
  100075d98  bl      _objc_msgSend                            ; [self toggleAccessibilityAfterTabWasSelected:[self->currency view]]
  100075d9c  mov     x0, x20
  100075da0  ldp     x29, x30, [sp, #0x30]
  100075da4  ldp     x20, x19, [sp, #0x20]
  100075da8  ldp     x22, x21, [sp, #0x10]
  100075dac  ldp     d9, d8, [sp], #0x40
  100075db0  b       _objc_release
  100075db4  mov     x19, x0
  100075db8  b       loc_100075de0
  100075dbc  b       loc_100075dc4
  100075dc0  b       loc_100075dc4
loc_100075dc4:
  100075dc4  mov     x19, x0
  100075dc8  b       loc_100075dd8
  100075dcc  mov     x19, x0
  100075dd0  mov     x0, x21
  100075dd4  bl      _objc_release
loc_100075dd8:
  100075dd8  mov     x0, x20
  100075ddc  bl      _objc_release
loc_100075de0:
  100075de0  mov     x0, x19
  100075de4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryViewController updateTabsAfterButtonPressed:]
; address 0x100075de8  size 604  kind objc
; ======================================================================
  100075de8  stp     x26, x25, [sp, #-0x50]!
  100075dec  stp     x24, x23, [sp, #0x10]
  100075df0  stp     x22, x21, [sp, #0x20]
  100075df4  stp     x20, x19, [sp, #0x30]
  100075df8  stp     x29, x30, [sp, #0x40]
  100075dfc  add     x29, sp, #0x40
  100075e00  mov     x20, x0
  100075e04  mov     x0, x2
  100075e08  bl      _objc_retain
  100075e0c  mov     x19, x0
  100075e10  adrp    x8, #0x100419000
  100075e14  nop
  100075e18  ldr     x21, [x8, #0x8f8]
  100075e1c  mov     x0, x20
  100075e20  mov     x1, x21
  100075e24  bl      _objc_msgSend                            ; [self currencyButton]
  100075e28  mov     x29, x29
  100075e2c  bl      _objc_retainAutoreleasedReturnValue
  100075e30  mov     x22, x0
  100075e34  adrp    x8, #0x100417000
  100075e38  nop
  100075e3c  ldr     x23, [x8, #0x878]
  100075e40  mov     w2, #1
  100075e44  mov     x1, x23
  100075e48  bl      _objc_msgSend                            ; [[self currencyButton] setEnabled:1]
  100075e4c  mov     x0, x22
  100075e50  bl      _objc_release
  100075e54  adrp    x8, #0x100419000
  100075e58  nop
  100075e5c  ldr     x22, [x8, #0x8e8]
  100075e60  mov     x0, x20
  100075e64  mov     x1, x22
  100075e68  bl      _objc_msgSend                            ; [self powerUpButton]
  100075e6c  mov     x29, x29
  100075e70  bl      _objc_retainAutoreleasedReturnValue
  100075e74  mov     x24, x0
  100075e78  mov     w2, #1
  100075e7c  mov     x1, x23
  100075e80  bl      _objc_msgSend                            ; [[self powerUpButton] setEnabled:1]
  100075e84  mov     x0, x24
  100075e88  bl      _objc_release
  100075e8c  adrp    x8, #0x100419000
  100075e90  nop
  100075e94  ldr     x24, [x8, #0x8c8]
  100075e98  mov     x0, x20
  100075e9c  mov     x1, x24
  100075ea0  bl      _objc_msgSend                            ; [self weaponsButton]
  100075ea4  mov     x29, x29
  100075ea8  bl      _objc_retainAutoreleasedReturnValue
  100075eac  mov     x25, x0
  100075eb0  mov     w2, #1
  100075eb4  mov     x1, x23
  100075eb8  bl      _objc_msgSend                            ; [[self weaponsButton] setEnabled:1]
  100075ebc  mov     x0, x25
  100075ec0  bl      _objc_release
  100075ec4  adrp    x8, #0x100419000
  100075ec8  nop
  100075ecc  ldr     x25, [x8, #0x8a0]
  100075ed0  mov     x0, x20
  100075ed4  mov     x1, x25
  100075ed8  bl      _objc_msgSend                            ; [self loadOutButton]
  100075edc  mov     x29, x29
  100075ee0  bl      _objc_retainAutoreleasedReturnValue
  100075ee4  mov     x26, x0
  100075ee8  mov     w2, #1
  100075eec  mov     x1, x23
  100075ef0  bl      _objc_msgSend                            ; [[self loadOutButton] setEnabled:1]
  100075ef4  mov     x0, x26
  100075ef8  bl      _objc_release
  100075efc  mov     x0, x20
  100075f00  mov     x1, x24
  100075f04  bl      _objc_msgSend                            ; [self weaponsButton]
  100075f08  mov     x29, x29
  100075f0c  bl      _objc_retainAutoreleasedReturnValue
  100075f10  mov     x24, x0
  100075f14  adrp    x8, #0x100418000
  100075f18  nop
  100075f1c  ldr     x23, [x8, #0xd70]
  100075f20  mov     w2, #0
  100075f24  mov     x1, x23
  100075f28  bl      _objc_msgSend                            ; [[self weaponsButton] setSelected:0]
  100075f2c  mov     x0, x24
  100075f30  bl      _objc_release
  100075f34  mov     x0, x20
  100075f38  mov     x1, x25
  100075f3c  bl      _objc_msgSend                            ; [self loadOutButton]
  100075f40  mov     x29, x29
  100075f44  bl      _objc_retainAutoreleasedReturnValue
  100075f48  mov     x24, x0
  100075f4c  mov     w2, #0
  100075f50  mov     x1, x23
  100075f54  bl      _objc_msgSend                            ; [[self loadOutButton] setSelected:0]
  100075f58  mov     x0, x24
  100075f5c  bl      _objc_release
  100075f60  mov     x0, x20
  100075f64  mov     x1, x22
  100075f68  bl      _objc_msgSend                            ; [self powerUpButton]
  100075f6c  mov     x29, x29
  100075f70  bl      _objc_retainAutoreleasedReturnValue
  100075f74  mov     x22, x0
  100075f78  mov     w2, #0
  100075f7c  mov     x1, x23
  100075f80  bl      _objc_msgSend                            ; [[self powerUpButton] setSelected:0]
  100075f84  mov     x0, x22
  100075f88  bl      _objc_release
  100075f8c  mov     x0, x20
  100075f90  mov     x1, x21
  100075f94  bl      _objc_msgSend                            ; [self currencyButton]
  100075f98  mov     x29, x29
  100075f9c  bl      _objc_retainAutoreleasedReturnValue
  100075fa0  mov     x21, x0
  100075fa4  mov     w2, #0
  100075fa8  mov     x1, x23
  100075fac  bl      _objc_msgSend                            ; [[self currencyButton] setSelected:0]
  100075fb0  mov     x0, x21
  100075fb4  bl      _objc_release
  100075fb8  mov     w2, #1
  100075fbc  mov     x0, x19
  100075fc0  mov     x1, x23
  100075fc4  bl      _objc_msgSend                            ; [arg1 setSelected:1]
  100075fc8  mov     x0, x19
  100075fcc  ldp     x29, x30, [sp, #0x40]
  100075fd0  ldp     x20, x19, [sp, #0x30]
  100075fd4  ldp     x22, x21, [sp, #0x20]
  100075fd8  ldp     x24, x23, [sp, #0x10]
  100075fdc  ldp     x26, x25, [sp], #0x50
  100075fe0  b       _objc_release
  100075fe4  mov     x20, x0
  100075fe8  b       loc_100076034
  100075fec  b       loc_10007601c
  100075ff0  b       loc_100076010
  100075ff4  mov     x20, x0
  100075ff8  mov     x0, x25
  100075ffc  b       loc_100076030
  100076000  mov     x20, x0
  100076004  mov     x0, x26
  100076008  b       loc_100076030
  10007600c  b       loc_100076010
loc_100076010:
  100076010  mov     x20, x0
  100076014  mov     x0, x24
  100076018  b       loc_100076030
loc_10007601c:
  10007601c  mov     x20, x0
  100076020  mov     x0, x22
  100076024  b       loc_100076030
  100076028  mov     x20, x0
  10007602c  mov     x0, x21
loc_100076030:
  100076030  bl      _objc_release
loc_100076034:
  100076034  mov     x0, x19
  100076038  bl      _objc_release
  10007603c  mov     x0, x20
  100076040  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryViewController didReceiveMemoryWarning]
; address 0x100076044  size 60  kind objc
; ======================================================================
  100076044  stp     x29, x30, [sp, #-0x10]!
  100076048  mov     x29, sp
  10007604c  sub     sp, sp, #0x10
  100076050  str     x0, [sp]
  100076054  adrp    x8, #0x10041e000
  100076058  ldr     x8, [x8, #0xdf0]
  10007605c  str     x8, [sp, #8]
  100076060  adrp    x8, #0x100416000
  100076064  nop
  100076068  ldr     x1, [x8, #0xbf8]
  10007606c  mov     x0, sp
  100076070  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  100076074  mov     sp, x29
  100076078  ldp     x29, x30, [sp], #0x10
  10007607c  ret

; ======================================================================
; -[ADArmoryViewController backButtonPressed]
; address 0x100076080  size 372  kind objc
; ======================================================================
  100076080  stp     x24, x23, [sp, #-0x40]!
  100076084  stp     x22, x21, [sp, #0x10]
  100076088  stp     x20, x19, [sp, #0x20]
  10007608c  stp     x29, x30, [sp, #0x30]
  100076090  add     x29, sp, #0x30
  100076094  mov     x19, x0
  100076098  adrp    x8, #0x100417000
  10007609c  nop
  1000760a0  ldr     x20, [x8, #0x2a8]
  1000760a4  mov     x1, x20
  1000760a8  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000760ac  mov     x29, x29
  1000760b0  bl      _objc_retainAutoreleasedReturnValue
  1000760b4  mov     x21, x0
  1000760b8  adrp    x8, #0x100419000
  1000760bc  nop
  1000760c0  ldr     x22, [x8, #0x908]
  1000760c4  mov     x1, x22
  1000760c8  bl      _objc_msgSend                            ; [[self statusBarViewController] backButtonDelegate]
  1000760cc  mov     x29, x29
  1000760d0  bl      _objc_retainAutoreleasedReturnValue
  1000760d4  mov     x23, x0
  1000760d8  bl      _objc_release
  1000760dc  mov     x0, x21
  1000760e0  bl      _objc_release
  1000760e4  cbz     x23, loc_100076178                       ; if ([[self statusBarViewController] backButtonDelegate] == 0)
  1000760e8  mov     x0, x19
  1000760ec  mov     x1, x20
  1000760f0  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000760f4  mov     x29, x29
  1000760f8  bl      _objc_retainAutoreleasedReturnValue
  1000760fc  mov     x21, x0
  100076100  mov     x1, x22
  100076104  bl      _objc_msgSend                            ; [[self statusBarViewController] backButtonDelegate]
  100076108  mov     x29, x29
  10007610c  bl      _objc_retainAutoreleasedReturnValue
  100076110  mov     x22, x0
  100076114  adrp    x8, #0x100419000
  100076118  nop
  10007611c  ldr     x1, [x8, #0x918]
  100076120  bl      _objc_msgSend                            ; [[[self statusBarViewController] backButtonDelegate] handleBackActionFromStatusBar]
  100076124  mov     x0, x22
  100076128  bl      _objc_release
  10007612c  mov     x0, x21
  100076130  bl      _objc_release
  100076134  mov     x0, x19
  100076138  mov     x1, x20
  10007613c  bl      _objc_msgSend                            ; [self statusBarViewController]
  100076140  mov     x29, x29
  100076144  bl      _objc_retainAutoreleasedReturnValue
  100076148  mov     x20, x0
  10007614c  adrp    x8, #0x100418000
  100076150  nop
  100076154  ldr     x1, [x8, #0x490]
  100076158  mov     x2, #0
  10007615c  bl      _objc_msgSend                            ; [[self statusBarViewController] setBackButtonDelegate:0]
  100076160  mov     x0, x20
  100076164  ldp     x29, x30, [sp, #0x30]
  100076168  ldp     x20, x19, [sp, #0x20]
  10007616c  ldp     x22, x21, [sp, #0x10]
  100076170  ldp     x24, x23, [sp], #0x40
  100076174  b       _objc_release
loc_100076178:
  100076178  adrp    x8, #0x100419000
  10007617c  nop
  100076180  ldr     x1, [x8, #0x910]
  100076184  mov     x0, x19
  100076188  bl      _objc_msgSend                            ; [self trackBrowsingTime]
  10007618c  mov     w2, #0
  100076190  adrp    x8, #0x100417000
  100076194  nop
  100076198  ldr     x1, [x8, #0x420]
  10007619c  adrp    x3, #0x1003b1000
  1000761a0  add     x3, x3, #0xec0                           ; ^{-[ADArmoryViewController backButtonPressed]_block_invoke}
  1000761a4  mov     x0, x19
  1000761a8  ldp     x29, x30, [sp, #0x30]
  1000761ac  ldp     x20, x19, [sp, #0x20]
  1000761b0  ldp     x22, x21, [sp, #0x10]
  1000761b4  ldp     x24, x23, [sp], #0x40
  1000761b8  b       _objc_msgSend                            ; [self dismissViewControllerAnimated:0 completion:^{-[ADArmoryViewController backButtonPressed]_block_invoke}]
  1000761bc  mov     x19, x0
  1000761c0  b       loc_1000761d8
  1000761c4  mov     x19, x0
  1000761c8  b       loc_1000761d8
  1000761cc  mov     x19, x0
  1000761d0  mov     x0, x22
  1000761d4  bl      _objc_release
loc_1000761d8:
  1000761d8  mov     x0, x21
  1000761dc  b       loc_1000761e8
  1000761e0  mov     x19, x0
  1000761e4  mov     x0, x20
loc_1000761e8:
  1000761e8  bl      _objc_release
  1000761ec  mov     x0, x19
  1000761f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryViewController backButtonPressed]_block_invoke
; address 0x1000761f4  size 4  kind block
; ======================================================================
  1000761f4  ret

; ======================================================================
; -[ADArmoryViewController trackBrowsingTime]
; address 0x1000761f8  size 1056  kind objc
; ======================================================================
  1000761f8  stp     x28, x27, [sp, #-0x60]!
  1000761fc  stp     x26, x25, [sp, #0x10]
  100076200  stp     x24, x23, [sp, #0x20]
  100076204  stp     x22, x21, [sp, #0x30]
  100076208  stp     x20, x19, [sp, #0x40]
  10007620c  stp     x29, x30, [sp, #0x50]
  100076210  add     x29, sp, #0x50
  100076214  mov     x19, x0
  100076218  adrp    x8, #0x100419000
  10007621c  nop
  100076220  ldr     x1, [x8, #0x878]
  100076224  bl      _objc_msgSend                            ; [self browsingTime]
  100076228  mov     x29, x29
  10007622c  bl      _objc_retainAutoreleasedReturnValue
  100076230  mov     x20, x0
  100076234  adrp    x8, #0x100417000
  100076238  nop
  10007623c  ldr     x1, [x8, #0x730]
  100076240  bl      _objc_msgSend                            ; [[self browsingTime] invalidate]
  100076244  mov     x0, x20
  100076248  bl      _objc_release
  10007624c  adrp    x8, #0x100419000
  100076250  nop
  100076254  ldr     x1, [x8, #0x8b8]
  100076258  mov     x0, x19
  10007625c  bl      _objc_msgSend                            ; [self browse_dt]
  100076260  adrp    x8, #0x100419000
  100076264  nop
  100076268  ldr     x1, [x8, #0x838]
  10007626c  mov     x2, #0
  100076270  mov     x0, x19
  100076274  bl      _objc_msgSend                            ; [self setBrowsingTime:0]
  100076278  adrp    x27, #0x10041e000
  10007627c  ldr     x0, [x27, #8]                            ; class ADTracker
  100076280  adrp    x8, #0x100416000
  100076284  nop
  100076288  ldr     x19, [x8, #0xac0]
  10007628c  mov     x1, x19
  100076290  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100076294  mov     x29, x29
  100076298  bl      _objc_retainAutoreleasedReturnValue
  10007629c  mov     x20, x0
  1000762a0  adrp    x8, #0x100419000
  1000762a4  nop
  1000762a8  ldr     x1, [x8, #0x920]
  1000762ac  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] configured]
  1000762b0  mov     x21, x0
  1000762b4  mov     x0, x20
  1000762b8  bl      _objc_release
  1000762bc  cbz     w21, loc_100076530                       ; if ([[ADTracker sharedInstance] configured] == 0)
  1000762c0  ldr     x0, [x27, #8]                            ; class ADTracker
  1000762c4  adrp    x8, #0x100419000
  1000762c8  nop
  1000762cc  ldr     x24, [x8, #0x928]
  1000762d0  adrp    x2, #0x1003bf000
  1000762d4  add     x2, x2, #0x1d0                           ; @"slot1"
  1000762d8  mov     x1, x24
  1000762dc  bl      _objc_msgSend                            ; [ADTracker getWeaponInSlot:@"slot1"]
  1000762e0  mov     x29, x29
  1000762e4  bl      _objc_retainAutoreleasedReturnValue
  1000762e8  mov     x20, x0
  1000762ec  adrp    x28, #0x10041d000
  1000762f0  ldr     x0, [x28, #0xf70]                        ; class ADInventory
  1000762f4  adrp    x8, #0x100416000
  1000762f8  nop
  1000762fc  ldr     x23, [x8, #0xec8]
  100076300  mov     x1, x23
  100076304  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100076308  mov     x29, x29
  10007630c  bl      _objc_retainAutoreleasedReturnValue
  100076310  mov     x22, x0
  100076314  adrp    x8, #0x100416000
  100076318  nop
  10007631c  ldr     x1, [x8, #0xed0]
  100076320  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot1]
  100076324  mov     x29, x29
  100076328  bl      _objc_retainAutoreleasedReturnValue
  10007632c  mov     x21, x0
  100076330  mov     x0, x22
  100076334  bl      _objc_release
  100076338  adrp    x8, #0x100416000
  10007633c  nop
  100076340  ldr     x22, [x8, #0xf58]
  100076344  mov     x0, x20
  100076348  mov     x1, x22
  10007634c  mov     x2, x21
  100076350  bl      _objc_msgSend                            ; [[ADTracker getWeaponInSlot:@"slot1"] isEqualToString:[[ADInventory sharedInventory] weaponSlot1]]
  100076354  tbnz    w0, #0, loc_100076390                    ; if (([[ADTracker getWeaponInSlot:@"slot1"] isEqualToString:[[ADInventory sharedInventory] weaponSlot1]] & 1))
  100076358  ldr     x0, [x27, #8]                            ; class ADTracker
  10007635c  mov     x1, x19
  100076360  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100076364  mov     x29, x29
  100076368  bl      _objc_retainAutoreleasedReturnValue
  10007636c  mov     x25, x0
  100076370  adrp    x8, #0x100419000
  100076374  nop
  100076378  ldr     x1, [x8, #0x930]
  10007637c  mov     w3, #1
  100076380  mov     x2, x20
  100076384  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordWeaponEquipWithName:[ADTracker getWeaponInSlot:@"slot1"] WeaponSlot:1]
  100076388  mov     x0, x25
  10007638c  bl      _objc_release
loc_100076390:
  100076390  ldr     x0, [x27, #8]                            ; class ADTracker
  100076394  adrp    x2, #0x1003bf000
  100076398  add     x2, x2, #0x1f0                           ; @"slot2"
  10007639c  mov     x1, x24
  1000763a0  bl      _objc_msgSend                            ; [ADTracker getWeaponInSlot:@"slot2"]
  1000763a4  mov     x29, x29
  1000763a8  bl      _objc_retainAutoreleasedReturnValue
  1000763ac  mov     x26, x0
  1000763b0  mov     x0, x20
  1000763b4  bl      _objc_release
  1000763b8  ldr     x0, [x28, #0xf70]                        ; class ADInventory
  1000763bc  mov     x20, x26
  1000763c0  mov     x1, x23
  1000763c4  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000763c8  mov     x29, x29
  1000763cc  bl      _objc_retainAutoreleasedReturnValue
  1000763d0  mov     x20, x0
  1000763d4  adrp    x8, #0x100416000
  1000763d8  nop
  1000763dc  ldr     x1, [x8, #0xed8]
  1000763e0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot2]
  1000763e4  mov     x29, x29
  1000763e8  bl      _objc_retainAutoreleasedReturnValue
  1000763ec  mov     x25, x0
  1000763f0  mov     x0, x21
  1000763f4  bl      _objc_release
  1000763f8  mov     x0, x20
  1000763fc  bl      _objc_release
  100076400  mov     x20, x26
  100076404  mov     x21, x25
  100076408  mov     x0, x26
  10007640c  mov     x1, x22
  100076410  mov     x2, x25
  100076414  bl      _objc_msgSend                            ; [[ADTracker getWeaponInSlot:@"slot2"] isEqualToString:[[ADInventory sharedInventory] weaponSlot2]]
  100076418  tbnz    w0, #0, loc_10007645c                    ; if (([[ADTracker getWeaponInSlot:@"slot2"] isEqualToString:[[ADInventory sharedInventory] weaponSlot2]] & 1))
  10007641c  ldr     x0, [x27, #8]                            ; class ADTracker
  100076420  mov     x20, x26
  100076424  mov     x21, x25
  100076428  mov     x1, x19
  10007642c  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100076430  mov     x29, x29
  100076434  bl      _objc_retainAutoreleasedReturnValue
  100076438  mov     x20, x0
  10007643c  adrp    x8, #0x100419000
  100076440  nop
  100076444  ldr     x1, [x8, #0x930]
  100076448  mov     w3, #2
  10007644c  mov     x2, x26
  100076450  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordWeaponEquipWithName:[ADTracker getWeaponInSlot:@"slot2"] WeaponSlot:2]
  100076454  mov     x0, x20
  100076458  bl      _objc_release
loc_10007645c:
  10007645c  ldr     x0, [x27, #8]                            ; class ADTracker
  100076460  mov     x20, x26
  100076464  mov     x21, x25
  100076468  adrp    x2, #0x1003bf000
  10007646c  add     x2, x2, #0x210                           ; @"slotMelee"
  100076470  mov     x1, x24
  100076474  bl      _objc_msgSend                            ; [ADTracker getWeaponInSlot:@"slotMelee"]
  100076478  mov     x29, x29
  10007647c  bl      _objc_retainAutoreleasedReturnValue
  100076480  mov     x20, x0
  100076484  mov     x0, x26
  100076488  bl      _objc_release
  10007648c  ldr     x0, [x28, #0xf70]                        ; class ADInventory
  100076490  mov     x21, x25
  100076494  mov     x1, x23
  100076498  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10007649c  mov     x29, x29
  1000764a0  bl      _objc_retainAutoreleasedReturnValue
  1000764a4  mov     x23, x0
  1000764a8  adrp    x8, #0x100416000
  1000764ac  nop
  1000764b0  ldr     x1, [x8, #0xee0]
  1000764b4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlotMelee]
  1000764b8  mov     x29, x29
  1000764bc  bl      _objc_retainAutoreleasedReturnValue
  1000764c0  mov     x21, x0
  1000764c4  mov     x0, x25
  1000764c8  bl      _objc_release
  1000764cc  mov     x0, x23
  1000764d0  bl      _objc_release
  1000764d4  mov     x0, x20
  1000764d8  mov     x1, x22
  1000764dc  mov     x2, x21
  1000764e0  bl      _objc_msgSend                            ; [[ADTracker getWeaponInSlot:@"slotMelee"] isEqualToString:[[ADInventory sharedInventory] weaponSlotMelee]]
  1000764e4  tbnz    w0, #0, loc_100076520                    ; if (([[ADTracker getWeaponInSlot:@"slotMelee"] isEqualToString:[[ADInventory sharedInventory] weaponSlotMelee]] & 1))
  1000764e8  ldr     x0, [x27, #8]                            ; class ADTracker
  1000764ec  mov     x1, x19
  1000764f0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000764f4  mov     x29, x29
  1000764f8  bl      _objc_retainAutoreleasedReturnValue
  1000764fc  mov     x22, x0
  100076500  adrp    x8, #0x100419000
  100076504  nop
  100076508  ldr     x1, [x8, #0x930]
  10007650c  mov     w3, #3
  100076510  mov     x2, x20
  100076514  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordWeaponEquipWithName:[ADTracker getWeaponInSlot:@"slotMelee"] WeaponSlot:3]
  100076518  mov     x0, x22
  10007651c  bl      _objc_release
loc_100076520:
  100076520  mov     x0, x21
  100076524  bl      _objc_release
  100076528  mov     x0, x20
  10007652c  bl      _objc_release
loc_100076530:
  100076530  ldr     x0, [x27, #8]                            ; class ADTracker
  100076534  mov     x1, x19
  100076538  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10007653c  mov     x29, x29
  100076540  bl      _objc_retainAutoreleasedReturnValue
  100076544  mov     x20, x0
  100076548  adrp    x8, #0x100419000
  10007654c  nop
  100076550  ldr     x1, [x8, #0x938]
  100076554  mov     w2, #0
  100076558  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setConfigured:0]
  10007655c  mov     x0, x20
  100076560  ldp     x29, x30, [sp, #0x50]
  100076564  ldp     x20, x19, [sp, #0x40]
  100076568  ldp     x22, x21, [sp, #0x30]
  10007656c  ldp     x24, x23, [sp, #0x20]
  100076570  ldp     x26, x25, [sp, #0x10]
  100076574  ldp     x28, x27, [sp], #0x60
  100076578  b       _objc_release
  10007657c  mov     x19, x0
loc_100076580:
  100076580  mov     x0, x21
loc_100076584:
  100076584  bl      _objc_release
  100076588  b       loc_10007659c
  10007658c  b       loc_100076598
  100076590  b       loc_100076598
  100076594  b       loc_100076598
loc_100076598:
  100076598  mov     x19, x0
loc_10007659c:
  10007659c  mov     x0, x20
  1000765a0  bl      _objc_release
  1000765a4  mov     x0, x19
  1000765a8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000765ac  mov     x19, x0
  1000765b0  mov     x0, x22
  1000765b4  b       loc_100076584
  1000765b8  mov     x19, x0
  1000765bc  mov     x0, x20
  1000765c0  bl      _objc_release
  1000765c4  mov     x20, x26
  1000765c8  b       loc_100076580
  1000765cc  mov     x19, x0
  1000765d0  mov     x0, x23
  1000765d4  bl      _objc_release
  1000765d8  mov     x21, x25
  1000765dc  b       loc_100076580
  1000765e0  mov     x19, x0
  1000765e4  mov     x0, x25
  1000765e8  bl      _objc_release
  1000765ec  b       loc_100076580
  1000765f0  mov     x19, x0
  1000765f4  mov     x0, x20
  1000765f8  bl      _objc_release
  1000765fc  mov     x20, x26
  100076600  mov     x21, x25
  100076604  b       loc_100076580
  100076608  mov     x19, x0
  10007660c  mov     x0, x22
  100076610  bl      _objc_release
  100076614  b       loc_100076580

; ======================================================================
; -[ADArmoryViewController sendDetailViewToBack]
; address 0x100076618  size 60  kind objc
; ======================================================================
  100076618  stp     x29, x30, [sp, #-0x10]!
  10007661c  mov     x29, sp
  100076620  sub     sp, sp, #0x10
  100076624  str     x0, [sp]
  100076628  adrp    x8, #0x10041e000
  10007662c  ldr     x8, [x8, #0xdf0]
  100076630  str     x8, [sp, #8]
  100076634  adrp    x8, #0x100418000
  100076638  nop
  10007663c  ldr     x1, [x8, #0x538]
  100076640  mov     x0, sp
  100076644  bl      _objc_msgSendSuper2                      ; [super sendDetailViewToBack]
  100076648  mov     sp, x29
  10007664c  ldp     x29, x30, [sp], #0x10
  100076650  ret

; ======================================================================
; -[ADArmoryViewController setAccessibilityOnView:to:]
; address 0x100076654  size 44  kind objc
; ======================================================================
  100076654  stp     x29, x30, [sp, #-0x10]!
  100076658  mov     x29, sp
  10007665c  eor     w8, w3, #1
  100076660  adrp    x9, #0x100418000
  100076664  nop
  100076668  ldr     x1, [x9, #0xaf0]
  10007666c  mov     x0, x2
  100076670  mov     x2, x8
  100076674  bl      _objc_msgSend                            ; [arg1 setAccessibilityElementsHidden:(arg2 ^ 1)]
  100076678  ldp     x29, x30, [sp], #0x10
  10007667c  ret

; ======================================================================
; -[ADArmoryViewController toggleAccessibilityAfterTabWasSelected:]
; address 0x100076680  size 596  kind objc
; ======================================================================
  100076680  stp     x24, x23, [sp, #-0x40]!
  100076684  stp     x22, x21, [sp, #0x10]
  100076688  stp     x20, x19, [sp, #0x20]
  10007668c  stp     x29, x30, [sp, #0x30]
  100076690  add     x29, sp, #0x30
  100076694  mov     x20, x0
  100076698  mov     x0, x2
  10007669c  bl      _objc_retain
  1000766a0  mov     x19, x0
  1000766a4  adrp    x8, #0x10041f000
  1000766a8  ldrsw   x23, [x8, #0xd50]                        ; ivar offset ADArmoryViewController.powerups (+0x158)
  1000766ac  ldr     x0, [x20, x23]                           ; x0 = self->powerups
  1000766b0  adrp    x8, #0x100416000
  1000766b4  nop
  1000766b8  ldr     x21, [x8, #0xf18]
  1000766bc  mov     x1, x21
  1000766c0  bl      _objc_msgSend                            ; [self->powerups view]
  1000766c4  mov     x29, x29
  1000766c8  bl      _objc_retainAutoreleasedReturnValue
  1000766cc  mov     x22, x0
  1000766d0  bl      _objc_release
  1000766d4  cmp     x22, x19
  1000766d8  b.eq    loc_100076718                            ; if ([self->powerups view] == arg1)
  1000766dc  ldr     x0, [x20, x23]                           ; x0 = self->powerups
  1000766e0  mov     x1, x21
  1000766e4  bl      _objc_msgSend                            ; [self->powerups view]
  1000766e8  mov     x29, x29
  1000766ec  bl      _objc_retainAutoreleasedReturnValue
  1000766f0  mov     x22, x0
  1000766f4  adrp    x8, #0x100419000
  1000766f8  nop
  1000766fc  ldr     x1, [x8, #0x940]
  100076700  mov     w3, #0
  100076704  mov     x0, x20
  100076708  mov     x2, x22
  10007670c  bl      _objc_msgSend                            ; [self setAccessibilityOnView:[self->powerups view] to:0]
  100076710  mov     x0, x22
  100076714  bl      _objc_release
loc_100076718:
  100076718  adrp    x8, #0x10041f000
  10007671c  ldrsw   x23, [x8, #0xd54]                        ; ivar offset ADArmoryViewController.currency (+0x160)
  100076720  ldr     x0, [x20, x23]                           ; x0 = self->currency
  100076724  mov     x1, x21
  100076728  bl      _objc_msgSend                            ; [self->currency view]
  10007672c  mov     x29, x29
  100076730  bl      _objc_retainAutoreleasedReturnValue
  100076734  mov     x22, x0
  100076738  bl      _objc_release
  10007673c  cmp     x22, x19
  100076740  b.eq    loc_100076780                            ; if ([self->currency view] == arg1)
  100076744  ldr     x0, [x20, x23]                           ; x0 = self->currency
  100076748  mov     x1, x21
  10007674c  bl      _objc_msgSend                            ; [self->currency view]
  100076750  mov     x29, x29
  100076754  bl      _objc_retainAutoreleasedReturnValue
  100076758  mov     x22, x0
  10007675c  adrp    x8, #0x100419000
  100076760  nop
  100076764  ldr     x1, [x8, #0x940]
  100076768  mov     w3, #0
  10007676c  mov     x0, x20
  100076770  mov     x2, x22
  100076774  bl      _objc_msgSend                            ; [self setAccessibilityOnView:[self->currency view] to:0]
  100076778  mov     x0, x22
  10007677c  bl      _objc_release
loc_100076780:
  100076780  adrp    x8, #0x10041f000
  100076784  ldrsw   x23, [x8, #0xd48]                        ; ivar offset ADArmoryViewController.shop (+0x150)
  100076788  ldr     x0, [x20, x23]                           ; x0 = self->shop
  10007678c  mov     x1, x21
  100076790  bl      _objc_msgSend                            ; [self->shop view]
  100076794  mov     x29, x29
  100076798  bl      _objc_retainAutoreleasedReturnValue
  10007679c  mov     x22, x0
  1000767a0  bl      _objc_release
  1000767a4  cmp     x22, x19
  1000767a8  b.eq    loc_1000767e8                            ; if ([self->shop view] == arg1)
  1000767ac  ldr     x0, [x20, x23]                           ; x0 = self->shop
  1000767b0  mov     x1, x21
  1000767b4  bl      _objc_msgSend                            ; [self->shop view]
  1000767b8  mov     x29, x29
  1000767bc  bl      _objc_retainAutoreleasedReturnValue
  1000767c0  mov     x22, x0
  1000767c4  adrp    x8, #0x100419000
  1000767c8  nop
  1000767cc  ldr     x1, [x8, #0x940]
  1000767d0  mov     w3, #0
  1000767d4  mov     x0, x20
  1000767d8  mov     x2, x22
  1000767dc  bl      _objc_msgSend                            ; [self setAccessibilityOnView:[self->shop view] to:0]
  1000767e0  mov     x0, x22
  1000767e4  bl      _objc_release
loc_1000767e8:
  1000767e8  adrp    x8, #0x10041f000
  1000767ec  ldrsw   x23, [x8, #0xd4c]                        ; ivar offset ADArmoryViewController.loadOut (+0x168)
  1000767f0  ldr     x0, [x20, x23]                           ; x0 = self->loadOut
  1000767f4  mov     x1, x21
  1000767f8  bl      _objc_msgSend                            ; [self->loadOut view]
  1000767fc  mov     x29, x29
  100076800  bl      _objc_retainAutoreleasedReturnValue
  100076804  mov     x22, x0
  100076808  bl      _objc_release
  10007680c  cmp     x22, x19
  100076810  b.eq    loc_100076850                            ; if ([self->loadOut view] == arg1)
  100076814  ldr     x0, [x20, x23]                           ; x0 = self->loadOut
  100076818  mov     x1, x21
  10007681c  bl      _objc_msgSend                            ; [self->loadOut view]
  100076820  mov     x29, x29
  100076824  bl      _objc_retainAutoreleasedReturnValue
  100076828  mov     x21, x0
  10007682c  adrp    x8, #0x100419000
  100076830  nop
  100076834  ldr     x1, [x8, #0x940]
  100076838  mov     w3, #0
  10007683c  mov     x0, x20
  100076840  mov     x2, x21
  100076844  bl      _objc_msgSend                            ; [self setAccessibilityOnView:[self->loadOut view] to:0]
  100076848  mov     x0, x21
  10007684c  bl      _objc_release
loc_100076850:
  100076850  adrp    x8, #0x100419000
  100076854  nop
  100076858  ldr     x1, [x8, #0x940]
  10007685c  mov     w3, #1
  100076860  mov     x0, x20
  100076864  mov     x2, x19
  100076868  bl      _objc_msgSend                            ; [self setAccessibilityOnView:arg1 to:1]
  10007686c  adrp    x8, #0x1003b0000
  100076870  ldr     x8, [x8, #0xb8]                          ; _UIAccessibilityLayoutChangedNotification
  100076874  ldr     w0, [x8]                                 ; w0 = _UIAccessibilityLayoutChangedNotification[+0x0]
  100076878  mov     x1, #0
  10007687c  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityLayoutChangedNotification[+0x0], 0)
  100076880  mov     x0, x19
  100076884  ldp     x29, x30, [sp, #0x30]
  100076888  ldp     x20, x19, [sp, #0x20]
  10007688c  ldp     x22, x21, [sp, #0x10]
  100076890  ldp     x24, x23, [sp], #0x40
  100076894  b       _objc_release
  100076898  mov     x20, x0
  10007689c  b       loc_1000768c4
  1000768a0  b       loc_1000768a8
  1000768a4  b       loc_1000768a8
loc_1000768a8:
  1000768a8  mov     x20, x0
  1000768ac  mov     x0, x22
  1000768b0  bl      _objc_release
  1000768b4  b       loc_1000768c4
  1000768b8  mov     x20, x0
  1000768bc  mov     x0, x21
  1000768c0  bl      _objc_release
loc_1000768c4:
  1000768c4  mov     x0, x19
  1000768c8  bl      _objc_release
  1000768cc  mov     x0, x20
  1000768d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryViewController showNotEnoughMoneyAlert]
; address 0x1000768d4  size 684  kind objc
; ======================================================================
  1000768d4  stp     x28, x27, [sp, #-0x60]!
  1000768d8  stp     x26, x25, [sp, #0x10]
  1000768dc  stp     x24, x23, [sp, #0x20]
  1000768e0  stp     x22, x21, [sp, #0x30]
  1000768e4  stp     x20, x19, [sp, #0x40]
  1000768e8  stp     x29, x30, [sp, #0x50]
  1000768ec  add     x29, sp, #0x50
  1000768f0  sub     sp, sp, #0x10
  1000768f4  mov     x21, x0
  1000768f8  adrp    x8, #0x10041e000
  1000768fc  ldr     x0, [x8, #0x80]                          ; class UIAlertView
  100076900  adrp    x8, #0x100416000
  100076904  nop
  100076908  ldr     x1, [x8, #0xac8]
  10007690c  bl      _objc_msgSend                            ; [UIAlertView alloc]
  100076910  mov     x24, x0
  100076914  adrp    x19, #0x10041d000
  100076918  ldr     x0, [x19, #0xee8]                        ; class NSBundle
  10007691c  adrp    x8, #0x100416000
  100076920  nop
  100076924  ldr     x27, [x8, #0xb58]
  100076928  mov     x1, x27
  10007692c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100076930  mov     x29, x29
  100076934  bl      _objc_retainAutoreleasedReturnValue
  100076938  str     x0, [sp, #8]
  10007693c  adrp    x8, #0x100416000
  100076940  nop
  100076944  ldr     x26, [x8, #0xb60]
  100076948  mov     x4, #0
  10007694c  adrp    x2, #0x1003bd000
  100076950  add     x2, x2, #0x510                           ; @"COINS_ALERT_TITLE"
  100076954  adrp    x3, #0x1003b9000
  100076958  add     x3, x3, #0x870                           ; @""
  10007695c  mov     x1, x26
  100076960  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_TITLE" value:@"" table:0]
  100076964  mov     x29, x29
  100076968  bl      _objc_retainAutoreleasedReturnValue
  10007696c  mov     x20, x0
  100076970  ldr     x0, [x19, #0xee8]                        ; class NSBundle
  100076974  mov     x1, x27
  100076978  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10007697c  mov     x29, x29
  100076980  bl      _objc_retainAutoreleasedReturnValue
  100076984  mov     x22, x0
  100076988  mov     x4, #0
  10007698c  adrp    x2, #0x1003bd000
  100076990  add     x2, x2, #0x530                           ; @"COINS_ALERT_CONTENT"
  100076994  adrp    x3, #0x1003b9000
  100076998  add     x3, x3, #0x870                           ; @""
  10007699c  mov     x1, x26
  1000769a0  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_CONTENT" value:@"" table:0]
  1000769a4  mov     x29, x29
  1000769a8  bl      _objc_retainAutoreleasedReturnValue
  1000769ac  mov     x23, x0
  1000769b0  ldr     x0, [x19, #0xee8]                        ; class NSBundle
  1000769b4  mov     x1, x27
  1000769b8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000769bc  mov     x29, x29
  1000769c0  bl      _objc_retainAutoreleasedReturnValue
  1000769c4  mov     x25, x0
  1000769c8  mov     x4, #0
  1000769cc  adrp    x2, #0x1003bd000
  1000769d0  add     x2, x2, #0x550                           ; @"COINS_ALERT_CANCEL"
  1000769d4  adrp    x3, #0x1003b9000
  1000769d8  add     x3, x3, #0x870                           ; @""
  1000769dc  mov     x1, x26
  1000769e0  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_CANCEL" value:@"" table:0]
  1000769e4  mov     x29, x29
  1000769e8  bl      _objc_retainAutoreleasedReturnValue
  1000769ec  mov     x28, x0
  1000769f0  ldr     x0, [x19, #0xee8]                        ; class NSBundle
  1000769f4  mov     x1, x27
  1000769f8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000769fc  mov     x29, x29
  100076a00  bl      _objc_retainAutoreleasedReturnValue
  100076a04  mov     x27, x0
  100076a08  mov     x4, #0
  100076a0c  adrp    x2, #0x1003bc000
  100076a10  add     x2, x2, #0x7f0                           ; @"COINS_ALERT_MORE"
  100076a14  adrp    x3, #0x1003b9000
  100076a18  add     x3, x3, #0x870                           ; @""
  100076a1c  mov     x1, x26
  100076a20  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_MORE" value:@"" table:0]
  100076a24  mov     x29, x29
  100076a28  bl      _objc_retainAutoreleasedReturnValue
  100076a2c  mov     x26, x0
  100076a30  adrp    x8, #0x100417000
  100076a34  nop
  100076a38  ldr     x1, [x8, #0x800]
  100076a3c  mov     x4, #0
  100076a40  str     xzr, [sp]
  100076a44  mov     x0, x24
  100076a48  mov     x2, x20
  100076a4c  mov     x3, x23
  100076a50  mov     x5, x28
  100076a54  mov     x6, x26
  100076a58  bl      _objc_msgSend                            ; [[UIAlertView alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_TITLE" value:@"" table:0] message:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_CONTENT" value:@"" table:0] delegate:0 cancelButtonTitle:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_CANCEL" value:@"" table:0] otherButtonTitles:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_MORE" value:@"" table:0]]
  100076a5c  adrp    x8, #0x10041f000
  100076a60  ldrsw   x19, [x8, #0xd58]                        ; ivar offset ADArmoryViewController.currencyAlert (+0x148)
  100076a64  ldr     x8, [x21, x19]                           ; x8 = self->currencyAlert
  100076a68  str     x0, [x21, x19]                           ; self->currencyAlert = [[UIAlertView alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_TITLE" value:@"" table:0] message:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_CONTENT" value:@"" table:0] delegate:0 cancelButtonTitle:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_CANCEL" value:@"" table:0] otherButtonTitles:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_MORE" value:@"" table:0]]
  100076a6c  mov     x0, x8
  100076a70  bl      _objc_release
  100076a74  mov     x0, x26
  100076a78  bl      _objc_release
  100076a7c  mov     x0, x27
  100076a80  bl      _objc_release
  100076a84  mov     x0, x28
  100076a88  bl      _objc_release
  100076a8c  mov     x0, x25
  100076a90  bl      _objc_release
  100076a94  mov     x0, x23
  100076a98  bl      _objc_release
  100076a9c  mov     x0, x22
  100076aa0  bl      _objc_release
  100076aa4  mov     x0, x20
  100076aa8  bl      _objc_release
  100076aac  ldr     x0, [sp, #8]
  100076ab0  bl      _objc_release
  100076ab4  ldr     x0, [x21, x19]                           ; x0 = self->currencyAlert
  100076ab8  adrp    x8, #0x100417000
  100076abc  nop
  100076ac0  ldr     x1, [x8, #0x7d8]
  100076ac4  mov     x2, x21
  100076ac8  bl      _objc_msgSend                            ; [self->currencyAlert setDelegate:self]
  100076acc  ldr     x0, [x21, x19]                           ; x0 = self->currencyAlert
  100076ad0  adrp    x8, #0x100417000
  100076ad4  nop
  100076ad8  ldr     x1, [x8, #0x810]
  100076adc  sub     sp, x29, #0x50
  100076ae0  ldp     x29, x30, [sp, #0x50]
  100076ae4  ldp     x20, x19, [sp, #0x40]
  100076ae8  ldp     x22, x21, [sp, #0x30]
  100076aec  ldp     x24, x23, [sp, #0x20]
  100076af0  ldp     x26, x25, [sp, #0x10]
  100076af4  ldp     x28, x27, [sp], #0x60
  100076af8  b       _objc_msgSend                            ; [self->currencyAlert show]
  100076afc  mov     x21, x0
  100076b00  b       loc_100076b70
  100076b04  mov     x21, x0
  100076b08  b       loc_100076b68
  100076b0c  mov     x21, x0
  100076b10  b       loc_100076b60
  100076b14  mov     x21, x0
  100076b18  b       loc_100076b58
  100076b1c  mov     x21, x0
  100076b20  b       loc_100076b50
  100076b24  mov     x21, x0
  100076b28  b       loc_100076b48
  100076b2c  mov     x21, x0
  100076b30  b       loc_100076b40
  100076b34  mov     x21, x0
  100076b38  mov     x0, x26
  100076b3c  bl      _objc_release
loc_100076b40:
  100076b40  mov     x0, x27
  100076b44  bl      _objc_release
loc_100076b48:
  100076b48  mov     x0, x28
  100076b4c  bl      _objc_release
loc_100076b50:
  100076b50  mov     x0, x25
  100076b54  bl      _objc_release
loc_100076b58:
  100076b58  mov     x0, x23
  100076b5c  bl      _objc_release
loc_100076b60:
  100076b60  mov     x0, x22
  100076b64  bl      _objc_release
loc_100076b68:
  100076b68  mov     x0, x20
  100076b6c  bl      _objc_release
loc_100076b70:
  100076b70  ldr     x0, [sp, #8]
  100076b74  bl      _objc_release
  100076b78  mov     x0, x21
  100076b7c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryViewController alertView:willDismissWithButtonIndex:]
; address 0x100076b80  size 320  kind objc
; ======================================================================
  100076b80  stp     x24, x23, [sp, #-0x40]!
  100076b84  stp     x22, x21, [sp, #0x10]
  100076b88  stp     x20, x19, [sp, #0x20]
  100076b8c  stp     x29, x30, [sp, #0x30]
  100076b90  add     x29, sp, #0x30
  100076b94  mov     x20, x0
  100076b98  adrp    x8, #0x100418000
  100076b9c  nop
  100076ba0  ldr     x1, [x8, #0x620]
  100076ba4  mov     x0, x2
  100076ba8  mov     x2, x3
  100076bac  bl      _objc_msgSend                            ; [arg1 buttonTitleAtIndex:arg2]
  100076bb0  mov     x29, x29
  100076bb4  bl      _objc_retainAutoreleasedReturnValue
  100076bb8  mov     x19, x0
  100076bbc  adrp    x8, #0x10041d000
  100076bc0  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100076bc4  adrp    x8, #0x100416000
  100076bc8  nop
  100076bcc  ldr     x1, [x8, #0xb58]
  100076bd0  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100076bd4  mov     x29, x29
  100076bd8  bl      _objc_retainAutoreleasedReturnValue
  100076bdc  mov     x21, x0
  100076be0  adrp    x8, #0x100416000
  100076be4  nop
  100076be8  ldr     x1, [x8, #0xb60]
  100076bec  mov     x4, #0
  100076bf0  adrp    x2, #0x1003bc000
  100076bf4  add     x2, x2, #0x7f0                           ; @"COINS_ALERT_MORE"
  100076bf8  adrp    x3, #0x1003b9000
  100076bfc  add     x3, x3, #0x870                           ; @""
  100076c00  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_MORE" value:@"" table:0]
  100076c04  mov     x29, x29
  100076c08  bl      _objc_retainAutoreleasedReturnValue
  100076c0c  mov     x22, x0
  100076c10  adrp    x8, #0x100416000
  100076c14  nop
  100076c18  ldr     x1, [x8, #0xf58]
  100076c1c  mov     x0, x19
  100076c20  mov     x2, x22
  100076c24  bl      _objc_msgSend                            ; [[arg1 buttonTitleAtIndex:arg2] isEqualToString:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_MORE" value:@"" table:0]]
  100076c28  mov     x23, x0
  100076c2c  mov     x0, x22
  100076c30  bl      _objc_release
  100076c34  mov     x0, x21
  100076c38  bl      _objc_release
  100076c3c  cbz     w23, loc_100076c6c                       ; if ([[arg1 buttonTitleAtIndex:arg2] isEqualToString:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_MORE" value:@"" table:0]] == 0)
  100076c40  adrp    x8, #0x100418000
  100076c44  nop
  100076c48  ldr     x1, [x8, #0x628]
  100076c4c  mov     x2, #0
  100076c50  mov     x0, x20
  100076c54  bl      _objc_msgSend                            ; [self currencyButtonPressed:0]
  100076c58  adrp    x8, #0x100418000
  100076c5c  nop
  100076c60  ldr     x1, [x8, #0x538]
  100076c64  mov     x0, x20
  100076c68  bl      _objc_msgSend                            ; [self sendDetailViewToBack]
loc_100076c6c:
  100076c6c  mov     x0, x19
  100076c70  ldp     x29, x30, [sp, #0x30]
  100076c74  ldp     x20, x19, [sp, #0x20]
  100076c78  ldp     x22, x21, [sp, #0x10]
  100076c7c  ldp     x24, x23, [sp], #0x40
  100076c80  b       _objc_release
  100076c84  mov     x20, x0
  100076c88  b       loc_100076cb0
  100076c8c  mov     x20, x0
  100076c90  b       loc_100076cb8
  100076c94  mov     x20, x0
  100076c98  b       loc_100076ca8
  100076c9c  mov     x20, x0
  100076ca0  mov     x0, x22
  100076ca4  bl      _objc_release
loc_100076ca8:
  100076ca8  mov     x0, x21
  100076cac  bl      _objc_release
loc_100076cb0:
  100076cb0  mov     x0, x19
  100076cb4  bl      _objc_release
loc_100076cb8:
  100076cb8  mov     x0, x20
  100076cbc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryViewController dealloc]
; address 0x100076cc0  size 268  kind objc
; ======================================================================
  100076cc0  stp     x22, x21, [sp, #-0x30]!
  100076cc4  stp     x20, x19, [sp, #0x10]
  100076cc8  stp     x29, x30, [sp, #0x20]
  100076ccc  add     x29, sp, #0x20
  100076cd0  sub     sp, sp, #0x20
  100076cd4  mov     x19, x0
  100076cd8  adrp    x8, #0x100419000
  100076cdc  nop
  100076ce0  ldr     x1, [x8, #0x860]
  100076ce4  bl      _objc_msgSend                            ; [self contentContainer]
  100076ce8  mov     x29, x29
  100076cec  bl      _objc_retainAutoreleasedReturnValue
  100076cf0  mov     x20, x0
  100076cf4  adrp    x8, #0x100417000
  100076cf8  nop
  100076cfc  ldr     x1, [x8, #0x1c8]
  100076d00  bl      _objc_msgSend                            ; [[self contentContainer] subviews]
  100076d04  mov     x29, x29
  100076d08  bl      _objc_retainAutoreleasedReturnValue
  100076d0c  mov     x21, x0
  100076d10  adrp    x8, #0x100417000
  100076d14  nop
  100076d18  ldr     x2, [x8, #0x1d0]
  100076d1c  adrp    x8, #0x100416000
  100076d20  nop
  100076d24  ldr     x1, [x8, #0xe48]
  100076d28  bl      _objc_msgSend                            ; [[[self contentContainer] subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)]
  100076d2c  mov     x0, x21
  100076d30  bl      _objc_release
  100076d34  mov     x0, x20
  100076d38  bl      _objc_release
  100076d3c  str     x19, [sp, #0x10]
  100076d40  adrp    x8, #0x10041e000
  100076d44  ldr     x8, [x8, #0xdf0]
  100076d48  str     x8, [sp, #0x18]
  100076d4c  adrp    x8, #0x100416000
  100076d50  nop
  100076d54  ldr     x1, [x8, #0xfc8]
  100076d58  add     x0, sp, #0x10
  100076d5c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100076d60  sub     sp, x29, #0x20
  100076d64  ldp     x29, x30, [sp, #0x20]
  100076d68  ldp     x20, x19, [sp, #0x10]
  100076d6c  ldp     x22, x21, [sp], #0x30
  100076d70  ret
  100076d74  mov     x21, x0
  100076d78  b       loc_100076d9c
  100076d7c  mov     x21, x0
  100076d80  b       loc_100076d94
  100076d84  mov     x1, x21
  100076d88  mov     x21, x0
  100076d8c  mov     x0, x1
  100076d90  bl      _objc_release
loc_100076d94:
  100076d94  mov     x0, x20
  100076d98  bl      _objc_release
loc_100076d9c:
  100076d9c  str     x19, [sp]
  100076da0  adrp    x8, #0x10041e000
  100076da4  ldr     x8, [x8, #0xdf0]
  100076da8  str     x8, [sp, #8]
  100076dac  adrp    x8, #0x100416000
  100076db0  nop
  100076db4  ldr     x1, [x8, #0xfc8]
  100076db8  mov     x0, sp
  100076dbc  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100076dc0  mov     x0, x21
  100076dc4  bl      __Unwind_Resume                          ; Unwind_Resume()
  100076dc8  bl      sub_10000b760

; ======================================================================
; -[ADArmoryViewController contentContainer]
; address 0x100076dcc  size 16  kind objc
; ======================================================================
  100076dcc  adrp    x8, #0x10041f000
  100076dd0  ldrsw   x8, [x8, #0xd5c]                         ; ivar offset ADArmoryViewController._contentContainer (+0x178)
  100076dd4  ldr     x0, [x0, x8]                             ; x0 = self->_contentContainer
  100076dd8  ret

; ======================================================================
; -[ADArmoryViewController setContentContainer:]
; address 0x100076ddc  size 56  kind objc
; ======================================================================
  100076ddc  stp     x20, x19, [sp, #-0x20]!
  100076de0  stp     x29, x30, [sp, #0x10]
  100076de4  add     x29, sp, #0x10
  100076de8  mov     x19, x0
  100076dec  adrp    x8, #0x10041f000
  100076df0  ldrsw   x20, [x8, #0xd5c]                        ; ivar offset ADArmoryViewController._contentContainer (+0x178)
  100076df4  mov     x0, x2
  100076df8  bl      _objc_retain
  100076dfc  ldr     x8, [x19, x20]                           ; x8 = self->_contentContainer
  100076e00  str     x0, [x19, x20]                           ; self->_contentContainer = arg1
  100076e04  mov     x0, x8
  100076e08  ldp     x29, x30, [sp, #0x10]
  100076e0c  ldp     x20, x19, [sp], #0x20
  100076e10  b       _objc_release

; ======================================================================
; -[ADArmoryViewController weaponsButton]
; address 0x100076e14  size 16  kind objc
; ======================================================================
  100076e14  adrp    x8, #0x10041f000
  100076e18  ldrsw   x8, [x8, #0xd60]                         ; ivar offset ADArmoryViewController._weaponsButton (+0x180)
  100076e1c  ldr     x0, [x0, x8]                             ; x0 = self->_weaponsButton
  100076e20  ret

; ======================================================================
; -[ADArmoryViewController setWeaponsButton:]
; address 0x100076e24  size 56  kind objc
; ======================================================================
  100076e24  stp     x20, x19, [sp, #-0x20]!
  100076e28  stp     x29, x30, [sp, #0x10]
  100076e2c  add     x29, sp, #0x10
  100076e30  mov     x19, x0
  100076e34  adrp    x8, #0x10041f000
  100076e38  ldrsw   x20, [x8, #0xd60]                        ; ivar offset ADArmoryViewController._weaponsButton (+0x180)
  100076e3c  mov     x0, x2
  100076e40  bl      _objc_retain
  100076e44  ldr     x8, [x19, x20]                           ; x8 = self->_weaponsButton
  100076e48  str     x0, [x19, x20]                           ; self->_weaponsButton = arg1
  100076e4c  mov     x0, x8
  100076e50  ldp     x29, x30, [sp, #0x10]
  100076e54  ldp     x20, x19, [sp], #0x20
  100076e58  b       _objc_release

; ======================================================================
; -[ADArmoryViewController powerUpButton]
; address 0x100076e5c  size 16  kind objc
; ======================================================================
  100076e5c  adrp    x8, #0x10041f000
  100076e60  ldrsw   x8, [x8, #0xd64]                         ; ivar offset ADArmoryViewController._powerUpButton (+0x188)
  100076e64  ldr     x0, [x0, x8]                             ; x0 = self->_powerUpButton
  100076e68  ret

; ======================================================================
; -[ADArmoryViewController setPowerUpButton:]
; address 0x100076e6c  size 56  kind objc
; ======================================================================
  100076e6c  stp     x20, x19, [sp, #-0x20]!
  100076e70  stp     x29, x30, [sp, #0x10]
  100076e74  add     x29, sp, #0x10
  100076e78  mov     x19, x0
  100076e7c  adrp    x8, #0x10041f000
  100076e80  ldrsw   x20, [x8, #0xd64]                        ; ivar offset ADArmoryViewController._powerUpButton (+0x188)
  100076e84  mov     x0, x2
  100076e88  bl      _objc_retain
  100076e8c  ldr     x8, [x19, x20]                           ; x8 = self->_powerUpButton
  100076e90  str     x0, [x19, x20]                           ; self->_powerUpButton = arg1
  100076e94  mov     x0, x8
  100076e98  ldp     x29, x30, [sp, #0x10]
  100076e9c  ldp     x20, x19, [sp], #0x20
  100076ea0  b       _objc_release

; ======================================================================
; -[ADArmoryViewController currencyButton]
; address 0x100076ea4  size 16  kind objc
; ======================================================================
  100076ea4  adrp    x8, #0x10041f000
  100076ea8  ldrsw   x8, [x8, #0xd68]                         ; ivar offset ADArmoryViewController._currencyButton (+0x190)
  100076eac  ldr     x0, [x0, x8]                             ; x0 = self->_currencyButton
  100076eb0  ret

; ======================================================================
; -[ADArmoryViewController setCurrencyButton:]
; address 0x100076eb4  size 56  kind objc
; ======================================================================
  100076eb4  stp     x20, x19, [sp, #-0x20]!
  100076eb8  stp     x29, x30, [sp, #0x10]
  100076ebc  add     x29, sp, #0x10
  100076ec0  mov     x19, x0
  100076ec4  adrp    x8, #0x10041f000
  100076ec8  ldrsw   x20, [x8, #0xd68]                        ; ivar offset ADArmoryViewController._currencyButton (+0x190)
  100076ecc  mov     x0, x2
  100076ed0  bl      _objc_retain
  100076ed4  ldr     x8, [x19, x20]                           ; x8 = self->_currencyButton
  100076ed8  str     x0, [x19, x20]                           ; self->_currencyButton = arg1
  100076edc  mov     x0, x8
  100076ee0  ldp     x29, x30, [sp, #0x10]
  100076ee4  ldp     x20, x19, [sp], #0x20
  100076ee8  b       _objc_release

; ======================================================================
; -[ADArmoryViewController loadOutButton]
; address 0x100076eec  size 16  kind objc
; ======================================================================
  100076eec  adrp    x8, #0x10041f000
  100076ef0  ldrsw   x8, [x8, #0xd6c]                         ; ivar offset ADArmoryViewController._loadOutButton (+0x198)
  100076ef4  ldr     x0, [x0, x8]                             ; x0 = self->_loadOutButton
  100076ef8  ret

; ======================================================================
; -[ADArmoryViewController setLoadOutButton:]
; address 0x100076efc  size 56  kind objc
; ======================================================================
  100076efc  stp     x20, x19, [sp, #-0x20]!
  100076f00  stp     x29, x30, [sp, #0x10]
  100076f04  add     x29, sp, #0x10
  100076f08  mov     x19, x0
  100076f0c  adrp    x8, #0x10041f000
  100076f10  ldrsw   x20, [x8, #0xd6c]                        ; ivar offset ADArmoryViewController._loadOutButton (+0x198)
  100076f14  mov     x0, x2
  100076f18  bl      _objc_retain
  100076f1c  ldr     x8, [x19, x20]                           ; x8 = self->_loadOutButton
  100076f20  str     x0, [x19, x20]                           ; self->_loadOutButton = arg1
  100076f24  mov     x0, x8
  100076f28  ldp     x29, x30, [sp, #0x10]
  100076f2c  ldp     x20, x19, [sp], #0x20
  100076f30  b       _objc_release

; ======================================================================
; -[ADArmoryViewController browsingTime]
; address 0x100076f34  size 16  kind objc
; ======================================================================
  100076f34  adrp    x8, #0x10041f000
  100076f38  ldrsw   x2, [x8, #0xd70]                         ; ivar offset ADArmoryViewController._browsingTime (+0x1a0)
  100076f3c  mov     w3, #1
  100076f40  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADArmoryViewController setBrowsingTime:]
; address 0x100076f44  size 12  kind objc
; ======================================================================
  100076f44  adrp    x8, #0x10041f000
  100076f48  ldrsw   x3, [x8, #0xd70]                         ; ivar offset ADArmoryViewController._browsingTime (+0x1a0)
  100076f4c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADArmoryViewController setBrowse_dt:]
; address 0x100076f50  size 16  kind objc
; ======================================================================
  100076f50  adrp    x8, #0x10041f000
  100076f54  ldrsw   x8, [x8, #0xd44]                         ; ivar offset ADArmoryViewController._browse_dt (+0x1a8)
  100076f58  str     d0, [x0, x8]                             ; self->_browse_dt = arg1
  100076f5c  ret

; ======================================================================
; -[ADArmoryViewController previousTab]
; address 0x100076f60  size 16  kind objc
; ======================================================================
  100076f60  adrp    x8, #0x10041f000
  100076f64  ldrsw   x2, [x8, #0xd74]                         ; ivar offset ADArmoryViewController._previousTab (+0x1b0)
  100076f68  mov     w3, #1
  100076f6c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADArmoryViewController setPreviousTab:]
; address 0x100076f70  size 12  kind objc
; ======================================================================
  100076f70  adrp    x8, #0x10041f000
  100076f74  ldrsw   x3, [x8, #0xd74]                         ; ivar offset ADArmoryViewController._previousTab (+0x1b0)
  100076f78  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADArmoryViewController loadoutEnabled]
; address 0x100076f7c  size 20  kind objc
; ======================================================================
  100076f7c  adrp    x8, #0x10041f000
  100076f80  ldrsw   x8, [x8, #0xd78]                         ; ivar offset ADArmoryViewController._loadoutEnabled (+0x170)
  100076f84  ldrb    w8, [x0, x8]                             ; w8 = self->_loadoutEnabled
  100076f88  and     w0, w8, #1
  100076f8c  ret

; ======================================================================
; -[ADArmoryViewController setLoadoutEnabled:]
; address 0x100076f90  size 16  kind objc
; ======================================================================
  100076f90  adrp    x8, #0x10041f000
  100076f94  ldrsw   x8, [x8, #0xd78]                         ; ivar offset ADArmoryViewController._loadoutEnabled (+0x170)
  100076f98  strb    w2, [x0, x8]                             ; self->_loadoutEnabled = arg1
  100076f9c  ret

; ======================================================================
; -[ADArmoryViewController .cxx_destruct]
; address 0x100076fa0  size 284  kind objc
; ======================================================================
  100076fa0  stp     x20, x19, [sp, #-0x20]!
  100076fa4  stp     x29, x30, [sp, #0x10]
  100076fa8  add     x29, sp, #0x10
  100076fac  mov     x19, x0
  100076fb0  adrp    x8, #0x10041f000
  100076fb4  ldrsw   x8, [x8, #0xd74]                         ; ivar offset ADArmoryViewController._previousTab (+0x1b0)
  100076fb8  add     x0, x19, x8
  100076fbc  mov     x1, #0
  100076fc0  bl      _objc_storeStrong
  100076fc4  adrp    x8, #0x10041f000
  100076fc8  ldrsw   x8, [x8, #0xd70]                         ; ivar offset ADArmoryViewController._browsingTime (+0x1a0)
  100076fcc  add     x0, x19, x8
  100076fd0  mov     x1, #0
  100076fd4  bl      _objc_storeStrong
  100076fd8  adrp    x8, #0x10041f000
  100076fdc  ldrsw   x8, [x8, #0xd6c]                         ; ivar offset ADArmoryViewController._loadOutButton (+0x198)
  100076fe0  add     x0, x19, x8
  100076fe4  mov     x1, #0
  100076fe8  bl      _objc_storeStrong
  100076fec  adrp    x8, #0x10041f000
  100076ff0  ldrsw   x8, [x8, #0xd68]                         ; ivar offset ADArmoryViewController._currencyButton (+0x190)
  100076ff4  add     x0, x19, x8
  100076ff8  mov     x1, #0
  100076ffc  bl      _objc_storeStrong
  100077000  adrp    x8, #0x10041f000
  100077004  ldrsw   x8, [x8, #0xd64]                         ; ivar offset ADArmoryViewController._powerUpButton (+0x188)
  100077008  add     x0, x19, x8
  10007700c  mov     x1, #0
  100077010  bl      _objc_storeStrong
  100077014  adrp    x8, #0x10041f000
  100077018  ldrsw   x8, [x8, #0xd60]                         ; ivar offset ADArmoryViewController._weaponsButton (+0x180)
  10007701c  add     x0, x19, x8
  100077020  mov     x1, #0
  100077024  bl      _objc_storeStrong
  100077028  adrp    x8, #0x10041f000
  10007702c  ldrsw   x8, [x8, #0xd5c]                         ; ivar offset ADArmoryViewController._contentContainer (+0x178)
  100077030  add     x0, x19, x8
  100077034  mov     x1, #0
  100077038  bl      _objc_storeStrong
  10007703c  adrp    x8, #0x10041f000
  100077040  ldrsw   x8, [x8, #0xd4c]                         ; ivar offset ADArmoryViewController.loadOut (+0x168)
  100077044  add     x0, x19, x8
  100077048  mov     x1, #0
  10007704c  bl      _objc_storeStrong
  100077050  adrp    x8, #0x10041f000
  100077054  ldrsw   x8, [x8, #0xd54]                         ; ivar offset ADArmoryViewController.currency (+0x160)
  100077058  add     x0, x19, x8
  10007705c  mov     x1, #0
  100077060  bl      _objc_storeStrong
  100077064  adrp    x8, #0x10041f000
  100077068  ldrsw   x8, [x8, #0xd50]                         ; ivar offset ADArmoryViewController.powerups (+0x158)
  10007706c  add     x0, x19, x8
  100077070  mov     x1, #0
  100077074  bl      _objc_storeStrong
  100077078  adrp    x8, #0x10041f000
  10007707c  ldrsw   x8, [x8, #0xd48]                         ; ivar offset ADArmoryViewController.shop (+0x150)
  100077080  add     x0, x19, x8
  100077084  mov     x1, #0
  100077088  bl      _objc_storeStrong
  10007708c  adrp    x8, #0x10041f000
  100077090  ldrsw   x8, [x8, #0xd58]                         ; ivar offset ADArmoryViewController.currencyAlert (+0x148)
  100077094  add     x0, x19, x8
  100077098  mov     x1, #0
  10007709c  bl      _objc_storeStrong
  1000770a0  mov     x1, #0
  1000770a4  adrp    x8, #0x10041f000
  1000770a8  ldrsw   x8, [x8, #0xd40]                         ; ivar offset ADArmoryViewController.weaponName (+0x140)
  1000770ac  add     x0, x19, x8
  1000770b0  ldp     x29, x30, [sp, #0x10]
  1000770b4  ldp     x20, x19, [sp], #0x20
  1000770b8  b       _objc_storeStrong
