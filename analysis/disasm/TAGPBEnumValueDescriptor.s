// unit TAGPBEnumValueDescriptor — 4 functions
//   0x100137940     240  -[TAGPBEnumValueDescriptor initWithEnumValueDescription:prefix:]
//   0x100137a30     100  -[TAGPBEnumValueDescriptor dealloc]
//   0x100137a94      20  -[TAGPBEnumValueDescriptor number]
//   0x100137aa8      16  -[TAGPBEnumValueDescriptor name]

; ======================================================================
; -[TAGPBEnumValueDescriptor initWithEnumValueDescription:prefix:]
; address 0x100137940  size 240  kind objc
; ======================================================================
  100137940  stp     x29, x30, [sp, #-0x10]!
  100137944  mov     x29, sp
  100137948  stp     x20, x19, [sp, #-0x10]!
  10013794c  stp     x22, x21, [sp, #-0x10]!
  100137950  sub     sp, sp, #0x10
  100137954  mov     x20, x3
  100137958  mov     x21, x2
  10013795c  str     x0, [sp]
  100137960  adrp    x8, #0x10041f000
  100137964  ldr     x8, [x8, #0x198]
  100137968  str     x8, [sp, #8]
  10013796c  adrp    x8, #0x100416000
  100137970  nop
  100137974  ldr     x1, [x8, #0xab8]
  100137978  mov     x0, sp
  10013797c  bl      _objc_msgSendSuper2                      ; [super init]
  100137980  mov     x19, x0
  100137984  cbz     x19, loc_100137a18                       ; if (self == 0)
  100137988  adrp    x8, #0x100420000
  10013798c  ldrsw   x8, [x8, #0x988]                         ; ivar offset TAGPBEnumValueDescriptor.description_ (+0x8)
  100137990  str     x21, [x19, x8]                           ; self->description_ = arg1
  100137994  ldr     x8, [x21]                                ; x8 = arg1[+0x0]
  100137998  cbz     x8, loc_100137a18                        ; if (arg1[+0x0] == 0)
  10013799c  adrp    x8, #0x10041d000
  1001379a0  ldr     x0, [x8, #0xf78]                         ; class NSString
  1001379a4  adrp    x8, #0x100416000
  1001379a8  nop
  1001379ac  ldr     x1, [x8, #0xac8]
  1001379b0  bl      _objc_msgSend                            ; [NSString alloc]
  1001379b4  ldr     x2, [x21]                                ; x2 = arg1[+0x0]
  1001379b8  adrp    x8, #0x10041c000
  1001379bc  nop
  1001379c0  ldr     x1, [x8, #0x790]
  1001379c4  bl      _objc_msgSend                            ; [[NSString alloc] initWithUTF8String:arg1[+0x0]]
  1001379c8  mov     x21, x0
  1001379cc  adrp    x8, #0x10041b000
  1001379d0  nop
  1001379d4  ldr     x1, [x8, #0x1d8]
  1001379d8  mov     x0, x20
  1001379dc  bl      _objc_msgSend                            ; [arg2 mutableCopy]
  1001379e0  mov     x20, x0
  1001379e4  adrp    x8, #0x10041a000
  1001379e8  nop
  1001379ec  ldr     x1, [x8, #0x950]
  1001379f0  mov     x2, x21
  1001379f4  bl      _objc_msgSend                            ; [[arg2 mutableCopy] appendString:[[NSString alloc] initWithUTF8String:arg1[+0x0]]]
  1001379f8  adrp    x8, #0x100420000
  1001379fc  ldrsw   x8, [x8, #0x98c]                         ; ivar offset TAGPBEnumValueDescriptor.name_ (+0x10)
  100137a00  str     x20, [x19, x8]                           ; self->name_ = [arg2 mutableCopy]
  100137a04  adrp    x8, #0x10041b000
  100137a08  nop
  100137a0c  ldr     x1, [x8, #0xd70]
  100137a10  mov     x0, x21
  100137a14  bl      _objc_msgSend                            ; [[[NSString alloc] initWithUTF8String:arg1[+0x0]] release]
loc_100137a18:
  100137a18  mov     x0, x19
  100137a1c  sub     sp, x29, #0x20
  100137a20  ldp     x22, x21, [sp], #0x10
  100137a24  ldp     x20, x19, [sp], #0x10
  100137a28  ldp     x29, x30, [sp], #0x10
  100137a2c  ret

; ======================================================================
; -[TAGPBEnumValueDescriptor dealloc]
; address 0x100137a30  size 100  kind objc
; ======================================================================
  100137a30  stp     x29, x30, [sp, #-0x10]!
  100137a34  mov     x29, sp
  100137a38  stp     x20, x19, [sp, #-0x10]!
  100137a3c  sub     sp, sp, #0x10
  100137a40  mov     x19, x0
  100137a44  adrp    x8, #0x100420000
  100137a48  ldrsw   x8, [x8, #0x98c]                         ; ivar offset TAGPBEnumValueDescriptor.name_ (+0x10)
  100137a4c  ldr     x0, [x19, x8]                            ; x0 = self->name_
  100137a50  adrp    x8, #0x10041b000
  100137a54  nop
  100137a58  ldr     x1, [x8, #0xd70]
  100137a5c  bl      _objc_msgSend                            ; [self->name_ release]
  100137a60  str     x19, [sp]
  100137a64  adrp    x8, #0x10041f000
  100137a68  ldr     x8, [x8, #0x198]
  100137a6c  str     x8, [sp, #8]
  100137a70  adrp    x8, #0x100416000
  100137a74  nop
  100137a78  ldr     x1, [x8, #0xfc8]
  100137a7c  mov     x0, sp
  100137a80  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100137a84  sub     sp, x29, #0x10
  100137a88  ldp     x20, x19, [sp], #0x10
  100137a8c  ldp     x29, x30, [sp], #0x10
  100137a90  ret

; ======================================================================
; -[TAGPBEnumValueDescriptor number]
; address 0x100137a94  size 20  kind objc
; ======================================================================
  100137a94  adrp    x8, #0x100420000
  100137a98  ldrsw   x8, [x8, #0x988]                         ; ivar offset TAGPBEnumValueDescriptor.description_ (+0x8)
  100137a9c  ldr     x8, [x0, x8]                             ; x8 = self->description_
  100137aa0  ldr     w0, [x8, #8]                             ; w0 = self->description_[+0x8]
  100137aa4  ret

; ======================================================================
; -[TAGPBEnumValueDescriptor name]
; address 0x100137aa8  size 16  kind objc
; ======================================================================
  100137aa8  adrp    x8, #0x100420000
  100137aac  ldrsw   x8, [x8, #0x98c]                         ; ivar offset TAGPBEnumValueDescriptor.name_ (+0x10)
  100137ab0  ldr     x0, [x0, x8]                             ; x0 = self->name_
  100137ab4  ret
