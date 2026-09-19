// unit ADEnemyUnlockPopupViewController — 12 functions
//   0x100038dd8     172  -[ADEnemyUnlockPopupViewController initWithEnemyName:]
//   0x100038e84     836  -[ADEnemyUnlockPopupViewController viewDidLoad]
//   0x1000391c8      44  -[ADEnemyUnlockPopupViewController backButtonTouched:]
//   0x1000391f4       4  -[ADEnemyUnlockPopupViewController backButtonTouched:]_block_invoke
//   0x1000391f8      60  -[ADEnemyUnlockPopupViewController didReceiveMemoryWarning]
//   0x100039234      16  -[ADEnemyUnlockPopupViewController nextUnlockLabel]
//   0x100039244      56  -[ADEnemyUnlockPopupViewController setNextUnlockLabel:]
//   0x10003927c      16  -[ADEnemyUnlockPopupViewController descriptionTextView]
//   0x10003928c      56  -[ADEnemyUnlockPopupViewController setDescriptionTextView:]
//   0x1000392c4      16  -[ADEnemyUnlockPopupViewController titleLabel]
//   0x1000392d4      56  -[ADEnemyUnlockPopupViewController setTitleLabel:]
//   0x10003930c     104  -[ADEnemyUnlockPopupViewController .cxx_destruct]

; ======================================================================
; -[ADEnemyUnlockPopupViewController initWithEnemyName:]
; address 0x100038dd8  size 172  kind objc
; ======================================================================
  100038dd8  stp     x22, x21, [sp, #-0x30]!
  100038ddc  stp     x20, x19, [sp, #0x10]
  100038de0  stp     x29, x30, [sp, #0x20]
  100038de4  add     x29, sp, #0x20
  100038de8  sub     sp, sp, #0x10
  100038dec  mov     x20, x0
  100038df0  mov     x0, x2
  100038df4  bl      _objc_retain
  100038df8  mov     x19, x0
  100038dfc  str     x20, [sp]
  100038e00  adrp    x8, #0x10041e000
  100038e04  ldr     x8, [x8, #0xca0]
  100038e08  str     x8, [sp, #8]
  100038e0c  adrp    x8, #0x100416000
  100038e10  nop
  100038e14  ldr     x1, [x8, #0xb40]
  100038e18  mov     x0, sp
  100038e1c  mov     x2, #0
  100038e20  mov     x3, #0
  100038e24  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  100038e28  mov     x20, x0
  100038e2c  cbz     x20, loc_100038e50                       ; if (self == 0)
  100038e30  adrp    x8, #0x10041f000
  100038e34  ldrsw   x21, [x8, #0x874]                        ; ivar offset ADEnemyUnlockPopupViewController.enemyName (+0x140)
  100038e38  mov     x0, x19
  100038e3c  bl      _objc_retain
  100038e40  ldr     x8, [x20, x21]                           ; x8 = self->enemyName
  100038e44  str     x0, [x20, x21]                           ; self->enemyName = arg1
  100038e48  mov     x0, x8
  100038e4c  bl      _objc_release
loc_100038e50:
  100038e50  mov     x0, x19
  100038e54  bl      _objc_release
  100038e58  mov     x0, x20
  100038e5c  sub     sp, x29, #0x20
  100038e60  ldp     x29, x30, [sp, #0x20]
  100038e64  ldp     x20, x19, [sp, #0x10]
  100038e68  ldp     x22, x21, [sp], #0x30
  100038e6c  ret
  100038e70  mov     x20, x0
  100038e74  mov     x0, x19
  100038e78  bl      _objc_release
  100038e7c  mov     x0, x20
  100038e80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemyUnlockPopupViewController viewDidLoad]
; address 0x100038e84  size 836  kind objc
; ======================================================================
  100038e84  stp     x28, x27, [sp, #-0x60]!
  100038e88  stp     x26, x25, [sp, #0x10]
  100038e8c  stp     x24, x23, [sp, #0x20]
  100038e90  stp     x22, x21, [sp, #0x30]
  100038e94  stp     x20, x19, [sp, #0x40]
  100038e98  stp     x29, x30, [sp, #0x50]
  100038e9c  add     x29, sp, #0x50
  100038ea0  sub     sp, sp, #0x30
  100038ea4  mov     x21, x0
  100038ea8  str     x21, [sp, #0x20]
  100038eac  adrp    x8, #0x10041e000
  100038eb0  ldr     x8, [x8, #0xca0]
  100038eb4  str     x8, [sp, #0x28]
  100038eb8  adrp    x8, #0x100416000
  100038ebc  nop
  100038ec0  ldr     x1, [x8, #0xb48]
  100038ec4  add     x0, sp, #0x20
  100038ec8  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100038ecc  adrp    x8, #0x100416000
  100038ed0  nop
  100038ed4  ldr     x1, [x8, #0xb80]
  100038ed8  mov     x0, x21
  100038edc  bl      _objc_msgSend                            ; [self titleLabel]
  100038ee0  mov     x29, x29
  100038ee4  bl      _objc_retainAutoreleasedReturnValue
  100038ee8  mov     x19, x0
  100038eec  adrp    x26, #0x10041e000
  100038ef0  ldr     x0, [x26, #0x98]                         ; class ADBrickManager
  100038ef4  adrp    x8, #0x100417000
  100038ef8  nop
  100038efc  ldr     x22, [x8, #0xaa8]
  100038f00  mov     x1, x22
  100038f04  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100038f08  mov     x29, x29
  100038f0c  bl      _objc_retainAutoreleasedReturnValue
  100038f10  mov     x24, x0
  100038f14  adrp    x8, #0x10041f000
  100038f18  ldrsw   x8, [x8, #0x874]                         ; ivar offset ADEnemyUnlockPopupViewController.enemyName (+0x140)
  100038f1c  ldr     x2, [x21, x8]                            ; x2 = self->enemyName
  100038f20  adrp    x8, #0x100418000
  100038f24  nop
  100038f28  ldr     x23, [x8, #0x540]
  100038f2c  mov     x1, x23
  100038f30  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] displayNameForEnemyWithName:self->enemyName]
  100038f34  mov     x29, x29
  100038f38  bl      _objc_retainAutoreleasedReturnValue
  100038f3c  mov     x25, x0
  100038f40  adrp    x8, #0x100416000
  100038f44  nop
  100038f48  ldr     x20, [x8, #0xb68]
  100038f4c  mov     x0, x19
  100038f50  mov     x1, x20
  100038f54  mov     x2, x25
  100038f58  bl      _objc_msgSend                            ; [[self titleLabel] setText:[[ADBrickManager sharedBrickManager] displayNameForEnemyWithName:self->enemyName]]
  100038f5c  mov     x0, x25
  100038f60  bl      _objc_release
  100038f64  mov     x0, x24
  100038f68  bl      _objc_release
  100038f6c  mov     x0, x19
  100038f70  bl      _objc_release
  100038f74  adrp    x27, #0x10041d000
  100038f78  ldr     x0, [x27, #0xf58]                        ; class ADPersistentStats
  100038f7c  adrp    x8, #0x100416000
  100038f80  nop
  100038f84  ldr     x24, [x8, #0xe10]
  100038f88  mov     x1, x24
  100038f8c  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  100038f90  mov     x29, x29
  100038f94  bl      _objc_retainAutoreleasedReturnValue
  100038f98  mov     x25, x0
  100038f9c  adrp    x8, #0x100418000
  100038fa0  nop
  100038fa4  ldr     x1, [x8, #0x548]
  100038fa8  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] getNextUnlockEnemy]
  100038fac  mov     x29, x29
  100038fb0  bl      _objc_retainAutoreleasedReturnValue
  100038fb4  mov     x19, x0
  100038fb8  mov     x0, x25
  100038fbc  bl      _objc_release
  100038fc0  cbz     x19, loc_1000390c8                       ; if ([[ADPersistentStats persistentStats] getNextUnlockEnemy] == 0)
  100038fc4  ldr     x0, [x27, #0xf58]                        ; class ADPersistentStats
  100038fc8  mov     x1, x24
  100038fcc  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  100038fd0  mov     x29, x29
  100038fd4  bl      _objc_retainAutoreleasedReturnValue
  100038fd8  mov     x25, x0
  100038fdc  adrp    x8, #0x100418000
  100038fe0  nop
  100038fe4  ldr     x1, [x8, #0x550]
  100038fe8  mov     x2, x19
  100038fec  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] getKillRequirementForEnemyWithName:[[ADPersistentStats persistentStats] getNextUnlockEnemy]]
  100038ff0  mov     x24, x0
  100038ff4  mov     x0, x25
  100038ff8  bl      _objc_release
  100038ffc  adrp    x8, #0x100418000
  100039000  nop
  100039004  ldr     x1, [x8, #0x558]
  100039008  mov     x0, x21
  10003900c  bl      _objc_msgSend                            ; [self nextUnlockLabel]
  100039010  mov     x29, x29
  100039014  bl      _objc_retainAutoreleasedReturnValue
  100039018  mov     x21, x0
  10003901c  adrp    x8, #0x10041d000
  100039020  ldr     x25, [x8, #0xf78]                        ; class NSString
  100039024  ldr     x0, [x26, #0x98]                         ; class ADBrickManager
  100039028  mov     x1, x22
  10003902c  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100039030  mov     x29, x29
  100039034  bl      _objc_retainAutoreleasedReturnValue
  100039038  mov     x22, x0
  10003903c  mov     x1, x23
  100039040  mov     x2, x19
  100039044  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] displayNameForEnemyWithName:[[ADPersistentStats persistentStats] getNextUnlockEnemy]]
  100039048  mov     x29, x29
  10003904c  bl      _objc_retainAutoreleasedReturnValue
  100039050  mov     x23, x0
  100039054  adrp    x8, #0x1003b9000
  100039058  add     x8, x8, #0x870                           ; @""
  10003905c  adrp    x9, #0x1003bc000
  100039060  add     x9, x9, #0x530                           ; @"s"
  100039064  cmp     w24, #1
  100039068  csel    x8, x9, x8, gt                           ; t1 = ([[ADPersistentStats persistentStats] getKillRequirementForEnemyWithName:[[ADPersistentStats persistentStats] getNextUnlo… > 1 ? @"s" : @"")
  10003906c  adrp    x9, #0x100416000
  100039070  nop
  100039074  ldr     x1, [x9, #0xee8]
  100039078  stp     x24, x8, [sp, #8]
  10003907c  str     x23, [sp]
  100039080  adrp    x2, #0x1003bc000
  100039084  add     x2, x2, #0x510                           ; @"Next unlock : %@ requires %i more kill%@"
  100039088  mov     x0, x25
  10003908c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Next unlock : %@ requires %i more kill%@", [[ADBrickManager sharedBrickManager] displayNameForEnemyWithName:[[ADPersistentS…, [[ADPersistentStats persistentStats] getKillRequirementForEnemyWithName:[[ADPers…, t1]
  100039090  mov     x29, x29
  100039094  bl      _objc_retainAutoreleasedReturnValue
  100039098  mov     x24, x0
  10003909c  mov     x0, x21
  1000390a0  mov     x1, x20
  1000390a4  mov     x2, x24
  1000390a8  bl      _objc_msgSend                            ; [[self nextUnlockLabel] setText:[NSString stringWithFormat:@"Next unlock : %@ requires %i more kill%@", [[ADBrickManager sharedBrickManager] displayNameForEnemyWithName:[[ADPersistentS…, [[ADPersistentStats persistentStats] getKillRequirementForEnemyWithName:[[ADPers…, t1]]
  1000390ac  mov     x0, x24
  1000390b0  bl      _objc_release
  1000390b4  mov     x0, x23
  1000390b8  bl      _objc_release
  1000390bc  mov     x0, x22
  1000390c0  bl      _objc_release
  1000390c4  b       loc_1000390fc
loc_1000390c8:
  1000390c8  adrp    x8, #0x100418000
  1000390cc  nop
  1000390d0  ldr     x1, [x8, #0x558]
  1000390d4  mov     x0, x21
  1000390d8  bl      _objc_msgSend                            ; [self nextUnlockLabel]
  1000390dc  mov     x29, x29
  1000390e0  bl      _objc_retainAutoreleasedReturnValue
  1000390e4  mov     x21, x0
  1000390e8  adrp    x8, #0x100416000
  1000390ec  nop
  1000390f0  ldr     x1, [x8, #0xba8]
  1000390f4  mov     w2, #1
  1000390f8  bl      _objc_msgSend                            ; [[self nextUnlockLabel] setHidden:1]
loc_1000390fc:
  1000390fc  mov     x0, x21
  100039100  bl      _objc_release
  100039104  mov     x0, x19
  100039108  bl      _objc_release
  10003910c  sub     sp, x29, #0x50
  100039110  ldp     x29, x30, [sp, #0x50]
  100039114  ldp     x20, x19, [sp, #0x40]
  100039118  ldp     x22, x21, [sp, #0x30]
  10003911c  ldp     x24, x23, [sp, #0x20]
  100039120  ldp     x26, x25, [sp, #0x10]
  100039124  ldp     x28, x27, [sp], #0x60
  100039128  ret
  10003912c  b       loc_100039130
loc_100039130:
  100039130  mov     x20, x0
  100039134  b       loc_1000391b8
  100039138  mov     x20, x0
  10003913c  b       loc_10003914c
  100039140  mov     x20, x0
  100039144  mov     x0, x25
  100039148  bl      _objc_release
loc_10003914c:
  10003914c  mov     x0, x24
  100039150  bl      _objc_release
  100039154  b       loc_1000391b8
  100039158  mov     x20, x0
  10003915c  mov     x0, x25
  100039160  b       loc_1000391bc
  100039164  mov     x20, x0
  100039168  mov     x0, x25
  10003916c  bl      _objc_release
  100039170  b       loc_1000391b8
  100039174  mov     x20, x0
  100039178  b       loc_1000391b0
  10003917c  mov     x20, x0
  100039180  b       loc_1000391a0
  100039184  mov     x20, x0
  100039188  b       loc_100039198
  10003918c  mov     x20, x0
  100039190  mov     x0, x24
  100039194  bl      _objc_release
loc_100039198:
  100039198  mov     x0, x23
  10003919c  bl      _objc_release
loc_1000391a0:
  1000391a0  mov     x0, x22
  1000391a4  bl      _objc_release
  1000391a8  b       loc_1000391b0
  1000391ac  mov     x20, x0
loc_1000391b0:
  1000391b0  mov     x0, x21
  1000391b4  bl      _objc_release
loc_1000391b8:
  1000391b8  mov     x0, x19
loc_1000391bc:
  1000391bc  bl      _objc_release
  1000391c0  mov     x0, x20
  1000391c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemyUnlockPopupViewController backButtonTouched:]
; address 0x1000391c8  size 44  kind objc
; ======================================================================
  1000391c8  stp     x29, x30, [sp, #-0x10]!
  1000391cc  mov     x29, sp
  1000391d0  adrp    x8, #0x100417000
  1000391d4  nop
  1000391d8  ldr     x1, [x8, #0x420]
  1000391dc  mov     w2, #0
  1000391e0  adrp    x3, #0x1003b1000
  1000391e4  add     x3, x3, #0x550                           ; ^{-[ADEnemyUnlockPopupViewController backButtonTouched:]_block_invoke}
  1000391e8  bl      _objc_msgSend                            ; [self dismissViewControllerAnimated:0 completion:^{-[ADEnemyUnlockPopupViewController backButtonTouched:]_block_invoke}]
  1000391ec  ldp     x29, x30, [sp], #0x10
  1000391f0  ret

; ======================================================================
; -[ADEnemyUnlockPopupViewController backButtonTouched:]_block_invoke
; address 0x1000391f4  size 4  kind block
; ======================================================================
  1000391f4  ret

; ======================================================================
; -[ADEnemyUnlockPopupViewController didReceiveMemoryWarning]
; address 0x1000391f8  size 60  kind objc
; ======================================================================
  1000391f8  stp     x29, x30, [sp, #-0x10]!
  1000391fc  mov     x29, sp
  100039200  sub     sp, sp, #0x10
  100039204  str     x0, [sp]
  100039208  adrp    x8, #0x10041e000
  10003920c  ldr     x8, [x8, #0xca0]
  100039210  str     x8, [sp, #8]
  100039214  adrp    x8, #0x100416000
  100039218  nop
  10003921c  ldr     x1, [x8, #0xbf8]
  100039220  mov     x0, sp
  100039224  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  100039228  mov     sp, x29
  10003922c  ldp     x29, x30, [sp], #0x10
  100039230  ret

; ======================================================================
; -[ADEnemyUnlockPopupViewController nextUnlockLabel]
; address 0x100039234  size 16  kind objc
; ======================================================================
  100039234  adrp    x8, #0x10041f000
  100039238  ldrsw   x8, [x8, #0x878]                         ; ivar offset ADEnemyUnlockPopupViewController._nextUnlockLabel (+0x148)
  10003923c  ldr     x0, [x0, x8]                             ; x0 = self->_nextUnlockLabel
  100039240  ret

; ======================================================================
; -[ADEnemyUnlockPopupViewController setNextUnlockLabel:]
; address 0x100039244  size 56  kind objc
; ======================================================================
  100039244  stp     x20, x19, [sp, #-0x20]!
  100039248  stp     x29, x30, [sp, #0x10]
  10003924c  add     x29, sp, #0x10
  100039250  mov     x19, x0
  100039254  adrp    x8, #0x10041f000
  100039258  ldrsw   x20, [x8, #0x878]                        ; ivar offset ADEnemyUnlockPopupViewController._nextUnlockLabel (+0x148)
  10003925c  mov     x0, x2
  100039260  bl      _objc_retain
  100039264  ldr     x8, [x19, x20]                           ; x8 = self->_nextUnlockLabel
  100039268  str     x0, [x19, x20]                           ; self->_nextUnlockLabel = arg1
  10003926c  mov     x0, x8
  100039270  ldp     x29, x30, [sp, #0x10]
  100039274  ldp     x20, x19, [sp], #0x20
  100039278  b       _objc_release

; ======================================================================
; -[ADEnemyUnlockPopupViewController descriptionTextView]
; address 0x10003927c  size 16  kind objc
; ======================================================================
  10003927c  adrp    x8, #0x10041f000
  100039280  ldrsw   x8, [x8, #0x87c]                         ; ivar offset ADEnemyUnlockPopupViewController._descriptionTextView (+0x150)
  100039284  ldr     x0, [x0, x8]                             ; x0 = self->_descriptionTextView
  100039288  ret

; ======================================================================
; -[ADEnemyUnlockPopupViewController setDescriptionTextView:]
; address 0x10003928c  size 56  kind objc
; ======================================================================
  10003928c  stp     x20, x19, [sp, #-0x20]!
  100039290  stp     x29, x30, [sp, #0x10]
  100039294  add     x29, sp, #0x10
  100039298  mov     x19, x0
  10003929c  adrp    x8, #0x10041f000
  1000392a0  ldrsw   x20, [x8, #0x87c]                        ; ivar offset ADEnemyUnlockPopupViewController._descriptionTextView (+0x150)
  1000392a4  mov     x0, x2
  1000392a8  bl      _objc_retain
  1000392ac  ldr     x8, [x19, x20]                           ; x8 = self->_descriptionTextView
  1000392b0  str     x0, [x19, x20]                           ; self->_descriptionTextView = arg1
  1000392b4  mov     x0, x8
  1000392b8  ldp     x29, x30, [sp, #0x10]
  1000392bc  ldp     x20, x19, [sp], #0x20
  1000392c0  b       _objc_release

; ======================================================================
; -[ADEnemyUnlockPopupViewController titleLabel]
; address 0x1000392c4  size 16  kind objc
; ======================================================================
  1000392c4  adrp    x8, #0x10041f000
  1000392c8  ldrsw   x8, [x8, #0x880]                         ; ivar offset ADEnemyUnlockPopupViewController._titleLabel (+0x158)
  1000392cc  ldr     x0, [x0, x8]                             ; x0 = self->_titleLabel
  1000392d0  ret

; ======================================================================
; -[ADEnemyUnlockPopupViewController setTitleLabel:]
; address 0x1000392d4  size 56  kind objc
; ======================================================================
  1000392d4  stp     x20, x19, [sp, #-0x20]!
  1000392d8  stp     x29, x30, [sp, #0x10]
  1000392dc  add     x29, sp, #0x10
  1000392e0  mov     x19, x0
  1000392e4  adrp    x8, #0x10041f000
  1000392e8  ldrsw   x20, [x8, #0x880]                        ; ivar offset ADEnemyUnlockPopupViewController._titleLabel (+0x158)
  1000392ec  mov     x0, x2
  1000392f0  bl      _objc_retain
  1000392f4  ldr     x8, [x19, x20]                           ; x8 = self->_titleLabel
  1000392f8  str     x0, [x19, x20]                           ; self->_titleLabel = arg1
  1000392fc  mov     x0, x8
  100039300  ldp     x29, x30, [sp, #0x10]
  100039304  ldp     x20, x19, [sp], #0x20
  100039308  b       _objc_release

; ======================================================================
; -[ADEnemyUnlockPopupViewController .cxx_destruct]
; address 0x10003930c  size 104  kind objc
; ======================================================================
  10003930c  stp     x20, x19, [sp, #-0x20]!
  100039310  stp     x29, x30, [sp, #0x10]
  100039314  add     x29, sp, #0x10
  100039318  mov     x19, x0
  10003931c  adrp    x8, #0x10041f000
  100039320  ldrsw   x8, [x8, #0x880]                         ; ivar offset ADEnemyUnlockPopupViewController._titleLabel (+0x158)
  100039324  add     x0, x19, x8
  100039328  mov     x1, #0
  10003932c  bl      _objc_storeStrong
  100039330  adrp    x8, #0x10041f000
  100039334  ldrsw   x8, [x8, #0x87c]                         ; ivar offset ADEnemyUnlockPopupViewController._descriptionTextView (+0x150)
  100039338  add     x0, x19, x8
  10003933c  mov     x1, #0
  100039340  bl      _objc_storeStrong
  100039344  adrp    x8, #0x10041f000
  100039348  ldrsw   x8, [x8, #0x878]                         ; ivar offset ADEnemyUnlockPopupViewController._nextUnlockLabel (+0x148)
  10003934c  add     x0, x19, x8
  100039350  mov     x1, #0
  100039354  bl      _objc_storeStrong
  100039358  mov     x1, #0
  10003935c  adrp    x8, #0x10041f000
  100039360  ldrsw   x8, [x8, #0x874]                         ; ivar offset ADEnemyUnlockPopupViewController.enemyName (+0x140)
  100039364  add     x0, x19, x8
  100039368  ldp     x29, x30, [sp, #0x10]
  10003936c  ldp     x20, x19, [sp], #0x20
  100039370  b       _objc_storeStrong
