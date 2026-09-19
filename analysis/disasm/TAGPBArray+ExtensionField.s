// unit TAGPBArray+ExtensionField — 1 functions
//   0x100138620     292  -[TAGPBArray(ExtensionField) valueAtIndex:]

; ======================================================================
; -[TAGPBArray(ExtensionField) valueAtIndex:]
; address 0x100138620  size 292  kind objc
; ======================================================================
  100138620  stp     x29, x30, [sp, #-0x10]!
  100138624  mov     x29, sp
  100138628  adrp    x8, #0x100420000
  10013862c  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  100138630  add     x8, x0, x8
  100138634  ldr     w8, [x8]                                 ; w8 = self->_valueType
  100138638  cmp     w8, #7
  10013863c  b.ls    loc_100138650                            ; if (self->_valueType <=u 7)
  100138640  mov     w8, #0
  100138644  mov     w0, #0
  100138648  mov     x9, #0
  10013864c  b       loc_100138710
loc_100138650:
  100138650  adr     x9, #0x100138724                         ; 0x100138724
  100138654  nop
  100138658  ldrsw   x8, [x9, x8, lsl #2]
  10013865c  add     x8, x8, x9
  100138660  br      x8                                       ; switch (?) { case 0: goto loc_100138664; case 1: goto loc_100138670; case 2: goto loc_10013868c; case 3: goto loc_100138698; case 4: goto loc_1001386b4; case 5: goto loc_1001386c0; case 6: goto loc_1001386d4; case 7: goto loc_1001386f4 }
loc_100138664:  ; case 0
  100138664  adrp    x8, #0x100416000
  100138668  add     x8, x8, #0xc30                           ; &@selector(objectAtIndex:)
  10013866c  b       loc_1001386c8
loc_100138670:  ; case 1
  100138670  adrp    x8, #0x10041c000
  100138674  nop
  100138678  ldr     x1, [x8, #0x7b0]
  10013867c  bl      _objc_msgSend                            ; [self boolAtIndex:arg1]
  100138680  mov     w8, #0
  100138684  mov     x9, #0
  100138688  b       loc_100138710
loc_10013868c:  ; case 2
  10013868c  adrp    x8, #0x10041c000
  100138690  add     x8, x8, #0x7b8                           ; &@selector(int32AtIndex:)
  100138694  b       loc_1001386a0
loc_100138698:  ; case 3
  100138698  adrp    x8, #0x10041c000
  10013869c  add     x8, x8, #0x7c0                           ; &@selector(uint32AtIndex:)
loc_1001386a0:
  1001386a0  ldr     x1, [x8]                                 ; x1 = one of selectors {int32AtIndex:, uint32AtIndex:}
  1001386a4  bl      _objc_msgSend                            ; [self int32AtIndex:arg1  | uint32AtIndex:x3]
  1001386a8  mov     x9, #0
  1001386ac  and     w8, w0, #0xffffff00
  1001386b0  b       loc_100138710
loc_1001386b4:  ; case 4
  1001386b4  adrp    x8, #0x10041c000
  1001386b8  add     x8, x8, #0x7c8                           ; &@selector(int64AtIndex:)
  1001386bc  b       loc_1001386c8
loc_1001386c0:  ; case 5
  1001386c0  adrp    x8, #0x10041c000
  1001386c4  add     x8, x8, #0x7d0                           ; &@selector(uint64AtIndex:)
loc_1001386c8:
  1001386c8  ldr     x1, [x8]                                 ; x1 = one of selectors {int64AtIndex:, objectAtIndex:, uint64AtIndex:}
  1001386cc  bl      _objc_msgSend                            ; [self int64AtIndex:arg1  | objectAtIndex:x3  | uint64AtIndex:x4]
  1001386d0  b       loc_100138708
loc_1001386d4:  ; case 6
  1001386d4  adrp    x8, #0x10041c000
  1001386d8  nop
  1001386dc  ldr     x1, [x8, #0x7d8]
  1001386e0  bl      _objc_msgSend                            ; [self floatAtIndex:arg1]
  1001386e4  mov     x9, #0
  1001386e8  fmov    w0, s0
  1001386ec  and     w8, w0, #0xffffff00
  1001386f0  b       loc_100138710
loc_1001386f4:  ; case 7
  1001386f4  adrp    x8, #0x10041c000
  1001386f8  nop
  1001386fc  ldr     x1, [x8, #0x7e0]
  100138700  bl      _objc_msgSend                            ; [self doubleAtIndex:arg1]
  100138704  fmov    x0, d0
loc_100138708:
  100138708  and     w8, w0, #0xffffff00
  10013870c  and     x9, x0, #0xffffffff00000000
loc_100138710:
  100138710  and     w10, w0, #0xff
  100138714  orr     w8, w10, w8
  100138718  orr     x0, x8, x9
  10013871c  ldp     x29, x30, [sp], #0x10
  100138720  ret
  100138724  .word   jump table of 100138660, case 0 -> loc_100138664
  100138728  .word   jump table of 100138660, case 1 -> loc_100138670
  10013872c  .word   jump table of 100138660, case 2 -> loc_10013868c
  100138730  .word   jump table of 100138660, case 3 -> loc_100138698
  100138734  .word   jump table of 100138660, case 4 -> loc_1001386b4
  100138738  .word   jump table of 100138660, case 5 -> loc_1001386c0
  10013873c  .word   jump table of 100138660, case 6 -> loc_1001386d4
  100138740  .word   jump table of 100138660, case 7 -> loc_1001386f4
