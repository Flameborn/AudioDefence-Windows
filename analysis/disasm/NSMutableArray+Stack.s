// unit NSMutableArray+Stack — 5 functions
//   0x1000dfb38      28  +[NSMutableArray(Stack) stack]
//   0x1000dfb54      32  -[NSMutableArray(Stack) push:]
//   0x1000dfb74     100  -[NSMutableArray(Stack) pop]
//   0x1000dfbd8      16  -[NSMutableArray(Stack) peek]
//   0x1000dfbe8      40  -[NSMutableArray(Stack) empty]

; ======================================================================
; +[NSMutableArray(Stack) stack]
; address 0x1000dfb38  size 28  kind objc
; ======================================================================
  1000dfb38  adrp    x8, #0x10041d000
  1000dfb3c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000dfb40  adrp    x8, #0x10041b000
  1000dfb44  nop
  1000dfb48  ldr     x1, [x8, #0x280]
  1000dfb4c  mov     w2, #0xa
  1000dfb50  b       _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:10]

; ======================================================================
; -[NSMutableArray(Stack) push:]
; address 0x1000dfb54  size 32  kind objc
; ======================================================================
  1000dfb54  stp     x29, x30, [sp, #-0x10]!
  1000dfb58  mov     x29, sp
  1000dfb5c  adrp    x8, #0x100416000
  1000dfb60  nop
  1000dfb64  ldr     x1, [x8, #0xd90]
  1000dfb68  bl      _objc_msgSend                            ; [self addObject:arg1]
  1000dfb6c  ldp     x29, x30, [sp], #0x10
  1000dfb70  ret

; ======================================================================
; -[NSMutableArray(Stack) pop]
; address 0x1000dfb74  size 100  kind objc
; ======================================================================
  1000dfb74  stp     x20, x19, [sp, #-0x20]!
  1000dfb78  stp     x29, x30, [sp, #0x10]
  1000dfb7c  add     x29, sp, #0x10
  1000dfb80  mov     x20, x0
  1000dfb84  adrp    x8, #0x10041b000
  1000dfb88  nop
  1000dfb8c  ldr     x1, [x8, #0x340]
  1000dfb90  bl      _objc_msgSend                            ; [self peek]
  1000dfb94  mov     x29, x29
  1000dfb98  bl      _objc_retainAutoreleasedReturnValue
  1000dfb9c  mov     x19, x0
  1000dfba0  adrp    x8, #0x10041b000
  1000dfba4  nop
  1000dfba8  ldr     x1, [x8, #0x1f8]
  1000dfbac  mov     x0, x20
  1000dfbb0  bl      _objc_msgSend                            ; [self removeLastObject]
  1000dfbb4  mov     x0, x19
  1000dfbb8  ldp     x29, x30, [sp, #0x10]
  1000dfbbc  ldp     x20, x19, [sp], #0x20
  1000dfbc0  b       _objc_autoreleaseReturnValue
  1000dfbc4  mov     x20, x0
  1000dfbc8  mov     x0, x19
  1000dfbcc  bl      _objc_release
  1000dfbd0  mov     x0, x20
  1000dfbd4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[NSMutableArray(Stack) peek]
; address 0x1000dfbd8  size 16  kind objc
; ======================================================================
  1000dfbd8  adrp    x8, #0x100417000
  1000dfbdc  nop
  1000dfbe0  ldr     x1, [x8, #0xa30]
  1000dfbe4  b       _objc_msgSend                            ; [self lastObject]

; ======================================================================
; -[NSMutableArray(Stack) empty]
; address 0x1000dfbe8  size 40  kind objc
; ======================================================================
  1000dfbe8  stp     x29, x30, [sp, #-0x10]!
  1000dfbec  mov     x29, sp
  1000dfbf0  adrp    x8, #0x100416000
  1000dfbf4  nop
  1000dfbf8  ldr     x1, [x8, #0xe30]
  1000dfbfc  bl      _objc_msgSend                            ; [self count]
  1000dfc00  cmp     x0, #0
  1000dfc04  cset    w0, eq
  1000dfc08  ldp     x29, x30, [sp], #0x10
  1000dfc0c  ret
