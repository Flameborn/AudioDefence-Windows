// unit OBOvum — 28 functions
//   0x100029db8     160  -[OBOvum init]
//   0x100029e58     148  -[OBOvum dealloc]
//   0x100029eec      32  -[OBOvum source]
//   0x100029f0c      20  -[OBOvum setSource:]
//   0x100029f20      16  -[OBOvum dataObject]
//   0x100029f30      20  -[OBOvum setDataObject:]
//   0x100029f44      16  -[OBOvum tag]
//   0x100029f54      56  -[OBOvum setTag:]
//   0x100029f8c      16  -[OBOvum dropAction]
//   0x100029f9c      16  -[OBOvum setDropAction:]
//   0x100029fac      32  -[OBOvum currentDropHandlingView]
//   0x100029fcc      20  -[OBOvum setCurrentDropHandlingView:]
//   0x100029fe0      16  -[OBOvum dragView]
//   0x100029ff0      56  -[OBOvum setDragView:]
//   0x10002a028      20  -[OBOvum dragViewInitialCenter]
//   0x10002a03c      20  -[OBOvum setDragViewInitialCenter:]
//   0x10002a050      16  -[OBOvum isCentered]
//   0x10002a060      16  -[OBOvum setIsCentered:]
//   0x10002a070      16  -[OBOvum shouldScale]
//   0x10002a080      16  -[OBOvum setShouldScale:]
//   0x10002a090      20  -[OBOvum offsetOvumAndTouch]
//   0x10002a0a4      20  -[OBOvum setOffsetOvumAndTouch:]
//   0x10002a0b8      20  -[OBOvum shiftPinchCentroid]
//   0x10002a0cc      20  -[OBOvum setShiftPinchCentroid:]
//   0x10002a0e0      16  -[OBOvum scale]
//   0x10002a0f0      16  -[OBOvum setScale:]
//   0x10002a100     116  -[OBOvum .cxx_destruct]
//   0x10002a174       4  -[OBOvum .cxx_construct]

; ======================================================================
; -[OBOvum init]
; address 0x100029db8  size 160  kind objc
; ======================================================================
  100029db8  stp     x20, x19, [sp, #-0x20]!
  100029dbc  stp     x29, x30, [sp, #0x10]
  100029dc0  add     x29, sp, #0x10
  100029dc4  sub     sp, sp, #0x10
  100029dc8  str     x0, [sp]
  100029dcc  adrp    x8, #0x10041e000
  100029dd0  ldr     x8, [x8, #0xc68]
  100029dd4  str     x8, [sp, #8]
  100029dd8  adrp    x8, #0x100416000
  100029ddc  nop
  100029de0  ldr     x1, [x8, #0xab8]
  100029de4  mov     x19, #0
  100029de8  mov     x0, sp
  100029dec  bl      _objc_msgSendSuper2                      ; [super init]
  100029df0  mov     x20, x0
  100029df4  cbz     x20, loc_100029e30                       ; if (self == 0)
  100029df8  mov     x19, x20
  100029dfc  adrp    x8, #0x100417000
  100029e00  nop
  100029e04  ldr     x1, [x8, #0xdd0]
  100029e08  mov     w2, #1
  100029e0c  mov     x0, x20
  100029e10  bl      _objc_msgSend                            ; [self setIsCentered:1]
  100029e14  mov     x19, x20
  100029e18  adrp    x8, #0x100417000
  100029e1c  nop
  100029e20  ldr     x1, [x8, #0xdd8]
  100029e24  mov     w2, #0
  100029e28  mov     x0, x20
  100029e2c  bl      _objc_msgSend                            ; [self setShouldScale:0]
loc_100029e30:
  100029e30  mov     x0, x20
  100029e34  sub     sp, x29, #0x10
  100029e38  ldp     x29, x30, [sp, #0x10]
  100029e3c  ldp     x20, x19, [sp], #0x20
  100029e40  ret
  100029e44  mov     x20, x0
  100029e48  mov     x0, x19
  100029e4c  bl      _objc_release
  100029e50  mov     x0, x20
  100029e54  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[OBOvum dealloc]
; address 0x100029e58  size 148  kind objc
; ======================================================================
  100029e58  stp     x20, x19, [sp, #-0x20]!
  100029e5c  stp     x29, x30, [sp, #0x10]
  100029e60  add     x29, sp, #0x10
  100029e64  sub     sp, sp, #0x20
  100029e68  mov     x19, x0
  100029e6c  adrp    x8, #0x100417000
  100029e70  nop
  100029e74  ldr     x1, [x8, #0xde0]
  100029e78  mov     x2, #0
  100029e7c  bl      _objc_msgSend                            ; [self setSource:0]
  100029e80  str     x19, [sp, #0x10]
  100029e84  adrp    x8, #0x10041e000
  100029e88  ldr     x8, [x8, #0xc68]
  100029e8c  str     x8, [sp, #0x18]
  100029e90  adrp    x8, #0x100416000
  100029e94  nop
  100029e98  ldr     x1, [x8, #0xfc8]
  100029e9c  add     x0, sp, #0x10
  100029ea0  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100029ea4  sub     sp, x29, #0x10
  100029ea8  ldp     x29, x30, [sp, #0x10]
  100029eac  ldp     x20, x19, [sp], #0x20
  100029eb0  ret
  100029eb4  mov     x8, x19
  100029eb8  mov     x19, x0
  100029ebc  str     x8, [sp]
  100029ec0  adrp    x8, #0x10041e000
  100029ec4  ldr     x8, [x8, #0xc68]
  100029ec8  str     x8, [sp, #8]
  100029ecc  adrp    x8, #0x100416000
  100029ed0  nop
  100029ed4  ldr     x1, [x8, #0xfc8]
  100029ed8  mov     x0, sp
  100029edc  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100029ee0  mov     x0, x19
  100029ee4  bl      __Unwind_Resume                          ; Unwind_Resume()
  100029ee8  bl      sub_10000b760

; ======================================================================
; -[OBOvum source]
; address 0x100029eec  size 32  kind objc
; ======================================================================
  100029eec  stp     x29, x30, [sp, #-0x10]!
  100029ef0  mov     x29, sp
  100029ef4  adrp    x8, #0x10041f000
  100029ef8  ldrsw   x8, [x8, #0x730]                         ; ivar offset OBOvum.source (+0x8)
  100029efc  add     x0, x0, x8
  100029f00  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100029f04  ldp     x29, x30, [sp], #0x10
  100029f08  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[OBOvum setSource:]
; address 0x100029f0c  size 20  kind objc
; ======================================================================
  100029f0c  adrp    x8, #0x10041f000
  100029f10  ldrsw   x8, [x8, #0x730]                         ; ivar offset OBOvum.source (+0x8)
  100029f14  add     x0, x0, x8
  100029f18  mov     x1, x2
  100029f1c  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[OBOvum dataObject]
; address 0x100029f20  size 16  kind objc
; ======================================================================
  100029f20  adrp    x8, #0x10041f000
  100029f24  ldrsw   x8, [x8, #0x734]                         ; ivar offset OBOvum.dataObject (+0x10)
  100029f28  ldr     x0, [x0, x8]                             ; x0 = self->dataObject
  100029f2c  ret

; ======================================================================
; -[OBOvum setDataObject:]
; address 0x100029f30  size 20  kind objc
; ======================================================================
  100029f30  adrp    x8, #0x10041f000
  100029f34  ldrsw   x8, [x8, #0x734]                         ; ivar offset OBOvum.dataObject (+0x10)
  100029f38  add     x0, x0, x8
  100029f3c  mov     x1, x2
  100029f40  b       _objc_storeStrong

; ======================================================================
; -[OBOvum tag]
; address 0x100029f44  size 16  kind objc
; ======================================================================
  100029f44  adrp    x8, #0x10041f000
  100029f48  ldrsw   x8, [x8, #0x738]                         ; ivar offset OBOvum.tag (+0x18)
  100029f4c  ldr     x0, [x0, x8]                             ; x0 = self->tag
  100029f50  ret

; ======================================================================
; -[OBOvum setTag:]
; address 0x100029f54  size 56  kind objc
; ======================================================================
  100029f54  stp     x20, x19, [sp, #-0x20]!
  100029f58  stp     x29, x30, [sp, #0x10]
  100029f5c  add     x29, sp, #0x10
  100029f60  mov     x19, x0
  100029f64  adrp    x8, #0x10041f000
  100029f68  ldrsw   x20, [x8, #0x738]                        ; ivar offset OBOvum.tag (+0x18)
  100029f6c  mov     x0, x2
  100029f70  bl      _objc_retain
  100029f74  ldr     x8, [x19, x20]                           ; x8 = self->tag
  100029f78  str     x0, [x19, x20]                           ; self->tag = arg1
  100029f7c  mov     x0, x8
  100029f80  ldp     x29, x30, [sp, #0x10]
  100029f84  ldp     x20, x19, [sp], #0x20
  100029f88  b       _objc_release

; ======================================================================
; -[OBOvum dropAction]
; address 0x100029f8c  size 16  kind objc
; ======================================================================
  100029f8c  adrp    x8, #0x10041f000
  100029f90  ldrsw   x8, [x8, #0x73c]                         ; ivar offset OBOvum.dropAction (+0x20)
  100029f94  ldr     x0, [x0, x8]                             ; x0 = self->dropAction
  100029f98  ret

; ======================================================================
; -[OBOvum setDropAction:]
; address 0x100029f9c  size 16  kind objc
; ======================================================================
  100029f9c  adrp    x8, #0x10041f000
  100029fa0  ldrsw   x8, [x8, #0x73c]                         ; ivar offset OBOvum.dropAction (+0x20)
  100029fa4  str     x2, [x0, x8]                             ; self->dropAction = arg1
  100029fa8  ret

; ======================================================================
; -[OBOvum currentDropHandlingView]
; address 0x100029fac  size 32  kind objc
; ======================================================================
  100029fac  stp     x29, x30, [sp, #-0x10]!
  100029fb0  mov     x29, sp
  100029fb4  adrp    x8, #0x10041f000
  100029fb8  ldrsw   x8, [x8, #0x740]                         ; ivar offset OBOvum.currentDropHandlingView (+0x28)
  100029fbc  add     x0, x0, x8
  100029fc0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100029fc4  ldp     x29, x30, [sp], #0x10
  100029fc8  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[OBOvum setCurrentDropHandlingView:]
; address 0x100029fcc  size 20  kind objc
; ======================================================================
  100029fcc  adrp    x8, #0x10041f000
  100029fd0  ldrsw   x8, [x8, #0x740]                         ; ivar offset OBOvum.currentDropHandlingView (+0x28)
  100029fd4  add     x0, x0, x8
  100029fd8  mov     x1, x2
  100029fdc  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[OBOvum dragView]
; address 0x100029fe0  size 16  kind objc
; ======================================================================
  100029fe0  adrp    x8, #0x10041f000
  100029fe4  ldrsw   x8, [x8, #0x744]                         ; ivar offset OBOvum.dragView (+0x30)
  100029fe8  ldr     x0, [x0, x8]                             ; x0 = self->dragView
  100029fec  ret

; ======================================================================
; -[OBOvum setDragView:]
; address 0x100029ff0  size 56  kind objc
; ======================================================================
  100029ff0  stp     x20, x19, [sp, #-0x20]!
  100029ff4  stp     x29, x30, [sp, #0x10]
  100029ff8  add     x29, sp, #0x10
  100029ffc  mov     x19, x0
  10002a000  adrp    x8, #0x10041f000
  10002a004  ldrsw   x20, [x8, #0x744]                        ; ivar offset OBOvum.dragView (+0x30)
  10002a008  mov     x0, x2
  10002a00c  bl      _objc_retain
  10002a010  ldr     x8, [x19, x20]                           ; x8 = self->dragView
  10002a014  str     x0, [x19, x20]                           ; self->dragView = arg1
  10002a018  mov     x0, x8
  10002a01c  ldp     x29, x30, [sp, #0x10]
  10002a020  ldp     x20, x19, [sp], #0x20
  10002a024  b       _objc_release

; ======================================================================
; -[OBOvum dragViewInitialCenter]
; address 0x10002a028  size 20  kind objc
; ======================================================================
  10002a028  adrp    x8, #0x10041f000
  10002a02c  ldrsw   x8, [x8, #0x748]                         ; ivar offset OBOvum.dragViewInitialCenter (+0x38)
  10002a030  add     x8, x0, x8
  10002a034  ldp     d0, d1, [x8]
  10002a038  ret

; ======================================================================
; -[OBOvum setDragViewInitialCenter:]
; address 0x10002a03c  size 20  kind objc
; ======================================================================
  10002a03c  adrp    x8, #0x10041f000
  10002a040  ldrsw   x8, [x8, #0x748]                         ; ivar offset OBOvum.dragViewInitialCenter (+0x38)
  10002a044  add     x8, x0, x8
  10002a048  stp     d0, d1, [x8]
  10002a04c  ret

; ======================================================================
; -[OBOvum isCentered]
; address 0x10002a050  size 16  kind objc
; ======================================================================
  10002a050  adrp    x8, #0x10041f000
  10002a054  ldrsw   x8, [x8, #0x74c]                         ; ivar offset OBOvum.isCentered (+0x48)
  10002a058  ldrb    w0, [x0, x8]                             ; w0 = self->isCentered
  10002a05c  ret

; ======================================================================
; -[OBOvum setIsCentered:]
; address 0x10002a060  size 16  kind objc
; ======================================================================
  10002a060  adrp    x8, #0x10041f000
  10002a064  ldrsw   x8, [x8, #0x74c]                         ; ivar offset OBOvum.isCentered (+0x48)
  10002a068  strb    w2, [x0, x8]                             ; self->isCentered = arg1
  10002a06c  ret

; ======================================================================
; -[OBOvum shouldScale]
; address 0x10002a070  size 16  kind objc
; ======================================================================
  10002a070  adrp    x8, #0x10041f000
  10002a074  ldrsw   x8, [x8, #0x750]                         ; ivar offset OBOvum.shouldScale (+0x49)
  10002a078  ldrb    w0, [x0, x8]                             ; w0 = self->shouldScale
  10002a07c  ret

; ======================================================================
; -[OBOvum setShouldScale:]
; address 0x10002a080  size 16  kind objc
; ======================================================================
  10002a080  adrp    x8, #0x10041f000
  10002a084  ldrsw   x8, [x8, #0x750]                         ; ivar offset OBOvum.shouldScale (+0x49)
  10002a088  strb    w2, [x0, x8]                             ; self->shouldScale = arg1
  10002a08c  ret

; ======================================================================
; -[OBOvum offsetOvumAndTouch]
; address 0x10002a090  size 20  kind objc
; ======================================================================
  10002a090  adrp    x8, #0x10041f000
  10002a094  ldrsw   x8, [x8, #0x754]                         ; ivar offset OBOvum.offsetOvumAndTouch (+0x58)
  10002a098  add     x8, x0, x8
  10002a09c  ldp     d0, d1, [x8]
  10002a0a0  ret

; ======================================================================
; -[OBOvum setOffsetOvumAndTouch:]
; address 0x10002a0a4  size 20  kind objc
; ======================================================================
  10002a0a4  adrp    x8, #0x10041f000
  10002a0a8  ldrsw   x8, [x8, #0x754]                         ; ivar offset OBOvum.offsetOvumAndTouch (+0x58)
  10002a0ac  add     x8, x0, x8
  10002a0b0  stp     d0, d1, [x8]
  10002a0b4  ret

; ======================================================================
; -[OBOvum shiftPinchCentroid]
; address 0x10002a0b8  size 20  kind objc
; ======================================================================
  10002a0b8  adrp    x8, #0x10041f000
  10002a0bc  ldrsw   x8, [x8, #0x758]                         ; ivar offset OBOvum.shiftPinchCentroid (+0x68)
  10002a0c0  add     x8, x0, x8
  10002a0c4  ldp     d0, d1, [x8]
  10002a0c8  ret

; ======================================================================
; -[OBOvum setShiftPinchCentroid:]
; address 0x10002a0cc  size 20  kind objc
; ======================================================================
  10002a0cc  adrp    x8, #0x10041f000
  10002a0d0  ldrsw   x8, [x8, #0x758]                         ; ivar offset OBOvum.shiftPinchCentroid (+0x68)
  10002a0d4  add     x8, x0, x8
  10002a0d8  stp     d0, d1, [x8]
  10002a0dc  ret

; ======================================================================
; -[OBOvum scale]
; address 0x10002a0e0  size 16  kind objc
; ======================================================================
  10002a0e0  adrp    x8, #0x10041f000
  10002a0e4  ldrsw   x8, [x8, #0x75c]                         ; ivar offset OBOvum.scale (+0x50)
  10002a0e8  ldr     d0, [x0, x8]                             ; d0 = self->scale
  10002a0ec  ret

; ======================================================================
; -[OBOvum setScale:]
; address 0x10002a0f0  size 16  kind objc
; ======================================================================
  10002a0f0  adrp    x8, #0x10041f000
  10002a0f4  ldrsw   x8, [x8, #0x75c]                         ; ivar offset OBOvum.scale (+0x50)
  10002a0f8  str     d0, [x0, x8]                             ; self->scale = arg1
  10002a0fc  ret

; ======================================================================
; -[OBOvum .cxx_destruct]
; address 0x10002a100  size 116  kind objc
; ======================================================================
  10002a100  stp     x20, x19, [sp, #-0x20]!
  10002a104  stp     x29, x30, [sp, #0x10]
  10002a108  add     x29, sp, #0x10
  10002a10c  mov     x19, x0
  10002a110  adrp    x8, #0x10041f000
  10002a114  ldrsw   x8, [x8, #0x744]                         ; ivar offset OBOvum.dragView (+0x30)
  10002a118  add     x0, x19, x8
  10002a11c  mov     x1, #0
  10002a120  bl      _objc_storeStrong
  10002a124  adrp    x8, #0x10041f000
  10002a128  ldrsw   x8, [x8, #0x740]                         ; ivar offset OBOvum.currentDropHandlingView (+0x28)
  10002a12c  add     x0, x19, x8
  10002a130  bl      _objc_destroyWeak
  10002a134  adrp    x8, #0x10041f000
  10002a138  ldrsw   x8, [x8, #0x738]                         ; ivar offset OBOvum.tag (+0x18)
  10002a13c  add     x0, x19, x8
  10002a140  mov     x1, #0
  10002a144  bl      _objc_storeStrong
  10002a148  adrp    x8, #0x10041f000
  10002a14c  ldrsw   x8, [x8, #0x734]                         ; ivar offset OBOvum.dataObject (+0x10)
  10002a150  add     x0, x19, x8
  10002a154  mov     x1, #0
  10002a158  bl      _objc_storeStrong
  10002a15c  adrp    x8, #0x10041f000
  10002a160  ldrsw   x8, [x8, #0x730]                         ; ivar offset OBOvum.source (+0x8)
  10002a164  add     x0, x19, x8
  10002a168  ldp     x29, x30, [sp, #0x10]
  10002a16c  ldp     x20, x19, [sp], #0x20
  10002a170  b       _objc_destroyWeak

; ======================================================================
; -[OBOvum .cxx_construct]
; address 0x10002a174  size 4  kind objc
; ======================================================================
  10002a174  ret
