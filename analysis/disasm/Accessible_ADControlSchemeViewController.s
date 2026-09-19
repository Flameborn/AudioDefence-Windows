// unit Accessible_ADControlSchemeViewController — 16 functions
//   0x1000b49e0     140  -[Accessible_ADControlSchemeViewController initWithNibName:bundle:]
//   0x1000b4a6c      60  -[Accessible_ADControlSchemeViewController viewDidLoad]
//   0x1000b4aa8     396  -[Accessible_ADControlSchemeViewController tableView:willDisplayCell:forRowAtIndexPath:]
//   0x1000b4c34      32  -[Accessible_ADControlSchemeViewController tableView:numberOfRowsInSection:]
//   0x1000b4c54     140  -[Accessible_ADControlSchemeViewController tableView:heightForRowAtIndexPath:]
//   0x1000b4ce0     140  -[Accessible_ADControlSchemeViewController tableView:heightForHeaderInSection:]
//   0x1000b4d6c     564  -[Accessible_ADControlSchemeViewController tableView:viewForHeaderInSection:]
//   0x1000b4fa0       8  -[Accessible_ADControlSchemeViewController numberOfSectionsInTableView:]
//   0x1000b4fa8     520  -[Accessible_ADControlSchemeViewController tableView:cellForRowAtIndexPath:]
//   0x1000b51b0    1412  -[Accessible_ADControlSchemeViewController tableView:willSelectRowAtIndexPath:]
//   0x1000b5734    1584  -[Accessible_ADControlSchemeViewController cellForAimingAtIndex:]
//   0x1000b5d64    1080  -[Accessible_ADControlSchemeViewController cellForControlAtIndex:]
//   0x1000b619c     644  -[Accessible_ADControlSchemeViewController cellForSound:]
//   0x1000b6420      16  -[Accessible_ADControlSchemeViewController tableView]
//   0x1000b6430      56  -[Accessible_ADControlSchemeViewController setTableView:]
//   0x1000b6468      20  -[Accessible_ADControlSchemeViewController .cxx_destruct]

; ======================================================================
; -[Accessible_ADControlSchemeViewController initWithNibName:bundle:]
; address 0x1000b49e0  size 140  kind objc
; ======================================================================
  1000b49e0  stp     x22, x21, [sp, #-0x30]!
  1000b49e4  stp     x20, x19, [sp, #0x10]
  1000b49e8  stp     x29, x30, [sp, #0x20]
  1000b49ec  add     x29, sp, #0x20
  1000b49f0  sub     sp, sp, #0x10
  1000b49f4  mov     x20, x3
  1000b49f8  mov     x21, x0
  1000b49fc  mov     x0, x2
  1000b4a00  bl      _objc_retain
  1000b4a04  mov     x19, x0
  1000b4a08  str     x21, [sp]
  1000b4a0c  adrp    x8, #0x10041e000
  1000b4a10  ldr     x8, [x8, #0xf58]
  1000b4a14  str     x8, [sp, #8]
  1000b4a18  adrp    x8, #0x100416000
  1000b4a1c  nop
  1000b4a20  ldr     x1, [x8, #0xb40]
  1000b4a24  mov     x0, sp
  1000b4a28  mov     x2, x19
  1000b4a2c  mov     x3, x20
  1000b4a30  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000b4a34  mov     x20, x0
  1000b4a38  mov     x0, x19
  1000b4a3c  bl      _objc_release
  1000b4a40  mov     x0, x20
  1000b4a44  sub     sp, x29, #0x20
  1000b4a48  ldp     x29, x30, [sp, #0x20]
  1000b4a4c  ldp     x20, x19, [sp, #0x10]
  1000b4a50  ldp     x22, x21, [sp], #0x30
  1000b4a54  ret
  1000b4a58  mov     x20, x0
  1000b4a5c  mov     x0, x19
  1000b4a60  bl      _objc_release
  1000b4a64  mov     x0, x20
  1000b4a68  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADControlSchemeViewController viewDidLoad]
; address 0x1000b4a6c  size 60  kind objc
; ======================================================================
  1000b4a6c  stp     x29, x30, [sp, #-0x10]!
  1000b4a70  mov     x29, sp
  1000b4a74  sub     sp, sp, #0x10
  1000b4a78  str     x0, [sp]
  1000b4a7c  adrp    x8, #0x10041e000
  1000b4a80  ldr     x8, [x8, #0xf58]
  1000b4a84  str     x8, [sp, #8]
  1000b4a88  adrp    x8, #0x100416000
  1000b4a8c  nop
  1000b4a90  ldr     x1, [x8, #0xb48]
  1000b4a94  mov     x0, sp
  1000b4a98  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000b4a9c  mov     sp, x29
  1000b4aa0  ldp     x29, x30, [sp], #0x10
  1000b4aa4  ret

; ======================================================================
; -[Accessible_ADControlSchemeViewController tableView:willDisplayCell:forRowAtIndexPath:]
; address 0x1000b4aa8  size 396  kind objc
; ======================================================================
  1000b4aa8  stp     x24, x23, [sp, #-0x40]!
  1000b4aac  stp     x22, x21, [sp, #0x10]
  1000b4ab0  stp     x20, x19, [sp, #0x20]
  1000b4ab4  stp     x29, x30, [sp, #0x30]
  1000b4ab8  add     x29, sp, #0x30
  1000b4abc  mov     x0, x3
  1000b4ac0  bl      _objc_retain
  1000b4ac4  mov     x19, x0
  1000b4ac8  adrp    x8, #0x100417000
  1000b4acc  nop
  1000b4ad0  ldr     x1, [x8, #0x320]
  1000b4ad4  bl      _objc_msgSend                            ; [arg2 textLabel]
  1000b4ad8  mov     x29, x29
  1000b4adc  bl      _objc_retainAutoreleasedReturnValue
  1000b4ae0  mov     x22, x0
  1000b4ae4  adrp    x24, #0x10041d000
  1000b4ae8  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  1000b4aec  adrp    x8, #0x100417000
  1000b4af0  nop
  1000b4af4  ldr     x20, [x8, #0x180]
  1000b4af8  mov     x1, x20
  1000b4afc  bl      _objc_msgSend                            ; [UIColor blackColor]
  1000b4b00  mov     x29, x29
  1000b4b04  bl      _objc_retainAutoreleasedReturnValue
  1000b4b08  mov     x23, x0
  1000b4b0c  adrp    x8, #0x100417000
  1000b4b10  nop
  1000b4b14  ldr     x21, [x8, #0x330]
  1000b4b18  mov     x0, x22
  1000b4b1c  mov     x1, x21
  1000b4b20  mov     x2, x23
  1000b4b24  bl      _objc_msgSend                            ; [[arg2 textLabel] setTextColor:[UIColor blackColor]]
  1000b4b28  mov     x0, x23
  1000b4b2c  bl      _objc_release
  1000b4b30  mov     x0, x22
  1000b4b34  bl      _objc_release
  1000b4b38  adrp    x8, #0x100417000
  1000b4b3c  nop
  1000b4b40  ldr     x1, [x8, #0x338]
  1000b4b44  mov     x0, x19
  1000b4b48  bl      _objc_msgSend                            ; [arg2 detailTextLabel]
  1000b4b4c  mov     x29, x29
  1000b4b50  bl      _objc_retainAutoreleasedReturnValue
  1000b4b54  mov     x22, x0
  1000b4b58  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  1000b4b5c  mov     x1, x20
  1000b4b60  bl      _objc_msgSend                            ; [UIColor blackColor]
  1000b4b64  mov     x29, x29
  1000b4b68  bl      _objc_retainAutoreleasedReturnValue
  1000b4b6c  mov     x23, x0
  1000b4b70  mov     x0, x22
  1000b4b74  mov     x1, x21
  1000b4b78  mov     x2, x23
  1000b4b7c  bl      _objc_msgSend                            ; [[arg2 detailTextLabel] setTextColor:[UIColor blackColor]]
  1000b4b80  mov     x0, x23
  1000b4b84  bl      _objc_release
  1000b4b88  mov     x0, x22
  1000b4b8c  bl      _objc_release
  1000b4b90  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  1000b4b94  adrp    x8, #0x100417000
  1000b4b98  nop
  1000b4b9c  ldr     x1, [x8, #0x328]
  1000b4ba0  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000b4ba4  mov     x29, x29
  1000b4ba8  bl      _objc_retainAutoreleasedReturnValue
  1000b4bac  mov     x21, x0
  1000b4bb0  adrp    x8, #0x100417000
  1000b4bb4  nop
  1000b4bb8  ldr     x1, [x8, #0x188]
  1000b4bbc  mov     x0, x19
  1000b4bc0  mov     x2, x21
  1000b4bc4  bl      _objc_msgSend                            ; [arg2 setBackgroundColor:[UIColor whiteColor]]
  1000b4bc8  mov     x0, x21
  1000b4bcc  bl      _objc_release
  1000b4bd0  mov     x0, x19
  1000b4bd4  ldp     x29, x30, [sp, #0x30]
  1000b4bd8  ldp     x20, x19, [sp, #0x20]
  1000b4bdc  ldp     x22, x21, [sp, #0x10]
  1000b4be0  ldp     x24, x23, [sp], #0x40
  1000b4be4  b       _objc_release
  1000b4be8  mov     x20, x0
  1000b4bec  b       loc_1000b4c24
  1000b4bf0  mov     x20, x0
  1000b4bf4  b       loc_1000b4c10
  1000b4bf8  b       loc_1000b4c04
  1000b4bfc  mov     x20, x0
  1000b4c00  b       loc_1000b4c10
loc_1000b4c04:
  1000b4c04  mov     x20, x0
  1000b4c08  mov     x0, x23
  1000b4c0c  bl      _objc_release
loc_1000b4c10:
  1000b4c10  mov     x0, x22
  1000b4c14  b       loc_1000b4c20
  1000b4c18  mov     x20, x0
  1000b4c1c  mov     x0, x21
loc_1000b4c20:
  1000b4c20  bl      _objc_release
loc_1000b4c24:
  1000b4c24  mov     x0, x19
  1000b4c28  bl      _objc_release
  1000b4c2c  mov     x0, x20
  1000b4c30  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADControlSchemeViewController tableView:numberOfRowsInSection:]
; address 0x1000b4c34  size 32  kind objc
; ======================================================================
  1000b4c34  cmp     x3, #2
  1000b4c38  b.hi    loc_1000b4c4c                            ; if (arg2 >u 2)
  1000b4c3c  adr     x8, #0x100181d30                         ; tconst_100181d30
  1000b4c40  nop
  1000b4c44  ldr     x0, [x8, x3, lsl #3]
  1000b4c48  ret
loc_1000b4c4c:
  1000b4c4c  mov     x0, #0
  1000b4c50  ret

; ======================================================================
; -[Accessible_ADControlSchemeViewController tableView:heightForRowAtIndexPath:]
; address 0x1000b4c54  size 140  kind objc
; ======================================================================
  1000b4c54  stp     x20, x19, [sp, #-0x20]!
  1000b4c58  stp     x29, x30, [sp, #0x10]
  1000b4c5c  add     x29, sp, #0x10
  1000b4c60  adrp    x8, #0x10041d000
  1000b4c64  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b4c68  adrp    x8, #0x100416000
  1000b4c6c  nop
  1000b4c70  ldr     x1, [x8, #0xc00]
  1000b4c74  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b4c78  mov     x29, x29
  1000b4c7c  bl      _objc_retainAutoreleasedReturnValue
  1000b4c80  mov     x19, x0
  1000b4c84  adrp    x8, #0x100416000
  1000b4c88  nop
  1000b4c8c  ldr     x1, [x8, #0xd18]
  1000b4c90  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000b4c94  mov     x20, x0
  1000b4c98  mov     x0, x19
  1000b4c9c  bl      _objc_release
  1000b4ca0  cmp     w20, #0
  1000b4ca4  nop
  1000b4ca8  ldr     d0, #0x100181b80                         ; d0 = 80.0
  1000b4cac  nop
  1000b4cb0  ldr     d1, #0x1001819d0                         ; d1 = 50.0
  1000b4cb4  fcsel   d0, d1, d0, ne
  1000b4cb8  ldp     x29, x30, [sp, #0x10]
  1000b4cbc  ldp     x20, x19, [sp], #0x20
  1000b4cc0  ret
  1000b4cc4  mov     x20, x0
  1000b4cc8  b       loc_1000b4cd8
  1000b4ccc  mov     x20, x0
  1000b4cd0  mov     x0, x19
  1000b4cd4  bl      _objc_release
loc_1000b4cd8:
  1000b4cd8  mov     x0, x20
  1000b4cdc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADControlSchemeViewController tableView:heightForHeaderInSection:]
; address 0x1000b4ce0  size 140  kind objc
; ======================================================================
  1000b4ce0  stp     x20, x19, [sp, #-0x20]!
  1000b4ce4  stp     x29, x30, [sp, #0x10]
  1000b4ce8  add     x29, sp, #0x10
  1000b4cec  adrp    x8, #0x10041d000
  1000b4cf0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b4cf4  adrp    x8, #0x100416000
  1000b4cf8  nop
  1000b4cfc  ldr     x1, [x8, #0xc00]
  1000b4d00  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b4d04  mov     x29, x29
  1000b4d08  bl      _objc_retainAutoreleasedReturnValue
  1000b4d0c  mov     x19, x0
  1000b4d10  adrp    x8, #0x100416000
  1000b4d14  nop
  1000b4d18  ldr     x1, [x8, #0xd18]
  1000b4d1c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000b4d20  mov     x20, x0
  1000b4d24  mov     x0, x19
  1000b4d28  bl      _objc_release
  1000b4d2c  cmp     w20, #0
  1000b4d30  nop
  1000b4d34  ldr     d0, #0x100181b88                         ; d0 = 140.0
  1000b4d38  nop
  1000b4d3c  ldr     d1, #0x100181a08                         ; d1 = 60.0
  1000b4d40  fcsel   d0, d1, d0, ne
  1000b4d44  ldp     x29, x30, [sp, #0x10]
  1000b4d48  ldp     x20, x19, [sp], #0x20
  1000b4d4c  ret
  1000b4d50  mov     x20, x0
  1000b4d54  b       loc_1000b4d64
  1000b4d58  mov     x20, x0
  1000b4d5c  mov     x0, x19
  1000b4d60  bl      _objc_release
loc_1000b4d64:
  1000b4d64  mov     x0, x20
  1000b4d68  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADControlSchemeViewController tableView:viewForHeaderInSection:]
; address 0x1000b4d6c  size 564  kind objc
; ======================================================================
  1000b4d6c  stp     x22, x21, [sp, #-0x30]!
  1000b4d70  stp     x20, x19, [sp, #0x10]
  1000b4d74  stp     x29, x30, [sp, #0x20]
  1000b4d78  add     x29, sp, #0x20
  1000b4d7c  mov     x20, x3
  1000b4d80  adrp    x8, #0x10041e000
  1000b4d84  ldr     x0, [x8, #0x168]                         ; class ADAccessibilityTableHeaderLabel
  1000b4d88  adrp    x8, #0x100416000
  1000b4d8c  nop
  1000b4d90  ldr     x1, [x8, #0xac8]
  1000b4d94  bl      _objc_msgSend                            ; [ADAccessibilityTableHeaderLabel alloc]
  1000b4d98  adrp    x8, #0x1003b0000
  1000b4d9c  ldr     x8, [x8, #0x10]                          ; _CGRectZero
  1000b4da0  ldp     d0, d1, [x8]
  1000b4da4  ldp     d2, d3, [x8, #0x10]
  1000b4da8  adrp    x8, #0x100417000
  1000b4dac  nop
  1000b4db0  ldr     x1, [x8, #0x178]
  1000b4db4  bl      _objc_msgSend                            ; [[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}]
  1000b4db8  mov     x19, x0
  1000b4dbc  cbz     x20, loc_1000b4de8                       ; if (arg2 == 0)
  1000b4dc0  cmp     x20, #1
  1000b4dc4  b.ne    loc_1000b4e08                            ; if (arg2 != 1)
  1000b4dc8  adrp    x8, #0x100416000
  1000b4dcc  nop
  1000b4dd0  ldr     x1, [x8, #0xb68]
  1000b4dd4  adrp    x2, #0x1003c1000
  1000b4dd8  add     x2, x2, #0x510                           ; @"Controls"
  1000b4ddc  mov     x0, x19
  1000b4de0  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setText:@"Controls"]
  1000b4de4  b       loc_1000b4e2c
loc_1000b4de8:
  1000b4de8  adrp    x8, #0x100416000
  1000b4dec  nop
  1000b4df0  ldr     x1, [x8, #0xb68]
  1000b4df4  adrp    x2, #0x1003c1000
  1000b4df8  add     x2, x2, #0x4f0                           ; @"Aiming"
  1000b4dfc  mov     x0, x19
  1000b4e00  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setText:@"Aiming"]
  1000b4e04  b       loc_1000b4e2c
loc_1000b4e08:
  1000b4e08  cmp     x20, #2
  1000b4e0c  b.ne    loc_1000b4e2c                            ; if (arg2 != 2)
  1000b4e10  adrp    x8, #0x100416000
  1000b4e14  nop
  1000b4e18  ldr     x1, [x8, #0xb68]
  1000b4e1c  adrp    x2, #0x1003c1000
  1000b4e20  add     x2, x2, #0x530                           ; @"Sound"
  1000b4e24  mov     x0, x19
  1000b4e28  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setText:@"Sound"]
loc_1000b4e2c:
  1000b4e2c  adrp    x8, #0x10041d000
  1000b4e30  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b4e34  adrp    x8, #0x100416000
  1000b4e38  nop
  1000b4e3c  ldr     x1, [x8, #0xc00]
  1000b4e40  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b4e44  mov     x29, x29
  1000b4e48  bl      _objc_retainAutoreleasedReturnValue
  1000b4e4c  mov     x20, x0
  1000b4e50  adrp    x8, #0x100416000
  1000b4e54  nop
  1000b4e58  ldr     x1, [x8, #0xd18]
  1000b4e5c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000b4e60  mov     x21, x0
  1000b4e64  mov     x0, x20
  1000b4e68  bl      _objc_release
  1000b4e6c  adrp    x8, #0x10041d000
  1000b4e70  ldr     x0, [x8, #0xf08]                         ; class UIFont
  1000b4e74  cmp     w21, #0
  1000b4e78  nop
  1000b4e7c  ldr     d0, #0x100181b90                         ; d0 = 35.0
  1000b4e80  fmov    d1, #25.00000000
  1000b4e84  fcsel   d0, d1, d0, ne
  1000b4e88  adrp    x8, #0x100416000
  1000b4e8c  nop
  1000b4e90  ldr     x1, [x8, #0xd20]
  1000b4e94  adrp    x2, #0x1003bc000
  1000b4e98  add     x2, x2, #0x910                           ; @"Tiresias Infofont"
  1000b4e9c  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 25 : 35)]
  1000b4ea0  mov     x29, x29
  1000b4ea4  bl      _objc_retainAutoreleasedReturnValue
  1000b4ea8  mov     x20, x0
  1000b4eac  adrp    x8, #0x100416000
  1000b4eb0  nop
  1000b4eb4  ldr     x1, [x8, #0xd28]
  1000b4eb8  mov     x0, x19
  1000b4ebc  mov     x2, x20
  1000b4ec0  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setFont:[UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 25 : 35)]]
  1000b4ec4  mov     x0, x20
  1000b4ec8  bl      _objc_release
  1000b4ecc  adrp    x21, #0x10041d000
  1000b4ed0  ldr     x0, [x21, #0xfa0]                        ; class UIColor
  1000b4ed4  adrp    x8, #0x100417000
  1000b4ed8  nop
  1000b4edc  ldr     x1, [x8, #0x180]
  1000b4ee0  bl      _objc_msgSend                            ; [UIColor blackColor]
  1000b4ee4  mov     x29, x29
  1000b4ee8  bl      _objc_retainAutoreleasedReturnValue
  1000b4eec  mov     x20, x0
  1000b4ef0  adrp    x8, #0x100417000
  1000b4ef4  nop
  1000b4ef8  ldr     x1, [x8, #0x330]
  1000b4efc  mov     x0, x19
  1000b4f00  mov     x2, x20
  1000b4f04  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setTextColor:[UIColor blackColor]]
  1000b4f08  mov     x0, x20
  1000b4f0c  bl      _objc_release
  1000b4f10  ldr     x0, [x21, #0xfa0]                        ; class UIColor
  1000b4f14  adrp    x8, #0x100417000
  1000b4f18  nop
  1000b4f1c  ldr     x1, [x8, #0x328]
  1000b4f20  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000b4f24  mov     x29, x29
  1000b4f28  bl      _objc_retainAutoreleasedReturnValue
  1000b4f2c  mov     x20, x0
  1000b4f30  adrp    x8, #0x100417000
  1000b4f34  nop
  1000b4f38  ldr     x1, [x8, #0x188]
  1000b4f3c  mov     x0, x19
  1000b4f40  mov     x2, x20
  1000b4f44  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setBackgroundColor:[UIColor whiteColor]]
  1000b4f48  mov     x0, x20
  1000b4f4c  bl      _objc_release
  1000b4f50  mov     x0, x19
  1000b4f54  ldp     x29, x30, [sp, #0x20]
  1000b4f58  ldp     x20, x19, [sp, #0x10]
  1000b4f5c  ldp     x22, x21, [sp], #0x30
  1000b4f60  b       _objc_autoreleaseReturnValue
  1000b4f64  mov     x20, x0
  1000b4f68  b       loc_1000b4f90
  1000b4f6c  mov     x20, x0
  1000b4f70  b       loc_1000b4f98
  1000b4f74  b       loc_1000b4f80
  1000b4f78  b       loc_1000b4f80
  1000b4f7c  b       loc_1000b4f80
loc_1000b4f80:
  1000b4f80  mov     x1, x20
  1000b4f84  mov     x20, x0
  1000b4f88  mov     x0, x1
  1000b4f8c  bl      _objc_release
loc_1000b4f90:
  1000b4f90  mov     x0, x19
  1000b4f94  bl      _objc_release
loc_1000b4f98:
  1000b4f98  mov     x0, x20
  1000b4f9c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADControlSchemeViewController numberOfSectionsInTableView:]
; address 0x1000b4fa0  size 8  kind objc
; ======================================================================
  1000b4fa0  mov     w0, #3
  1000b4fa4  ret

; ======================================================================
; -[Accessible_ADControlSchemeViewController tableView:cellForRowAtIndexPath:]
; address 0x1000b4fa8  size 520  kind objc
; ======================================================================
  1000b4fa8  stp     x24, x23, [sp, #-0x40]!
  1000b4fac  stp     x22, x21, [sp, #0x10]
  1000b4fb0  stp     x20, x19, [sp, #0x20]
  1000b4fb4  stp     x29, x30, [sp, #0x30]
  1000b4fb8  add     x29, sp, #0x30
  1000b4fbc  mov     x20, x0
  1000b4fc0  mov     x0, x3
  1000b4fc4  bl      _objc_retain
  1000b4fc8  mov     x19, x0
  1000b4fcc  adrp    x8, #0x100417000
  1000b4fd0  nop
  1000b4fd4  ldr     x1, [x8, #0x348]
  1000b4fd8  mov     x21, #0
  1000b4fdc  bl      _objc_msgSend                            ; [arg2 section]
  1000b4fe0  cbz     x0, loc_1000b5010                        ; if ([arg2 section] == 0)
  1000b4fe4  cmp     x0, #1
  1000b4fe8  b.ne    loc_1000b5034                            ; if ([arg2 section] != 1)
  1000b4fec  adrp    x8, #0x10041a000
  1000b4ff0  nop
  1000b4ff4  ldr     x1, [x8, #0x738]
  1000b4ff8  mov     x21, #0
  1000b4ffc  mov     x0, x20
  1000b5000  mov     x2, x19
  1000b5004  bl      _objc_msgSend                            ; [self cellForControlAtIndex:arg2]
  1000b5008  mov     x29, x29
  1000b500c  b       loc_1000b505c
loc_1000b5010:
  1000b5010  adrp    x8, #0x10041a000
  1000b5014  nop
  1000b5018  ldr     x1, [x8, #0x730]
  1000b501c  mov     x21, #0
  1000b5020  mov     x0, x20
  1000b5024  mov     x2, x19
  1000b5028  bl      _objc_msgSend                            ; [self cellForAimingAtIndex:arg2]
  1000b502c  mov     x29, x29
  1000b5030  b       loc_1000b505c
loc_1000b5034:
  1000b5034  cmp     x0, #2
  1000b5038  b.ne    loc_1000b5090                            ; if ([arg2 section] != 2)
  1000b503c  adrp    x8, #0x10041a000
  1000b5040  nop
  1000b5044  ldr     x1, [x8, #0x740]
  1000b5048  mov     x21, #0
  1000b504c  mov     x0, x20
  1000b5050  mov     x2, x19
  1000b5054  bl      _objc_msgSend                            ; [self cellForSound:arg2]
  1000b5058  mov     x29, x29
loc_1000b505c:
  1000b505c  bl      _objc_retainAutoreleasedReturnValue
  1000b5060  bl      _objc_retain
  1000b5064  mov     x20, x0
loc_1000b5068:
  1000b5068  mov     x0, x20
  1000b506c  bl      _objc_release
  1000b5070  mov     x0, x19
  1000b5074  bl      _objc_release
  1000b5078  mov     x0, x20
  1000b507c  ldp     x29, x30, [sp, #0x30]
  1000b5080  ldp     x20, x19, [sp, #0x20]
  1000b5084  ldp     x22, x21, [sp, #0x10]
  1000b5088  ldp     x24, x23, [sp], #0x40
  1000b508c  b       _objc_autoreleaseReturnValue
loc_1000b5090:
  1000b5090  adrp    x8, #0x10041e000
  1000b5094  ldr     x0, [x8, #0x198]                         ; class UITableViewCell
  1000b5098  adrp    x8, #0x100416000
  1000b509c  nop
  1000b50a0  ldr     x1, [x8, #0xac8]
  1000b50a4  mov     x21, #0
  1000b50a8  bl      _objc_msgSend                            ; [UITableViewCell alloc]
  1000b50ac  adrp    x8, #0x100417000
  1000b50b0  nop
  1000b50b4  ldr     x1, [x8, #0x3c0]
  1000b50b8  mov     x21, #0
  1000b50bc  adrp    x3, #0x1003c1000
  1000b50c0  add     x3, x3, #0x4d0                           ; @"AccessibleSettingsCell"
  1000b50c4  mov     w2, #3
  1000b50c8  bl      _objc_msgSend                            ; [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"]
  1000b50cc  mov     x20, x0
  1000b50d0  mov     x21, x20
  1000b50d4  adrp    x8, #0x100417000
  1000b50d8  nop
  1000b50dc  ldr     x1, [x8, #0x320]
  1000b50e0  mov     x0, x20
  1000b50e4  bl      _objc_msgSend                            ; [[[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel]
  1000b50e8  mov     x29, x29
  1000b50ec  bl      _objc_retainAutoreleasedReturnValue
  1000b50f0  mov     x23, x0
  1000b50f4  adrp    x8, #0x100416000
  1000b50f8  nop
  1000b50fc  ldr     x22, [x8, #0xb68]
  1000b5100  adrp    x2, #0x1003bc000
  1000b5104  add     x2, x2, #0xbb0                           ; @"EMPTY CELL"
  1000b5108  mov     x1, x22
  1000b510c  bl      _objc_msgSend                            ; [[[[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel] setText:@"EMPTY CELL"]
  1000b5110  mov     x21, x20
  1000b5114  mov     x0, x23
  1000b5118  bl      _objc_release
  1000b511c  adrp    x8, #0x100417000
  1000b5120  nop
  1000b5124  ldr     x1, [x8, #0x338]
  1000b5128  mov     x0, x20
  1000b512c  bl      _objc_msgSend                            ; [[[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] detailTextLabel]
  1000b5130  mov     x29, x29
  1000b5134  bl      _objc_retainAutoreleasedReturnValue
  1000b5138  mov     x23, x0
  1000b513c  adrp    x2, #0x1003bc000
  1000b5140  add     x2, x2, #0xbb0                           ; @"EMPTY CELL"
  1000b5144  mov     x1, x22
  1000b5148  bl      _objc_msgSend                            ; [[[[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] detailTextLabel] setText:@"EMPTY CELL"]
  1000b514c  mov     x21, x20
  1000b5150  mov     x0, x23
  1000b5154  bl      _objc_release
  1000b5158  adrp    x8, #0x100417000
  1000b515c  nop
  1000b5160  ldr     x1, [x8, #0x3b0]
  1000b5164  mov     x2, #0
  1000b5168  mov     x0, x20
  1000b516c  bl      _objc_msgSend                            ; [[[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] setSelectionStyle:0]
  1000b5170  mov     x0, x20
  1000b5174  bl      _objc_retain
  1000b5178  b       loc_1000b5068
  1000b517c  mov     x22, x0
loc_1000b5180:
  1000b5180  mov     x0, x21
  1000b5184  bl      _objc_release
  1000b5188  mov     x0, x19
  1000b518c  bl      _objc_release
  1000b5190  mov     x0, x22
  1000b5194  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000b5198  b       loc_1000b519c
loc_1000b519c:
  1000b519c  mov     x22, x0
  1000b51a0  mov     x0, x23
  1000b51a4  bl      _objc_release
  1000b51a8  mov     x21, x20
  1000b51ac  b       loc_1000b5180

; ======================================================================
; -[Accessible_ADControlSchemeViewController tableView:willSelectRowAtIndexPath:]
; address 0x1000b51b0  size 1412  kind objc
; ======================================================================
  1000b51b0  stp     x28, x27, [sp, #-0x60]!
  1000b51b4  stp     x26, x25, [sp, #0x10]
  1000b51b8  stp     x24, x23, [sp, #0x20]
  1000b51bc  stp     x22, x21, [sp, #0x30]
  1000b51c0  stp     x20, x19, [sp, #0x40]
  1000b51c4  stp     x29, x30, [sp, #0x50]
  1000b51c8  add     x29, sp, #0x50
  1000b51cc  sub     sp, sp, #0xe0
  1000b51d0  mov     x20, x3
  1000b51d4  mov     x22, x0
  1000b51d8  adrp    x25, #0x1003b0000
  1000b51dc  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1000b51e0  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  1000b51e4  stur    x25, [x29, #-0x58]
  1000b51e8  mov     x0, x2
  1000b51ec  bl      _objc_retain
  1000b51f0  mov     x19, x0
  1000b51f4  mov     x0, x20
  1000b51f8  bl      _objc_retain
  1000b51fc  mov     x20, x0
  1000b5200  adrp    x8, #0x100417000
  1000b5204  nop
  1000b5208  ldr     x21, [x8, #0x348]
  1000b520c  mov     x1, x21
  1000b5210  bl      _objc_msgSend                            ; [arg2 section]
  1000b5214  cbz     x0, loc_1000b5290                        ; if ([arg2 section] == 0)
  1000b5218  cmp     x0, #1
  1000b521c  b.ne    loc_1000b5300                            ; if ([arg2 section] != 1)
  1000b5220  adrp    x8, #0x100417000
  1000b5224  nop
  1000b5228  ldr     x22, [x8, #0x350]
  1000b522c  mov     x0, x20
  1000b5230  mov     x1, x22
  1000b5234  bl      _objc_msgSend                            ; [arg2 row]
  1000b5238  cbz     x0, loc_1000b53d0                        ; if ([arg2 row] == 0)
  1000b523c  mov     x0, x20
  1000b5240  mov     x1, x22
  1000b5244  bl      _objc_msgSend                            ; [arg2 row]
  1000b5248  cmp     x0, #1
  1000b524c  b.ne    loc_1000b54a4                            ; if ([arg2 row] != 1)
  1000b5250  adrp    x8, #0x10041d000
  1000b5254  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b5258  adrp    x8, #0x100416000
  1000b525c  nop
  1000b5260  ldr     x1, [x8, #0xc00]
  1000b5264  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b5268  mov     x29, x29
  1000b526c  bl      _objc_retainAutoreleasedReturnValue
  1000b5270  mov     x22, x0
  1000b5274  adrp    x8, #0x100418000
  1000b5278  nop
  1000b527c  ldr     x1, [x8, #0xde0]
  1000b5280  mov     w2, #0
  1000b5284  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setButtonMode:0]
  1000b5288  b       loc_1000b549c
  1000b528c  b       loc_1000b56b4
loc_1000b5290:
  1000b5290  adrp    x8, #0x100417000
  1000b5294  nop
  1000b5298  ldr     x22, [x8, #0x350]
  1000b529c  mov     x0, x20
  1000b52a0  mov     x1, x22
  1000b52a4  bl      _objc_msgSend                            ; [arg2 row]
  1000b52a8  cbz     x0, loc_1000b5410                        ; if ([arg2 row] == 0)
  1000b52ac  mov     x0, x20
  1000b52b0  mov     x1, x22
  1000b52b4  bl      _objc_msgSend                            ; [arg2 row]
  1000b52b8  cmp     x0, #1
  1000b52bc  b.ne    loc_1000b5450                            ; if ([arg2 row] != 1)
  1000b52c0  adrp    x8, #0x10041d000
  1000b52c4  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b52c8  adrp    x8, #0x100416000
  1000b52cc  nop
  1000b52d0  ldr     x1, [x8, #0xc00]
  1000b52d4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b52d8  mov     x29, x29
  1000b52dc  bl      _objc_retainAutoreleasedReturnValue
  1000b52e0  mov     x22, x0
  1000b52e4  adrp    x8, #0x100416000
  1000b52e8  nop
  1000b52ec  ldr     x1, [x8, #0xc08]
  1000b52f0  mov     w2, #2
  1000b52f4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setControlScheme:2]
  1000b52f8  b       loc_1000b549c
  1000b52fc  b       loc_1000b56b4
loc_1000b5300:
  1000b5300  cmp     x0, #2
  1000b5304  b.ne    loc_1000b54a4                            ; if ([arg2 section] != 2)
  1000b5308  adrp    x8, #0x100417000
  1000b530c  nop
  1000b5310  ldr     x23, [x8, #0x350]
  1000b5314  mov     x0, x20
  1000b5318  mov     x1, x23
  1000b531c  bl      _objc_msgSend                            ; [arg2 row]
  1000b5320  cbz     x0, loc_1000b55fc                        ; if ([arg2 row] == 0)
  1000b5324  mov     x0, x20
  1000b5328  mov     x1, x23
  1000b532c  bl      _objc_msgSend                            ; [arg2 row]
  1000b5330  cmp     x0, #1
  1000b5334  b.ne    loc_1000b54a4                            ; if ([arg2 row] != 1)
  1000b5338  adrp    x8, #0x10041d000
  1000b533c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000b5340  adrp    x8, #0x100417000
  1000b5344  nop
  1000b5348  ldr     x1, [x8, #0x4f0]
  1000b534c  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000b5350  mov     x29, x29
  1000b5354  bl      _objc_retainAutoreleasedReturnValue
  1000b5358  mov     x22, x0
  1000b535c  adrp    x8, #0x100417000
  1000b5360  nop
  1000b5364  ldr     x1, [x8, #0x4f8]
  1000b5368  adrp    x2, #0x1003bd000
  1000b536c  add     x2, x2, #0x910                           ; @"headphonesTest"
  1000b5370  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"headphonesTest"]
  1000b5374  mov     x29, x29
  1000b5378  bl      _objc_retainAutoreleasedReturnValue
  1000b537c  mov     x23, x0
  1000b5380  adrp    x8, #0x100417000
  1000b5384  nop
  1000b5388  ldr     x1, [x8, #0x990]
  1000b538c  adrp    x2, #0x1003bd000
  1000b5390  add     x2, x2, #0x930                           ; @"HeadphonesTest"
  1000b5394  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"headphonesTest"] S3DSound:@"HeadphonesTest"]
  1000b5398  mov     x29, x29
  1000b539c  bl      _objc_retainAutoreleasedReturnValue
  1000b53a0  mov     x24, x0
  1000b53a4  mov     x0, x23
  1000b53a8  bl      _objc_release
  1000b53ac  mov     x0, x22
  1000b53b0  bl      _objc_release
  1000b53b4  adrp    x8, #0x100417000
  1000b53b8  nop
  1000b53bc  ldr     x1, [x8, #0x600]
  1000b53c0  mov     x0, x24
  1000b53c4  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"headphonesTest"] S3DSound:@"HeadphonesTest"] play]
  1000b53c8  mov     x0, x24
  1000b53cc  b       loc_1000b56a8
loc_1000b53d0:
  1000b53d0  adrp    x8, #0x10041d000
  1000b53d4  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b53d8  adrp    x8, #0x100416000
  1000b53dc  nop
  1000b53e0  ldr     x1, [x8, #0xc00]
  1000b53e4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b53e8  mov     x29, x29
  1000b53ec  bl      _objc_retainAutoreleasedReturnValue
  1000b53f0  mov     x22, x0
  1000b53f4  adrp    x8, #0x100418000
  1000b53f8  nop
  1000b53fc  ldr     x1, [x8, #0xde0]
  1000b5400  mov     w2, #1
  1000b5404  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setButtonMode:1]
  1000b5408  b       loc_1000b549c
  1000b540c  b       loc_1000b56b4
loc_1000b5410:
  1000b5410  adrp    x8, #0x10041d000
  1000b5414  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b5418  adrp    x8, #0x100416000
  1000b541c  nop
  1000b5420  ldr     x1, [x8, #0xc00]
  1000b5424  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b5428  mov     x29, x29
  1000b542c  bl      _objc_retainAutoreleasedReturnValue
  1000b5430  mov     x22, x0
  1000b5434  adrp    x8, #0x100416000
  1000b5438  nop
  1000b543c  ldr     x1, [x8, #0xc08]
  1000b5440  mov     w2, #1
  1000b5444  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setControlScheme:1]
  1000b5448  b       loc_1000b549c
  1000b544c  b       loc_1000b56b4
loc_1000b5450:
  1000b5450  mov     x0, x20
  1000b5454  mov     x1, x22
  1000b5458  bl      _objc_msgSend                            ; [arg2 row]
  1000b545c  cmp     x0, #2
  1000b5460  b.ne    loc_1000b54a4                            ; if ([arg2 row] != 2)
  1000b5464  adrp    x8, #0x10041d000
  1000b5468  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b546c  adrp    x8, #0x100416000
  1000b5470  nop
  1000b5474  ldr     x1, [x8, #0xc00]
  1000b5478  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b547c  mov     x29, x29
  1000b5480  bl      _objc_retainAutoreleasedReturnValue
  1000b5484  mov     x22, x0
  1000b5488  adrp    x8, #0x100416000
  1000b548c  nop
  1000b5490  ldr     x1, [x8, #0xc08]
  1000b5494  mov     w2, #3
  1000b5498  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setControlScheme:3]
loc_1000b549c:
  1000b549c  mov     x0, x22
  1000b54a0  bl      _objc_release
loc_1000b54a4:
  1000b54a4  stp     xzr, xzr, [sp, #0x48]
  1000b54a8  stp     xzr, xzr, [sp, #0x38]
  1000b54ac  stp     xzr, xzr, [sp, #0x28]
  1000b54b0  stp     xzr, xzr, [sp, #0x18]
  1000b54b4  adrp    x8, #0x10041a000
  1000b54b8  nop
  1000b54bc  ldr     x1, [x8, #0x748]
  1000b54c0  mov     x0, x19
  1000b54c4  bl      _objc_msgSend                            ; [arg1 indexPathsForSelectedRows]
  1000b54c8  mov     x29, x29
  1000b54cc  bl      _objc_retainAutoreleasedReturnValue
  1000b54d0  mov     x22, x0
  1000b54d4  adrp    x8, #0x100416000
  1000b54d8  nop
  1000b54dc  ldr     x1, [x8, #0xe00]
  1000b54e0  str     x1, [sp, #0x10]
  1000b54e4  add     x2, sp, #0x18
  1000b54e8  add     x3, sp, #0x58
  1000b54ec  mov     w4, #0x10
  1000b54f0  bl      _objc_msgSend                            ; [[arg1 indexPathsForSelectedRows] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  1000b54f4  mov     x24, x0
  1000b54f8  cbz     x24, loc_1000b5598                       ; if ([[arg1 indexPathsForSelectedRows] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  1000b54fc  ldr     x8, [sp, #0x28]
  1000b5500  ldr     x28, [x8]
  1000b5504  adrp    x8, #0x10041a000
  1000b5508  add     x8, x8, #0x750                           ; &@selector(deselectRowAtIndexPath:animated:)
  1000b550c  ldr     x25, [x8]
loc_1000b5510:
  1000b5510  mov     x23, #0
loc_1000b5514:
  1000b5514  ldr     x8, [sp, #0x28]
  1000b5518  ldr     x8, [x8]
  1000b551c  cmp     x8, x28
  1000b5520  b.eq    loc_1000b552c                            ; if (x8 == x28)
  1000b5524  mov     x0, x22
  1000b5528  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 indexPathsForSelectedRows])
loc_1000b552c:
  1000b552c  ldr     x8, [sp, #0x20]
  1000b5530  ldr     x26, [x8, x23, lsl #3]
  1000b5534  mov     x0, x26
  1000b5538  mov     x1, x21
  1000b553c  bl      _objc_msgSend                            ; [x0 section]
  1000b5540  mov     x27, x0
  1000b5544  mov     x0, x20
  1000b5548  mov     x1, x21
  1000b554c  bl      _objc_msgSend                            ; [arg2 section]
  1000b5550  cmp     x27, x0
  1000b5554  b.ne    loc_1000b556c                            ; if ([x0 section] != [arg2 section])
  1000b5558  mov     w3, #0
  1000b555c  mov     x0, x19
  1000b5560  mov     x1, x25
  1000b5564  mov     x2, x26
  1000b5568  bl      _objc_msgSend                            ; [arg1 deselectRowAtIndexPath:x2 animated:0]
loc_1000b556c:
  1000b556c  add     x23, x23, #1
  1000b5570  cmp     x23, x24
  1000b5574  b.lo    loc_1000b5514                            ; if ((x23 + 1) <u [[arg1 indexPathsForSelectedRows] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  1000b5578  add     x2, sp, #0x18
  1000b557c  add     x3, sp, #0x58
  1000b5580  mov     w4, #0x10
  1000b5584  mov     x0, x22
  1000b5588  ldr     x1, [sp, #0x10]
  1000b558c  bl      _objc_msgSend                            ; [[arg1 indexPathsForSelectedRows] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  1000b5590  mov     x24, x0
  1000b5594  cbnz    x24, loc_1000b5510                       ; if ([[arg1 indexPathsForSelectedRows] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
loc_1000b5598:
  1000b5598  mov     x0, x22
  1000b559c  bl      _objc_release
  1000b55a0  mov     x0, x20
  1000b55a4  bl      _objc_retain
  1000b55a8  mov     x21, x0
  1000b55ac  adrp    x25, #0x1003b0000
  1000b55b0  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1000b55b4  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
loc_1000b55b8:
  1000b55b8  mov     x0, x20
  1000b55bc  bl      _objc_release
  1000b55c0  mov     x0, x19
  1000b55c4  bl      _objc_release
  1000b55c8  ldur    x8, [x29, #-0x58]
  1000b55cc  sub     x8, x25, x8
  1000b55d0  cbnz    x8, loc_1000b55f8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000b55d4  mov     x0, x21
  1000b55d8  sub     sp, x29, #0x50
  1000b55dc  ldp     x29, x30, [sp, #0x50]
  1000b55e0  ldp     x20, x19, [sp, #0x40]
  1000b55e4  ldp     x22, x21, [sp, #0x30]
  1000b55e8  ldp     x24, x23, [sp, #0x20]
  1000b55ec  ldp     x26, x25, [sp, #0x10]
  1000b55f0  ldp     x28, x27, [sp], #0x60
  1000b55f4  b       _objc_autoreleaseReturnValue
loc_1000b55f8:
  1000b55f8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000b55fc:
  1000b55fc  adrp    x24, #0x10041d000
  1000b5600  ldr     x0, [x24, #0xef0]                        ; class ADGameParameters
  1000b5604  adrp    x8, #0x100416000
  1000b5608  nop
  1000b560c  ldr     x21, [x8, #0xc00]
  1000b5610  mov     x1, x21
  1000b5614  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b5618  mov     x29, x29
  1000b561c  bl      _objc_retainAutoreleasedReturnValue
  1000b5620  mov     x23, x0
  1000b5624  ldr     x0, [x24, #0xef0]                        ; class ADGameParameters
  1000b5628  mov     x1, x21
  1000b562c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b5630  mov     x29, x29
  1000b5634  bl      _objc_retainAutoreleasedReturnValue
  1000b5638  mov     x24, x0
  1000b563c  adrp    x8, #0x100417000
  1000b5640  nop
  1000b5644  ldr     x1, [x8, #0x5f8]
  1000b5648  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastAnnouncerValue]
  1000b564c  eor     w2, w0, #1
  1000b5650  adrp    x8, #0x100418000
  1000b5654  nop
  1000b5658  ldr     x1, [x8, #0xdf8]
  1000b565c  mov     x0, x23
  1000b5660  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setAnnouncer:([[ADGameParameters sharedParameters] lastAnnouncerValue] ^ 1)]
  1000b5664  mov     x0, x24
  1000b5668  bl      _objc_release
  1000b566c  mov     x0, x23
  1000b5670  bl      _objc_release
  1000b5674  adrp    x8, #0x100417000
  1000b5678  nop
  1000b567c  ldr     x1, [x8, #0x2d0]
  1000b5680  mov     x0, x22
  1000b5684  bl      _objc_msgSend                            ; [self tableView]
  1000b5688  mov     x29, x29
  1000b568c  bl      _objc_retainAutoreleasedReturnValue
  1000b5690  mov     x22, x0
  1000b5694  adrp    x8, #0x100417000
  1000b5698  nop
  1000b569c  ldr     x1, [x8, #0xb18]
  1000b56a0  bl      _objc_msgSend                            ; [[self tableView] reloadData]
  1000b56a4  mov     x0, x22
loc_1000b56a8:
  1000b56a8  bl      _objc_release
  1000b56ac  mov     x21, #0
  1000b56b0  b       loc_1000b55b8
loc_1000b56b4:
  1000b56b4  mov     x21, x0
loc_1000b56b8:
  1000b56b8  mov     x0, x22
  1000b56bc  bl      _objc_release
loc_1000b56c0:
  1000b56c0  mov     x0, x20
  1000b56c4  bl      _objc_release
  1000b56c8  mov     x0, x19
  1000b56cc  bl      _objc_release
  1000b56d0  mov     x0, x21
  1000b56d4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000b56d8  b       loc_1000b56b4
  1000b56dc  mov     x21, x0
  1000b56e0  b       loc_1000b56c0
  1000b56e4  b       loc_1000b56b4
  1000b56e8  mov     x21, x0
  1000b56ec  mov     x0, x24
  1000b56f0  bl      _objc_release
  1000b56f4  b       loc_1000b56fc
  1000b56f8  mov     x21, x0
loc_1000b56fc:
  1000b56fc  mov     x0, x23
  1000b5700  bl      _objc_release
  1000b5704  b       loc_1000b56c0
  1000b5708  b       loc_1000b56b4
  1000b570c  b       loc_1000b56b4
  1000b5710  mov     x21, x0
  1000b5714  mov     x0, x23
  1000b5718  bl      _objc_release
  1000b571c  b       loc_1000b56b8
  1000b5720  b       loc_1000b56b4
  1000b5724  mov     x21, x0
  1000b5728  mov     x0, x24
  1000b572c  bl      _objc_release
  1000b5730  b       loc_1000b56c0

; ======================================================================
; -[Accessible_ADControlSchemeViewController cellForAimingAtIndex:]
; address 0x1000b5734  size 1584  kind objc
; ======================================================================
  1000b5734  stp     x26, x25, [sp, #-0x50]!
  1000b5738  stp     x24, x23, [sp, #0x10]
  1000b573c  stp     x22, x21, [sp, #0x20]
  1000b5740  stp     x20, x19, [sp, #0x30]
  1000b5744  stp     x29, x30, [sp, #0x40]
  1000b5748  add     x29, sp, #0x40
  1000b574c  mov     x21, x0
  1000b5750  mov     x0, x2
  1000b5754  bl      _objc_retain
  1000b5758  mov     x19, x0
  1000b575c  adrp    x8, #0x10041e000
  1000b5760  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  1000b5764  adrp    x8, #0x100416000
  1000b5768  nop
  1000b576c  ldr     x1, [x8, #0xac8]
  1000b5770  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  1000b5774  adrp    x8, #0x100417000
  1000b5778  nop
  1000b577c  ldr     x1, [x8, #0x3c0]
  1000b5780  adrp    x3, #0x1003c1000
  1000b5784  add     x3, x3, #0x4d0                           ; @"AccessibleSettingsCell"
  1000b5788  mov     w2, #3
  1000b578c  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"]
  1000b5790  mov     x20, x0
  1000b5794  adrp    x8, #0x100417000
  1000b5798  nop
  1000b579c  ldr     x22, [x8, #0x350]
  1000b57a0  mov     x0, x19
  1000b57a4  mov     x1, x22
  1000b57a8  bl      _objc_msgSend                            ; [arg1 row]
  1000b57ac  cbnz    x0, loc_1000b5938                        ; if ([arg1 row] != 0)
  1000b57b0  adrp    x8, #0x100417000
  1000b57b4  nop
  1000b57b8  ldr     x1, [x8, #0x320]
  1000b57bc  mov     x0, x20
  1000b57c0  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel]
  1000b57c4  mov     x29, x29
  1000b57c8  bl      _objc_retainAutoreleasedReturnValue
  1000b57cc  mov     x23, x0
  1000b57d0  adrp    x8, #0x100416000
  1000b57d4  nop
  1000b57d8  ldr     x24, [x8, #0xb68]
  1000b57dc  adrp    x2, #0x1003c1000
  1000b57e0  add     x2, x2, #0x550                           ; @"Gyro"
  1000b57e4  mov     x1, x24
  1000b57e8  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel] setText:@"Gyro"]
  1000b57ec  mov     x0, x23
  1000b57f0  bl      _objc_release
  1000b57f4  adrp    x8, #0x100417000
  1000b57f8  nop
  1000b57fc  ldr     x1, [x8, #0x338]
  1000b5800  mov     x0, x20
  1000b5804  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] detailTextLabel]
  1000b5808  mov     x29, x29
  1000b580c  bl      _objc_retainAutoreleasedReturnValue
  1000b5810  mov     x23, x0
  1000b5814  adrp    x8, #0x10041d000
  1000b5818  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000b581c  adrp    x8, #0x100416000
  1000b5820  nop
  1000b5824  ldr     x1, [x8, #0xb58]
  1000b5828  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000b582c  mov     x29, x29
  1000b5830  bl      _objc_retainAutoreleasedReturnValue
  1000b5834  mov     x25, x0
  1000b5838  adrp    x8, #0x100416000
  1000b583c  nop
  1000b5840  ldr     x1, [x8, #0xb60]
  1000b5844  mov     x4, #0
  1000b5848  adrp    x2, #0x1003b9000
  1000b584c  add     x2, x2, #0x8b0                           ; @"GYRO_DESCRIPTION"
  1000b5850  adrp    x3, #0x1003b9000
  1000b5854  add     x3, x3, #0x870                           ; @""
  1000b5858  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"GYRO_DESCRIPTION" value:@"" table:0]
  1000b585c  mov     x29, x29
  1000b5860  bl      _objc_retainAutoreleasedReturnValue
  1000b5864  mov     x26, x0
  1000b5868  mov     x0, x23
  1000b586c  mov     x1, x24
  1000b5870  mov     x2, x26
  1000b5874  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] detailTextLabel] setText:[[NSBundle mainBundle] localizedStringForKey:@"GYRO_DESCRIPTION" value:@"" table:0]]
  1000b5878  mov     x0, x26
  1000b587c  bl      _objc_release
  1000b5880  mov     x0, x25
  1000b5884  bl      _objc_release
  1000b5888  mov     x0, x23
  1000b588c  bl      _objc_release
  1000b5890  adrp    x8, #0x100416000
  1000b5894  nop
  1000b5898  ldr     x1, [x8, #0xbd0]
  1000b589c  adrp    x2, #0x1003c1000
  1000b58a0  add     x2, x2, #0x570                           ; @"double tap to select"
  1000b58a4  mov     x0, x20
  1000b58a8  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] setAccessibilityHint:@"double tap to select"]
  1000b58ac  adrp    x8, #0x10041d000
  1000b58b0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b58b4  adrp    x8, #0x100416000
  1000b58b8  nop
  1000b58bc  ldr     x1, [x8, #0xc00]
  1000b58c0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b58c4  mov     x29, x29
  1000b58c8  bl      _objc_retainAutoreleasedReturnValue
  1000b58cc  mov     x23, x0
  1000b58d0  adrp    x8, #0x100417000
  1000b58d4  nop
  1000b58d8  ldr     x1, [x8, #0xc80]
  1000b58dc  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  1000b58e0  mov     x24, x0
  1000b58e4  mov     x0, x23
  1000b58e8  bl      _objc_release
  1000b58ec  cmp     w24, #1
  1000b58f0  b.ne    loc_1000b5938                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 1)
  1000b58f4  adrp    x8, #0x100417000
  1000b58f8  nop
  1000b58fc  ldr     x1, [x8, #0x2d0]
  1000b5900  mov     x0, x21
  1000b5904  bl      _objc_msgSend                            ; [self tableView]
  1000b5908  mov     x29, x29
  1000b590c  bl      _objc_retainAutoreleasedReturnValue
  1000b5910  mov     x23, x0
  1000b5914  adrp    x8, #0x10041a000
  1000b5918  nop
  1000b591c  ldr     x1, [x8, #0x758]
  1000b5920  mov     w3, #0
  1000b5924  mov     x4, #0
  1000b5928  mov     x2, x19
  1000b592c  bl      _objc_msgSend                            ; [[self tableView] selectRowAtIndexPath:arg1 animated:0 scrollPosition:0]
  1000b5930  mov     x0, x23
  1000b5934  bl      _objc_release
loc_1000b5938:
  1000b5938  mov     x0, x19
  1000b593c  mov     x1, x22
  1000b5940  bl      _objc_msgSend                            ; [arg1 row]
  1000b5944  cmp     x0, #1
  1000b5948  b.ne    loc_1000b5ad4                            ; if ([arg1 row] != 1)
  1000b594c  adrp    x8, #0x100417000
  1000b5950  nop
  1000b5954  ldr     x1, [x8, #0x320]
  1000b5958  mov     x0, x20
  1000b595c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel]
  1000b5960  mov     x29, x29
  1000b5964  bl      _objc_retainAutoreleasedReturnValue
  1000b5968  mov     x23, x0
  1000b596c  adrp    x8, #0x100416000
  1000b5970  nop
  1000b5974  ldr     x24, [x8, #0xb68]
  1000b5978  adrp    x2, #0x1003c1000
  1000b597c  add     x2, x2, #0x590                           ; @"Swipe"
  1000b5980  mov     x1, x24
  1000b5984  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel] setText:@"Swipe"]
  1000b5988  mov     x0, x23
  1000b598c  bl      _objc_release
  1000b5990  adrp    x8, #0x100417000
  1000b5994  nop
  1000b5998  ldr     x1, [x8, #0x338]
  1000b599c  mov     x0, x20
  1000b59a0  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] detailTextLabel]
  1000b59a4  mov     x29, x29
  1000b59a8  bl      _objc_retainAutoreleasedReturnValue
  1000b59ac  mov     x23, x0
  1000b59b0  adrp    x8, #0x10041d000
  1000b59b4  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000b59b8  adrp    x8, #0x100416000
  1000b59bc  nop
  1000b59c0  ldr     x1, [x8, #0xb58]
  1000b59c4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000b59c8  mov     x29, x29
  1000b59cc  bl      _objc_retainAutoreleasedReturnValue
  1000b59d0  mov     x25, x0
  1000b59d4  adrp    x8, #0x100416000
  1000b59d8  nop
  1000b59dc  ldr     x1, [x8, #0xb60]
  1000b59e0  mov     x4, #0
  1000b59e4  adrp    x2, #0x1003b9000
  1000b59e8  add     x2, x2, #0x850                           ; @"SWIPE_DESCRIPTION"
  1000b59ec  adrp    x3, #0x1003b9000
  1000b59f0  add     x3, x3, #0x870                           ; @""
  1000b59f4  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"SWIPE_DESCRIPTION" value:@"" table:0]
  1000b59f8  mov     x29, x29
  1000b59fc  bl      _objc_retainAutoreleasedReturnValue
  1000b5a00  mov     x26, x0
  1000b5a04  mov     x0, x23
  1000b5a08  mov     x1, x24
  1000b5a0c  mov     x2, x26
  1000b5a10  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] detailTextLabel] setText:[[NSBundle mainBundle] localizedStringForKey:@"SWIPE_DESCRIPTION" value:@"" table:0]]
  1000b5a14  mov     x0, x26
  1000b5a18  bl      _objc_release
  1000b5a1c  mov     x0, x25
  1000b5a20  bl      _objc_release
  1000b5a24  mov     x0, x23
  1000b5a28  bl      _objc_release
  1000b5a2c  adrp    x8, #0x100416000
  1000b5a30  nop
  1000b5a34  ldr     x1, [x8, #0xbd0]
  1000b5a38  adrp    x2, #0x1003c1000
  1000b5a3c  add     x2, x2, #0x570                           ; @"double tap to select"
  1000b5a40  mov     x0, x20
  1000b5a44  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] setAccessibilityHint:@"double tap to select"]
  1000b5a48  adrp    x8, #0x10041d000
  1000b5a4c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b5a50  adrp    x8, #0x100416000
  1000b5a54  nop
  1000b5a58  ldr     x1, [x8, #0xc00]
  1000b5a5c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b5a60  mov     x29, x29
  1000b5a64  bl      _objc_retainAutoreleasedReturnValue
  1000b5a68  mov     x23, x0
  1000b5a6c  adrp    x8, #0x100417000
  1000b5a70  nop
  1000b5a74  ldr     x1, [x8, #0xc80]
  1000b5a78  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  1000b5a7c  mov     x24, x0
  1000b5a80  mov     x0, x23
  1000b5a84  bl      _objc_release
  1000b5a88  cmp     w24, #2
  1000b5a8c  b.ne    loc_1000b5ad4                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 2)
  1000b5a90  adrp    x8, #0x100417000
  1000b5a94  nop
  1000b5a98  ldr     x1, [x8, #0x2d0]
  1000b5a9c  mov     x0, x21
  1000b5aa0  bl      _objc_msgSend                            ; [self tableView]
  1000b5aa4  mov     x29, x29
  1000b5aa8  bl      _objc_retainAutoreleasedReturnValue
  1000b5aac  mov     x23, x0
  1000b5ab0  adrp    x8, #0x10041a000
  1000b5ab4  nop
  1000b5ab8  ldr     x1, [x8, #0x758]
  1000b5abc  mov     w3, #0
  1000b5ac0  mov     x4, #0
  1000b5ac4  mov     x2, x19
  1000b5ac8  bl      _objc_msgSend                            ; [[self tableView] selectRowAtIndexPath:arg1 animated:0 scrollPosition:0]
  1000b5acc  mov     x0, x23
  1000b5ad0  bl      _objc_release
loc_1000b5ad4:
  1000b5ad4  mov     x0, x19
  1000b5ad8  mov     x1, x22
  1000b5adc  bl      _objc_msgSend                            ; [arg1 row]
  1000b5ae0  cmp     x0, #2
  1000b5ae4  b.ne    loc_1000b5c70                            ; if ([arg1 row] != 2)
  1000b5ae8  adrp    x8, #0x100417000
  1000b5aec  nop
  1000b5af0  ldr     x1, [x8, #0x320]
  1000b5af4  mov     x0, x20
  1000b5af8  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel]
  1000b5afc  mov     x29, x29
  1000b5b00  bl      _objc_retainAutoreleasedReturnValue
  1000b5b04  mov     x22, x0
  1000b5b08  adrp    x8, #0x100416000
  1000b5b0c  nop
  1000b5b10  ldr     x23, [x8, #0xb68]
  1000b5b14  adrp    x2, #0x1003c1000
  1000b5b18  add     x2, x2, #0x5b0                           ; @"Tilt"
  1000b5b1c  mov     x1, x23
  1000b5b20  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel] setText:@"Tilt"]
  1000b5b24  mov     x0, x22
  1000b5b28  bl      _objc_release
  1000b5b2c  adrp    x8, #0x100417000
  1000b5b30  nop
  1000b5b34  ldr     x1, [x8, #0x338]
  1000b5b38  mov     x0, x20
  1000b5b3c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] detailTextLabel]
  1000b5b40  mov     x29, x29
  1000b5b44  bl      _objc_retainAutoreleasedReturnValue
  1000b5b48  mov     x22, x0
  1000b5b4c  adrp    x8, #0x10041d000
  1000b5b50  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000b5b54  adrp    x8, #0x100416000
  1000b5b58  nop
  1000b5b5c  ldr     x1, [x8, #0xb58]
  1000b5b60  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000b5b64  mov     x29, x29
  1000b5b68  bl      _objc_retainAutoreleasedReturnValue
  1000b5b6c  mov     x24, x0
  1000b5b70  adrp    x8, #0x100416000
  1000b5b74  nop
  1000b5b78  ldr     x1, [x8, #0xb60]
  1000b5b7c  mov     x4, #0
  1000b5b80  adrp    x2, #0x1003b9000
  1000b5b84  add     x2, x2, #0x890                           ; @"TILT_DESCRIPTION"
  1000b5b88  adrp    x3, #0x1003b9000
  1000b5b8c  add     x3, x3, #0x870                           ; @""
  1000b5b90  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"TILT_DESCRIPTION" value:@"" table:0]
  1000b5b94  mov     x29, x29
  1000b5b98  bl      _objc_retainAutoreleasedReturnValue
  1000b5b9c  mov     x25, x0
  1000b5ba0  mov     x0, x22
  1000b5ba4  mov     x1, x23
  1000b5ba8  mov     x2, x25
  1000b5bac  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] detailTextLabel] setText:[[NSBundle mainBundle] localizedStringForKey:@"TILT_DESCRIPTION" value:@"" table:0]]
  1000b5bb0  mov     x0, x25
  1000b5bb4  bl      _objc_release
  1000b5bb8  mov     x0, x24
  1000b5bbc  bl      _objc_release
  1000b5bc0  mov     x0, x22
  1000b5bc4  bl      _objc_release
  1000b5bc8  adrp    x8, #0x100416000
  1000b5bcc  nop
  1000b5bd0  ldr     x1, [x8, #0xbd0]
  1000b5bd4  adrp    x2, #0x1003c1000
  1000b5bd8  add     x2, x2, #0x570                           ; @"double tap to select"
  1000b5bdc  mov     x0, x20
  1000b5be0  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] setAccessibilityHint:@"double tap to select"]
  1000b5be4  adrp    x8, #0x10041d000
  1000b5be8  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b5bec  adrp    x8, #0x100416000
  1000b5bf0  nop
  1000b5bf4  ldr     x1, [x8, #0xc00]
  1000b5bf8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b5bfc  mov     x29, x29
  1000b5c00  bl      _objc_retainAutoreleasedReturnValue
  1000b5c04  mov     x22, x0
  1000b5c08  adrp    x8, #0x100417000
  1000b5c0c  nop
  1000b5c10  ldr     x1, [x8, #0xc80]
  1000b5c14  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  1000b5c18  mov     x23, x0
  1000b5c1c  mov     x0, x22
  1000b5c20  bl      _objc_release
  1000b5c24  cmp     w23, #3
  1000b5c28  b.ne    loc_1000b5c70                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 3)
  1000b5c2c  adrp    x8, #0x100417000
  1000b5c30  nop
  1000b5c34  ldr     x1, [x8, #0x2d0]
  1000b5c38  mov     x0, x21
  1000b5c3c  bl      _objc_msgSend                            ; [self tableView]
  1000b5c40  mov     x29, x29
  1000b5c44  bl      _objc_retainAutoreleasedReturnValue
  1000b5c48  mov     x22, x0
  1000b5c4c  adrp    x8, #0x10041a000
  1000b5c50  nop
  1000b5c54  ldr     x1, [x8, #0x758]
  1000b5c58  mov     w3, #0
  1000b5c5c  mov     x4, #0
  1000b5c60  mov     x2, x19
  1000b5c64  bl      _objc_msgSend                            ; [[self tableView] selectRowAtIndexPath:arg1 animated:0 scrollPosition:0]
  1000b5c68  mov     x0, x22
  1000b5c6c  bl      _objc_release
loc_1000b5c70:
  1000b5c70  adrp    x8, #0x100417000
  1000b5c74  nop
  1000b5c78  ldr     x1, [x8, #0x3b0]
  1000b5c7c  mov     w2, #1
  1000b5c80  mov     x0, x20
  1000b5c84  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] setSelectionStyle:1]
  1000b5c88  mov     x0, x19
  1000b5c8c  bl      _objc_release
  1000b5c90  mov     x0, x20
  1000b5c94  ldp     x29, x30, [sp, #0x40]
  1000b5c98  ldp     x20, x19, [sp, #0x30]
  1000b5c9c  ldp     x22, x21, [sp, #0x20]
  1000b5ca0  ldp     x24, x23, [sp, #0x10]
  1000b5ca4  ldp     x26, x25, [sp], #0x50
  1000b5ca8  b       _objc_autoreleaseReturnValue
  1000b5cac  mov     x21, x0
  1000b5cb0  b       loc_1000b5d4c
  1000b5cb4  mov     x21, x0
  1000b5cb8  b       loc_1000b5d54
  1000b5cbc  b       loc_1000b5d40
  1000b5cc0  b       loc_1000b5d40
  1000b5cc4  mov     x21, x0
  1000b5cc8  b       loc_1000b5d1c
  1000b5ccc  b       loc_1000b5d10
  1000b5cd0  b       loc_1000b5d40
  1000b5cd4  b       loc_1000b5d30
  1000b5cd8  b       loc_1000b5d30
  1000b5cdc  mov     x21, x0
  1000b5ce0  b       loc_1000b5cf0
  1000b5ce4  mov     x21, x0
  1000b5ce8  mov     x0, x25
  1000b5cec  bl      _objc_release
loc_1000b5cf0:
  1000b5cf0  mov     x0, x24
  1000b5cf4  bl      _objc_release
  1000b5cf8  b       loc_1000b5d34
  1000b5cfc  b       loc_1000b5d30
  1000b5d00  b       loc_1000b5d40
  1000b5d04  b       loc_1000b5d40
  1000b5d08  mov     x21, x0
  1000b5d0c  b       loc_1000b5d1c
loc_1000b5d10:
  1000b5d10  mov     x21, x0
  1000b5d14  mov     x0, x26
  1000b5d18  bl      _objc_release
loc_1000b5d1c:
  1000b5d1c  mov     x0, x25
  1000b5d20  bl      _objc_release
  1000b5d24  b       loc_1000b5d44
  1000b5d28  b       loc_1000b5d40
  1000b5d2c  b       loc_1000b5d40
loc_1000b5d30:
  1000b5d30  mov     x21, x0
loc_1000b5d34:
  1000b5d34  mov     x0, x22
  1000b5d38  bl      _objc_release
  1000b5d3c  b       loc_1000b5d4c
loc_1000b5d40:
  1000b5d40  mov     x21, x0
loc_1000b5d44:
  1000b5d44  mov     x0, x23
  1000b5d48  bl      _objc_release
loc_1000b5d4c:
  1000b5d4c  mov     x0, x20
  1000b5d50  bl      _objc_release
loc_1000b5d54:
  1000b5d54  mov     x0, x19
  1000b5d58  bl      _objc_release
  1000b5d5c  mov     x0, x21
  1000b5d60  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADControlSchemeViewController cellForControlAtIndex:]
; address 0x1000b5d64  size 1080  kind objc
; ======================================================================
  1000b5d64  stp     x26, x25, [sp, #-0x50]!
  1000b5d68  stp     x24, x23, [sp, #0x10]
  1000b5d6c  stp     x22, x21, [sp, #0x20]
  1000b5d70  stp     x20, x19, [sp, #0x30]
  1000b5d74  stp     x29, x30, [sp, #0x40]
  1000b5d78  add     x29, sp, #0x40
  1000b5d7c  mov     x21, x0
  1000b5d80  mov     x0, x2
  1000b5d84  bl      _objc_retain
  1000b5d88  mov     x19, x0
  1000b5d8c  adrp    x8, #0x10041e000
  1000b5d90  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  1000b5d94  adrp    x8, #0x100416000
  1000b5d98  nop
  1000b5d9c  ldr     x1, [x8, #0xac8]
  1000b5da0  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  1000b5da4  adrp    x8, #0x100417000
  1000b5da8  nop
  1000b5dac  ldr     x1, [x8, #0x3c0]
  1000b5db0  adrp    x3, #0x1003c1000
  1000b5db4  add     x3, x3, #0x4d0                           ; @"AccessibleSettingsCell"
  1000b5db8  mov     w2, #3
  1000b5dbc  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"]
  1000b5dc0  mov     x20, x0
  1000b5dc4  adrp    x8, #0x100417000
  1000b5dc8  nop
  1000b5dcc  ldr     x22, [x8, #0x350]
  1000b5dd0  mov     x0, x19
  1000b5dd4  mov     x1, x22
  1000b5dd8  bl      _objc_msgSend                            ; [arg1 row]
  1000b5ddc  cbnz    x0, loc_1000b5f48                        ; if ([arg1 row] != 0)
  1000b5de0  adrp    x8, #0x100417000
  1000b5de4  nop
  1000b5de8  ldr     x1, [x8, #0x320]
  1000b5dec  mov     x0, x20
  1000b5df0  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel]
  1000b5df4  mov     x29, x29
  1000b5df8  bl      _objc_retainAutoreleasedReturnValue
  1000b5dfc  mov     x23, x0
  1000b5e00  adrp    x8, #0x100416000
  1000b5e04  nop
  1000b5e08  ldr     x24, [x8, #0xb68]
  1000b5e0c  adrp    x2, #0x1003c1000
  1000b5e10  add     x2, x2, #0x5d0                           ; @"Button"
  1000b5e14  mov     x1, x24
  1000b5e18  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel] setText:@"Button"]
  1000b5e1c  mov     x0, x23
  1000b5e20  bl      _objc_release
  1000b5e24  adrp    x8, #0x100417000
  1000b5e28  nop
  1000b5e2c  ldr     x1, [x8, #0x338]
  1000b5e30  mov     x0, x20
  1000b5e34  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] detailTextLabel]
  1000b5e38  mov     x29, x29
  1000b5e3c  bl      _objc_retainAutoreleasedReturnValue
  1000b5e40  mov     x23, x0
  1000b5e44  adrp    x8, #0x10041d000
  1000b5e48  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000b5e4c  adrp    x8, #0x100416000
  1000b5e50  nop
  1000b5e54  ldr     x1, [x8, #0xb58]
  1000b5e58  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000b5e5c  mov     x29, x29
  1000b5e60  bl      _objc_retainAutoreleasedReturnValue
  1000b5e64  mov     x25, x0
  1000b5e68  adrp    x8, #0x100416000
  1000b5e6c  nop
  1000b5e70  ldr     x1, [x8, #0xb60]
  1000b5e74  mov     x4, #0
  1000b5e78  adrp    x2, #0x1003bd000
  1000b5e7c  add     x2, x2, #0x590                           ; @"BUTTON_MODE"
  1000b5e80  adrp    x3, #0x1003b9000
  1000b5e84  add     x3, x3, #0x870                           ; @""
  1000b5e88  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"BUTTON_MODE" value:@"" table:0]
  1000b5e8c  mov     x29, x29
  1000b5e90  bl      _objc_retainAutoreleasedReturnValue
  1000b5e94  mov     x26, x0
  1000b5e98  mov     x0, x23
  1000b5e9c  mov     x1, x24
  1000b5ea0  mov     x2, x26
  1000b5ea4  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] detailTextLabel] setText:[[NSBundle mainBundle] localizedStringForKey:@"BUTTON_MODE" value:@"" table:0]]
  1000b5ea8  mov     x0, x26
  1000b5eac  bl      _objc_release
  1000b5eb0  mov     x0, x25
  1000b5eb4  bl      _objc_release
  1000b5eb8  mov     x0, x23
  1000b5ebc  bl      _objc_release
  1000b5ec0  adrp    x8, #0x10041d000
  1000b5ec4  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b5ec8  adrp    x8, #0x100416000
  1000b5ecc  nop
  1000b5ed0  ldr     x1, [x8, #0xc00]
  1000b5ed4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b5ed8  mov     x29, x29
  1000b5edc  bl      _objc_retainAutoreleasedReturnValue
  1000b5ee0  mov     x23, x0
  1000b5ee4  adrp    x8, #0x100417000
  1000b5ee8  nop
  1000b5eec  ldr     x1, [x8, #0xc90]
  1000b5ef0  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  1000b5ef4  mov     x24, x0
  1000b5ef8  mov     x0, x23
  1000b5efc  bl      _objc_release
  1000b5f00  cbz     w24, loc_1000b5f48                       ; if ([[ADGameParameters sharedParameters] buttonMode] == 0)
  1000b5f04  adrp    x8, #0x100417000
  1000b5f08  nop
  1000b5f0c  ldr     x1, [x8, #0x2d0]
  1000b5f10  mov     x0, x21
  1000b5f14  bl      _objc_msgSend                            ; [self tableView]
  1000b5f18  mov     x29, x29
  1000b5f1c  bl      _objc_retainAutoreleasedReturnValue
  1000b5f20  mov     x23, x0
  1000b5f24  adrp    x8, #0x10041a000
  1000b5f28  nop
  1000b5f2c  ldr     x1, [x8, #0x758]
  1000b5f30  mov     w3, #0
  1000b5f34  mov     x4, #0
  1000b5f38  mov     x2, x19
  1000b5f3c  bl      _objc_msgSend                            ; [[self tableView] selectRowAtIndexPath:arg1 animated:0 scrollPosition:0]
  1000b5f40  mov     x0, x23
  1000b5f44  bl      _objc_release
loc_1000b5f48:
  1000b5f48  mov     x0, x19
  1000b5f4c  mov     x1, x22
  1000b5f50  bl      _objc_msgSend                            ; [arg1 row]
  1000b5f54  cmp     x0, #1
  1000b5f58  b.ne    loc_1000b60c4                            ; if ([arg1 row] != 1)
  1000b5f5c  adrp    x8, #0x100417000
  1000b5f60  nop
  1000b5f64  ldr     x1, [x8, #0x320]
  1000b5f68  mov     x0, x20
  1000b5f6c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel]
  1000b5f70  mov     x29, x29
  1000b5f74  bl      _objc_retainAutoreleasedReturnValue
  1000b5f78  mov     x22, x0
  1000b5f7c  adrp    x8, #0x100416000
  1000b5f80  nop
  1000b5f84  ldr     x23, [x8, #0xb68]
  1000b5f88  adrp    x2, #0x1003c1000
  1000b5f8c  add     x2, x2, #0x5f0                           ; @"Gesture"
  1000b5f90  mov     x1, x23
  1000b5f94  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel] setText:@"Gesture"]
  1000b5f98  mov     x0, x22
  1000b5f9c  bl      _objc_release
  1000b5fa0  adrp    x8, #0x100417000
  1000b5fa4  nop
  1000b5fa8  ldr     x1, [x8, #0x338]
  1000b5fac  mov     x0, x20
  1000b5fb0  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] detailTextLabel]
  1000b5fb4  mov     x29, x29
  1000b5fb8  bl      _objc_retainAutoreleasedReturnValue
  1000b5fbc  mov     x22, x0
  1000b5fc0  adrp    x8, #0x10041d000
  1000b5fc4  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000b5fc8  adrp    x8, #0x100416000
  1000b5fcc  nop
  1000b5fd0  ldr     x1, [x8, #0xb58]
  1000b5fd4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000b5fd8  mov     x29, x29
  1000b5fdc  bl      _objc_retainAutoreleasedReturnValue
  1000b5fe0  mov     x24, x0
  1000b5fe4  adrp    x8, #0x100416000
  1000b5fe8  nop
  1000b5fec  ldr     x1, [x8, #0xb60]
  1000b5ff0  mov     x4, #0
  1000b5ff4  adrp    x2, #0x1003bd000
  1000b5ff8  add     x2, x2, #0x5b0                           ; @"GESTURE_MODE"
  1000b5ffc  adrp    x3, #0x1003b9000
  1000b6000  add     x3, x3, #0x870                           ; @""
  1000b6004  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"GESTURE_MODE" value:@"" table:0]
  1000b6008  mov     x29, x29
  1000b600c  bl      _objc_retainAutoreleasedReturnValue
  1000b6010  mov     x25, x0
  1000b6014  mov     x0, x22
  1000b6018  mov     x1, x23
  1000b601c  mov     x2, x25
  1000b6020  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] detailTextLabel] setText:[[NSBundle mainBundle] localizedStringForKey:@"GESTURE_MODE" value:@"" table:0]]
  1000b6024  mov     x0, x25
  1000b6028  bl      _objc_release
  1000b602c  mov     x0, x24
  1000b6030  bl      _objc_release
  1000b6034  mov     x0, x22
  1000b6038  bl      _objc_release
  1000b603c  adrp    x8, #0x10041d000
  1000b6040  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b6044  adrp    x8, #0x100416000
  1000b6048  nop
  1000b604c  ldr     x1, [x8, #0xc00]
  1000b6050  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b6054  mov     x29, x29
  1000b6058  bl      _objc_retainAutoreleasedReturnValue
  1000b605c  mov     x22, x0
  1000b6060  adrp    x8, #0x100417000
  1000b6064  nop
  1000b6068  ldr     x1, [x8, #0xc90]
  1000b606c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  1000b6070  mov     x23, x0
  1000b6074  mov     x0, x22
  1000b6078  bl      _objc_release
  1000b607c  tbnz    w23, #0, loc_1000b60c4                   ; if (([[ADGameParameters sharedParameters] buttonMode] & 1))
  1000b6080  adrp    x8, #0x100417000
  1000b6084  nop
  1000b6088  ldr     x1, [x8, #0x2d0]
  1000b608c  mov     x0, x21
  1000b6090  bl      _objc_msgSend                            ; [self tableView]
  1000b6094  mov     x29, x29
  1000b6098  bl      _objc_retainAutoreleasedReturnValue
  1000b609c  mov     x22, x0
  1000b60a0  adrp    x8, #0x10041a000
  1000b60a4  nop
  1000b60a8  ldr     x1, [x8, #0x758]
  1000b60ac  mov     w3, #0
  1000b60b0  mov     x4, #0
  1000b60b4  mov     x2, x19
  1000b60b8  bl      _objc_msgSend                            ; [[self tableView] selectRowAtIndexPath:arg1 animated:0 scrollPosition:0]
  1000b60bc  mov     x0, x22
  1000b60c0  bl      _objc_release
loc_1000b60c4:
  1000b60c4  adrp    x8, #0x100417000
  1000b60c8  nop
  1000b60cc  ldr     x1, [x8, #0x3b0]
  1000b60d0  mov     w2, #1
  1000b60d4  mov     x0, x20
  1000b60d8  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] setSelectionStyle:1]
  1000b60dc  mov     x0, x19
  1000b60e0  bl      _objc_release
  1000b60e4  mov     x0, x20
  1000b60e8  ldp     x29, x30, [sp, #0x40]
  1000b60ec  ldp     x20, x19, [sp, #0x30]
  1000b60f0  ldp     x22, x21, [sp, #0x20]
  1000b60f4  ldp     x24, x23, [sp, #0x10]
  1000b60f8  ldp     x26, x25, [sp], #0x50
  1000b60fc  b       _objc_autoreleaseReturnValue
  1000b6100  mov     x21, x0
  1000b6104  b       loc_1000b6184
  1000b6108  mov     x21, x0
  1000b610c  b       loc_1000b618c
  1000b6110  b       loc_1000b6168
  1000b6114  b       loc_1000b6168
  1000b6118  mov     x21, x0
  1000b611c  b       loc_1000b612c
  1000b6120  mov     x21, x0
  1000b6124  mov     x0, x25
  1000b6128  bl      _objc_release
loc_1000b612c:
  1000b612c  mov     x0, x24
  1000b6130  bl      _objc_release
  1000b6134  b       loc_1000b616c
  1000b6138  b       loc_1000b6168
  1000b613c  b       loc_1000b6178
  1000b6140  b       loc_1000b6178
  1000b6144  mov     x21, x0
  1000b6148  b       loc_1000b6158
  1000b614c  mov     x21, x0
  1000b6150  mov     x0, x26
  1000b6154  bl      _objc_release
loc_1000b6158:
  1000b6158  mov     x0, x25
  1000b615c  bl      _objc_release
  1000b6160  b       loc_1000b617c
  1000b6164  b       loc_1000b6178
loc_1000b6168:
  1000b6168  mov     x21, x0
loc_1000b616c:
  1000b616c  mov     x0, x22
  1000b6170  bl      _objc_release
  1000b6174  b       loc_1000b6184
loc_1000b6178:
  1000b6178  mov     x21, x0
loc_1000b617c:
  1000b617c  mov     x0, x23
  1000b6180  bl      _objc_release
loc_1000b6184:
  1000b6184  mov     x0, x20
  1000b6188  bl      _objc_release
loc_1000b618c:
  1000b618c  mov     x0, x19
  1000b6190  bl      _objc_release
  1000b6194  mov     x0, x21
  1000b6198  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADControlSchemeViewController cellForSound:]
; address 0x1000b619c  size 644  kind objc
; ======================================================================
  1000b619c  stp     x24, x23, [sp, #-0x40]!
  1000b61a0  stp     x22, x21, [sp, #0x10]
  1000b61a4  stp     x20, x19, [sp, #0x20]
  1000b61a8  stp     x29, x30, [sp, #0x30]
  1000b61ac  add     x29, sp, #0x30
  1000b61b0  mov     x0, x2
  1000b61b4  bl      _objc_retain
  1000b61b8  mov     x19, x0
  1000b61bc  adrp    x8, #0x10041e000
  1000b61c0  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  1000b61c4  adrp    x8, #0x100416000
  1000b61c8  nop
  1000b61cc  ldr     x1, [x8, #0xac8]
  1000b61d0  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  1000b61d4  adrp    x8, #0x100417000
  1000b61d8  nop
  1000b61dc  ldr     x1, [x8, #0x3c0]
  1000b61e0  adrp    x3, #0x1003c1000
  1000b61e4  add     x3, x3, #0x4d0                           ; @"AccessibleSettingsCell"
  1000b61e8  mov     w2, #3
  1000b61ec  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"]
  1000b61f0  mov     x20, x0
  1000b61f4  adrp    x8, #0x100417000
  1000b61f8  nop
  1000b61fc  ldr     x21, [x8, #0x350]
  1000b6200  mov     x0, x19
  1000b6204  mov     x1, x21
  1000b6208  bl      _objc_msgSend                            ; [arg1 row]
  1000b620c  cbz     x0, loc_1000b629c                        ; if ([arg1 row] == 0)
  1000b6210  mov     x0, x19
  1000b6214  mov     x1, x21
  1000b6218  bl      _objc_msgSend                            ; [arg1 row]
  1000b621c  cmp     x0, #1
  1000b6220  b.ne    loc_1000b639c                            ; if ([arg1 row] != 1)
  1000b6224  adrp    x8, #0x100417000
  1000b6228  nop
  1000b622c  ldr     x1, [x8, #0x320]
  1000b6230  mov     x0, x20
  1000b6234  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel]
  1000b6238  mov     x29, x29
  1000b623c  bl      _objc_retainAutoreleasedReturnValue
  1000b6240  mov     x22, x0
  1000b6244  adrp    x8, #0x100416000
  1000b6248  nop
  1000b624c  ldr     x1, [x8, #0xb68]
  1000b6250  adrp    x2, #0x1003c1000
  1000b6254  add     x2, x2, #0x690                           ; @"Test headphones"
  1000b6258  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel] setText:@"Test headphones"]
  1000b625c  mov     x0, x22
  1000b6260  bl      _objc_release
  1000b6264  adrp    x8, #0x100416000
  1000b6268  nop
  1000b626c  ldr     x1, [x8, #0xbd0]
  1000b6270  adrp    x2, #0x1003c1000
  1000b6274  add     x2, x2, #0x6b0                           ; @"Double tap to test your headphones"
  1000b6278  mov     x0, x20
  1000b627c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] setAccessibilityHint:@"Double tap to test your headphones"]
  1000b6280  adrp    x8, #0x100417000
  1000b6284  nop
  1000b6288  ldr     x1, [x8, #0x3b0]
  1000b628c  mov     x2, #0
  1000b6290  mov     x0, x20
  1000b6294  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] setSelectionStyle:0]
  1000b6298  b       loc_1000b639c
loc_1000b629c:
  1000b629c  adrp    x8, #0x100417000
  1000b62a0  nop
  1000b62a4  ldr     x1, [x8, #0x320]
  1000b62a8  mov     x0, x20
  1000b62ac  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel]
  1000b62b0  mov     x29, x29
  1000b62b4  bl      _objc_retainAutoreleasedReturnValue
  1000b62b8  mov     x22, x0
  1000b62bc  adrp    x8, #0x100416000
  1000b62c0  nop
  1000b62c4  ldr     x21, [x8, #0xb68]
  1000b62c8  adrp    x2, #0x1003c1000
  1000b62cc  add     x2, x2, #0x610                           ; @"Announcer"
  1000b62d0  mov     x1, x21
  1000b62d4  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] textLabel] setText:@"Announcer"]
  1000b62d8  mov     x0, x22
  1000b62dc  bl      _objc_release
  1000b62e0  adrp    x8, #0x100417000
  1000b62e4  nop
  1000b62e8  ldr     x1, [x8, #0x338]
  1000b62ec  mov     x0, x20
  1000b62f0  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] detailTextLabel]
  1000b62f4  mov     x29, x29
  1000b62f8  bl      _objc_retainAutoreleasedReturnValue
  1000b62fc  mov     x22, x0
  1000b6300  adrp    x8, #0x10041d000
  1000b6304  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b6308  adrp    x8, #0x100416000
  1000b630c  nop
  1000b6310  ldr     x1, [x8, #0xc00]
  1000b6314  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b6318  mov     x29, x29
  1000b631c  bl      _objc_retainAutoreleasedReturnValue
  1000b6320  mov     x23, x0
  1000b6324  adrp    x8, #0x100417000
  1000b6328  nop
  1000b632c  ldr     x1, [x8, #0x5f8]
  1000b6330  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastAnnouncerValue]
  1000b6334  adrp    x8, #0x1003c1000
  1000b6338  add     x8, x8, #0x650                           ; @"OFF"
  1000b633c  adrp    x9, #0x1003c1000
  1000b6340  add     x9, x9, #0x630                           ; @"ON"
  1000b6344  cmp     w0, #0
  1000b6348  csel    x2, x9, x8, ne
  1000b634c  mov     x0, x22
  1000b6350  mov     x1, x21
  1000b6354  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] detailTextLabel] setText:([[ADGameParameters sharedParameters] lastAnnouncerValue] != 0 ? @"ON" : @"OFF")]
  1000b6358  mov     x0, x23
  1000b635c  bl      _objc_release
  1000b6360  mov     x0, x22
  1000b6364  bl      _objc_release
  1000b6368  adrp    x8, #0x100416000
  1000b636c  nop
  1000b6370  ldr     x1, [x8, #0xbd0]
  1000b6374  adrp    x2, #0x1003c1000
  1000b6378  add     x2, x2, #0x670                           ; @"Double tap to toggle in-game announcements"
  1000b637c  mov     x0, x20
  1000b6380  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] setAccessibilityHint:@"Double tap to toggle in-game announcements"]
  1000b6384  adrp    x8, #0x100417000
  1000b6388  nop
  1000b638c  ldr     x1, [x8, #0x3b0]
  1000b6390  mov     x2, #0
  1000b6394  mov     x0, x20
  1000b6398  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] setSelectionStyle:0]
loc_1000b639c:
  1000b639c  adrp    x8, #0x100417000
  1000b63a0  nop
  1000b63a4  ldr     x1, [x8, #0x3b0]
  1000b63a8  mov     x2, #0
  1000b63ac  mov     x0, x20
  1000b63b0  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleSettingsCell"] setSelectionStyle:0]
  1000b63b4  mov     x0, x19
  1000b63b8  bl      _objc_release
  1000b63bc  mov     x0, x20
  1000b63c0  ldp     x29, x30, [sp, #0x30]
  1000b63c4  ldp     x20, x19, [sp, #0x20]
  1000b63c8  ldp     x22, x21, [sp, #0x10]
  1000b63cc  ldp     x24, x23, [sp], #0x40
  1000b63d0  b       _objc_autoreleaseReturnValue
  1000b63d4  mov     x21, x0
  1000b63d8  b       loc_1000b6408
  1000b63dc  mov     x21, x0
  1000b63e0  b       loc_1000b6410
  1000b63e4  mov     x21, x0
  1000b63e8  mov     x0, x23
  1000b63ec  bl      _objc_release
  1000b63f0  b       loc_1000b6400
  1000b63f4  b       loc_1000b63fc
  1000b63f8  b       loc_1000b63fc
loc_1000b63fc:
  1000b63fc  mov     x21, x0
loc_1000b6400:
  1000b6400  mov     x0, x22
  1000b6404  bl      _objc_release
loc_1000b6408:
  1000b6408  mov     x0, x20
  1000b640c  bl      _objc_release
loc_1000b6410:
  1000b6410  mov     x0, x19
  1000b6414  bl      _objc_release
  1000b6418  mov     x0, x21
  1000b641c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADControlSchemeViewController tableView]
; address 0x1000b6420  size 16  kind objc
; ======================================================================
  1000b6420  adrp    x8, #0x100420000
  1000b6424  ldrsw   x8, [x8, #0x240]                         ; ivar offset Accessible_ADControlSchemeViewController._tableView (+0x140)
  1000b6428  ldr     x0, [x0, x8]                             ; x0 = self->_tableView
  1000b642c  ret

; ======================================================================
; -[Accessible_ADControlSchemeViewController setTableView:]
; address 0x1000b6430  size 56  kind objc
; ======================================================================
  1000b6430  stp     x20, x19, [sp, #-0x20]!
  1000b6434  stp     x29, x30, [sp, #0x10]
  1000b6438  add     x29, sp, #0x10
  1000b643c  mov     x19, x0
  1000b6440  adrp    x8, #0x100420000
  1000b6444  ldrsw   x20, [x8, #0x240]                        ; ivar offset Accessible_ADControlSchemeViewController._tableView (+0x140)
  1000b6448  mov     x0, x2
  1000b644c  bl      _objc_retain
  1000b6450  ldr     x8, [x19, x20]                           ; x8 = self->_tableView
  1000b6454  str     x0, [x19, x20]                           ; self->_tableView = arg1
  1000b6458  mov     x0, x8
  1000b645c  ldp     x29, x30, [sp, #0x10]
  1000b6460  ldp     x20, x19, [sp], #0x20
  1000b6464  b       _objc_release

; ======================================================================
; -[Accessible_ADControlSchemeViewController .cxx_destruct]
; address 0x1000b6468  size 20  kind objc
; ======================================================================
  1000b6468  mov     x1, #0
  1000b646c  adrp    x8, #0x100420000
  1000b6470  ldrsw   x8, [x8, #0x240]                         ; ivar offset Accessible_ADControlSchemeViewController._tableView (+0x140)
  1000b6474  add     x0, x0, x8
  1000b6478  b       _objc_storeStrong
