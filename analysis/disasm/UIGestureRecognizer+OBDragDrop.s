// unit UIGestureRecognizer+OBDragDrop — 4 functions
//   0x100006ee4      12  -[UIGestureRecognizer(OBDragDrop) ovum]
//   0x100006ef0      32  -[UIGestureRecognizer(OBDragDrop) setOvum:]
//   0x100006f10      12  -[UIGestureRecognizer(OBDragDrop) ovumSource]
//   0x100006f1c      32  -[UIGestureRecognizer(OBDragDrop) setOvumSource:]

; ======================================================================
; -[UIGestureRecognizer(OBDragDrop) ovum]
; address 0x100006ee4  size 12  kind objc
; ======================================================================
  100006ee4  adrp    x1, #0x1003b9000
  100006ee8  add     x1, x1, #0x910                           ; @"OBGestureRecognizerOvum"
  100006eec  b       _objc_getAssociatedObject                ; objc_getAssociatedObject(self, @"OBGestureRecognizerOvum")

; ======================================================================
; -[UIGestureRecognizer(OBDragDrop) setOvum:]
; address 0x100006ef0  size 32  kind objc
; ======================================================================
  100006ef0  stp     x29, x30, [sp, #-0x10]!
  100006ef4  mov     x29, sp
  100006ef8  adrp    x1, #0x1003b9000
  100006efc  add     x1, x1, #0x910                           ; @"OBGestureRecognizerOvum"
  100006f00  mov     w3, #0x301
  100006f04  bl      _objc_setAssociatedObject                ; objc_setAssociatedObject(self, @"OBGestureRecognizerOvum", arg1, 769)
  100006f08  ldp     x29, x30, [sp], #0x10
  100006f0c  ret

; ======================================================================
; -[UIGestureRecognizer(OBDragDrop) ovumSource]
; address 0x100006f10  size 12  kind objc
; ======================================================================
  100006f10  adrp    x1, #0x1003b9000
  100006f14  add     x1, x1, #0x930                           ; @"OBGestureRecognizerOvumSource"
  100006f18  b       _objc_getAssociatedObject                ; objc_getAssociatedObject(self, @"OBGestureRecognizerOvumSource")

; ======================================================================
; -[UIGestureRecognizer(OBDragDrop) setOvumSource:]
; address 0x100006f1c  size 32  kind objc
; ======================================================================
  100006f1c  stp     x29, x30, [sp, #-0x10]!
  100006f20  mov     x29, sp
  100006f24  mov     x3, #0
  100006f28  adrp    x1, #0x1003b9000
  100006f2c  add     x1, x1, #0x930                           ; @"OBGestureRecognizerOvumSource"
  100006f30  bl      _objc_setAssociatedObject                ; objc_setAssociatedObject(self, @"OBGestureRecognizerOvumSource", arg1, 0)
  100006f34  ldp     x29, x30, [sp], #0x10
  100006f38  ret
