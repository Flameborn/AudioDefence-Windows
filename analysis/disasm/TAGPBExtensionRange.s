// unit TAGPBExtensionRange — 3 functions
//   0x100138388      88  -[TAGPBExtensionRange initWithRangeDescription:]
//   0x1001383e0      20  -[TAGPBExtensionRange start]
//   0x1001383f4      20  -[TAGPBExtensionRange end]

; ======================================================================
; -[TAGPBExtensionRange initWithRangeDescription:]
; address 0x100138388  size 88  kind objc
; ======================================================================
  100138388  stp     x29, x30, [sp, #-0x10]!
  10013838c  mov     x29, sp
  100138390  stp     x20, x19, [sp, #-0x10]!
  100138394  sub     sp, sp, #0x10
  100138398  mov     x19, x2
  10013839c  str     x0, [sp]
  1001383a0  adrp    x8, #0x10041f000
  1001383a4  ldr     x8, [x8, #0x1a8]
  1001383a8  str     x8, [sp, #8]
  1001383ac  adrp    x8, #0x100416000
  1001383b0  nop
  1001383b4  ldr     x1, [x8, #0xab8]
  1001383b8  mov     x0, sp
  1001383bc  bl      _objc_msgSendSuper2                      ; [super init]
  1001383c0  cbz     x0, loc_1001383d0                        ; if (self == 0)
  1001383c4  adrp    x8, #0x100420000
  1001383c8  ldrsw   x8, [x8, #0x9a0]                         ; ivar offset TAGPBExtensionRange.description_ (+0x8)
  1001383cc  str     x19, [x0, x8]                            ; self->description_ = arg1
loc_1001383d0:
  1001383d0  sub     sp, x29, #0x10
  1001383d4  ldp     x20, x19, [sp], #0x10
  1001383d8  ldp     x29, x30, [sp], #0x10
  1001383dc  ret

; ======================================================================
; -[TAGPBExtensionRange start]
; address 0x1001383e0  size 20  kind objc
; ======================================================================
  1001383e0  adrp    x8, #0x100420000
  1001383e4  ldrsw   x8, [x8, #0x9a0]                         ; ivar offset TAGPBExtensionRange.description_ (+0x8)
  1001383e8  ldr     x8, [x0, x8]                             ; x8 = self->description_
  1001383ec  ldr     w0, [x8]                                 ; w0 = self->description_[+0x0]
  1001383f0  ret

; ======================================================================
; -[TAGPBExtensionRange end]
; address 0x1001383f4  size 20  kind objc
; ======================================================================
  1001383f4  adrp    x8, #0x100420000
  1001383f8  ldrsw   x8, [x8, #0x9a0]                         ; ivar offset TAGPBExtensionRange.description_ (+0x8)
  1001383fc  ldr     x8, [x0, x8]                             ; x8 = self->description_
  100138400  ldr     w0, [x8, #4]                             ; w0 = self->description_[+0x4]
  100138404  ret
