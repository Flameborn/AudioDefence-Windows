// unit TAGAdvertiserIdFixed — 2 functions
//   0x100172be0      44  +[TAGAdvertiserIdFixed functionId]
//   0x100172c0c     176  -[TAGAdvertiserIdFixed init]

; ======================================================================
; +[TAGAdvertiserIdFixed functionId]
; address 0x100172be0  size 44  kind objc
; ======================================================================
  100172be0  stp     x29, x30, [sp, #-0x10]!
  100172be4  mov     x29, sp
  100172be8  stp     x20, x19, [sp, #-0x10]!
  100172bec  adrp    x19, #0x1003c9000
  100172bf0  add     x19, x19, #0x50                          ; @"_aid"
  100172bf4  mov     x0, x19
  100172bf8  bl      _objc_retainAutorelease
  100172bfc  mov     x0, x19
  100172c00  ldp     x20, x19, [sp], #0x10
  100172c04  ldp     x29, x30, [sp], #0x10
  100172c08  ret

; ======================================================================
; -[TAGAdvertiserIdFixed init]
; address 0x100172c0c  size 176  kind objc
; ======================================================================
  100172c0c  stp     x29, x30, [sp, #-0x10]!
  100172c10  mov     x29, sp
  100172c14  stp     x20, x19, [sp, #-0x10]!
  100172c18  stp     x22, x21, [sp, #-0x10]!
  100172c1c  sub     sp, sp, #0x10
  100172c20  mov     x20, x0
  100172c24  adrp    x8, #0x10041e000
  100172c28  ldr     x0, [x8, #0x550]                         ; class NSSet
  100172c2c  adrp    x8, #0x100418000
  100172c30  nop
  100172c34  ldr     x1, [x8, #0x360]
  100172c38  bl      _objc_msgSend                            ; [NSSet set]
  100172c3c  mov     x29, x29
  100172c40  bl      _objc_retainAutoreleasedReturnValue
  100172c44  mov     x19, x0
  100172c48  str     x20, [sp]
  100172c4c  adrp    x8, #0x10041f000
  100172c50  ldr     x8, [x8, #0x330]
  100172c54  str     x8, [sp, #8]
  100172c58  adrp    x8, #0x10041d000
  100172c5c  nop
  100172c60  ldr     x1, [x8, #0xc10]
  100172c64  adrp    x2, #0x1003c9000
  100172c68  add     x2, x2, #0x50                            ; @"_aid"
  100172c6c  mov     x0, sp
  100172c70  mov     x3, x19
  100172c74  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_aid" requiredKeys:[NSSet set]]
  100172c78  mov     x20, x0
  100172c7c  mov     x0, x19
  100172c80  bl      _objc_release
  100172c84  mov     x0, x20
  100172c88  sub     sp, x29, #0x20
  100172c8c  ldp     x22, x21, [sp], #0x10
  100172c90  ldp     x20, x19, [sp], #0x10
  100172c94  ldp     x29, x30, [sp], #0x10
  100172c98  ret
  100172c9c  mov     x21, x0
  100172ca0  mov     x0, x20
  100172ca4  b       loc_100172cb0
  100172ca8  mov     x21, x0
  100172cac  mov     x0, x19
loc_100172cb0:
  100172cb0  bl      _objc_release
  100172cb4  mov     x0, x21
  100172cb8  bl      __Unwind_Resume                          ; Unwind_Resume()
