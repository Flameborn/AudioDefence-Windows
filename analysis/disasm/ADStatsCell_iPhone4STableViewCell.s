// unit ADStatsCell_iPhone4STableViewCell — 8 functions
//   0x1000417b0       4  -[ADStatsCell_iPhone4STableViewCell awakeFromNib]
//   0x1000417b4      60  -[ADStatsCell_iPhone4STableViewCell setSelected:animated:]
//   0x1000417f0      16  -[ADStatsCell_iPhone4STableViewCell placeholderKey]
//   0x100041800      56  -[ADStatsCell_iPhone4STableViewCell setPlaceholderKey:]
//   0x100041838      16  -[ADStatsCell_iPhone4STableViewCell placeholderValue]
//   0x100041848      56  -[ADStatsCell_iPhone4STableViewCell setPlaceholderValue:]
//   0x100041880      64  -[ADStatsCell_iPhone4STableViewCell .cxx_destruct]
//   0x1000418c0     152  sub_1000418c0

; ======================================================================
; -[ADStatsCell_iPhone4STableViewCell awakeFromNib]
; address 0x1000417b0  size 4  kind objc
; ======================================================================
  1000417b0  ret

; ======================================================================
; -[ADStatsCell_iPhone4STableViewCell setSelected:animated:]
; address 0x1000417b4  size 60  kind objc
; ======================================================================
  1000417b4  stp     x29, x30, [sp, #-0x10]!
  1000417b8  mov     x29, sp
  1000417bc  sub     sp, sp, #0x10
  1000417c0  str     x0, [sp]
  1000417c4  adrp    x8, #0x10041e000
  1000417c8  ldr     x8, [x8, #0xcf8]
  1000417cc  str     x8, [sp, #8]
  1000417d0  adrp    x8, #0x100416000
  1000417d4  nop
  1000417d8  ldr     x1, [x8, #0xc58]
  1000417dc  mov     x0, sp
  1000417e0  bl      _objc_msgSendSuper2                      ; [super setSelected:arg1 animated:arg2]
  1000417e4  mov     sp, x29
  1000417e8  ldp     x29, x30, [sp], #0x10
  1000417ec  ret

; ======================================================================
; -[ADStatsCell_iPhone4STableViewCell placeholderKey]
; address 0x1000417f0  size 16  kind objc
; ======================================================================
  1000417f0  adrp    x8, #0x10041f000
  1000417f4  ldrsw   x8, [x8, #0x900]                         ; ivar offset ADStatsCell_iPhone4STableViewCell._placeholderKey (+0x68)
  1000417f8  ldr     x0, [x0, x8]                             ; x0 = self->_placeholderKey
  1000417fc  ret

; ======================================================================
; -[ADStatsCell_iPhone4STableViewCell setPlaceholderKey:]
; address 0x100041800  size 56  kind objc
; ======================================================================
  100041800  stp     x20, x19, [sp, #-0x20]!
  100041804  stp     x29, x30, [sp, #0x10]
  100041808  add     x29, sp, #0x10
  10004180c  mov     x19, x0
  100041810  adrp    x8, #0x10041f000
  100041814  ldrsw   x20, [x8, #0x900]                        ; ivar offset ADStatsCell_iPhone4STableViewCell._placeholderKey (+0x68)
  100041818  mov     x0, x2
  10004181c  bl      _objc_retain
  100041820  ldr     x8, [x19, x20]                           ; x8 = self->_placeholderKey
  100041824  str     x0, [x19, x20]                           ; self->_placeholderKey = arg1
  100041828  mov     x0, x8
  10004182c  ldp     x29, x30, [sp, #0x10]
  100041830  ldp     x20, x19, [sp], #0x20
  100041834  b       _objc_release

; ======================================================================
; -[ADStatsCell_iPhone4STableViewCell placeholderValue]
; address 0x100041838  size 16  kind objc
; ======================================================================
  100041838  adrp    x8, #0x10041f000
  10004183c  ldrsw   x8, [x8, #0x904]                         ; ivar offset ADStatsCell_iPhone4STableViewCell._placeholderValue (+0x70)
  100041840  ldr     x0, [x0, x8]                             ; x0 = self->_placeholderValue
  100041844  ret

; ======================================================================
; -[ADStatsCell_iPhone4STableViewCell setPlaceholderValue:]
; address 0x100041848  size 56  kind objc
; ======================================================================
  100041848  stp     x20, x19, [sp, #-0x20]!
  10004184c  stp     x29, x30, [sp, #0x10]
  100041850  add     x29, sp, #0x10
  100041854  mov     x19, x0
  100041858  adrp    x8, #0x10041f000
  10004185c  ldrsw   x20, [x8, #0x904]                        ; ivar offset ADStatsCell_iPhone4STableViewCell._placeholderValue (+0x70)
  100041860  mov     x0, x2
  100041864  bl      _objc_retain
  100041868  ldr     x8, [x19, x20]                           ; x8 = self->_placeholderValue
  10004186c  str     x0, [x19, x20]                           ; self->_placeholderValue = arg1
  100041870  mov     x0, x8
  100041874  ldp     x29, x30, [sp, #0x10]
  100041878  ldp     x20, x19, [sp], #0x20
  10004187c  b       _objc_release

; ======================================================================
; -[ADStatsCell_iPhone4STableViewCell .cxx_destruct]
; address 0x100041880  size 64  kind objc
; ======================================================================
  100041880  stp     x20, x19, [sp, #-0x20]!
  100041884  stp     x29, x30, [sp, #0x10]
  100041888  add     x29, sp, #0x10
  10004188c  mov     x19, x0
  100041890  adrp    x8, #0x10041f000
  100041894  ldrsw   x8, [x8, #0x904]                         ; ivar offset ADStatsCell_iPhone4STableViewCell._placeholderValue (+0x70)
  100041898  add     x0, x19, x8
  10004189c  mov     x1, #0
  1000418a0  bl      _objc_storeStrong
  1000418a4  mov     x1, #0
  1000418a8  adrp    x8, #0x10041f000
  1000418ac  ldrsw   x8, [x8, #0x900]                         ; ivar offset ADStatsCell_iPhone4STableViewCell._placeholderKey (+0x68)
  1000418b0  add     x0, x19, x8
  1000418b4  ldp     x29, x30, [sp, #0x10]
  1000418b8  ldp     x20, x19, [sp], #0x20
  1000418bc  b       _objc_storeStrong

; ======================================================================
; sub_1000418c0
; address 0x1000418c0  size 152  kind sub
; ======================================================================
  1000418c0  stp     x22, x21, [sp, #-0x30]!
  1000418c4  stp     x20, x19, [sp, #0x10]
  1000418c8  stp     x29, x30, [sp, #0x20]
  1000418cc  add     x29, sp, #0x20
  1000418d0  mov     x21, x1
  1000418d4  mov     x22, x0
  1000418d8  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  1000418dc  mov     x19, x0
  1000418e0  adrp    x8, #0x10041e000
  1000418e4  ldr     x0, [x8, #0x188]                         ; class ADAppDelegate
  1000418e8  adrp    x8, #0x100417000
  1000418ec  nop
  1000418f0  ldr     x1, [x8, #0x2e0]
  1000418f4  bl      _objc_msgSend                            ; [ADAppDelegate class]
  1000418f8  bl      _NSStringFromClass                       ; NSStringFromClass([ADAppDelegate class])
  1000418fc  mov     x29, x29
  100041900  bl      _objc_retainAutoreleasedReturnValue
  100041904  mov     x20, x0
  100041908  mov     x2, #0
  10004190c  mov     x0, x22
  100041910  mov     x1, x21
  100041914  mov     x3, x20
  100041918  bl      _UIApplicationMain                       ; UIApplicationMain(a0, a1, 0, NSStringFromClass([ADAppDelegate class]))
  10004191c  mov     x21, x0
  100041920  mov     x0, x20
  100041924  bl      _objc_release
  100041928  mov     x0, x19
  10004192c  bl      _objc_autoreleasePoolPop
  100041930  mov     x0, x21
  100041934  ldp     x29, x30, [sp, #0x20]
  100041938  ldp     x20, x19, [sp, #0x10]
  10004193c  ldp     x22, x21, [sp], #0x30
  100041940  ret
  100041944  mov     x19, x0
  100041948  mov     x0, x20
  10004194c  bl      _objc_release
  100041950  mov     x0, x19
  100041954  bl      __Unwind_Resume                          ; Unwind_Resume()
