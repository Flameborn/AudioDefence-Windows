// unit ADChallengeBuyWeaponViewController — 13 functions
//   0x1000202b0     172  -[ADChallengeBuyWeaponViewController initWithweaponName:]
//   0x10002035c    1052  -[ADChallengeBuyWeaponViewController viewDidLoad]
//   0x100020778      60  -[ADChallengeBuyWeaponViewController didReceiveMemoryWarning]
//   0x1000207b4     128  -[ADChallengeBuyWeaponViewController buttonPressed:]
//   0x100020834      16  -[ADChallengeBuyWeaponViewController weaponDict]
//   0x100020844      56  -[ADChallengeBuyWeaponViewController setWeaponDict:]
//   0x10002087c      16  -[ADChallengeBuyWeaponViewController weaponButton]
//   0x10002088c      56  -[ADChallengeBuyWeaponViewController setWeaponButton:]
//   0x1000208c4      16  -[ADChallengeBuyWeaponViewController coinButton]
//   0x1000208d4      56  -[ADChallengeBuyWeaponViewController setCoinButton:]
//   0x10002090c      32  -[ADChallengeBuyWeaponViewController challengeLockedViewController]
//   0x10002092c      20  -[ADChallengeBuyWeaponViewController setChallengeLockedViewController:]
//   0x100020940     120  -[ADChallengeBuyWeaponViewController .cxx_destruct]

; ======================================================================
; -[ADChallengeBuyWeaponViewController initWithweaponName:]
; address 0x1000202b0  size 172  kind objc
; ======================================================================
  1000202b0  stp     x22, x21, [sp, #-0x30]!
  1000202b4  stp     x20, x19, [sp, #0x10]
  1000202b8  stp     x29, x30, [sp, #0x20]
  1000202bc  add     x29, sp, #0x20
  1000202c0  sub     sp, sp, #0x10
  1000202c4  mov     x20, x0
  1000202c8  mov     x0, x2
  1000202cc  bl      _objc_retain
  1000202d0  mov     x19, x0
  1000202d4  str     x20, [sp]
  1000202d8  adrp    x8, #0x10041e000
  1000202dc  ldr     x8, [x8, #0xc38]
  1000202e0  str     x8, [sp, #8]
  1000202e4  adrp    x8, #0x100416000
  1000202e8  nop
  1000202ec  ldr     x1, [x8, #0xb40]
  1000202f0  mov     x0, sp
  1000202f4  mov     x2, #0
  1000202f8  mov     x3, #0
  1000202fc  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  100020300  mov     x20, x0
  100020304  cbz     x20, loc_100020328                       ; if (self == 0)
  100020308  adrp    x8, #0x10041f000
  10002030c  ldrsw   x21, [x8, #0x6b4]                        ; ivar offset ADChallengeBuyWeaponViewController.weaponName (+0x140)
  100020310  mov     x0, x19
  100020314  bl      _objc_retain
  100020318  ldr     x8, [x20, x21]                           ; x8 = self->weaponName
  10002031c  str     x0, [x20, x21]                           ; self->weaponName = arg1
  100020320  mov     x0, x8
  100020324  bl      _objc_release
loc_100020328:
  100020328  mov     x0, x19
  10002032c  bl      _objc_release
  100020330  mov     x0, x20
  100020334  sub     sp, x29, #0x20
  100020338  ldp     x29, x30, [sp, #0x20]
  10002033c  ldp     x20, x19, [sp, #0x10]
  100020340  ldp     x22, x21, [sp], #0x30
  100020344  ret
  100020348  mov     x20, x0
  10002034c  mov     x0, x19
  100020350  bl      _objc_release
  100020354  mov     x0, x20
  100020358  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeBuyWeaponViewController viewDidLoad]
; address 0x10002035c  size 1052  kind objc
; ======================================================================
  10002035c  stp     x28, x27, [sp, #-0x60]!
  100020360  stp     x26, x25, [sp, #0x10]
  100020364  stp     x24, x23, [sp, #0x20]
  100020368  stp     x22, x21, [sp, #0x30]
  10002036c  stp     x20, x19, [sp, #0x40]
  100020370  stp     x29, x30, [sp, #0x50]
  100020374  add     x29, sp, #0x50
  100020378  sub     sp, sp, #0x20
  10002037c  mov     x19, x0
  100020380  str     x19, [sp, #0x10]
  100020384  adrp    x8, #0x10041e000
  100020388  ldr     x8, [x8, #0xc38]
  10002038c  str     x8, [sp, #0x18]
  100020390  adrp    x8, #0x100416000
  100020394  nop
  100020398  ldr     x1, [x8, #0xb48]
  10002039c  add     x0, sp, #0x10
  1000203a0  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000203a4  adrp    x8, #0x100417000
  1000203a8  nop
  1000203ac  ldr     x1, [x8, #0x2a8]
  1000203b0  mov     x0, x19
  1000203b4  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000203b8  mov     x29, x29
  1000203bc  bl      _objc_retainAutoreleasedReturnValue
  1000203c0  mov     x20, x0
  1000203c4  adrp    x8, #0x100417000
  1000203c8  nop
  1000203cc  ldr     x1, [x8, #0x2c8]
  1000203d0  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  1000203d4  mov     x29, x29
  1000203d8  bl      _objc_retainAutoreleasedReturnValue
  1000203dc  mov     x21, x0
  1000203e0  adrp    x8, #0x100416000
  1000203e4  nop
  1000203e8  ldr     x1, [x8, #0xb68]
  1000203ec  adrp    x2, #0x1003ba000
  1000203f0  add     x2, x2, #0xeb0                           ; @"Challenge locked"
  1000203f4  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"Challenge locked"]
  1000203f8  mov     x0, x21
  1000203fc  bl      _objc_release
  100020400  mov     x0, x20
  100020404  bl      _objc_release
  100020408  adrp    x8, #0x100417000
  10002040c  nop
  100020410  ldr     x20, [x8, #0x210]
  100020414  mov     x0, x19
  100020418  mov     x1, x20
  10002041c  bl      _objc_msgSend                            ; [self coinButton]
  100020420  mov     x29, x29
  100020424  bl      _objc_retainAutoreleasedReturnValue
  100020428  mov     x23, x0
  10002042c  adrp    x8, #0x100417000
  100020430  nop
  100020434  ldr     x21, [x8, #0xa40]
  100020438  adrp    x8, #0x100417000
  10002043c  nop
  100020440  ldr     x22, [x8, #0x7d0]
  100020444  mov     w4, #0x40
  100020448  mov     x1, x22
  10002044c  mov     x2, x19
  100020450  mov     x3, x21
  100020454  bl      _objc_msgSend                            ; [[self coinButton] addTarget:self action:@selector(buttonPressed:) forControlEvents:64]
  100020458  mov     x0, x23
  10002045c  bl      _objc_release
  100020460  adrp    x26, #0x10041d000
  100020464  ldr     x0, [x26, #0xf88]                        ; class ADWeaponManager
  100020468  adrp    x8, #0x100417000
  10002046c  nop
  100020470  ldr     x23, [x8, #0xa0]
  100020474  mov     x1, x23
  100020478  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10002047c  mov     x29, x29
  100020480  bl      _objc_retainAutoreleasedReturnValue
  100020484  mov     x24, x0
  100020488  adrp    x8, #0x10041f000
  10002048c  ldrsw   x27, [x8, #0x6b4]                        ; ivar offset ADChallengeBuyWeaponViewController.weaponName (+0x140)
  100020490  ldr     x2, [x19, x27]                           ; x2 = self->weaponName
  100020494  adrp    x8, #0x100417000
  100020498  nop
  10002049c  ldr     x1, [x8, #0xa48]
  1000204a0  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:self->weaponName]
  1000204a4  mov     x29, x29
  1000204a8  bl      _objc_retainAutoreleasedReturnValue
  1000204ac  mov     x25, x0
  1000204b0  adrp    x8, #0x100417000
  1000204b4  nop
  1000204b8  ldr     x1, [x8, #0xa50]
  1000204bc  mov     x0, x19
  1000204c0  mov     x2, x25
  1000204c4  bl      _objc_msgSend                            ; [self setWeaponDict:[[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:self->weaponName]]
  1000204c8  mov     x0, x25
  1000204cc  bl      _objc_release
  1000204d0  mov     x0, x24
  1000204d4  bl      _objc_release
  1000204d8  adrp    x8, #0x100417000
  1000204dc  nop
  1000204e0  ldr     x24, [x8, #0xa58]
  1000204e4  mov     x0, x19
  1000204e8  mov     x1, x24
  1000204ec  bl      _objc_msgSend                            ; [self weaponButton]
  1000204f0  mov     x29, x29
  1000204f4  bl      _objc_retainAutoreleasedReturnValue
  1000204f8  mov     x25, x0
  1000204fc  ldr     x0, [x26, #0xf88]                        ; class ADWeaponManager
  100020500  mov     x1, x23
  100020504  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100020508  mov     x29, x29
  10002050c  bl      _objc_retainAutoreleasedReturnValue
  100020510  mov     x26, x0
  100020514  ldr     x2, [x19, x27]                           ; x2 = self->weaponName
  100020518  adrp    x8, #0x100417000
  10002051c  nop
  100020520  ldr     x1, [x8, #0x1f0]
  100020524  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:self->weaponName]
  100020528  mov     x29, x29
  10002052c  bl      _objc_retainAutoreleasedReturnValue
  100020530  mov     x27, x0
  100020534  adrp    x8, #0x100417000
  100020538  nop
  10002053c  ldr     x23, [x8, #0x920]
  100020540  mov     x3, #0
  100020544  mov     x0, x25
  100020548  mov     x1, x23
  10002054c  mov     x2, x27
  100020550  bl      _objc_msgSend                            ; [[self weaponButton] setTitle:[[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:self->weaponName] forState:0]
  100020554  mov     x0, x27
  100020558  bl      _objc_release
  10002055c  mov     x0, x26
  100020560  bl      _objc_release
  100020564  mov     x0, x25
  100020568  bl      _objc_release
  10002056c  mov     x0, x19
  100020570  mov     x1, x24
  100020574  bl      _objc_msgSend                            ; [self weaponButton]
  100020578  mov     x29, x29
  10002057c  bl      _objc_retainAutoreleasedReturnValue
  100020580  mov     x25, x0
  100020584  mov     w4, #0x40
  100020588  mov     x1, x22
  10002058c  mov     x2, x19
  100020590  mov     x3, x21
  100020594  bl      _objc_msgSend                            ; [[self weaponButton] addTarget:self action:@selector(buttonPressed:) forControlEvents:64]
  100020598  mov     x0, x25
  10002059c  bl      _objc_release
  1000205a0  mov     x0, x19
  1000205a4  mov     x1, x24
  1000205a8  bl      _objc_msgSend                            ; [self weaponButton]
  1000205ac  mov     x29, x29
  1000205b0  bl      _objc_retainAutoreleasedReturnValue
  1000205b4  mov     x21, x0
  1000205b8  adrp    x8, #0x100416000
  1000205bc  nop
  1000205c0  ldr     x1, [x8, #0xbd0]
  1000205c4  adrp    x2, #0x1003ba000
  1000205c8  add     x2, x2, #0xed0                           ; @"Double tap to view this item in armory"
  1000205cc  bl      _objc_msgSend                            ; [[self weaponButton] setAccessibilityHint:@"Double tap to view this item in armory"]
  1000205d0  mov     x0, x21
  1000205d4  bl      _objc_release
  1000205d8  adrp    x8, #0x10041d000
  1000205dc  ldr     x22, [x8, #0xf78]                        ; class NSString
  1000205e0  adrp    x8, #0x100417000
  1000205e4  nop
  1000205e8  ldr     x1, [x8, #0x220]
  1000205ec  mov     x0, x19
  1000205f0  bl      _objc_msgSend                            ; [self weaponDict]
  1000205f4  mov     x29, x29
  1000205f8  bl      _objc_retainAutoreleasedReturnValue
  1000205fc  mov     x21, x0
  100020600  adrp    x8, #0x100417000
  100020604  nop
  100020608  ldr     x1, [x8, #0x40]
  10002060c  adrp    x2, #0x1003b9000
  100020610  add     x2, x2, #0xd70                           ; @"price"
  100020614  bl      _objc_msgSend                            ; [[self weaponDict] objectForKey:@"price"]
  100020618  mov     x29, x29
  10002061c  bl      _objc_retainAutoreleasedReturnValue
  100020620  mov     x24, x0
  100020624  adrp    x8, #0x100416000
  100020628  nop
  10002062c  ldr     x1, [x8, #0xee8]
  100020630  str     x24, [sp]
  100020634  adrp    x2, #0x1003ba000
  100020638  add     x2, x2, #0x190                           ; @"%@"
  10002063c  mov     x0, x22
  100020640  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@", [[self weaponDict] objectForKey:@"price"]]
  100020644  mov     x29, x29
  100020648  bl      _objc_retainAutoreleasedReturnValue
  10002064c  mov     x22, x0
  100020650  mov     x0, x24
  100020654  bl      _objc_release
  100020658  mov     x0, x21
  10002065c  bl      _objc_release
  100020660  mov     x0, x19
  100020664  mov     x1, x20
  100020668  bl      _objc_msgSend                            ; [self coinButton]
  10002066c  mov     x29, x29
  100020670  bl      _objc_retainAutoreleasedReturnValue
  100020674  mov     x20, x0
  100020678  mov     x3, #0
  10002067c  mov     x1, x23
  100020680  mov     x2, x22
  100020684  bl      _objc_msgSend                            ; [[self coinButton] setTitle:[NSString stringWithFormat:@"%@", [[self weaponDict] objectForKey:@"price"]] forState:0]
  100020688  mov     x0, x20
  10002068c  bl      _objc_release
  100020690  mov     x0, x22
  100020694  bl      _objc_release
  100020698  sub     sp, x29, #0x50
  10002069c  ldp     x29, x30, [sp, #0x50]
  1000206a0  ldp     x20, x19, [sp, #0x40]
  1000206a4  ldp     x22, x21, [sp, #0x30]
  1000206a8  ldp     x24, x23, [sp, #0x20]
  1000206ac  ldp     x26, x25, [sp, #0x10]
  1000206b0  ldp     x28, x27, [sp], #0x60
  1000206b4  ret
  1000206b8  mov     x19, x0
  1000206bc  b       loc_1000206cc
  1000206c0  mov     x19, x0
  1000206c4  mov     x0, x21
  1000206c8  bl      _objc_release
loc_1000206cc:
  1000206cc  mov     x0, x20
  1000206d0  b       loc_10002076c
  1000206d4  mov     x19, x0
  1000206d8  mov     x0, x23
  1000206dc  b       loc_10002076c
  1000206e0  mov     x19, x0
  1000206e4  b       loc_1000206f4
  1000206e8  mov     x19, x0
  1000206ec  mov     x0, x25
  1000206f0  bl      _objc_release
loc_1000206f4:
  1000206f4  mov     x0, x24
  1000206f8  b       loc_10002076c
  1000206fc  mov     x19, x0
  100020700  b       loc_100020728
  100020704  mov     x19, x0
  100020708  b       loc_100020718
  10002070c  mov     x19, x0
  100020710  mov     x0, x27
  100020714  bl      _objc_release
loc_100020718:
  100020718  mov     x0, x26
  10002071c  bl      _objc_release
  100020720  b       loc_100020728
  100020724  mov     x19, x0
loc_100020728:
  100020728  mov     x0, x25
  10002072c  b       loc_10002076c
  100020730  mov     x19, x0
  100020734  b       loc_10002074c
  100020738  mov     x19, x0
  10002073c  b       loc_10002074c
  100020740  mov     x19, x0
  100020744  mov     x0, x24
  100020748  bl      _objc_release
loc_10002074c:
  10002074c  mov     x0, x21
  100020750  b       loc_10002076c
  100020754  mov     x19, x0
  100020758  b       loc_100020768
  10002075c  mov     x19, x0
  100020760  mov     x0, x20
  100020764  bl      _objc_release
loc_100020768:
  100020768  mov     x0, x22
loc_10002076c:
  10002076c  bl      _objc_release
  100020770  mov     x0, x19
  100020774  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeBuyWeaponViewController didReceiveMemoryWarning]
; address 0x100020778  size 60  kind objc
; ======================================================================
  100020778  stp     x29, x30, [sp, #-0x10]!
  10002077c  mov     x29, sp
  100020780  sub     sp, sp, #0x10
  100020784  str     x0, [sp]
  100020788  adrp    x8, #0x10041e000
  10002078c  ldr     x8, [x8, #0xc38]
  100020790  str     x8, [sp, #8]
  100020794  adrp    x8, #0x100416000
  100020798  nop
  10002079c  ldr     x1, [x8, #0xbf8]
  1000207a0  mov     x0, sp
  1000207a4  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000207a8  mov     sp, x29
  1000207ac  ldp     x29, x30, [sp], #0x10
  1000207b0  ret

; ======================================================================
; -[ADChallengeBuyWeaponViewController buttonPressed:]
; address 0x1000207b4  size 128  kind objc
; ======================================================================
  1000207b4  stp     x20, x19, [sp, #-0x20]!
  1000207b8  stp     x29, x30, [sp, #0x10]
  1000207bc  add     x29, sp, #0x10
  1000207c0  mov     x20, x0
  1000207c4  adrp    x8, #0x100417000
  1000207c8  nop
  1000207cc  ldr     x1, [x8, #0xa60]
  1000207d0  bl      _objc_msgSend                            ; [self challengeLockedViewController]
  1000207d4  mov     x29, x29
  1000207d8  bl      _objc_retainAutoreleasedReturnValue
  1000207dc  mov     x19, x0
  1000207e0  adrp    x8, #0x100417000
  1000207e4  nop
  1000207e8  ldr     x2, [x8, #0xa68]
  1000207ec  adrp    x8, #0x10041f000
  1000207f0  ldrsw   x8, [x8, #0x6b4]                         ; ivar offset ADChallengeBuyWeaponViewController.weaponName (+0x140)
  1000207f4  ldr     x3, [x20, x8]                            ; x3 = self->weaponName
  1000207f8  adrp    x8, #0x100417000
  1000207fc  nop
  100020800  ldr     x1, [x8, #0xa70]
  100020804  bl      _objc_msgSend                            ; [[self challengeLockedViewController] performSelector:@selector(showWeaponInArmory:) withObject:self->weaponName]
  100020808  mov     x0, x19
  10002080c  ldp     x29, x30, [sp, #0x10]
  100020810  ldp     x20, x19, [sp], #0x20
  100020814  b       _objc_release
  100020818  mov     x20, x0
  10002081c  b       loc_10002082c
  100020820  mov     x20, x0
  100020824  mov     x0, x19
  100020828  bl      _objc_release
loc_10002082c:
  10002082c  mov     x0, x20
  100020830  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeBuyWeaponViewController weaponDict]
; address 0x100020834  size 16  kind objc
; ======================================================================
  100020834  adrp    x8, #0x10041f000
  100020838  ldrsw   x8, [x8, #0x6b8]                         ; ivar offset ADChallengeBuyWeaponViewController._weaponDict (+0x148)
  10002083c  ldr     x0, [x0, x8]                             ; x0 = self->_weaponDict
  100020840  ret

; ======================================================================
; -[ADChallengeBuyWeaponViewController setWeaponDict:]
; address 0x100020844  size 56  kind objc
; ======================================================================
  100020844  stp     x20, x19, [sp, #-0x20]!
  100020848  stp     x29, x30, [sp, #0x10]
  10002084c  add     x29, sp, #0x10
  100020850  mov     x19, x0
  100020854  adrp    x8, #0x10041f000
  100020858  ldrsw   x20, [x8, #0x6b8]                        ; ivar offset ADChallengeBuyWeaponViewController._weaponDict (+0x148)
  10002085c  mov     x0, x2
  100020860  bl      _objc_retain
  100020864  ldr     x8, [x19, x20]                           ; x8 = self->_weaponDict
  100020868  str     x0, [x19, x20]                           ; self->_weaponDict = arg1
  10002086c  mov     x0, x8
  100020870  ldp     x29, x30, [sp, #0x10]
  100020874  ldp     x20, x19, [sp], #0x20
  100020878  b       _objc_release

; ======================================================================
; -[ADChallengeBuyWeaponViewController weaponButton]
; address 0x10002087c  size 16  kind objc
; ======================================================================
  10002087c  adrp    x8, #0x10041f000
  100020880  ldrsw   x8, [x8, #0x6bc]                         ; ivar offset ADChallengeBuyWeaponViewController._weaponButton (+0x150)
  100020884  ldr     x0, [x0, x8]                             ; x0 = self->_weaponButton
  100020888  ret

; ======================================================================
; -[ADChallengeBuyWeaponViewController setWeaponButton:]
; address 0x10002088c  size 56  kind objc
; ======================================================================
  10002088c  stp     x20, x19, [sp, #-0x20]!
  100020890  stp     x29, x30, [sp, #0x10]
  100020894  add     x29, sp, #0x10
  100020898  mov     x19, x0
  10002089c  adrp    x8, #0x10041f000
  1000208a0  ldrsw   x20, [x8, #0x6bc]                        ; ivar offset ADChallengeBuyWeaponViewController._weaponButton (+0x150)
  1000208a4  mov     x0, x2
  1000208a8  bl      _objc_retain
  1000208ac  ldr     x8, [x19, x20]                           ; x8 = self->_weaponButton
  1000208b0  str     x0, [x19, x20]                           ; self->_weaponButton = arg1
  1000208b4  mov     x0, x8
  1000208b8  ldp     x29, x30, [sp, #0x10]
  1000208bc  ldp     x20, x19, [sp], #0x20
  1000208c0  b       _objc_release

; ======================================================================
; -[ADChallengeBuyWeaponViewController coinButton]
; address 0x1000208c4  size 16  kind objc
; ======================================================================
  1000208c4  adrp    x8, #0x10041f000
  1000208c8  ldrsw   x8, [x8, #0x6c0]                         ; ivar offset ADChallengeBuyWeaponViewController._coinButton (+0x158)
  1000208cc  ldr     x0, [x0, x8]                             ; x0 = self->_coinButton
  1000208d0  ret

; ======================================================================
; -[ADChallengeBuyWeaponViewController setCoinButton:]
; address 0x1000208d4  size 56  kind objc
; ======================================================================
  1000208d4  stp     x20, x19, [sp, #-0x20]!
  1000208d8  stp     x29, x30, [sp, #0x10]
  1000208dc  add     x29, sp, #0x10
  1000208e0  mov     x19, x0
  1000208e4  adrp    x8, #0x10041f000
  1000208e8  ldrsw   x20, [x8, #0x6c0]                        ; ivar offset ADChallengeBuyWeaponViewController._coinButton (+0x158)
  1000208ec  mov     x0, x2
  1000208f0  bl      _objc_retain
  1000208f4  ldr     x8, [x19, x20]                           ; x8 = self->_coinButton
  1000208f8  str     x0, [x19, x20]                           ; self->_coinButton = arg1
  1000208fc  mov     x0, x8
  100020900  ldp     x29, x30, [sp, #0x10]
  100020904  ldp     x20, x19, [sp], #0x20
  100020908  b       _objc_release

; ======================================================================
; -[ADChallengeBuyWeaponViewController challengeLockedViewController]
; address 0x10002090c  size 32  kind objc
; ======================================================================
  10002090c  stp     x29, x30, [sp, #-0x10]!
  100020910  mov     x29, sp
  100020914  adrp    x8, #0x10041f000
  100020918  ldrsw   x8, [x8, #0x6c4]                         ; ivar offset ADChallengeBuyWeaponViewController._challengeLockedViewController (+0x160)
  10002091c  add     x0, x0, x8
  100020920  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100020924  ldp     x29, x30, [sp], #0x10
  100020928  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADChallengeBuyWeaponViewController setChallengeLockedViewController:]
; address 0x10002092c  size 20  kind objc
; ======================================================================
  10002092c  adrp    x8, #0x10041f000
  100020930  ldrsw   x8, [x8, #0x6c4]                         ; ivar offset ADChallengeBuyWeaponViewController._challengeLockedViewController (+0x160)
  100020934  add     x0, x0, x8
  100020938  mov     x1, x2
  10002093c  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADChallengeBuyWeaponViewController .cxx_destruct]
; address 0x100020940  size 120  kind objc
; ======================================================================
  100020940  stp     x20, x19, [sp, #-0x20]!
  100020944  stp     x29, x30, [sp, #0x10]
  100020948  add     x29, sp, #0x10
  10002094c  mov     x19, x0
  100020950  adrp    x8, #0x10041f000
  100020954  ldrsw   x8, [x8, #0x6c4]                         ; ivar offset ADChallengeBuyWeaponViewController._challengeLockedViewController (+0x160)
  100020958  add     x0, x19, x8
  10002095c  bl      _objc_destroyWeak
  100020960  adrp    x8, #0x10041f000
  100020964  ldrsw   x8, [x8, #0x6c0]                         ; ivar offset ADChallengeBuyWeaponViewController._coinButton (+0x158)
  100020968  add     x0, x19, x8
  10002096c  mov     x1, #0
  100020970  bl      _objc_storeStrong
  100020974  adrp    x8, #0x10041f000
  100020978  ldrsw   x8, [x8, #0x6bc]                         ; ivar offset ADChallengeBuyWeaponViewController._weaponButton (+0x150)
  10002097c  add     x0, x19, x8
  100020980  mov     x1, #0
  100020984  bl      _objc_storeStrong
  100020988  adrp    x8, #0x10041f000
  10002098c  ldrsw   x8, [x8, #0x6b8]                         ; ivar offset ADChallengeBuyWeaponViewController._weaponDict (+0x148)
  100020990  add     x0, x19, x8
  100020994  mov     x1, #0
  100020998  bl      _objc_storeStrong
  10002099c  mov     x1, #0
  1000209a0  adrp    x8, #0x10041f000
  1000209a4  ldrsw   x8, [x8, #0x6b4]                         ; ivar offset ADChallengeBuyWeaponViewController.weaponName (+0x140)
  1000209a8  add     x0, x19, x8
  1000209ac  ldp     x29, x30, [sp, #0x10]
  1000209b0  ldp     x20, x19, [sp], #0x20
  1000209b4  b       _objc_storeStrong
