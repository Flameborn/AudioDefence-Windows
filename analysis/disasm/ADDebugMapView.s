// unit ADDebugMapView — 10 functions
//   0x1000aed44      60  -[ADDebugMapView initWithFrame:]
//   0x1000aed80     324  -[ADDebugMapView drawRect:]
//   0x1000aeec4     444  -[ADDebugMapView drawFieldForSpread:inRect:]
//   0x1000af080      16  -[ADDebugMapView weapon]
//   0x1000af090      56  -[ADDebugMapView setWeapon:]
//   0x1000af0c8      20  -[ADDebugMapView angle]
//   0x1000af0dc      20  -[ADDebugMapView setAngle:]
//   0x1000af0f0      20  -[ADDebugMapView range]
//   0x1000af104      20  -[ADDebugMapView setRange:]
//   0x1000af118      20  -[ADDebugMapView .cxx_destruct]

; ======================================================================
; -[ADDebugMapView initWithFrame:]
; address 0x1000aed44  size 60  kind objc
; ======================================================================
  1000aed44  stp     x29, x30, [sp, #-0x10]!
  1000aed48  mov     x29, sp
  1000aed4c  sub     sp, sp, #0x10
  1000aed50  str     x0, [sp]
  1000aed54  adrp    x8, #0x10041e000
  1000aed58  ldr     x8, [x8, #0xf20]
  1000aed5c  str     x8, [sp, #8]
  1000aed60  adrp    x8, #0x100417000
  1000aed64  nop
  1000aed68  ldr     x1, [x8, #0x178]
  1000aed6c  mov     x0, sp
  1000aed70  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  1000aed74  mov     sp, x29
  1000aed78  ldp     x29, x30, [sp], #0x10
  1000aed7c  ret

; ======================================================================
; -[ADDebugMapView drawRect:]
; address 0x1000aed80  size 324  kind objc
; ======================================================================
  1000aed80  stp     d13, d12, [sp, #-0x60]!
  1000aed84  stp     d11, d10, [sp, #0x10]
  1000aed88  stp     d9, d8, [sp, #0x20]
  1000aed8c  stp     x22, x21, [sp, #0x30]
  1000aed90  stp     x20, x19, [sp, #0x40]
  1000aed94  stp     x29, x30, [sp, #0x50]
  1000aed98  add     x29, sp, #0x50
  1000aed9c  mov     v8.16b, v3.16b
  1000aeda0  mov     v9.16b, v2.16b
  1000aeda4  mov     v10.16b, v1.16b
  1000aeda8  mov     v11.16b, v0.16b
  1000aedac  mov     x19, x0
  1000aedb0  adrp    x8, #0x100418000
  1000aedb4  nop
  1000aedb8  ldr     x20, [x8, #0x930]
  1000aedbc  mov     x1, x20
  1000aedc0  bl      _objc_msgSend                            ; [self weapon]
  1000aedc4  mov     x29, x29
  1000aedc8  bl      _objc_retainAutoreleasedReturnValue
  1000aedcc  mov     x22, x0
  1000aedd0  adrp    x8, #0x100417000
  1000aedd4  nop
  1000aedd8  ldr     x1, [x8, #0x538]
  1000aeddc  bl      _objc_msgSend                            ; [[self weapon] spread]
  1000aede0  fcvt    d0, s0
  1000aede4  nop
  1000aede8  ldr     d12, #0x1001819e8                        ; d12 = 3.14159265
  1000aedec  fmul    d0, d0, d12
  1000aedf0  nop
  1000aedf4  ldr     d13, #0x1001819f0                        ; d13 = 180.0
  1000aedf8  fdiv    d0, d0, d13
  1000aedfc  fcvt    s0, d0
  1000aee00  adrp    x8, #0x10041a000
  1000aee04  nop
  1000aee08  ldr     x21, [x8, #0x598]
  1000aee0c  mov     x0, x19
  1000aee10  mov     x1, x21
  1000aee14  mov     v1.16b, v11.16b
  1000aee18  mov     v2.16b, v10.16b
  1000aee1c  mov     v3.16b, v9.16b
  1000aee20  mov     v4.16b, v8.16b
  1000aee24  bl      _objc_msgSend                            ; [self drawFieldForSpread:(([[self weapon] spread] * 3.14159) / 180) inRect:{arg1.0, arg1.1, arg1.2, arg1.3}]
  1000aee28  mov     x0, x22
  1000aee2c  bl      _objc_release
  1000aee30  mov     x0, x19
  1000aee34  mov     x1, x20
  1000aee38  bl      _objc_msgSend                            ; [self weapon]
  1000aee3c  mov     x29, x29
  1000aee40  bl      _objc_retainAutoreleasedReturnValue
  1000aee44  mov     x20, x0
  1000aee48  adrp    x8, #0x10041a000
  1000aee4c  nop
  1000aee50  ldr     x1, [x8, #0x5a0]
  1000aee54  bl      _objc_msgSend                            ; [[self weapon] criticalSpread]
  1000aee58  fcvt    d0, s0
  1000aee5c  fmul    d0, d0, d12
  1000aee60  fdiv    d0, d0, d13
  1000aee64  fcvt    s0, d0
  1000aee68  mov     x0, x19
  1000aee6c  mov     x1, x21
  1000aee70  mov     v1.16b, v11.16b
  1000aee74  mov     v2.16b, v10.16b
  1000aee78  mov     v3.16b, v9.16b
  1000aee7c  mov     v4.16b, v8.16b
  1000aee80  bl      _objc_msgSend                            ; [self drawFieldForSpread:(([[self weapon] criticalSpread] * 3.14159) / 180) inRect:{arg1.0, arg1.1, arg1.2, arg1.3}]
  1000aee84  mov     x0, x20
  1000aee88  ldp     x29, x30, [sp, #0x50]
  1000aee8c  ldp     x20, x19, [sp, #0x40]
  1000aee90  ldp     x22, x21, [sp, #0x30]
  1000aee94  ldp     d9, d8, [sp, #0x20]
  1000aee98  ldp     d11, d10, [sp, #0x10]
  1000aee9c  ldp     d13, d12, [sp], #0x60
  1000aeea0  b       _objc_release
  1000aeea4  mov     x19, x0
  1000aeea8  mov     x0, x22
  1000aeeac  b       loc_1000aeeb8
  1000aeeb0  mov     x19, x0
  1000aeeb4  mov     x0, x20
loc_1000aeeb8:
  1000aeeb8  bl      _objc_release
  1000aeebc  mov     x0, x19
  1000aeec0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDebugMapView drawFieldForSpread:inRect:]
; address 0x1000aeec4  size 444  kind objc
; ======================================================================
  1000aeec4  stp     d13, d12, [sp, #-0x60]!
  1000aeec8  stp     d11, d10, [sp, #0x10]
  1000aeecc  stp     d9, d8, [sp, #0x20]
  1000aeed0  stp     x22, x21, [sp, #0x30]
  1000aeed4  stp     x20, x19, [sp, #0x40]
  1000aeed8  stp     x29, x30, [sp, #0x50]
  1000aeedc  add     x29, sp, #0x50
  1000aeee0  mov     v8.16b, v4.16b
  1000aeee4  mov     v9.16b, v3.16b
  1000aeee8  mov     v10.16b, v2.16b
  1000aeeec  mov     v11.16b, v1.16b
  1000aeef0  mov     v12.16b, v0.16b
  1000aeef4  mov     x20, x0
  1000aeef8  adrp    x8, #0x10041a000
  1000aeefc  nop
  1000aef00  ldr     x1, [x8, #0x5a8]
  1000aef04  bl      _objc_msgSend                            ; [self angle]
  1000aef08  fmov    s1, #-0.50000000
  1000aef0c  fmul    s1, s12, s1
  1000aef10  fadd    s0, s0, s1
  1000aef14  fcvt    d13, s0
  1000aef18  fcvt    d0, s12
  1000aef1c  fadd    d12, d0, d13
  1000aef20  fmov    d0, #0.50000000
  1000aef24  fmul    d1, d9, d0
  1000aef28  fadd    d9, d1, d11
  1000aef2c  fmul    d0, d8, d0
  1000aef30  fadd    d8, d0, d10
  1000aef34  adrp    x8, #0x10041e000
  1000aef38  ldr     x19, [x8, #0x130]                        ; class UIBezierPath
  1000aef3c  adrp    x8, #0x100419000
  1000aef40  nop
  1000aef44  ldr     x1, [x8, #0x380]
  1000aef48  mov     x0, x20
  1000aef4c  bl      _objc_msgSend                            ; [self range]
  1000aef50  fmov    s1, #10.00000000
  1000aef54  fmul    s0, s0, s1
  1000aef58  fcvt    d2, s0
  1000aef5c  adrp    x8, #0x10041a000
  1000aef60  nop
  1000aef64  ldr     x1, [x8, #0x5b0]
  1000aef68  mov     w2, #1
  1000aef6c  mov     x0, x19
  1000aef70  mov     v0.16b, v9.16b
  1000aef74  mov     v1.16b, v8.16b
  1000aef78  mov     v3.16b, v13.16b
  1000aef7c  mov     v4.16b, v12.16b
  1000aef80  bl      _objc_msgSend                            ; [UIBezierPath bezierPathWithArcCenter:{((arg2.2 * 0.5) + arg2.0), ((arg2.3 * 0.5) + arg2.1)} radius:([self range] * 10) startAngle:([self angle] + (arg1 * -0.5)) endAngle:(arg1 + ([self angle] + (arg1 * -0.5))) clockwise:1]
  1000aef84  mov     x29, x29
  1000aef88  bl      _objc_retainAutoreleasedReturnValue
  1000aef8c  mov     x19, x0
  1000aef90  adrp    x8, #0x100417000
  1000aef94  nop
  1000aef98  ldr     x1, [x8, #0x688]
  1000aef9c  mov     x0, x20
  1000aefa0  bl      _objc_msgSend                            ; [self center]
  1000aefa4  adrp    x8, #0x10041a000
  1000aefa8  nop
  1000aefac  ldr     x1, [x8, #0x5b8]
  1000aefb0  mov     x0, x19
  1000aefb4  bl      _objc_msgSend                            ; [[UIBezierPath bezierPathWithArcCenter:{((arg2.2 * 0.5) + arg2.0), ((arg2.3 * 0.5) + arg2.1)} radius:([self range] * 10) startAngle:([self angle] + (arg1 * -0.5)) endAngle:(arg1 + ([self angle] + (arg1 * -0.5))) clockwise:1] addLineToPoint:{[self center].0, [self center].1}]
  1000aefb8  adrp    x8, #0x10041a000
  1000aefbc  nop
  1000aefc0  ldr     x1, [x8, #0x5c0]
  1000aefc4  mov     x0, x19
  1000aefc8  bl      _objc_msgSend                            ; [[UIBezierPath bezierPathWithArcCenter:{((arg2.2 * 0.5) + arg2.0), ((arg2.3 * 0.5) + arg2.1)} radius:([self range] * 10) startAngle:([self angle] + (arg1 * -0.5)) endAngle:(arg1 + ([self angle] + (arg1 * -0.5))) clockwise:1] closePath]
  1000aefcc  adrp    x8, #0x10041d000
  1000aefd0  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000aefd4  adrp    x8, #0x100416000
  1000aefd8  nop
  1000aefdc  ldr     x1, [x8, #0xac8]
  1000aefe0  bl      _objc_msgSend                            ; [UIColor alloc]
  1000aefe4  adrp    x8, #0x10041a000
  1000aefe8  nop
  1000aefec  ldr     x1, [x8, #0x5c8]
  1000aeff0  nop
  1000aeff4  ldr     d3, #0x100181a98                         ; d3 = 0.4
  1000aeff8  fmov    d0, #0.50000000
  1000aeffc  mov     v1.16b, v0.16b
  1000af000  mov     v2.16b, v0.16b
  1000af004  bl      _objc_msgSend                            ; [[UIColor alloc] initWithRed:0.5 green:0.5 blue:0.5 alpha:0.4]
  1000af008  mov     x20, x0
  1000af00c  adrp    x8, #0x100418000
  1000af010  nop
  1000af014  ldr     x1, [x8, #0x360]
  1000af018  mov     x0, x20
  1000af01c  bl      _objc_msgSend                            ; [[[UIColor alloc] initWithRed:0.5 green:0.5 blue:0.5 alpha:0.4] set]
  1000af020  adrp    x8, #0x10041a000
  1000af024  nop
  1000af028  ldr     x1, [x8, #0x5d0]
  1000af02c  mov     x0, x19
  1000af030  bl      _objc_msgSend                            ; [[UIBezierPath bezierPathWithArcCenter:{((arg2.2 * 0.5) + arg2.0), ((arg2.3 * 0.5) + arg2.1)} radius:([self range] * 10) startAngle:([self angle] + (arg1 * -0.5)) endAngle:(arg1 + ([self angle] + (arg1 * -0.5))) clockwise:1] fill]
  1000af034  mov     x0, x20
  1000af038  bl      _objc_release
  1000af03c  mov     x0, x19
  1000af040  ldp     x29, x30, [sp, #0x50]
  1000af044  ldp     x20, x19, [sp, #0x40]
  1000af048  ldp     x22, x21, [sp, #0x30]
  1000af04c  ldp     d9, d8, [sp, #0x20]
  1000af050  ldp     d11, d10, [sp, #0x10]
  1000af054  ldp     d13, d12, [sp], #0x60
  1000af058  b       _objc_release
  1000af05c  mov     x21, x0
  1000af060  b       loc_1000af070
  1000af064  mov     x21, x0
  1000af068  mov     x0, x20
  1000af06c  bl      _objc_release
loc_1000af070:
  1000af070  mov     x0, x19
  1000af074  bl      _objc_release
  1000af078  mov     x0, x21
  1000af07c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDebugMapView weapon]
; address 0x1000af080  size 16  kind objc
; ======================================================================
  1000af080  adrp    x8, #0x100420000
  1000af084  ldrsw   x8, [x8, #0x168]                         ; ivar offset ADDebugMapView._weapon (+0x70)
  1000af088  ldr     x0, [x0, x8]                             ; x0 = self->_weapon
  1000af08c  ret

; ======================================================================
; -[ADDebugMapView setWeapon:]
; address 0x1000af090  size 56  kind objc
; ======================================================================
  1000af090  stp     x20, x19, [sp, #-0x20]!
  1000af094  stp     x29, x30, [sp, #0x10]
  1000af098  add     x29, sp, #0x10
  1000af09c  mov     x19, x0
  1000af0a0  adrp    x8, #0x100420000
  1000af0a4  ldrsw   x20, [x8, #0x168]                        ; ivar offset ADDebugMapView._weapon (+0x70)
  1000af0a8  mov     x0, x2
  1000af0ac  bl      _objc_retain
  1000af0b0  ldr     x8, [x19, x20]                           ; x8 = self->_weapon
  1000af0b4  str     x0, [x19, x20]                           ; self->_weapon = arg1
  1000af0b8  mov     x0, x8
  1000af0bc  ldp     x29, x30, [sp, #0x10]
  1000af0c0  ldp     x20, x19, [sp], #0x20
  1000af0c4  b       _objc_release

; ======================================================================
; -[ADDebugMapView angle]
; address 0x1000af0c8  size 20  kind objc
; ======================================================================
  1000af0c8  adrp    x8, #0x100420000
  1000af0cc  ldrsw   x8, [x8, #0x16c]                         ; ivar offset ADDebugMapView._angle (+0x68)
  1000af0d0  ldr     w8, [x0, x8]                             ; w8 = self->_angle
  1000af0d4  fmov    s0, w8
  1000af0d8  ret

; ======================================================================
; -[ADDebugMapView setAngle:]
; address 0x1000af0dc  size 20  kind objc
; ======================================================================
  1000af0dc  fmov    w8, s0
  1000af0e0  adrp    x9, #0x100420000
  1000af0e4  ldrsw   x9, [x9, #0x16c]                         ; ivar offset ADDebugMapView._angle (+0x68)
  1000af0e8  str     w8, [x0, x9]                             ; self->_angle = arg1
  1000af0ec  ret

; ======================================================================
; -[ADDebugMapView range]
; address 0x1000af0f0  size 20  kind objc
; ======================================================================
  1000af0f0  adrp    x8, #0x100420000
  1000af0f4  ldrsw   x8, [x8, #0x170]                         ; ivar offset ADDebugMapView._range (+0x6c)
  1000af0f8  ldr     w8, [x0, x8]                             ; w8 = self->_range
  1000af0fc  fmov    s0, w8
  1000af100  ret

; ======================================================================
; -[ADDebugMapView setRange:]
; address 0x1000af104  size 20  kind objc
; ======================================================================
  1000af104  fmov    w8, s0
  1000af108  adrp    x9, #0x100420000
  1000af10c  ldrsw   x9, [x9, #0x170]                         ; ivar offset ADDebugMapView._range (+0x6c)
  1000af110  str     w8, [x0, x9]                             ; self->_range = arg1
  1000af114  ret

; ======================================================================
; -[ADDebugMapView .cxx_destruct]
; address 0x1000af118  size 20  kind objc
; ======================================================================
  1000af118  mov     x1, #0
  1000af11c  adrp    x8, #0x100420000
  1000af120  ldrsw   x8, [x8, #0x168]                         ; ivar offset ADDebugMapView._weapon (+0x70)
  1000af124  add     x0, x0, x8
  1000af128  b       _objc_storeStrong
