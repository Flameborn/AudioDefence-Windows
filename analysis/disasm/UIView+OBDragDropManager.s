// unit UIView+OBDragDropManager — 3 functions
//   0x10009e3e4      12  -[UIView(OBDragDropManager) dropZoneHandler]
//   0x10009e3f0      32  -[UIView(OBDragDropManager) setDropZoneHandler:]
//   0x10009e410     192  -[UIView(OBDragDropManager) hasParentView:]

; ======================================================================
; -[UIView(OBDragDropManager) dropZoneHandler]
; address 0x10009e3e4  size 12  kind objc
; ======================================================================
  10009e3e4  adrp    x1, #0x1003c0000
  10009e3e8  add     x1, x1, #0x650                           ; @"DropZoneHandlerKey"
  10009e3ec  b       _objc_getAssociatedObject                ; objc_getAssociatedObject(self, @"DropZoneHandlerKey")

; ======================================================================
; -[UIView(OBDragDropManager) setDropZoneHandler:]
; address 0x10009e3f0  size 32  kind objc
; ======================================================================
  10009e3f0  stp     x29, x30, [sp, #-0x10]!
  10009e3f4  mov     x29, sp
  10009e3f8  mov     x3, #0
  10009e3fc  adrp    x1, #0x1003c0000
  10009e400  add     x1, x1, #0x650                           ; @"DropZoneHandlerKey"
  10009e404  bl      _objc_setAssociatedObject                ; objc_setAssociatedObject(self, @"DropZoneHandlerKey", arg1, 0)
  10009e408  ldp     x29, x30, [sp], #0x10
  10009e40c  ret

; ======================================================================
; -[UIView(OBDragDropManager) hasParentView:]
; address 0x10009e410  size 192  kind objc
; ======================================================================
  10009e410  stp     x22, x21, [sp, #-0x30]!
  10009e414  stp     x20, x19, [sp, #0x10]
  10009e418  stp     x29, x30, [sp, #0x20]
  10009e41c  add     x29, sp, #0x20
  10009e420  mov     x20, x0
  10009e424  mov     x0, x2
  10009e428  bl      _objc_retain
  10009e42c  mov     x19, x0
  10009e430  adrp    x8, #0x100417000
  10009e434  nop
  10009e438  ldr     x1, [x8, #0x818]
  10009e43c  mov     x0, x20
  10009e440  bl      _objc_msgSend                            ; [self superview]
  10009e444  mov     x29, x29
  10009e448  bl      _objc_retainAutoreleasedReturnValue
  10009e44c  mov     x20, x0
  10009e450  cbz     x20, loc_10009e48c                       ; if ([self superview] == 0)
  10009e454  cmp     x20, x19
  10009e458  b.eq    loc_10009e494                            ; if ([self superview] == arg1)
  10009e45c  adrp    x8, #0x100417000
  10009e460  nop
  10009e464  ldr     x1, [x8, #0xe38]
  10009e468  mov     x0, x20
  10009e46c  mov     x2, x19
  10009e470  bl      _objc_msgSend                            ; [[self superview] hasParentView:arg1]
  10009e474  mov     x21, x0
  10009e478  b       loc_10009e498
  10009e47c  mov     x21, x0
  10009e480  mov     x0, x20
  10009e484  bl      _objc_release
  10009e488  b       loc_10009e4c0
loc_10009e48c:
  10009e48c  mov     w21, #0
  10009e490  b       loc_10009e498
loc_10009e494:
  10009e494  mov     w21, #1
loc_10009e498:
  10009e498  mov     x0, x20
  10009e49c  bl      _objc_release
  10009e4a0  mov     x0, x19
  10009e4a4  bl      _objc_release
  10009e4a8  mov     x0, x21
  10009e4ac  ldp     x29, x30, [sp, #0x20]
  10009e4b0  ldp     x20, x19, [sp, #0x10]
  10009e4b4  ldp     x22, x21, [sp], #0x30
  10009e4b8  ret
  10009e4bc  mov     x21, x0
loc_10009e4c0:
  10009e4c0  mov     x0, x19
  10009e4c4  bl      _objc_release
  10009e4c8  mov     x0, x21
  10009e4cc  bl      __Unwind_Resume                          ; Unwind_Resume()
