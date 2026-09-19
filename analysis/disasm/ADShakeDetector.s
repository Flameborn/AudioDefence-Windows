// unit ADShakeDetector — 9 functions
//   0x1000d7d14     392  -[ADShakeDetector init]
//   0x1000d7e9c      88  -[ADShakeDetector init]_block_invoke
//   0x1000d7ef4       8  sub_1000d7ef4
//   0x1000d7efc       8  sub_1000d7efc
//   0x1000d7f04     428  -[ADShakeDetector motionMethod:]
//   0x1000d80b0      64  -[ADShakeDetector stopMotionManager]
//   0x1000d80f0      16  -[ADShakeDetector weaponManager]
//   0x1000d8100      56  -[ADShakeDetector setWeaponManager:]
//   0x1000d8138      64  -[ADShakeDetector .cxx_destruct]

; ======================================================================
; -[ADShakeDetector init]
; address 0x1000d7d14  size 392  kind objc
; ======================================================================
  1000d7d14  stp     x22, x21, [sp, #-0x30]!
  1000d7d18  stp     x20, x19, [sp, #0x10]
  1000d7d1c  stp     x29, x30, [sp, #0x20]
  1000d7d20  add     x29, sp, #0x20
  1000d7d24  sub     sp, sp, #0x40
  1000d7d28  str     x0, [sp, #0x30]
  1000d7d2c  adrp    x8, #0x10041f000
  1000d7d30  ldr     x8, [x8]
  1000d7d34  str     x8, [sp, #0x38]
  1000d7d38  adrp    x8, #0x100416000
  1000d7d3c  nop
  1000d7d40  ldr     x21, [x8, #0xab8]
  1000d7d44  mov     x20, #0
  1000d7d48  add     x0, sp, #0x30
  1000d7d4c  mov     x1, x21
  1000d7d50  bl      _objc_msgSendSuper2                      ; [super init]
  1000d7d54  mov     x19, x0
  1000d7d58  cbz     x19, loc_1000d7e48                       ; if (self == 0)
  1000d7d5c  mov     x20, x19
  1000d7d60  adrp    x8, #0x10041d000
  1000d7d64  ldr     x0, [x8, #0xed8]                         ; class CMMotionManager
  1000d7d68  adrp    x8, #0x100416000
  1000d7d6c  nop
  1000d7d70  ldr     x1, [x8, #0xac8]
  1000d7d74  bl      _objc_msgSend                            ; [CMMotionManager alloc]
  1000d7d78  mov     x20, x19
  1000d7d7c  mov     x1, x21
  1000d7d80  bl      _objc_msgSend                            ; [[CMMotionManager alloc] init]
  1000d7d84  mov     x20, x19
  1000d7d88  adrp    x8, #0x100420000
  1000d7d8c  ldrsw   x21, [x8, #0x4b0]                        ; ivar offset ADShakeDetector.motionManager (+0x8)
  1000d7d90  ldr     x8, [x19, x21]                           ; x8 = self->motionManager
  1000d7d94  str     x0, [x19, x21]                           ; self->motionManager = [[CMMotionManager alloc] init]
  1000d7d98  mov     x0, x8
  1000d7d9c  bl      _objc_release
  1000d7da0  ldr     x0, [x19, x21]                           ; x0 = self->motionManager
  1000d7da4  adrp    x8, #0x100416000
  1000d7da8  nop
  1000d7dac  ldr     x1, [x8, #0xad8]
  1000d7db0  nop
  1000d7db4  ldr     d0, #0x1001819e0                         ; d0 = 0.1
  1000d7db8  bl      _objc_msgSend                            ; [self->motionManager setDeviceMotionUpdateInterval:0.1]
  1000d7dbc  ldr     x20, [x19, x21]                          ; x20 = self->motionManager
  1000d7dc0  adrp    x8, #0x10041e000
  1000d7dc4  ldr     x0, [x8, #0x48]                          ; class NSOperationQueue
  1000d7dc8  adrp    x8, #0x100417000
  1000d7dcc  nop
  1000d7dd0  ldr     x1, [x8, #0x750]
  1000d7dd4  bl      _objc_msgSend                            ; [NSOperationQueue mainQueue]
  1000d7dd8  mov     x29, x29
  1000d7ddc  bl      _objc_retainAutoreleasedReturnValue
  1000d7de0  mov     x21, x0
  1000d7de4  adrp    x8, #0x1003b0000
  1000d7de8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000d7dec  mov     w9, #-0x3e000000
  1000d7df0  str     x8, [sp, #8]
  1000d7df4  stp     w9, wzr, [sp, #0x10]
  1000d7df8  adr     x8, #0x1000d7e9c                         ; &-[ADShakeDetector init]_block_invoke
  1000d7dfc  nop
  1000d7e00  str     x8, [sp, #0x18]
  1000d7e04  adrp    x8, #0x1003b2000
  1000d7e08  add     x8, x8, #0xa90                           ; &d_1003b2a90
  1000d7e0c  str     x8, [sp, #0x20]
  1000d7e10  mov     x0, x19
  1000d7e14  bl      _objc_retain
  1000d7e18  str     x19, [sp, #0x28]
  1000d7e1c  adrp    x8, #0x10041a000
  1000d7e20  nop
  1000d7e24  ldr     x1, [x8, #0xeb0]
  1000d7e28  add     x3, sp, #8
  1000d7e2c  mov     x0, x20
  1000d7e30  mov     x2, x21
  1000d7e34  bl      _objc_msgSend                            ; [self->motionManager startDeviceMotionUpdatesToQueue:[NSOperationQueue mainQueue] withHandler:^{-[ADShakeDetector init]_block_invoke captures +0x20=self, +0x28=self, +0x30=ADShakeDetector}]
  1000d7e38  mov     x0, x21
  1000d7e3c  bl      _objc_release
  1000d7e40  ldr     x0, [sp, #0x28]
  1000d7e44  bl      _objc_release
loc_1000d7e48:
  1000d7e48  mov     x0, x19
  1000d7e4c  sub     sp, x29, #0x20
  1000d7e50  ldp     x29, x30, [sp, #0x20]
  1000d7e54  ldp     x20, x19, [sp, #0x10]
  1000d7e58  ldp     x22, x21, [sp], #0x30
  1000d7e5c  ret
  1000d7e60  mov     x22, x0
  1000d7e64  b       loc_1000d7e8c
  1000d7e68  mov     x22, x0
  1000d7e6c  mov     x20, x19
  1000d7e70  b       loc_1000d7e8c
  1000d7e74  mov     x22, x0
  1000d7e78  mov     x0, x21
  1000d7e7c  bl      _objc_release
  1000d7e80  ldr     x0, [sp, #0x28]
  1000d7e84  bl      _objc_release
  1000d7e88  mov     x20, x19
loc_1000d7e8c:
  1000d7e8c  mov     x0, x20
  1000d7e90  bl      _objc_release
  1000d7e94  mov     x0, x22
  1000d7e98  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADShakeDetector init]_block_invoke
; address 0x1000d7e9c  size 88  kind block
; ======================================================================
  1000d7e9c  stp     x20, x19, [sp, #-0x20]!
  1000d7ea0  stp     x29, x30, [sp, #0x10]
  1000d7ea4  add     x29, sp, #0x10
  1000d7ea8  mov     x20, x0
  1000d7eac  mov     x0, x1
  1000d7eb0  bl      _objc_retain
  1000d7eb4  mov     x19, x0
  1000d7eb8  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000d7ebc  adrp    x8, #0x10041a000
  1000d7ec0  nop
  1000d7ec4  ldr     x1, [x8, #0xea8]
  1000d7ec8  mov     x2, x19
  1000d7ecc  bl      _objc_msgSend                            ; [self motionMethod:blockarg1]
  1000d7ed0  mov     x0, x19
  1000d7ed4  ldp     x29, x30, [sp, #0x10]
  1000d7ed8  ldp     x20, x19, [sp], #0x20
  1000d7edc  b       _objc_release
  1000d7ee0  mov     x20, x0
  1000d7ee4  mov     x0, x19
  1000d7ee8  bl      _objc_release
  1000d7eec  mov     x0, x20
  1000d7ef0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000d7ef4
; address 0x1000d7ef4  size 8  kind sub
; ======================================================================
  1000d7ef4  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000d7ef8  b       _objc_retain

; ======================================================================
; sub_1000d7efc
; address 0x1000d7efc  size 8  kind sub
; ======================================================================
  1000d7efc  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000d7f00  b       _objc_release

; ======================================================================
; -[ADShakeDetector motionMethod:]
; address 0x1000d7f04  size 428  kind objc
; ======================================================================
  1000d7f04  stp     d9, d8, [sp, #-0x50]!
  1000d7f08  stp     x24, x23, [sp, #0x10]
  1000d7f0c  stp     x22, x21, [sp, #0x20]
  1000d7f10  stp     x20, x19, [sp, #0x30]
  1000d7f14  stp     x29, x30, [sp, #0x40]
  1000d7f18  add     x29, sp, #0x40
  1000d7f1c  mov     x20, x0
  1000d7f20  mov     x0, x2
  1000d7f24  bl      _objc_retain
  1000d7f28  mov     x19, x0
  1000d7f2c  adrp    x8, #0x10041d000
  1000d7f30  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000d7f34  adrp    x8, #0x100416000
  1000d7f38  nop
  1000d7f3c  ldr     x1, [x8, #0xc00]
  1000d7f40  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000d7f44  mov     x29, x29
  1000d7f48  bl      _objc_retainAutoreleasedReturnValue
  1000d7f4c  mov     x21, x0
  1000d7f50  adrp    x8, #0x100417000
  1000d7f54  nop
  1000d7f58  ldr     x1, [x8, #0xc90]
  1000d7f5c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  1000d7f60  cbnz    w0, loc_1000d8050                        ; if ([[ADGameParameters sharedParameters] buttonMode] != 0)
  1000d7f64  adrp    x8, #0x10041e000
  1000d7f68  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000d7f6c  adrp    x8, #0x100417000
  1000d7f70  nop
  1000d7f74  ldr     x1, [x8, #0xaa8]
  1000d7f78  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000d7f7c  mov     x29, x29
  1000d7f80  bl      _objc_retainAutoreleasedReturnValue
  1000d7f84  mov     x22, x0
  1000d7f88  adrp    x8, #0x100418000
  1000d7f8c  nop
  1000d7f90  ldr     x1, [x8, #0xb58]
  1000d7f94  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] playerIsDead]
  1000d7f98  mov     x23, x0
  1000d7f9c  mov     x0, x22
  1000d7fa0  bl      _objc_release
  1000d7fa4  mov     x0, x21
  1000d7fa8  bl      _objc_release
  1000d7fac  tbnz    w23, #0, loc_1000d8058                   ; if (([[ADBrickManager sharedBrickManager] playerIsDead] & 1))
  1000d7fb0  adrp    x8, #0x100416000
  1000d7fb4  nop
  1000d7fb8  ldr     x1, [x8, #0xaf0]
  1000d7fbc  mov     x0, x19
  1000d7fc0  bl      _objc_msgSend                            ; [arg1 userAcceleration]
  1000d7fc4  mov     v8.16b, v2.16b
  1000d7fc8  fabs    d0, d0
  1000d7fcc  adrp    x8, #0x100181000
  1000d7fd0  ldr     d9, [x8, #0xc68]                         ; d9 = 0.699999988
  1000d7fd4  fcmp    d0, d9
  1000d7fd8  b.le    loc_1000d8014                            ; if (fabs([arg1 userAcceleration].0) <= (or unordered) 0.7)
  1000d7fdc  adrp    x8, #0x100416000
  1000d7fe0  nop
  1000d7fe4  ldr     x1, [x8, #0xc88]
  1000d7fe8  mov     x0, x20
  1000d7fec  bl      _objc_msgSend                            ; [self weaponManager]
  1000d7ff0  mov     x29, x29
  1000d7ff4  bl      _objc_retainAutoreleasedReturnValue
  1000d7ff8  mov     x21, x0
  1000d7ffc  adrp    x8, #0x100417000
  1000d8000  nop
  1000d8004  ldr     x1, [x8, #0xc98]
  1000d8008  bl      _objc_msgSend                            ; [[self weaponManager] shootWithMelee]
  1000d800c  mov     x0, x21
  1000d8010  bl      _objc_release
loc_1000d8014:
  1000d8014  fabs    d0, d8
  1000d8018  fcmp    d0, d9
  1000d801c  b.le    loc_1000d8058                            ; if (fabs([arg1 userAcceleration].2) <= (or unordered) 0.7)
  1000d8020  adrp    x8, #0x100416000
  1000d8024  nop
  1000d8028  ldr     x1, [x8, #0xc88]
  1000d802c  mov     x0, x20
  1000d8030  bl      _objc_msgSend                            ; [self weaponManager]
  1000d8034  mov     x29, x29
  1000d8038  bl      _objc_retainAutoreleasedReturnValue
  1000d803c  mov     x21, x0
  1000d8040  adrp    x8, #0x100417000
  1000d8044  nop
  1000d8048  ldr     x1, [x8, #0xc98]
  1000d804c  bl      _objc_msgSend                            ; [[self weaponManager] shootWithMelee]
loc_1000d8050:
  1000d8050  mov     x0, x21
  1000d8054  bl      _objc_release
loc_1000d8058:
  1000d8058  mov     x0, x19
  1000d805c  ldp     x29, x30, [sp, #0x40]
  1000d8060  ldp     x20, x19, [sp, #0x30]
  1000d8064  ldp     x22, x21, [sp, #0x20]
  1000d8068  ldp     x24, x23, [sp, #0x10]
  1000d806c  ldp     d9, d8, [sp], #0x50
  1000d8070  b       _objc_release
loc_1000d8074:
  1000d8074  mov     x20, x0
  1000d8078  b       loc_1000d8090
  1000d807c  mov     x20, x0
  1000d8080  b       loc_1000d8098
  1000d8084  mov     x20, x0
  1000d8088  mov     x0, x22
  1000d808c  bl      _objc_release
loc_1000d8090:
  1000d8090  mov     x0, x21
  1000d8094  bl      _objc_release
loc_1000d8098:
  1000d8098  mov     x0, x19
  1000d809c  bl      _objc_release
  1000d80a0  mov     x0, x20
  1000d80a4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d80a8  b       loc_1000d8074
  1000d80ac  b       loc_1000d8074

; ======================================================================
; -[ADShakeDetector stopMotionManager]
; address 0x1000d80b0  size 64  kind objc
; ======================================================================
  1000d80b0  stp     x20, x19, [sp, #-0x20]!
  1000d80b4  stp     x29, x30, [sp, #0x10]
  1000d80b8  add     x29, sp, #0x10
  1000d80bc  mov     x19, x0
  1000d80c0  adrp    x8, #0x100420000
  1000d80c4  ldrsw   x20, [x8, #0x4b0]                        ; ivar offset ADShakeDetector.motionManager (+0x8)
  1000d80c8  ldr     x0, [x19, x20]                           ; x0 = self->motionManager
  1000d80cc  adrp    x8, #0x100416000
  1000d80d0  nop
  1000d80d4  ldr     x1, [x8, #0xb18]
  1000d80d8  bl      _objc_msgSend                            ; [self->motionManager stopDeviceMotionUpdates]
  1000d80dc  ldr     x0, [x19, x20]                           ; x0 = self->motionManager
  1000d80e0  str     xzr, [x19, x20]                          ; self->motionManager = 0
  1000d80e4  ldp     x29, x30, [sp, #0x10]
  1000d80e8  ldp     x20, x19, [sp], #0x20
  1000d80ec  b       _objc_release

; ======================================================================
; -[ADShakeDetector weaponManager]
; address 0x1000d80f0  size 16  kind objc
; ======================================================================
  1000d80f0  adrp    x8, #0x100420000
  1000d80f4  ldrsw   x8, [x8, #0x4b4]                         ; ivar offset ADShakeDetector._weaponManager (+0x10)
  1000d80f8  ldr     x0, [x0, x8]                             ; x0 = self->_weaponManager
  1000d80fc  ret

; ======================================================================
; -[ADShakeDetector setWeaponManager:]
; address 0x1000d8100  size 56  kind objc
; ======================================================================
  1000d8100  stp     x20, x19, [sp, #-0x20]!
  1000d8104  stp     x29, x30, [sp, #0x10]
  1000d8108  add     x29, sp, #0x10
  1000d810c  mov     x19, x0
  1000d8110  adrp    x8, #0x100420000
  1000d8114  ldrsw   x20, [x8, #0x4b4]                        ; ivar offset ADShakeDetector._weaponManager (+0x10)
  1000d8118  mov     x0, x2
  1000d811c  bl      _objc_retain
  1000d8120  ldr     x8, [x19, x20]                           ; x8 = self->_weaponManager
  1000d8124  str     x0, [x19, x20]                           ; self->_weaponManager = arg1
  1000d8128  mov     x0, x8
  1000d812c  ldp     x29, x30, [sp, #0x10]
  1000d8130  ldp     x20, x19, [sp], #0x20
  1000d8134  b       _objc_release

; ======================================================================
; -[ADShakeDetector .cxx_destruct]
; address 0x1000d8138  size 64  kind objc
; ======================================================================
  1000d8138  stp     x20, x19, [sp, #-0x20]!
  1000d813c  stp     x29, x30, [sp, #0x10]
  1000d8140  add     x29, sp, #0x10
  1000d8144  mov     x19, x0
  1000d8148  adrp    x8, #0x100420000
  1000d814c  ldrsw   x8, [x8, #0x4b4]                         ; ivar offset ADShakeDetector._weaponManager (+0x10)
  1000d8150  add     x0, x19, x8
  1000d8154  mov     x1, #0
  1000d8158  bl      _objc_storeStrong
  1000d815c  mov     x1, #0
  1000d8160  adrp    x8, #0x100420000
  1000d8164  ldrsw   x8, [x8, #0x4b0]                         ; ivar offset ADShakeDetector.motionManager (+0x8)
  1000d8168  add     x0, x19, x8
  1000d816c  ldp     x29, x30, [sp, #0x10]
  1000d8170  ldp     x20, x19, [sp], #0x20
  1000d8174  b       _objc_storeStrong
