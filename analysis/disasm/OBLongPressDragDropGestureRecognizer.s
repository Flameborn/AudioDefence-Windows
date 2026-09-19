// unit OBLongPressDragDropGestureRecognizer — 6 functions
//   0x10008b348     148  -[OBLongPressDragDropGestureRecognizer dealloc]
//   0x10008b3dc      16  -[OBLongPressDragDropGestureRecognizer ovum]
//   0x10008b3ec      56  -[OBLongPressDragDropGestureRecognizer setOvum:]
//   0x10008b424      16  -[OBLongPressDragDropGestureRecognizer ovumSource]
//   0x10008b434      16  -[OBLongPressDragDropGestureRecognizer setOvumSource:]
//   0x10008b444      20  -[OBLongPressDragDropGestureRecognizer .cxx_destruct]

; ======================================================================
; -[OBLongPressDragDropGestureRecognizer dealloc]
; address 0x10008b348  size 148  kind objc
; ======================================================================
  10008b348  stp     x20, x19, [sp, #-0x20]!
  10008b34c  stp     x29, x30, [sp, #0x10]
  10008b350  add     x29, sp, #0x10
  10008b354  sub     sp, sp, #0x20
  10008b358  mov     x19, x0
  10008b35c  adrp    x8, #0x100417000
  10008b360  nop
  10008b364  ldr     x1, [x8, #0xed0]
  10008b368  mov     x2, #0
  10008b36c  bl      _objc_msgSend                            ; [self setOvumSource:0]
  10008b370  str     x19, [sp, #0x10]
  10008b374  adrp    x8, #0x10041e000
  10008b378  ldr     x8, [x8, #0xe60]
  10008b37c  str     x8, [sp, #0x18]
  10008b380  adrp    x8, #0x100416000
  10008b384  nop
  10008b388  ldr     x1, [x8, #0xfc8]
  10008b38c  add     x0, sp, #0x10
  10008b390  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10008b394  sub     sp, x29, #0x10
  10008b398  ldp     x29, x30, [sp, #0x10]
  10008b39c  ldp     x20, x19, [sp], #0x20
  10008b3a0  ret
  10008b3a4  mov     x8, x19
  10008b3a8  mov     x19, x0
  10008b3ac  str     x8, [sp]
  10008b3b0  adrp    x8, #0x10041e000
  10008b3b4  ldr     x8, [x8, #0xe60]
  10008b3b8  str     x8, [sp, #8]
  10008b3bc  adrp    x8, #0x100416000
  10008b3c0  nop
  10008b3c4  ldr     x1, [x8, #0xfc8]
  10008b3c8  mov     x0, sp
  10008b3cc  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10008b3d0  mov     x0, x19
  10008b3d4  bl      __Unwind_Resume                          ; Unwind_Resume()
  10008b3d8  bl      sub_10000b760

; ======================================================================
; -[OBLongPressDragDropGestureRecognizer ovum]
; address 0x10008b3dc  size 16  kind objc
; ======================================================================
  10008b3dc  adrp    x8, #0x10041f000
  10008b3e0  ldrsw   x8, [x8, #0xefc]                         ; ivar offset OBLongPressDragDropGestureRecognizer.ovum (+0x60)
  10008b3e4  ldr     x0, [x0, x8]                             ; x0 = self->ovum
  10008b3e8  ret

; ======================================================================
; -[OBLongPressDragDropGestureRecognizer setOvum:]
; address 0x10008b3ec  size 56  kind objc
; ======================================================================
  10008b3ec  stp     x20, x19, [sp, #-0x20]!
  10008b3f0  stp     x29, x30, [sp, #0x10]
  10008b3f4  add     x29, sp, #0x10
  10008b3f8  mov     x19, x0
  10008b3fc  adrp    x8, #0x10041f000
  10008b400  ldrsw   x20, [x8, #0xefc]                        ; ivar offset OBLongPressDragDropGestureRecognizer.ovum (+0x60)
  10008b404  mov     x0, x2
  10008b408  bl      _objc_retain
  10008b40c  ldr     x8, [x19, x20]                           ; x8 = self->ovum
  10008b410  str     x0, [x19, x20]                           ; self->ovum = arg1
  10008b414  mov     x0, x8
  10008b418  ldp     x29, x30, [sp, #0x10]
  10008b41c  ldp     x20, x19, [sp], #0x20
  10008b420  b       _objc_release

; ======================================================================
; -[OBLongPressDragDropGestureRecognizer ovumSource]
; address 0x10008b424  size 16  kind objc
; ======================================================================
  10008b424  adrp    x8, #0x10041f000
  10008b428  ldrsw   x8, [x8, #0xf00]                         ; ivar offset OBLongPressDragDropGestureRecognizer.ovumSource (+0x68)
  10008b42c  ldr     x0, [x0, x8]                             ; x0 = self->ovumSource
  10008b430  ret

; ======================================================================
; -[OBLongPressDragDropGestureRecognizer setOvumSource:]
; address 0x10008b434  size 16  kind objc
; ======================================================================
  10008b434  adrp    x8, #0x10041f000
  10008b438  ldrsw   x8, [x8, #0xf00]                         ; ivar offset OBLongPressDragDropGestureRecognizer.ovumSource (+0x68)
  10008b43c  str     x2, [x0, x8]                             ; self->ovumSource = arg1
  10008b440  ret

; ======================================================================
; -[OBLongPressDragDropGestureRecognizer .cxx_destruct]
; address 0x10008b444  size 20  kind objc
; ======================================================================
  10008b444  mov     x1, #0
  10008b448  adrp    x8, #0x10041f000
  10008b44c  ldrsw   x8, [x8, #0xefc]                         ; ivar offset OBLongPressDragDropGestureRecognizer.ovum (+0x60)
  10008b450  add     x0, x0, x8
  10008b454  b       _objc_storeStrong
