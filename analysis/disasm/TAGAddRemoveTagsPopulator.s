// unit TAGAddRemoveTagsPopulator — 1 functions
//   0x100168930     284  -[TAGAddRemoveTagsPopulator rulePassed:add:remove:]

; ======================================================================
; -[TAGAddRemoveTagsPopulator rulePassed:add:remove:]
; address 0x100168930  size 284  kind objc
; ======================================================================
  100168930  stp     x29, x30, [sp, #-0x10]!
  100168934  mov     x29, sp
  100168938  stp     x20, x19, [sp, #-0x10]!
  10016893c  stp     x22, x21, [sp, #-0x10]!
  100168940  stp     x24, x23, [sp, #-0x10]!
  100168944  mov     x21, x4
  100168948  mov     x20, x3
  10016894c  mov     x0, x2
  100168950  bl      _objc_retain
  100168954  mov     x19, x0
  100168958  mov     x0, x20
  10016895c  bl      _objc_retain
  100168960  mov     x20, x0
  100168964  mov     x0, x21
  100168968  bl      _objc_retain
  10016896c  mov     x21, x0
  100168970  adrp    x8, #0x10041d000
  100168974  nop
  100168978  ldr     x1, [x8, #0x800]
  10016897c  mov     x0, x19
  100168980  bl      _objc_msgSend                            ; [arg1 addTags]
  100168984  mov     x29, x29
  100168988  bl      _objc_retainAutoreleasedReturnValue
  10016898c  mov     x23, x0
  100168990  adrp    x8, #0x10041a000
  100168994  nop
  100168998  ldr     x22, [x8, #0xb28]
  10016899c  mov     x0, x20
  1001689a0  mov     x1, x22
  1001689a4  mov     x2, x23
  1001689a8  bl      _objc_msgSend                            ; [arg2 addObjectsFromArray:[arg1 addTags]]
  1001689ac  mov     x0, x23
  1001689b0  bl      _objc_release
  1001689b4  adrp    x8, #0x10041d000
  1001689b8  nop
  1001689bc  ldr     x1, [x8, #0x808]
  1001689c0  mov     x0, x19
  1001689c4  bl      _objc_msgSend                            ; [arg1 removeTags]
  1001689c8  mov     x29, x29
  1001689cc  bl      _objc_retainAutoreleasedReturnValue
  1001689d0  mov     x23, x0
  1001689d4  mov     x0, x21
  1001689d8  mov     x1, x22
  1001689dc  mov     x2, x23
  1001689e0  bl      _objc_msgSend                            ; [arg3 addObjectsFromArray:[arg1 removeTags]]
  1001689e4  mov     x0, x23
  1001689e8  bl      _objc_release
  1001689ec  mov     x0, x21
  1001689f0  bl      _objc_release
  1001689f4  mov     x0, x20
  1001689f8  bl      _objc_release
  1001689fc  mov     x0, x19
  100168a00  ldp     x24, x23, [sp], #0x10
  100168a04  ldp     x22, x21, [sp], #0x10
  100168a08  ldp     x20, x19, [sp], #0x10
  100168a0c  ldp     x29, x30, [sp], #0x10
  100168a10  b       _objc_release
  100168a14  b       loc_100168a20
  100168a18  mov     x22, x0
  100168a1c  b       loc_100168a2c
loc_100168a20:
  100168a20  mov     x22, x0
  100168a24  mov     x0, x23
  100168a28  bl      _objc_release
loc_100168a2c:
  100168a2c  mov     x0, x21
  100168a30  bl      _objc_release
  100168a34  mov     x0, x20
  100168a38  bl      _objc_release
  100168a3c  mov     x0, x19
  100168a40  bl      _objc_release
  100168a44  mov     x0, x22
  100168a48  bl      __Unwind_Resume                          ; Unwind_Resume()
