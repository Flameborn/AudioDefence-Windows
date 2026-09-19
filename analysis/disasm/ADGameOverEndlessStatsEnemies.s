// unit ADGameOverEndlessStatsEnemies — 18 functions
//   0x1000db900      60  -[ADGameOverEndlessStatsEnemies initWithFrame:]
//   0x1000db93c     732  -[ADGameOverEndlessStatsEnemies awakeFromNib]
//   0x1000dbc18    2240  -[ADGameOverEndlessStatsEnemies populateViewWithEnemyData:]
//   0x1000dc4d8     892  -[ADGameOverEndlessStatsEnemies drawRect:]
//   0x1000dc854      64  -[ADGameOverEndlessStatsEnemies scrollViewFrame]
//   0x1000dc894      64  -[ADGameOverEndlessStatsEnemies setScrollViewFrame:]
//   0x1000dc8d4      16  -[ADGameOverEndlessStatsEnemies labelTags]
//   0x1000dc8e4      12  -[ADGameOverEndlessStatsEnemies setLabelTags:]
//   0x1000dc8f0      16  -[ADGameOverEndlessStatsEnemies labelTagAnimationTriggers]
//   0x1000dc900      12  -[ADGameOverEndlessStatsEnemies setLabelTagAnimationTriggers:]
//   0x1000dc90c      16  -[ADGameOverEndlessStatsEnemies contentView]
//   0x1000dc91c      12  -[ADGameOverEndlessStatsEnemies setContentView:]
//   0x1000dc928      20  -[ADGameOverEndlessStatsEnemies contentViewWidth]
//   0x1000dc93c      20  -[ADGameOverEndlessStatsEnemies setContentViewWidth:]
//   0x1000dc950      20  -[ADGameOverEndlessStatsEnemies contentViewHeight]
//   0x1000dc964      20  -[ADGameOverEndlessStatsEnemies setContentViewHeight:]
//   0x1000dc978      84  -[ADGameOverEndlessStatsEnemies .cxx_destruct]
//   0x1000dc9cc       4  -[ADGameOverEndlessStatsEnemies .cxx_construct]

; ======================================================================
; -[ADGameOverEndlessStatsEnemies initWithFrame:]
; address 0x1000db900  size 60  kind objc
; ======================================================================
  1000db900  stp     x29, x30, [sp, #-0x10]!
  1000db904  mov     x29, sp
  1000db908  sub     sp, sp, #0x10
  1000db90c  str     x0, [sp]
  1000db910  adrp    x8, #0x10041f000
  1000db914  ldr     x8, [x8, #0x20]
  1000db918  str     x8, [sp, #8]
  1000db91c  adrp    x8, #0x100417000
  1000db920  nop
  1000db924  ldr     x1, [x8, #0x178]
  1000db928  mov     x0, sp
  1000db92c  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  1000db930  mov     sp, x29
  1000db934  ldp     x29, x30, [sp], #0x10
  1000db938  ret

; ======================================================================
; -[ADGameOverEndlessStatsEnemies awakeFromNib]
; address 0x1000db93c  size 732  kind objc
; ======================================================================
  1000db93c  stp     x28, x27, [sp, #-0x60]!
  1000db940  stp     x26, x25, [sp, #0x10]
  1000db944  stp     x24, x23, [sp, #0x20]
  1000db948  stp     x22, x21, [sp, #0x30]
  1000db94c  stp     x20, x19, [sp, #0x40]
  1000db950  stp     x29, x30, [sp, #0x50]
  1000db954  add     x29, sp, #0x50
  1000db958  sub     sp, sp, #0x70
  1000db95c  mov     x19, x0
  1000db960  adrp    x26, #0x1003b0000
  1000db964  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  1000db968  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  1000db96c  stur    x26, [x29, #-0x58]
  1000db970  adrp    x8, #0x1003c2000
  1000db974  add     x8, x8, #0x910                           ; @"Zombie"
  1000db978  str     x8, [sp, #8]
  1000db97c  adrp    x27, #0x10041d000
  1000db980  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  1000db984  adrp    x8, #0x100416000
  1000db988  nop
  1000db98c  ldr     x24, [x8, #0xec0]
  1000db990  mov     w2, #0x17
  1000db994  mov     x1, x24
  1000db998  bl      _objc_msgSend                            ; [NSNumber numberWithInt:23]
  1000db99c  mov     x29, x29
  1000db9a0  bl      _objc_retainAutoreleasedReturnValue
  1000db9a4  mov     x20, x0
  1000db9a8  str     x20, [sp, #0x38]
  1000db9ac  adrp    x8, #0x1003c2000
  1000db9b0  add     x8, x8, #0x930                           ; @"Clown"
  1000db9b4  str     x8, [sp, #0x10]
  1000db9b8  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  1000db9bc  mov     w2, #0xc
  1000db9c0  mov     x1, x24
  1000db9c4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:12]
  1000db9c8  bl      _objc_retain
  1000db9cc  mov     x21, x0
  1000db9d0  str     x21, [sp, #0x40]
  1000db9d4  adrp    x8, #0x1003c2000
  1000db9d8  add     x8, x8, #0x950                           ; @"Hog"
  1000db9dc  str     x8, [sp, #0x18]
  1000db9e0  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  1000db9e4  mov     w2, #0x43
  1000db9e8  mov     x1, x24
  1000db9ec  bl      _objc_msgSend                            ; [NSNumber numberWithInt:67]
  1000db9f0  bl      _objc_retain
  1000db9f4  mov     x22, x0
  1000db9f8  str     x22, [sp, #0x48]
  1000db9fc  adrp    x8, #0x1003c2000
  1000dba00  add     x8, x8, #0x970                           ; @"khog"
  1000dba04  str     x8, [sp, #0x20]
  1000dba08  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  1000dba0c  mov     w2, #0x2b
  1000dba10  mov     x1, x24
  1000dba14  bl      _objc_msgSend                            ; [NSNumber numberWithInt:43]
  1000dba18  bl      _objc_retain
  1000dba1c  mov     x23, x0
  1000dba20  str     x23, [sp, #0x50]
  1000dba24  adrp    x8, #0x1003c2000
  1000dba28  add     x8, x8, #0x990                           ; @"okoph"
  1000dba2c  str     x8, [sp, #0x28]
  1000dba30  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  1000dba34  mov     w2, #0x62
  1000dba38  mov     x1, x24
  1000dba3c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:98]
  1000dba40  bl      _objc_retain
  1000dba44  mov     x25, x0
  1000dba48  str     x25, [sp, #0x58]
  1000dba4c  adrp    x8, #0x1003c2000
  1000dba50  add     x8, x8, #0x9b0                           ; @"ehkiugr"
  1000dba54  str     x8, [sp, #0x30]
  1000dba58  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  1000dba5c  mov     w2, #0x15
  1000dba60  mov     x1, x24
  1000dba64  bl      _objc_msgSend                            ; [NSNumber numberWithInt:21]
  1000dba68  bl      _objc_retain
  1000dba6c  mov     x24, x0
  1000dba70  str     x24, [sp, #0x60]
  1000dba74  adrp    x8, #0x10041d000
  1000dba78  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000dba7c  adrp    x8, #0x100416000
  1000dba80  nop
  1000dba84  ldr     x1, [x8, #0xcd0]
  1000dba88  add     x2, sp, #0x38
  1000dba8c  add     x3, sp, #8
  1000dba90  mov     w4, #6
  1000dba94  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x38] forKeys:&sp[0x8] count:6]
  1000dba98  mov     x2, x0
  1000dba9c  adrp    x8, #0x10041a000
  1000dbaa0  nop
  1000dbaa4  ldr     x1, [x8, #0xf78]
  1000dbaa8  mov     x0, x19
  1000dbaac  bl      _objc_msgSend                            ; [self populateViewWithEnemyData:[NSDictionary dictionaryWithObjects:&sp[0x38] forKeys:&sp[0x8] count:6]]
  1000dbab0  mov     x0, x24
  1000dbab4  bl      _objc_release
  1000dbab8  mov     x0, x25
  1000dbabc  bl      _objc_release
  1000dbac0  mov     x0, x23
  1000dbac4  bl      _objc_release
  1000dbac8  mov     x0, x22
  1000dbacc  bl      _objc_release
  1000dbad0  mov     x0, x21
  1000dbad4  bl      _objc_release
  1000dbad8  mov     x0, x20
  1000dbadc  bl      _objc_release
  1000dbae0  adrp    x8, #0x100418000
  1000dbae4  nop
  1000dbae8  ldr     x20, [x8, #0x760]
  1000dbaec  mov     x0, x19
  1000dbaf0  mov     x1, x20
  1000dbaf4  bl      _objc_msgSend                            ; [self contentView]
  1000dbaf8  mov     x29, x29
  1000dbafc  bl      _objc_retainAutoreleasedReturnValue
  1000dbb00  mov     x21, x0
  1000dbb04  adrp    x8, #0x100416000
  1000dbb08  nop
  1000dbb0c  ldr     x1, [x8, #0xf38]
  1000dbb10  bl      _objc_msgSend                            ; [[self contentView] frame]
  1000dbb14  adrp    x8, #0x100417000
  1000dbb18  nop
  1000dbb1c  ldr     x1, [x8, #0x690]
  1000dbb20  mov     x0, x19
  1000dbb24  mov     v0.16b, v2.16b
  1000dbb28  mov     v1.16b, v3.16b
  1000dbb2c  bl      _objc_msgSend                            ; [self setContentSize:{[[self contentView] frame].2, [[self contentView] frame].3}]
  1000dbb30  mov     x0, x21
  1000dbb34  bl      _objc_release
  1000dbb38  mov     x0, x19
  1000dbb3c  mov     x1, x20
  1000dbb40  bl      _objc_msgSend                            ; [self contentView]
  1000dbb44  mov     x29, x29
  1000dbb48  bl      _objc_retainAutoreleasedReturnValue
  1000dbb4c  mov     x20, x0
  1000dbb50  adrp    x8, #0x100416000
  1000dbb54  nop
  1000dbb58  ldr     x1, [x8, #0xf20]
  1000dbb5c  mov     x0, x19
  1000dbb60  mov     x2, x20
  1000dbb64  bl      _objc_msgSend                            ; [self addSubview:[self contentView]]
  1000dbb68  mov     x0, x20
  1000dbb6c  bl      _objc_release
  1000dbb70  ldur    x8, [x29, #-0x58]
  1000dbb74  sub     x8, x26, x8
  1000dbb78  cbnz    x8, loc_1000dbb9c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000dbb7c  sub     sp, x29, #0x50
  1000dbb80  ldp     x29, x30, [sp, #0x50]
  1000dbb84  ldp     x20, x19, [sp, #0x40]
  1000dbb88  ldp     x22, x21, [sp, #0x30]
  1000dbb8c  ldp     x24, x23, [sp, #0x20]
  1000dbb90  ldp     x26, x25, [sp, #0x10]
  1000dbb94  ldp     x28, x27, [sp], #0x60
  1000dbb98  ret
loc_1000dbb9c:
  1000dbb9c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000dbba0  mov     x19, x0
  1000dbba4  mov     x0, x21
  1000dbba8  b       loc_1000dbc0c
  1000dbbac  b       loc_1000dbc04
  1000dbbb0  mov     x19, x0
  1000dbbb4  b       loc_1000dbbf8
  1000dbbb8  mov     x19, x0
  1000dbbbc  b       loc_1000dbbf0
  1000dbbc0  mov     x19, x0
  1000dbbc4  b       loc_1000dbbe8
  1000dbbc8  mov     x19, x0
  1000dbbcc  b       loc_1000dbbe0
  1000dbbd0  b       loc_1000dbbd4
loc_1000dbbd4:
  1000dbbd4  mov     x19, x0
  1000dbbd8  mov     x0, x24
  1000dbbdc  bl      _objc_release
loc_1000dbbe0:
  1000dbbe0  mov     x0, x25
  1000dbbe4  bl      _objc_release
loc_1000dbbe8:
  1000dbbe8  mov     x0, x23
  1000dbbec  bl      _objc_release
loc_1000dbbf0:
  1000dbbf0  mov     x0, x22
  1000dbbf4  bl      _objc_release
loc_1000dbbf8:
  1000dbbf8  mov     x0, x21
  1000dbbfc  bl      _objc_release
  1000dbc00  b       loc_1000dbc08
loc_1000dbc04:
  1000dbc04  mov     x19, x0
loc_1000dbc08:
  1000dbc08  mov     x0, x20
loc_1000dbc0c:
  1000dbc0c  bl      _objc_release
  1000dbc10  mov     x0, x19
  1000dbc14  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessStatsEnemies populateViewWithEnemyData:]
; address 0x1000dbc18  size 2240  kind objc
; ======================================================================
  1000dbc18  stp     d15, d14, [sp, #-0xa0]!
  1000dbc1c  stp     d13, d12, [sp, #0x10]
  1000dbc20  stp     d11, d10, [sp, #0x20]
  1000dbc24  stp     d9, d8, [sp, #0x30]
  1000dbc28  stp     x28, x27, [sp, #0x40]
  1000dbc2c  stp     x26, x25, [sp, #0x50]
  1000dbc30  stp     x24, x23, [sp, #0x60]
  1000dbc34  stp     x22, x21, [sp, #0x70]
  1000dbc38  stp     x20, x19, [sp, #0x80]
  1000dbc3c  stp     x29, x30, [sp, #0x90]
  1000dbc40  add     x29, sp, #0x90
  1000dbc44  sub     sp, sp, #0x1c0
  1000dbc48  mov     x20, x0
  1000dbc4c  adrp    x8, #0x1003b0000
  1000dbc50  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000dbc54  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000dbc58  stur    x8, [x29, #-0x98]
  1000dbc5c  mov     x0, x2
  1000dbc60  bl      _objc_retain
  1000dbc64  str     x0, [sp, #0xb0]
  1000dbc68  adrp    x8, #0x10041d000
  1000dbc6c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000dbc70  adrp    x8, #0x100416000
  1000dbc74  nop
  1000dbc78  ldr     x27, [x8, #0xac8]
  1000dbc7c  mov     x1, x27
  1000dbc80  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000dbc84  adrp    x8, #0x100416000
  1000dbc88  nop
  1000dbc8c  ldr     x1, [x8, #0xab8]
  1000dbc90  str     x1, [sp, #0xa8]
  1000dbc94  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000dbc98  mov     x19, x0
  1000dbc9c  adrp    x8, #0x10041a000
  1000dbca0  nop
  1000dbca4  ldr     x1, [x8, #0xf80]
  1000dbca8  mov     x0, x20
  1000dbcac  mov     x2, x19
  1000dbcb0  bl      _objc_msgSend                            ; [self setLabelTags:[[NSMutableArray alloc] init]]
  1000dbcb4  mov     x0, x19
  1000dbcb8  bl      _objc_release
  1000dbcbc  adrp    x8, #0x10041d000
  1000dbcc0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000dbcc4  mov     x1, x27
  1000dbcc8  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000dbccc  ldr     x1, [sp, #0xa8]
  1000dbcd0  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000dbcd4  mov     x19, x0
  1000dbcd8  adrp    x8, #0x10041a000
  1000dbcdc  nop
  1000dbce0  ldr     x1, [x8, #0xf88]
  1000dbce4  mov     x0, x20
  1000dbce8  mov     x2, x19
  1000dbcec  bl      _objc_msgSend                            ; [self setLabelTagAnimationTriggers:[[NSMutableDictionary alloc] init]]
  1000dbcf0  mov     x0, x19
  1000dbcf4  bl      _objc_release
  1000dbcf8  adrp    x8, #0x10041d000
  1000dbcfc  ldr     x0, [x8, #0xf98]                         ; class UIView
  1000dbd00  mov     x1, x27
  1000dbd04  bl      _objc_msgSend                            ; [UIView alloc]
  1000dbd08  mov     x19, x0
  1000dbd0c  adrp    x8, #0x100416000
  1000dbd10  nop
  1000dbd14  ldr     x1, [x8, #0xf38]
  1000dbd18  str     x1, [sp, #0xa0]
  1000dbd1c  mov     x0, x20
  1000dbd20  bl      _objc_msgSend                            ; [self frame]
  1000dbd24  adrp    x8, #0x100417000
  1000dbd28  nop
  1000dbd2c  ldr     x24, [x8, #0x178]
  1000dbd30  mov     x0, x19
  1000dbd34  mov     x1, x24
  1000dbd38  bl      _objc_msgSend                            ; [[UIView alloc] initWithFrame:{[self frame].0, [self frame].1, [self frame].2, [self frame].3}]
  1000dbd3c  mov     x19, x0
  1000dbd40  adrp    x8, #0x10041a000
  1000dbd44  nop
  1000dbd48  ldr     x1, [x8, #0xf90]
  1000dbd4c  mov     x0, x20
  1000dbd50  mov     x2, x19
  1000dbd54  bl      _objc_msgSend                            ; [self setContentView:[[UIView alloc] initWithFrame:{[self frame].0, [self frame].1, [self frame].2, [self frame].3}]]
  1000dbd58  mov     x0, x19
  1000dbd5c  bl      _objc_release
  1000dbd60  mov     x0, x20
  1000dbd64  str     x20, [sp, #0xe8]
  1000dbd68  ldr     x1, [sp, #0xa0]
  1000dbd6c  bl      _objc_msgSend                            ; [self frame]
  1000dbd70  mov     v8.16b, v2.16b
  1000dbd74  adrp    x8, #0x100417000
  1000dbd78  nop
  1000dbd7c  ldr     x1, [x8, #0x248]
  1000dbd80  ldr     x0, [sp, #0xb0]
  1000dbd84  bl      _objc_msgSend                            ; [arg1 allKeys]
  1000dbd88  mov     x29, x29
  1000dbd8c  bl      _objc_retainAutoreleasedReturnValue
  1000dbd90  stp     xzr, xzr, [sp, #0x128]
  1000dbd94  stp     xzr, xzr, [sp, #0x118]
  1000dbd98  stp     xzr, xzr, [sp, #0x108]
  1000dbd9c  stp     xzr, xzr, [sp, #0xf8]
  1000dbda0  bl      _objc_retain
  1000dbda4  str     x0, [sp, #0x28]
  1000dbda8  adrp    x8, #0x100416000
  1000dbdac  nop
  1000dbdb0  ldr     x1, [x8, #0xe00]
  1000dbdb4  str     x1, [sp, #8]
  1000dbdb8  add     x2, sp, #0xf8
  1000dbdbc  add     x3, sp, #0x138
  1000dbdc0  mov     w4, #0x10
  1000dbdc4  bl      _objc_msgSend                            ; [[arg1 allKeys] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x138] count:16]
  1000dbdc8  cbz     x0, loc_1000dc380                        ; if ([[arg1 allKeys] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x138] count:16] == 0)
  1000dbdcc  fcvt    s0, d8
  1000dbdd0  ldr     x8, [sp, #0x108]
  1000dbdd4  adrp    x9, #0x100416000
  1000dbdd8  nop
  1000dbddc  adrp    x10, #0x100417000
  1000dbde0  nop
  1000dbde4  adrp    x11, #0x100417000
  1000dbde8  nop
  1000dbdec  adrp    x12, #0x100417000
  1000dbdf0  add     x12, x12, #0x340                         ; &@selector(clearColor)
  1000dbdf4  adrp    x13, #0x100417000
  1000dbdf8  add     x13, x13, #0x188                         ; &@selector(setBackgroundColor:)
  1000dbdfc  adrp    x14, #0x100181000
  1000dbe00  ldr     x9, [x9, #0xb68]
  1000dbe04  str     x9, [sp, #0x90]
  1000dbe08  ldr     x26, [x10, #0x328]
  1000dbe0c  ldr     x21, [x11, #0x330]
  1000dbe10  ldr     x23, [x12]
  1000dbe14  str     x23, [sp, #0x38]
  1000dbe18  adrp    x9, #0x100418000
  1000dbe1c  nop
  1000dbe20  ldr     s1, [x14, #0xd98]                        ; s1 = -50.0
  1000dbe24  adrp    x10, #0x100416000
  1000dbe28  nop
  1000dbe2c  ldr     x28, [x13]
  1000dbe30  str     x28, [sp, #0x30]
  1000dbe34  ldr     x9, [x9, #0x760]
  1000dbe38  str     x9, [sp, #0xf0]
  1000dbe3c  adrp    x9, #0x100417000
  1000dbe40  nop
  1000dbe44  adrp    x11, #0x100417000
  1000dbe48  nop
  1000dbe4c  ldr     x10, [x10, #0xf20]
  1000dbe50  str     x10, [sp, #0xe0]
  1000dbe54  ldr     x9, [x9, #0x670]
  1000dbe58  str     x9, [sp, #0x88]
  1000dbe5c  adrp    x9, #0x100417000
  1000dbe60  nop
  1000dbe64  adrp    x10, #0x100417000
  1000dbe68  nop
  1000dbe6c  ldr     x11, [x11, #0x40]
  1000dbe70  str     x11, [sp, #0x80]
  1000dbe74  ldr     x9, [x9, #0xb0]
  1000dbe78  str     x9, [sp, #0x78]
  1000dbe7c  adrp    x9, #0x100418000
  1000dbe80  nop
  1000dbe84  adrp    x11, #0x100417000
  1000dbe88  nop
  1000dbe8c  ldr     x10, [x10, #0xb8]
  1000dbe90  str     x10, [sp, #0x70]
  1000dbe94  ldr     x9, [x9, #0x318]
  1000dbe98  str     x9, [sp, #0xd8]
  1000dbe9c  adrp    x9, #0x10041a000
  1000dbea0  nop
  1000dbea4  adrp    x10, #0x100416000
  1000dbea8  nop
  1000dbeac  ldr     x11, [x11, #0xe8]
  1000dbeb0  str     x11, [sp, #0x68]
  1000dbeb4  ldr     x9, [x9, #0xf98]
  1000dbeb8  str     x9, [sp, #0x60]
  1000dbebc  adrp    x9, #0x100416000
  1000dbec0  nop
  1000dbec4  adrp    x11, #0x10041a000
  1000dbec8  add     x11, x11, #0xfa0                         ; &@selector(labelTags)
  1000dbecc  ldr     x10, [x10, #0xec0]
  1000dbed0  str     x10, [sp, #0x58]
  1000dbed4  ldr     x8, [x8]
  1000dbed8  str     x8, [sp, #0x98]
  1000dbedc  ldr     x8, [x9, #0xdc8]
  1000dbee0  str     x8, [sp, #0x50]
  1000dbee4  adrp    x8, #0x100416000
  1000dbee8  nop
  1000dbeec  ldr     x9, [x11]
  1000dbef0  str     x9, [sp, #0x48]
  1000dbef4  fadd    s1, s0, s1
  1000dbef8  fcvt    d8, s1
  1000dbefc  fcvt    d0, s0
  1000dbf00  str     d0, [sp, #0x20]
  1000dbf04  ldr     x8, [x8, #0xd90]
  1000dbf08  str     x8, [sp, #0x40]
  1000dbf0c  adrp    x8, #0x100417000
  1000dbf10  nop
  1000dbf14  ldr     x8, [x8, #0x7b8]
  1000dbf18  str     x8, [sp, #0x18]
  1000dbf1c  adrp    x8, #0x10041a000
  1000dbf20  nop
  1000dbf24  ldr     x8, [x8, #0xfa8]
  1000dbf28  str     x8, [sp, #0x10]
  1000dbf2c  fmov    s15, #10.00000000
  1000dbf30  mov     w9, #0x32
  1000dbf34  nop
  1000dbf38  ldr     d10, #0x100181b80                        ; d10 = 80.0
  1000dbf3c  fmov    d11, #10.00000000
  1000dbf40  fmov    d12, #30.00000000
  1000dbf44  nop
  1000dbf48  ldr     d13, #0x1001819f8                        ; d13 = 40.0
  1000dbf4c  adrp    x8, #0x100181000
  1000dbf50  ldr     s9, [x8, #0xac0]                         ; s9 = 50.0
loc_1000dbf54:
  1000dbf54  str     x9, [sp, #0xc8]
  1000dbf58  mov     x25, #0
  1000dbf5c  sxtw    x8, w9
  1000dbf60  stp     x0, x8, [sp, #0xb8]
loc_1000dbf64:
  1000dbf64  ldr     x8, [sp, #0x108]
  1000dbf68  ldr     x8, [x8]
  1000dbf6c  ldr     x9, [sp, #0x98]
  1000dbf70  cmp     x8, x9
  1000dbf74  b.eq    loc_1000dbf80                            ; if (x8 == x9)
  1000dbf78  ldr     x0, [sp, #0x28]
  1000dbf7c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 allKeys])
loc_1000dbf80:
  1000dbf80  ldr     x8, [sp, #0x100]
  1000dbf84  ldr     x19, [x8, x25, lsl #3]
  1000dbf88  adrp    x8, #0x10041e000
  1000dbf8c  ldr     x0, [x8, #0x110]                         ; class UILabel
  1000dbf90  mov     x1, x27
  1000dbf94  bl      _objc_msgSend                            ; [UILabel alloc]
  1000dbf98  movi    v0.16b, #0
  1000dbf9c  fadd    s0, s15, s0
  1000dbfa0  fcvt    d14, s0
  1000dbfa4  mov     x1, x24
  1000dbfa8  mov     v0.16b, v11.16b
  1000dbfac  mov     v1.16b, v14.16b
  1000dbfb0  mov     v2.16b, v10.16b
  1000dbfb4  mov     v3.16b, v12.16b
  1000dbfb8  bl      _objc_msgSend                            ; [[UILabel alloc] initWithFrame:{10, (s15 + 0), 80, 30}]
  1000dbfbc  mov     x22, x0
  1000dbfc0  mov     x0, x22
  1000dbfc4  ldr     x1, [sp, #0x90]
  1000dbfc8  mov     x2, x19
  1000dbfcc  bl      _objc_msgSend                            ; [[[UILabel alloc] initWithFrame:{10, (s15 + 0), 80, 30}] setText:x2]
  1000dbfd0  adrp    x8, #0x10041d000
  1000dbfd4  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000dbfd8  mov     x1, x26
  1000dbfdc  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000dbfe0  mov     x29, x29
  1000dbfe4  bl      _objc_retainAutoreleasedReturnValue
  1000dbfe8  mov     x20, x0
  1000dbfec  mov     x0, x22
  1000dbff0  mov     x1, x21
  1000dbff4  mov     x2, x20
  1000dbff8  bl      _objc_msgSend                            ; [[[UILabel alloc] initWithFrame:{10, (s15 + 0), 80, 30}] setTextColor:[UIColor whiteColor]]
  1000dbffc  mov     x0, x20
  1000dc000  bl      _objc_release
  1000dc004  adrp    x8, #0x10041d000
  1000dc008  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000dc00c  mov     x1, x23
  1000dc010  bl      _objc_msgSend                            ; [UIColor clearColor]
  1000dc014  mov     x29, x29
  1000dc018  bl      _objc_retainAutoreleasedReturnValue
  1000dc01c  mov     x20, x0
  1000dc020  mov     x0, x22
  1000dc024  mov     x1, x28
  1000dc028  mov     x2, x20
  1000dc02c  bl      _objc_msgSend                            ; [[[UILabel alloc] initWithFrame:{10, (s15 + 0), 80, 30}] setBackgroundColor:[UIColor clearColor]]
  1000dc030  mov     x0, x20
  1000dc034  bl      _objc_release
  1000dc038  ldp     x0, x1, [sp, #0xe8]
  1000dc03c  bl      _objc_msgSend                            ; [self contentView]
  1000dc040  mov     x29, x29
  1000dc044  bl      _objc_retainAutoreleasedReturnValue
  1000dc048  mov     x20, x0
  1000dc04c  ldr     x1, [sp, #0xe0]
  1000dc050  mov     x2, x22
  1000dc054  bl      _objc_msgSend                            ; [[self contentView] addSubview:[[UILabel alloc] initWithFrame:{10, (s15 + 0), 80, 30}]]
  1000dc058  mov     x0, x20
  1000dc05c  bl      _objc_release
  1000dc060  adrp    x8, #0x10041e000
  1000dc064  ldr     x0, [x8, #0x460]                         ; class UICountingLabel
  1000dc068  mov     x1, x27
  1000dc06c  bl      _objc_msgSend                            ; [UICountingLabel alloc]
  1000dc070  mov     x1, x24
  1000dc074  mov     v0.16b, v8.16b
  1000dc078  mov     v1.16b, v14.16b
  1000dc07c  mov     v2.16b, v13.16b
  1000dc080  mov     v3.16b, v12.16b
  1000dc084  bl      _objc_msgSend                            ; [[UICountingLabel alloc] initWithFrame:{([self frame].2 + -50), (s15 + 0), 40, 30}]
  1000dc088  mov     x20, x0
  1000dc08c  ldr     x8, [sp, #0xc0]
  1000dc090  add     x2, x8, x25
  1000dc094  mov     x0, x20
  1000dc098  ldr     x1, [sp, #0x88]
  1000dc09c  bl      _objc_msgSend                            ; [[[UICountingLabel alloc] initWithFrame:{([self frame].2 + -50), (s15 + 0), 40, 30}] setTag:(x8 + x25)]
  1000dc0a0  adrp    x8, #0x10041d000
  1000dc0a4  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000dc0a8  mov     x1, x23
  1000dc0ac  bl      _objc_msgSend                            ; [UIColor clearColor]
  1000dc0b0  mov     x29, x29
  1000dc0b4  bl      _objc_retainAutoreleasedReturnValue
  1000dc0b8  mov     x23, x0
  1000dc0bc  mov     x0, x20
  1000dc0c0  mov     x1, x28
  1000dc0c4  mov     x2, x23
  1000dc0c8  bl      _objc_msgSend                            ; [[[UICountingLabel alloc] initWithFrame:{([self frame].2 + -50), (s15 + 0), 40, 30}] setBackgroundColor:[UIColor clearColor]]
  1000dc0cc  mov     x0, x23
  1000dc0d0  bl      _objc_release
  1000dc0d4  adrp    x8, #0x10041d000
  1000dc0d8  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000dc0dc  mov     x1, x26
  1000dc0e0  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000dc0e4  mov     x29, x29
  1000dc0e8  bl      _objc_retainAutoreleasedReturnValue
  1000dc0ec  mov     x23, x0
  1000dc0f0  mov     x0, x20
  1000dc0f4  mov     x1, x21
  1000dc0f8  mov     x2, x23
  1000dc0fc  bl      _objc_msgSend                            ; [[[UICountingLabel alloc] initWithFrame:{([self frame].2 + -50), (s15 + 0), 40, 30}] setTextColor:[UIColor whiteColor]]
  1000dc100  mov     x0, x23
  1000dc104  bl      _objc_release
  1000dc108  ldr     x0, [sp, #0xb0]
  1000dc10c  ldr     x1, [sp, #0x80]
  1000dc110  mov     x2, x19
  1000dc114  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  1000dc118  mov     x29, x29
  1000dc11c  bl      _objc_retainAutoreleasedReturnValue
  1000dc120  mov     x19, x0
  1000dc124  ldr     x1, [sp, #0x78]
  1000dc128  bl      _objc_msgSend                            ; [[arg1 objectForKey:x2] integerValue]
  1000dc12c  mov     x23, x0
  1000dc130  mov     x0, x19
  1000dc134  bl      _objc_release
  1000dc138  adrp    x8, #0x10041d000
  1000dc13c  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000dc140  mov     x1, x27
  1000dc144  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000dc148  ldr     x1, [sp, #0xa8]
  1000dc14c  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000dc150  mov     x19, x0
  1000dc154  str     x22, [sp, #0xd0]
  1000dc158  mov     x28, x21
  1000dc15c  mov     x21, x26
  1000dc160  mov     x26, x27
  1000dc164  mov     x27, x24
  1000dc168  adrp    x8, #0x10041d000
  1000dc16c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000dc170  mov     w2, #0
  1000dc174  ldr     x1, [sp, #0x70]
  1000dc178  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000dc17c  ldr     x8, [sp, #0xe8]
  1000dc180  mov     x22, x8
  1000dc184  mov     x29, x29
  1000dc188  bl      _objc_retainAutoreleasedReturnValue
  1000dc18c  mov     x24, x0
  1000dc190  mov     x0, x19
  1000dc194  ldr     x1, [sp, #0xd8]
  1000dc198  mov     x2, x24
  1000dc19c  adrp    x3, #0x1003c2000
  1000dc1a0  add     x3, x3, #0x8d0                           ; @"triggered"
  1000dc1a4  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithBool:0] forKey:@"triggered"]
  1000dc1a8  mov     x0, x24
  1000dc1ac  bl      _objc_release
  1000dc1b0  adrp    x8, #0x10041d000
  1000dc1b4  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000dc1b8  ldr     x1, [sp, #0x68]
  1000dc1bc  mov     x2, x23
  1000dc1c0  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[arg1 objectForKey:x2] integerValue]]
  1000dc1c4  mov     x24, x22
  1000dc1c8  mov     x29, x29
  1000dc1cc  bl      _objc_retainAutoreleasedReturnValue
  1000dc1d0  mov     x23, x0
  1000dc1d4  mov     x0, x19
  1000dc1d8  ldr     x1, [sp, #0xd8]
  1000dc1dc  mov     x2, x23
  1000dc1e0  adrp    x3, #0x1003c2000
  1000dc1e4  add     x3, x3, #0x8f0                           ; @"killed"
  1000dc1e8  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithInteger:[[arg1 objectForKey:x2] integerValue]] forKey:@"killed"]
  1000dc1ec  mov     x0, x23
  1000dc1f0  bl      _objc_release
  1000dc1f4  mov     x0, x24
  1000dc1f8  ldr     x1, [sp, #0x60]
  1000dc1fc  bl      _objc_msgSend                            ; [self labelTagAnimationTriggers]
  1000dc200  mov     x29, x29
  1000dc204  bl      _objc_retainAutoreleasedReturnValue
  1000dc208  mov     x23, x0
  1000dc20c  adrp    x8, #0x10041d000
  1000dc210  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000dc214  ldr     x8, [sp, #0xc8]
  1000dc218  add     w2, w8, w25
  1000dc21c  ldr     x1, [sp, #0x58]
  1000dc220  bl      _objc_msgSend                            ; [NSNumber numberWithInt:(w8 + w25)]
  1000dc224  mov     x22, x24
  1000dc228  mov     x29, x29
  1000dc22c  bl      _objc_retainAutoreleasedReturnValue
  1000dc230  mov     x24, x0
  1000dc234  mov     x0, x23
  1000dc238  ldr     x1, [sp, #0x50]
  1000dc23c  mov     x2, x19
  1000dc240  mov     x3, x24
  1000dc244  bl      _objc_msgSend                            ; [[self labelTagAnimationTriggers] setObject:[[NSMutableDictionary alloc] init] forKey:[NSNumber numberWithInt:(w8 + w25)]]
  1000dc248  mov     x0, x24
  1000dc24c  bl      _objc_release
  1000dc250  mov     x0, x23
  1000dc254  bl      _objc_release
  1000dc258  mov     x24, x22
  1000dc25c  mov     x0, x24
  1000dc260  ldr     x1, [sp, #0x48]
  1000dc264  bl      _objc_msgSend                            ; [self labelTags]
  1000dc268  mov     x29, x29
  1000dc26c  bl      _objc_retainAutoreleasedReturnValue
  1000dc270  mov     x23, x0
  1000dc274  ldr     x1, [sp, #0x40]
  1000dc278  mov     x2, x20
  1000dc27c  bl      _objc_msgSend                            ; [[self labelTags] addObject:[[UICountingLabel alloc] initWithFrame:{([self frame].2 + -50), (s15 + 0), 40, 30}]]
  1000dc280  mov     x0, x23
  1000dc284  bl      _objc_release
  1000dc288  mov     x0, x24
  1000dc28c  ldr     x1, [sp, #0xf0]
  1000dc290  bl      _objc_msgSend                            ; [self contentView]
  1000dc294  mov     x29, x29
  1000dc298  bl      _objc_retainAutoreleasedReturnValue
  1000dc29c  mov     x23, x0
  1000dc2a0  ldr     x1, [sp, #0xe0]
  1000dc2a4  mov     x2, x20
  1000dc2a8  bl      _objc_msgSend                            ; [[self contentView] addSubview:[[UICountingLabel alloc] initWithFrame:{([self frame].2 + -50), (s15 + 0), 40, 30}]]
  1000dc2ac  mov     x0, x23
  1000dc2b0  bl      _objc_release
  1000dc2b4  mov     x0, x24
  1000dc2b8  ldr     x1, [sp, #0xa0]
  1000dc2bc  bl      _objc_msgSend                            ; [self frame]
  1000dc2c0  fadd    s15, s15, s9
  1000dc2c4  fcvt    d0, s15
  1000dc2c8  fcmp    d0, d3
  1000dc2cc  b.le    loc_1000dc320                            ; if ((s15 + 50) <= (or unordered) [self frame].3)
  1000dc2d0  mov     x0, x24
  1000dc2d4  ldr     x1, [sp, #0xf0]
  1000dc2d8  bl      _objc_msgSend                            ; [self contentView]
  1000dc2dc  fmov    s0, #20.00000000
  1000dc2e0  fadd    s14, s15, s0
  1000dc2e4  mov     x29, x29
  1000dc2e8  bl      _objc_retainAutoreleasedReturnValue
  1000dc2ec  mov     x23, x0
  1000dc2f0  fcvt    d3, s14
  1000dc2f4  movi    v0.16b, #0
  1000dc2f8  movi    v1.16b, #0
  1000dc2fc  ldr     x1, [sp, #0x18]
  1000dc300  ldr     d2, [sp, #0x20]
  1000dc304  bl      _objc_msgSend                            ; [[self contentView] setFrame:{0, 0, [self frame].2, ((s15 + 50) + 20)}]
  1000dc308  mov     x0, x23
  1000dc30c  bl      _objc_release
  1000dc310  mov     x0, x24
  1000dc314  ldr     x1, [sp, #0x10]
  1000dc318  mov     v0.16b, v14.16b
  1000dc31c  bl      _objc_msgSend                            ; [self setContentViewHeight:((s15 + 50) + 20)]
loc_1000dc320:
  1000dc320  mov     x0, x19
  1000dc324  bl      _objc_release
  1000dc328  mov     x0, x20
  1000dc32c  bl      _objc_release
  1000dc330  ldr     x0, [sp, #0xd0]
  1000dc334  bl      _objc_release
  1000dc338  add     x25, x25, #1
  1000dc33c  ldr     x8, [sp, #0xb8]
  1000dc340  cmp     x25, x8
  1000dc344  mov     x24, x27
  1000dc348  mov     x27, x26
  1000dc34c  mov     x26, x21
  1000dc350  mov     x21, x28
  1000dc354  ldp     x28, x23, [sp, #0x30]
  1000dc358  b.lo    loc_1000dbf64                            ; if ((x25 + 1) <u [[arg1 allKeys] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x138] count:16])
  1000dc35c  add     x2, sp, #0xf8
  1000dc360  add     x3, sp, #0x138
  1000dc364  mov     w4, #0x10
  1000dc368  ldr     x0, [sp, #0x28]
  1000dc36c  ldr     x1, [sp, #8]
  1000dc370  bl      _objc_msgSend                            ; [[arg1 allKeys] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x138] count:16]
  1000dc374  ldr     x9, [sp, #0xc8]
  1000dc378  add     x9, x25, w9, sxtw
  1000dc37c  cbnz    x0, loc_1000dbf54                        ; if ([[arg1 allKeys] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x138] count:16] != 0)
loc_1000dc380:
  1000dc380  ldr     x19, [sp, #0x28]
  1000dc384  mov     x0, x19
  1000dc388  bl      _objc_release
  1000dc38c  mov     x0, x19
  1000dc390  bl      _objc_release
  1000dc394  ldr     x0, [sp, #0xb0]
  1000dc398  bl      _objc_release
  1000dc39c  ldur    x8, [x29, #-0x98]
  1000dc3a0  adrp    x9, #0x1003b0000
  1000dc3a4  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000dc3a8  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000dc3ac  sub     x8, x9, x8
  1000dc3b0  cbnz    x8, loc_1000dc3e4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000dc3b4  sub     sp, x29, #0x90
  1000dc3b8  ldp     x29, x30, [sp, #0x90]
  1000dc3bc  ldp     x20, x19, [sp, #0x80]
  1000dc3c0  ldp     x22, x21, [sp, #0x70]
  1000dc3c4  ldp     x24, x23, [sp, #0x60]
  1000dc3c8  ldp     x26, x25, [sp, #0x50]
  1000dc3cc  ldp     x28, x27, [sp, #0x40]
  1000dc3d0  ldp     d9, d8, [sp, #0x30]
  1000dc3d4  ldp     d11, d10, [sp, #0x20]
  1000dc3d8  ldp     d13, d12, [sp, #0x10]
  1000dc3dc  ldp     d15, d14, [sp], #0xa0
  1000dc3e0  ret
loc_1000dc3e4:
  1000dc3e4  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000dc3e8  mov     x21, x0
  1000dc3ec  ldr     x22, [sp, #0xd0]
  1000dc3f0  b       loc_1000dc47c
  1000dc3f4  mov     x21, x0
  1000dc3f8  b       loc_1000dc48c
loc_1000dc3fc:
  1000dc3fc  mov     x21, x0
  1000dc400  b       loc_1000dc484
loc_1000dc404:
  1000dc404  mov     x21, x0
  1000dc408  b       loc_1000dc494
  1000dc40c  b       loc_1000dc3fc
  1000dc410  b       loc_1000dc3fc
  1000dc414  b       loc_1000dc3fc
  1000dc418  b       loc_1000dc41c
loc_1000dc41c:
  1000dc41c  mov     x21, x0
  1000dc420  mov     x0, x23
  1000dc424  b       loc_1000dc480
  1000dc428  mov     x21, x0
  1000dc42c  b       loc_1000dc47c
  1000dc430  mov     x21, x0
  1000dc434  mov     x0, x24
  1000dc438  b       loc_1000dc474
  1000dc43c  b       loc_1000dc46c
  1000dc440  mov     x21, x0
  1000dc444  b       loc_1000dc454
  1000dc448  mov     x21, x0
  1000dc44c  mov     x0, x24
  1000dc450  bl      _objc_release
loc_1000dc454:
  1000dc454  ldr     x22, [sp, #0xd0]
  1000dc458  mov     x0, x23
  1000dc45c  bl      _objc_release
  1000dc460  b       loc_1000dc47c
  1000dc464  b       loc_1000dc46c
  1000dc468  b       loc_1000dc46c
loc_1000dc46c:
  1000dc46c  mov     x21, x0
  1000dc470  mov     x0, x23
loc_1000dc474:
  1000dc474  bl      _objc_release
  1000dc478  ldr     x22, [sp, #0xd0]
loc_1000dc47c:
  1000dc47c  mov     x0, x19
loc_1000dc480:
  1000dc480  bl      _objc_release
loc_1000dc484:
  1000dc484  mov     x0, x20
  1000dc488  bl      _objc_release
loc_1000dc48c:
  1000dc48c  mov     x0, x22
  1000dc490  bl      _objc_release
loc_1000dc494:
  1000dc494  ldr     x19, [sp, #0x28]
  1000dc498  mov     x0, x19
  1000dc49c  bl      _objc_release
loc_1000dc4a0:
  1000dc4a0  mov     x0, x19
  1000dc4a4  bl      _objc_release
loc_1000dc4a8:
  1000dc4a8  ldr     x0, [sp, #0xb0]
  1000dc4ac  bl      _objc_release
  1000dc4b0  mov     x0, x21
  1000dc4b4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000dc4b8  b       loc_1000dc404
  1000dc4bc  mov     x21, x0
  1000dc4c0  b       loc_1000dc4a8
  1000dc4c4  b       loc_1000dc4cc
  1000dc4c8  b       loc_1000dc4cc
loc_1000dc4cc:
  1000dc4cc  mov     x21, x0
  1000dc4d0  b       loc_1000dc4a0
  1000dc4d4  b       loc_1000dc404

; ======================================================================
; -[ADGameOverEndlessStatsEnemies drawRect:]
; address 0x1000dc4d8  size 892  kind objc
; ======================================================================
  1000dc4d8  stp     d9, d8, [sp, #-0x70]!
  1000dc4dc  stp     x28, x27, [sp, #0x10]
  1000dc4e0  stp     x26, x25, [sp, #0x20]
  1000dc4e4  stp     x24, x23, [sp, #0x30]
  1000dc4e8  stp     x22, x21, [sp, #0x40]
  1000dc4ec  stp     x20, x19, [sp, #0x50]
  1000dc4f0  stp     x29, x30, [sp, #0x60]
  1000dc4f4  add     x29, sp, #0x60
  1000dc4f8  sub     sp, sp, #0x120
  1000dc4fc  str     x0, [sp, #0x50]
  1000dc500  adrp    x8, #0x1003b0000
  1000dc504  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000dc508  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000dc50c  stur    x8, [x29, #-0x68]
  1000dc510  stp     xzr, xzr, [sp, #0x88]
  1000dc514  stp     xzr, xzr, [sp, #0x78]
  1000dc518  stp     xzr, xzr, [sp, #0x68]
  1000dc51c  stp     xzr, xzr, [sp, #0x58]
  1000dc520  adrp    x8, #0x10041a000
  1000dc524  nop
  1000dc528  ldr     x1, [x8, #0xfa0]
  1000dc52c  bl      _objc_msgSend                            ; [self labelTags]
  1000dc530  mov     x29, x29
  1000dc534  bl      _objc_retainAutoreleasedReturnValue
  1000dc538  str     x0, [sp, #0x38]
  1000dc53c  adrp    x8, #0x100416000
  1000dc540  nop
  1000dc544  ldr     x1, [x8, #0xe00]
  1000dc548  str     x1, [sp, #8]
  1000dc54c  add     x2, sp, #0x58
  1000dc550  add     x3, sp, #0x98
  1000dc554  mov     w4, #0x10
  1000dc558  bl      _objc_msgSend                            ; [[self labelTags] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  1000dc55c  mov     x22, x0
  1000dc560  cbz     x22, loc_1000dc7ac                       ; if ([[self labelTags] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] == 0)
  1000dc564  adrp    x8, #0x100417000
  1000dc568  nop
  1000dc56c  adrp    x9, #0x10041a000
  1000dc570  nop
  1000dc574  adrp    x10, #0x100417000
  1000dc578  add     x10, x10, #0xe8                          ; &@selector(numberWithInteger:)
  1000dc57c  adrp    x11, #0x100417000
  1000dc580  add     x11, x11, #0x40                          ; &@selector(objectForKey:)
  1000dc584  adrp    x12, #0x100417000
  1000dc588  add     x12, x12, #0xd8                          ; &@selector(boolValue)
  1000dc58c  ldr     x13, [sp, #0x68]
  1000dc590  ldr     x8, [x8, #0x6b0]
  1000dc594  str     x8, [sp, #0x40]
  1000dc598  ldr     x24, [x9, #0xf98]
  1000dc59c  ldr     x25, [x10]
  1000dc5a0  ldr     x26, [x11]
  1000dc5a4  ldr     x8, [x13]
  1000dc5a8  str     x8, [sp, #0x48]
  1000dc5ac  ldr     x27, [x12]
  1000dc5b0  adrp    x8, #0x100417000
  1000dc5b4  nop
  1000dc5b8  ldr     x8, [x8, #0xb8]
  1000dc5bc  str     x8, [sp, #0x30]
  1000dc5c0  adrp    x8, #0x100416000
  1000dc5c4  nop
  1000dc5c8  ldr     x8, [x8, #0xdc8]
  1000dc5cc  str     x8, [sp, #0x28]
  1000dc5d0  adrp    x8, #0x100417000
  1000dc5d4  nop
  1000dc5d8  ldr     x8, [x8, #0xb0]
  1000dc5dc  str     x8, [sp, #0x20]
  1000dc5e0  adrp    x8, #0x100419000
  1000dc5e4  nop
  1000dc5e8  adrp    x9, #0x100419000
  1000dc5ec  add     x9, x9, #0xb18                           ; &@selector(countFrom:to:withDuration:)
  1000dc5f0  ldr     x8, [x8, #0xb58]
  1000dc5f4  str     x8, [sp, #0x18]
  1000dc5f8  ldr     x8, [x9]
  1000dc5fc  str     x8, [sp, #0x10]
  1000dc600  fmov    d8, #4.00000000
loc_1000dc604:
  1000dc604  mov     x23, #0
loc_1000dc608:
  1000dc608  ldr     x8, [sp, #0x68]
  1000dc60c  ldr     x8, [x8]
  1000dc610  ldr     x9, [sp, #0x48]
  1000dc614  cmp     x8, x9
  1000dc618  b.eq    loc_1000dc624                            ; if (x8 == x9)
  1000dc61c  ldr     x0, [sp, #0x38]
  1000dc620  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self labelTags])
loc_1000dc624:
  1000dc624  ldr     x8, [sp, #0x60]
  1000dc628  ldr     x28, [x8, x23, lsl #3]
  1000dc62c  mov     x0, x28
  1000dc630  ldr     x1, [sp, #0x40]
  1000dc634  bl      _objc_msgSend                            ; [x0 tag]
  1000dc638  mov     x19, x0
  1000dc63c  ldr     x0, [sp, #0x50]
  1000dc640  mov     x1, x24
  1000dc644  bl      _objc_msgSend                            ; [self labelTagAnimationTriggers]
  1000dc648  mov     x29, x29
  1000dc64c  bl      _objc_retainAutoreleasedReturnValue
  1000dc650  mov     x21, x0
  1000dc654  adrp    x8, #0x10041d000
  1000dc658  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000dc65c  mov     x1, x25
  1000dc660  mov     x2, x19
  1000dc664  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[x0 tag]]
  1000dc668  mov     x29, x29
  1000dc66c  bl      _objc_retainAutoreleasedReturnValue
  1000dc670  mov     x20, x0
  1000dc674  mov     x0, x21
  1000dc678  mov     x1, x26
  1000dc67c  mov     x2, x20
  1000dc680  bl      _objc_msgSend                            ; [[self labelTagAnimationTriggers] objectForKey:[NSNumber numberWithInteger:[x0 tag]]]
  1000dc684  mov     x29, x29
  1000dc688  bl      _objc_retainAutoreleasedReturnValue
  1000dc68c  mov     x19, x0
  1000dc690  mov     x0, x20
  1000dc694  bl      _objc_release
  1000dc698  mov     x0, x21
  1000dc69c  bl      _objc_release
  1000dc6a0  mov     x0, x19
  1000dc6a4  mov     x1, x26
  1000dc6a8  adrp    x2, #0x1003c2000
  1000dc6ac  add     x2, x2, #0x8d0                           ; @"triggered"
  1000dc6b0  bl      _objc_msgSend                            ; [[[self labelTagAnimationTriggers] objectForKey:[NSNumber numberWithInteger:[x0 tag]]] objectForKey:@"triggered"]
  1000dc6b4  mov     x29, x29
  1000dc6b8  bl      _objc_retainAutoreleasedReturnValue
  1000dc6bc  mov     x20, x0
  1000dc6c0  mov     x1, x27
  1000dc6c4  bl      _objc_msgSend                            ; [[[[self labelTagAnimationTriggers] objectForKey:[NSNumber numberWithInteger:[x0 tag]]] objectForKey:@"triggered"] boolValue]
  1000dc6c8  mov     x21, x0
  1000dc6cc  mov     x0, x20
  1000dc6d0  bl      _objc_release
  1000dc6d4  tbnz    w21, #0, loc_1000dc778                   ; if (([[[[self labelTagAnimationTriggers] objectForKey:[NSNumber numberWithInteger:[x0 tag]]] objectForKey:@"triggered"] boolValue] & 1))
  1000dc6d8  adrp    x8, #0x10041d000
  1000dc6dc  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000dc6e0  mov     w2, #1
  1000dc6e4  ldr     x1, [sp, #0x30]
  1000dc6e8  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  1000dc6ec  mov     x29, x29
  1000dc6f0  bl      _objc_retainAutoreleasedReturnValue
  1000dc6f4  mov     x20, x0
  1000dc6f8  mov     x0, x19
  1000dc6fc  ldr     x1, [sp, #0x28]
  1000dc700  mov     x2, x20
  1000dc704  adrp    x3, #0x1003c2000
  1000dc708  add     x3, x3, #0x8d0                           ; @"triggered"
  1000dc70c  bl      _objc_msgSend                            ; [[[self labelTagAnimationTriggers] objectForKey:[NSNumber numberWithInteger:[x0 tag]]] setObject:[NSNumber numberWithBool:1] forKey:@"triggered"]
  1000dc710  mov     x0, x20
  1000dc714  bl      _objc_release
  1000dc718  mov     x0, x19
  1000dc71c  mov     x1, x26
  1000dc720  adrp    x2, #0x1003c2000
  1000dc724  add     x2, x2, #0x8f0                           ; @"killed"
  1000dc728  bl      _objc_msgSend                            ; [[[self labelTagAnimationTriggers] objectForKey:[NSNumber numberWithInteger:[x0 tag]]] objectForKey:@"killed"]
  1000dc72c  mov     x29, x29
  1000dc730  bl      _objc_retainAutoreleasedReturnValue
  1000dc734  mov     x20, x0
  1000dc738  ldr     x1, [sp, #0x20]
  1000dc73c  bl      _objc_msgSend                            ; [[[[self labelTagAnimationTriggers] objectForKey:[NSNumber numberWithInteger:[x0 tag]]] objectForKey:@"killed"] integerValue]
  1000dc740  mov     x21, x0
  1000dc744  mov     x0, x20
  1000dc748  bl      _objc_release
  1000dc74c  mov     x0, x28
  1000dc750  ldr     x1, [sp, #0x18]
  1000dc754  adrp    x2, #0x1003ba000
  1000dc758  add     x2, x2, #0x1f0                           ; @"%d"
  1000dc75c  bl      _objc_msgSend                            ; [x0 setFormat:@"%d"]
  1000dc760  scvtf   s1, x21                                  ; t1 = (float)[[[[self labelTagAnimationTriggers] objectForKey:[NSNumber numberWithInteger:[x0 tag]]] objectForKey:@"killed"] integerValue]
  1000dc764  movi    v0.16b, #0
  1000dc768  mov     x0, x28
  1000dc76c  ldr     x1, [sp, #0x10]
  1000dc770  mov     v2.16b, v8.16b
  1000dc774  bl      _objc_msgSend                            ; [x0 countFrom:0 to:t1 withDuration:4]
loc_1000dc778:
  1000dc778  mov     x0, x19
  1000dc77c  bl      _objc_release
  1000dc780  add     x23, x23, #1
  1000dc784  cmp     x23, x22
  1000dc788  b.lo    loc_1000dc608                            ; if ((x23 + 1) <u [[self labelTags] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16])
  1000dc78c  add     x2, sp, #0x58
  1000dc790  add     x3, sp, #0x98
  1000dc794  mov     w4, #0x10
  1000dc798  ldr     x0, [sp, #0x38]
  1000dc79c  ldr     x1, [sp, #8]
  1000dc7a0  bl      _objc_msgSend                            ; [[self labelTags] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  1000dc7a4  mov     x22, x0
  1000dc7a8  cbnz    x22, loc_1000dc604                       ; if ([[self labelTags] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] != 0)
loc_1000dc7ac:
  1000dc7ac  ldr     x0, [sp, #0x38]
  1000dc7b0  bl      _objc_release
  1000dc7b4  ldur    x8, [x29, #-0x68]
  1000dc7b8  adrp    x9, #0x1003b0000
  1000dc7bc  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000dc7c0  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000dc7c4  sub     x8, x9, x8
  1000dc7c8  cbnz    x8, loc_1000dc7f0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000dc7cc  sub     sp, x29, #0x60
  1000dc7d0  ldp     x29, x30, [sp, #0x60]
  1000dc7d4  ldp     x20, x19, [sp, #0x50]
  1000dc7d8  ldp     x22, x21, [sp, #0x40]
  1000dc7dc  ldp     x24, x23, [sp, #0x30]
  1000dc7e0  ldp     x26, x25, [sp, #0x20]
  1000dc7e4  ldp     x28, x27, [sp, #0x10]
  1000dc7e8  ldp     d9, d8, [sp], #0x70
  1000dc7ec  ret
loc_1000dc7f0:
  1000dc7f0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000dc7f4  mov     x22, x0
  1000dc7f8  b       loc_1000dc834
loc_1000dc7fc:
  1000dc7fc  mov     x22, x0
  1000dc800  b       loc_1000dc83c
  1000dc804  mov     x22, x0
  1000dc808  b       loc_1000dc818
  1000dc80c  mov     x22, x0
  1000dc810  mov     x0, x20
  1000dc814  bl      _objc_release
loc_1000dc818:
  1000dc818  mov     x0, x21
  1000dc81c  b       loc_1000dc838
  1000dc820  b       loc_1000dc828
  1000dc824  b       loc_1000dc828
loc_1000dc828:
  1000dc828  mov     x22, x0
  1000dc82c  mov     x0, x20
  1000dc830  bl      _objc_release
loc_1000dc834:
  1000dc834  mov     x0, x19
loc_1000dc838:
  1000dc838  bl      _objc_release
loc_1000dc83c:
  1000dc83c  ldr     x0, [sp, #0x38]
  1000dc840  bl      _objc_release
  1000dc844  mov     x0, x22
  1000dc848  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000dc84c  b       loc_1000dc7fc
  1000dc850  b       loc_1000dc7fc

; ======================================================================
; -[ADGameOverEndlessStatsEnemies scrollViewFrame]
; address 0x1000dc854  size 64  kind objc
; ======================================================================
  1000dc854  stp     x29, x30, [sp, #-0x10]!
  1000dc858  mov     x29, sp
  1000dc85c  sub     sp, sp, #0x20
  1000dc860  adrp    x8, #0x100420000
  1000dc864  ldrsw   x8, [x8, #0x4e4]                         ; ivar offset ADGameOverEndlessStatsEnemies._scrollViewFrame (+0x90)
  1000dc868  add     x1, x0, x8
  1000dc86c  mov     x0, sp
  1000dc870  mov     w2, #0x20
  1000dc874  mov     w3, #1
  1000dc878  mov     w4, #0
  1000dc87c  bl      _objc_copyStruct                         ; objc_copyStruct(&sp[0x0], x1, 32, 1)
  1000dc880  ldp     d0, d1, [sp]
  1000dc884  ldp     d2, d3, [sp, #0x10]
  1000dc888  mov     sp, x29
  1000dc88c  ldp     x29, x30, [sp], #0x10
  1000dc890  ret

; ======================================================================
; -[ADGameOverEndlessStatsEnemies setScrollViewFrame:]
; address 0x1000dc894  size 64  kind objc
; ======================================================================
  1000dc894  stp     x29, x30, [sp, #-0x10]!
  1000dc898  mov     x29, sp
  1000dc89c  sub     sp, sp, #0x20
  1000dc8a0  stp     d0, d1, [sp]
  1000dc8a4  stp     d2, d3, [sp, #0x10]
  1000dc8a8  adrp    x8, #0x100420000
  1000dc8ac  ldrsw   x8, [x8, #0x4e4]                         ; ivar offset ADGameOverEndlessStatsEnemies._scrollViewFrame (+0x90)
  1000dc8b0  add     x0, x0, x8
  1000dc8b4  mov     x1, sp
  1000dc8b8  mov     w2, #0x20
  1000dc8bc  mov     w3, #1
  1000dc8c0  mov     w4, #0
  1000dc8c4  bl      _objc_copyStruct                         ; objc_copyStruct(x0, &sp[0x0], 32, 1)
  1000dc8c8  mov     sp, x29
  1000dc8cc  ldp     x29, x30, [sp], #0x10
  1000dc8d0  ret

; ======================================================================
; -[ADGameOverEndlessStatsEnemies labelTags]
; address 0x1000dc8d4  size 16  kind objc
; ======================================================================
  1000dc8d4  adrp    x8, #0x100420000
  1000dc8d8  ldrsw   x2, [x8, #0x4e8]                         ; ivar offset ADGameOverEndlessStatsEnemies._labelTags (+0x78)
  1000dc8dc  mov     w3, #1
  1000dc8e0  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADGameOverEndlessStatsEnemies setLabelTags:]
; address 0x1000dc8e4  size 12  kind objc
; ======================================================================
  1000dc8e4  adrp    x8, #0x100420000
  1000dc8e8  ldrsw   x3, [x8, #0x4e8]                         ; ivar offset ADGameOverEndlessStatsEnemies._labelTags (+0x78)
  1000dc8ec  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADGameOverEndlessStatsEnemies labelTagAnimationTriggers]
; address 0x1000dc8f0  size 16  kind objc
; ======================================================================
  1000dc8f0  adrp    x8, #0x100420000
  1000dc8f4  ldrsw   x2, [x8, #0x4ec]                         ; ivar offset ADGameOverEndlessStatsEnemies._labelTagAnimationTriggers (+0x80)
  1000dc8f8  mov     w3, #1
  1000dc8fc  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADGameOverEndlessStatsEnemies setLabelTagAnimationTriggers:]
; address 0x1000dc900  size 12  kind objc
; ======================================================================
  1000dc900  adrp    x8, #0x100420000
  1000dc904  ldrsw   x3, [x8, #0x4ec]                         ; ivar offset ADGameOverEndlessStatsEnemies._labelTagAnimationTriggers (+0x80)
  1000dc908  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADGameOverEndlessStatsEnemies contentView]
; address 0x1000dc90c  size 16  kind objc
; ======================================================================
  1000dc90c  adrp    x8, #0x100420000
  1000dc910  ldrsw   x2, [x8, #0x4f0]                         ; ivar offset ADGameOverEndlessStatsEnemies._contentView (+0x88)
  1000dc914  mov     w3, #1
  1000dc918  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADGameOverEndlessStatsEnemies setContentView:]
; address 0x1000dc91c  size 12  kind objc
; ======================================================================
  1000dc91c  adrp    x8, #0x100420000
  1000dc920  ldrsw   x3, [x8, #0x4f0]                         ; ivar offset ADGameOverEndlessStatsEnemies._contentView (+0x88)
  1000dc924  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADGameOverEndlessStatsEnemies contentViewWidth]
; address 0x1000dc928  size 20  kind objc
; ======================================================================
  1000dc928  adrp    x8, #0x100420000
  1000dc92c  ldrsw   x8, [x8, #0x4f4]                         ; ivar offset ADGameOverEndlessStatsEnemies._contentViewWidth (+0x70)
  1000dc930  ldr     w8, [x0, x8]                             ; w8 = self->_contentViewWidth
  1000dc934  fmov    s0, w8
  1000dc938  ret

; ======================================================================
; -[ADGameOverEndlessStatsEnemies setContentViewWidth:]
; address 0x1000dc93c  size 20  kind objc
; ======================================================================
  1000dc93c  fmov    w8, s0
  1000dc940  adrp    x9, #0x100420000
  1000dc944  ldrsw   x9, [x9, #0x4f4]                         ; ivar offset ADGameOverEndlessStatsEnemies._contentViewWidth (+0x70)
  1000dc948  str     w8, [x0, x9]                             ; self->_contentViewWidth = arg1
  1000dc94c  ret

; ======================================================================
; -[ADGameOverEndlessStatsEnemies contentViewHeight]
; address 0x1000dc950  size 20  kind objc
; ======================================================================
  1000dc950  adrp    x8, #0x100420000
  1000dc954  ldrsw   x8, [x8, #0x4f8]                         ; ivar offset ADGameOverEndlessStatsEnemies._contentViewHeight (+0x74)
  1000dc958  ldr     w8, [x0, x8]                             ; w8 = self->_contentViewHeight
  1000dc95c  fmov    s0, w8
  1000dc960  ret

; ======================================================================
; -[ADGameOverEndlessStatsEnemies setContentViewHeight:]
; address 0x1000dc964  size 20  kind objc
; ======================================================================
  1000dc964  fmov    w8, s0
  1000dc968  adrp    x9, #0x100420000
  1000dc96c  ldrsw   x9, [x9, #0x4f8]                         ; ivar offset ADGameOverEndlessStatsEnemies._contentViewHeight (+0x74)
  1000dc970  str     w8, [x0, x9]                             ; self->_contentViewHeight = arg1
  1000dc974  ret

; ======================================================================
; -[ADGameOverEndlessStatsEnemies .cxx_destruct]
; address 0x1000dc978  size 84  kind objc
; ======================================================================
  1000dc978  stp     x20, x19, [sp, #-0x20]!
  1000dc97c  stp     x29, x30, [sp, #0x10]
  1000dc980  add     x29, sp, #0x10
  1000dc984  mov     x19, x0
  1000dc988  adrp    x8, #0x100420000
  1000dc98c  ldrsw   x8, [x8, #0x4f0]                         ; ivar offset ADGameOverEndlessStatsEnemies._contentView (+0x88)
  1000dc990  add     x0, x19, x8
  1000dc994  mov     x1, #0
  1000dc998  bl      _objc_storeStrong
  1000dc99c  adrp    x8, #0x100420000
  1000dc9a0  ldrsw   x8, [x8, #0x4ec]                         ; ivar offset ADGameOverEndlessStatsEnemies._labelTagAnimationTriggers (+0x80)
  1000dc9a4  add     x0, x19, x8
  1000dc9a8  mov     x1, #0
  1000dc9ac  bl      _objc_storeStrong
  1000dc9b0  mov     x1, #0
  1000dc9b4  adrp    x8, #0x100420000
  1000dc9b8  ldrsw   x8, [x8, #0x4e8]                         ; ivar offset ADGameOverEndlessStatsEnemies._labelTags (+0x78)
  1000dc9bc  add     x0, x19, x8
  1000dc9c0  ldp     x29, x30, [sp, #0x10]
  1000dc9c4  ldp     x20, x19, [sp], #0x20
  1000dc9c8  b       _objc_storeStrong

; ======================================================================
; -[ADGameOverEndlessStatsEnemies .cxx_construct]
; address 0x1000dc9cc  size 4  kind objc
; ======================================================================
  1000dc9cc  ret
