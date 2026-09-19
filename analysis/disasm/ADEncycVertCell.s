// unit ADEncycVertCell — 12 functions
//   0x1000d6e40      60  -[ADEncycVertCell initWithStyle:reuseIdentifier:]
//   0x1000d6e7c      92  -[ADEncycVertCell awakeFromNib]
//   0x1000d6ed8      60  -[ADEncycVertCell setSelected:animated:]
//   0x1000d6f14     172  -[ADEncycVertCell zombieNameButtonPressed:]
//   0x1000d6fc0     164  -[ADEncycVertCell setAccessibilityElementsHidden:]
//   0x1000d7064      16  -[ADEncycVertCell zombieNameButton]
//   0x1000d7074      56  -[ADEncycVertCell setZombieNameButton:]
//   0x1000d70ac      32  -[ADEncycVertCell delegate]
//   0x1000d70cc      20  -[ADEncycVertCell setDelegate:]
//   0x1000d70e0      16  -[ADEncycVertCell cellName]
//   0x1000d70f0      12  -[ADEncycVertCell setCellName:]
//   0x1000d70fc      80  -[ADEncycVertCell .cxx_destruct]

; ======================================================================
; -[ADEncycVertCell initWithStyle:reuseIdentifier:]
; address 0x1000d6e40  size 60  kind objc
; ======================================================================
  1000d6e40  stp     x29, x30, [sp, #-0x10]!
  1000d6e44  mov     x29, sp
  1000d6e48  sub     sp, sp, #0x10
  1000d6e4c  str     x0, [sp]
  1000d6e50  adrp    x8, #0x10041e000
  1000d6e54  ldr     x8, [x8, #0xfe8]
  1000d6e58  str     x8, [sp, #8]
  1000d6e5c  adrp    x8, #0x100417000
  1000d6e60  nop
  1000d6e64  ldr     x1, [x8, #0x3c0]
  1000d6e68  mov     x0, sp
  1000d6e6c  bl      _objc_msgSendSuper2                      ; [super initWithStyle:arg1 reuseIdentifier:arg2]
  1000d6e70  mov     sp, x29
  1000d6e74  ldp     x29, x30, [sp], #0x10
  1000d6e78  ret

; ======================================================================
; -[ADEncycVertCell awakeFromNib]
; address 0x1000d6e7c  size 92  kind objc
; ======================================================================
  1000d6e7c  stp     x20, x19, [sp, #-0x20]!
  1000d6e80  stp     x29, x30, [sp, #0x10]
  1000d6e84  add     x29, sp, #0x10
  1000d6e88  adrp    x8, #0x100419000
  1000d6e8c  nop
  1000d6e90  ldr     x1, [x8, #0xad0]
  1000d6e94  bl      _objc_msgSend                            ; [self zombieNameButton]
  1000d6e98  mov     x29, x29
  1000d6e9c  bl      _objc_retainAutoreleasedReturnValue
  1000d6ea0  mov     x19, x0
  1000d6ea4  adrp    x8, #0x100416000
  1000d6ea8  nop
  1000d6eac  ldr     x1, [x8, #0xba0]
  1000d6eb0  bl      _objc_msgSend                            ; [[self zombieNameButton] setupAsMain]
  1000d6eb4  mov     x0, x19
  1000d6eb8  ldp     x29, x30, [sp, #0x10]
  1000d6ebc  ldp     x20, x19, [sp], #0x20
  1000d6ec0  b       _objc_release
  1000d6ec4  mov     x20, x0
  1000d6ec8  mov     x0, x19
  1000d6ecc  bl      _objc_release
  1000d6ed0  mov     x0, x20
  1000d6ed4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncycVertCell setSelected:animated:]
; address 0x1000d6ed8  size 60  kind objc
; ======================================================================
  1000d6ed8  stp     x29, x30, [sp, #-0x10]!
  1000d6edc  mov     x29, sp
  1000d6ee0  sub     sp, sp, #0x10
  1000d6ee4  str     x0, [sp]
  1000d6ee8  adrp    x8, #0x10041e000
  1000d6eec  ldr     x8, [x8, #0xfe8]
  1000d6ef0  str     x8, [sp, #8]
  1000d6ef4  adrp    x8, #0x100416000
  1000d6ef8  nop
  1000d6efc  ldr     x1, [x8, #0xc58]
  1000d6f00  mov     x0, sp
  1000d6f04  bl      _objc_msgSendSuper2                      ; [super setSelected:arg1 animated:arg2]
  1000d6f08  mov     sp, x29
  1000d6f0c  ldp     x29, x30, [sp], #0x10
  1000d6f10  ret

; ======================================================================
; -[ADEncycVertCell zombieNameButtonPressed:]
; address 0x1000d6f14  size 172  kind objc
; ======================================================================
  1000d6f14  stp     x20, x19, [sp, #-0x20]!
  1000d6f18  stp     x29, x30, [sp, #0x10]
  1000d6f1c  add     x29, sp, #0x10
  1000d6f20  mov     x20, x0
  1000d6f24  adrp    x8, #0x100416000
  1000d6f28  nop
  1000d6f2c  ldr     x1, [x8, #0xc18]
  1000d6f30  bl      _objc_msgSend                            ; [self delegate]
  1000d6f34  mov     x29, x29
  1000d6f38  bl      _objc_retainAutoreleasedReturnValue
  1000d6f3c  mov     x19, x0
  1000d6f40  adrp    x8, #0x10041a000
  1000d6f44  nop
  1000d6f48  ldr     x1, [x8, #0xe80]
  1000d6f4c  mov     x0, x20
  1000d6f50  bl      _objc_msgSend                            ; [self cellName]
  1000d6f54  mov     x29, x29
  1000d6f58  bl      _objc_retainAutoreleasedReturnValue
  1000d6f5c  mov     x20, x0
  1000d6f60  adrp    x8, #0x10041a000
  1000d6f64  nop
  1000d6f68  ldr     x1, [x8, #0xe88]
  1000d6f6c  mov     x0, x19
  1000d6f70  mov     x2, x20
  1000d6f74  bl      _objc_msgSend                            ; [[self delegate] cellSelectedWithZombieName:[self cellName]]
  1000d6f78  mov     x0, x20
  1000d6f7c  bl      _objc_release
  1000d6f80  mov     x0, x19
  1000d6f84  ldp     x29, x30, [sp, #0x10]
  1000d6f88  ldp     x20, x19, [sp], #0x20
  1000d6f8c  b       _objc_release
  1000d6f90  mov     x20, x0
  1000d6f94  b       loc_1000d6fb8
  1000d6f98  mov     x20, x0
  1000d6f9c  b       loc_1000d6fb0
  1000d6fa0  mov     x1, x20
  1000d6fa4  mov     x20, x0
  1000d6fa8  mov     x0, x1
  1000d6fac  bl      _objc_release
loc_1000d6fb0:
  1000d6fb0  mov     x0, x19
  1000d6fb4  bl      _objc_release
loc_1000d6fb8:
  1000d6fb8  mov     x0, x20
  1000d6fbc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncycVertCell setAccessibilityElementsHidden:]
; address 0x1000d6fc0  size 164  kind objc
; ======================================================================
  1000d6fc0  stp     x22, x21, [sp, #-0x30]!
  1000d6fc4  stp     x20, x19, [sp, #0x10]
  1000d6fc8  stp     x29, x30, [sp, #0x20]
  1000d6fcc  add     x29, sp, #0x20
  1000d6fd0  mov     x19, x2
  1000d6fd4  adrp    x8, #0x100418000
  1000d6fd8  nop
  1000d6fdc  ldr     x1, [x8, #0x760]
  1000d6fe0  bl      _objc_msgSend                            ; [self contentView]
  1000d6fe4  mov     x29, x29
  1000d6fe8  bl      _objc_retainAutoreleasedReturnValue
  1000d6fec  mov     x20, x0
  1000d6ff0  adrp    x8, #0x100417000
  1000d6ff4  nop
  1000d6ff8  ldr     x1, [x8, #0xd08]
  1000d6ffc  mov     w2, #0x63
  1000d7000  bl      _objc_msgSend                            ; [[self contentView] viewWithTag:99]
  1000d7004  mov     x29, x29
  1000d7008  bl      _objc_retainAutoreleasedReturnValue
  1000d700c  mov     x21, x0
  1000d7010  mov     x0, x20
  1000d7014  bl      _objc_release
  1000d7018  adrp    x8, #0x100418000
  1000d701c  nop
  1000d7020  ldr     x1, [x8, #0xaf0]
  1000d7024  mov     x0, x21
  1000d7028  mov     x2, x19
  1000d702c  bl      _objc_msgSend                            ; [[[self contentView] viewWithTag:99] setAccessibilityElementsHidden:arg1]
  1000d7030  mov     x0, x21
  1000d7034  ldp     x29, x30, [sp, #0x20]
  1000d7038  ldp     x20, x19, [sp, #0x10]
  1000d703c  ldp     x22, x21, [sp], #0x30
  1000d7040  b       _objc_release
  1000d7044  mov     x19, x0
  1000d7048  mov     x0, x20
  1000d704c  b       loc_1000d7058
  1000d7050  mov     x19, x0
  1000d7054  mov     x0, x21
loc_1000d7058:
  1000d7058  bl      _objc_release
  1000d705c  mov     x0, x19
  1000d7060  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncycVertCell zombieNameButton]
; address 0x1000d7064  size 16  kind objc
; ======================================================================
  1000d7064  adrp    x8, #0x100420000
  1000d7068  ldrsw   x8, [x8, #0x47c]                         ; ivar offset ADEncycVertCell._zombieNameButton (+0x68)
  1000d706c  ldr     x0, [x0, x8]                             ; x0 = self->_zombieNameButton
  1000d7070  ret

; ======================================================================
; -[ADEncycVertCell setZombieNameButton:]
; address 0x1000d7074  size 56  kind objc
; ======================================================================
  1000d7074  stp     x20, x19, [sp, #-0x20]!
  1000d7078  stp     x29, x30, [sp, #0x10]
  1000d707c  add     x29, sp, #0x10
  1000d7080  mov     x19, x0
  1000d7084  adrp    x8, #0x100420000
  1000d7088  ldrsw   x20, [x8, #0x47c]                        ; ivar offset ADEncycVertCell._zombieNameButton (+0x68)
  1000d708c  mov     x0, x2
  1000d7090  bl      _objc_retain
  1000d7094  ldr     x8, [x19, x20]                           ; x8 = self->_zombieNameButton
  1000d7098  str     x0, [x19, x20]                           ; self->_zombieNameButton = arg1
  1000d709c  mov     x0, x8
  1000d70a0  ldp     x29, x30, [sp, #0x10]
  1000d70a4  ldp     x20, x19, [sp], #0x20
  1000d70a8  b       _objc_release

; ======================================================================
; -[ADEncycVertCell delegate]
; address 0x1000d70ac  size 32  kind objc
; ======================================================================
  1000d70ac  stp     x29, x30, [sp, #-0x10]!
  1000d70b0  mov     x29, sp
  1000d70b4  adrp    x8, #0x100420000
  1000d70b8  ldrsw   x8, [x8, #0x480]                         ; ivar offset ADEncycVertCell._delegate (+0x70)
  1000d70bc  add     x0, x0, x8
  1000d70c0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000d70c4  ldp     x29, x30, [sp], #0x10
  1000d70c8  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADEncycVertCell setDelegate:]
; address 0x1000d70cc  size 20  kind objc
; ======================================================================
  1000d70cc  adrp    x8, #0x100420000
  1000d70d0  ldrsw   x8, [x8, #0x480]                         ; ivar offset ADEncycVertCell._delegate (+0x70)
  1000d70d4  add     x0, x0, x8
  1000d70d8  mov     x1, x2
  1000d70dc  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADEncycVertCell cellName]
; address 0x1000d70e0  size 16  kind objc
; ======================================================================
  1000d70e0  adrp    x8, #0x100420000
  1000d70e4  ldrsw   x2, [x8, #0x484]                         ; ivar offset ADEncycVertCell._cellName (+0x78)
  1000d70e8  mov     w3, #1
  1000d70ec  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADEncycVertCell setCellName:]
; address 0x1000d70f0  size 12  kind objc
; ======================================================================
  1000d70f0  adrp    x8, #0x100420000
  1000d70f4  ldrsw   x3, [x8, #0x484]                         ; ivar offset ADEncycVertCell._cellName (+0x78)
  1000d70f8  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADEncycVertCell .cxx_destruct]
; address 0x1000d70fc  size 80  kind objc
; ======================================================================
  1000d70fc  stp     x20, x19, [sp, #-0x20]!
  1000d7100  stp     x29, x30, [sp, #0x10]
  1000d7104  add     x29, sp, #0x10
  1000d7108  mov     x19, x0
  1000d710c  adrp    x8, #0x100420000
  1000d7110  ldrsw   x8, [x8, #0x484]                         ; ivar offset ADEncycVertCell._cellName (+0x78)
  1000d7114  add     x0, x19, x8
  1000d7118  mov     x1, #0
  1000d711c  bl      _objc_storeStrong
  1000d7120  adrp    x8, #0x100420000
  1000d7124  ldrsw   x8, [x8, #0x480]                         ; ivar offset ADEncycVertCell._delegate (+0x70)
  1000d7128  add     x0, x19, x8
  1000d712c  bl      _objc_destroyWeak
  1000d7130  mov     x1, #0
  1000d7134  adrp    x8, #0x100420000
  1000d7138  ldrsw   x8, [x8, #0x47c]                         ; ivar offset ADEncycVertCell._zombieNameButton (+0x68)
  1000d713c  add     x0, x19, x8
  1000d7140  ldp     x29, x30, [sp, #0x10]
  1000d7144  ldp     x20, x19, [sp], #0x20
  1000d7148  b       _objc_storeStrong
