// unit TAGDataLayerCallback — 4 functions
//   0x10015a90c     164  -[TAGDataLayerCallback initWithDataLayer:]
//   0x10015a9b0     148  -[TAGDataLayerCallback onKeyValuesLoaded:]
//   0x10015aa44      16  -[TAGDataLayerCallback dataLayer]
//   0x10015aa54      20  -[TAGDataLayerCallback .cxx_destruct]

; ======================================================================
; -[TAGDataLayerCallback initWithDataLayer:]
; address 0x10015a90c  size 164  kind objc
; ======================================================================
  10015a90c  stp     x29, x30, [sp, #-0x10]!
  10015a910  mov     x29, sp
  10015a914  stp     x20, x19, [sp, #-0x10]!
  10015a918  stp     x22, x21, [sp, #-0x10]!
  10015a91c  sub     sp, sp, #0x10
  10015a920  mov     x20, x0
  10015a924  mov     x0, x2
  10015a928  bl      _objc_retain
  10015a92c  mov     x19, x0
  10015a930  str     x20, [sp]
  10015a934  adrp    x8, #0x10041f000
  10015a938  ldr     x8, [x8, #0x280]
  10015a93c  str     x8, [sp, #8]
  10015a940  adrp    x8, #0x100416000
  10015a944  nop
  10015a948  ldr     x1, [x8, #0xab8]
  10015a94c  mov     x0, sp
  10015a950  bl      _objc_msgSendSuper2                      ; [super init]
  10015a954  mov     x20, x0
  10015a958  cbz     x20, loc_10015a97c                       ; if (self == 0)
  10015a95c  adrp    x8, #0x100420000
  10015a960  ldrsw   x21, [x8, #0xafc]                        ; ivar offset TAGDataLayerCallback._dataLayer (+0x8)
  10015a964  mov     x0, x19
  10015a968  bl      _objc_retain
  10015a96c  ldr     x8, [x20, x21]                           ; x8 = self->_dataLayer
  10015a970  str     x0, [x20, x21]                           ; self->_dataLayer = arg1
  10015a974  mov     x0, x8
  10015a978  bl      _objc_release
loc_10015a97c:
  10015a97c  mov     x0, x19
  10015a980  bl      _objc_release
  10015a984  mov     x0, x20
  10015a988  sub     sp, x29, #0x20
  10015a98c  ldp     x22, x21, [sp], #0x10
  10015a990  ldp     x20, x19, [sp], #0x10
  10015a994  ldp     x29, x30, [sp], #0x10
  10015a998  ret
  10015a99c  mov     x20, x0
  10015a9a0  mov     x0, x19
  10015a9a4  bl      _objc_release
  10015a9a8  mov     x0, x20
  10015a9ac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerCallback onKeyValuesLoaded:]
; address 0x10015a9b0  size 148  kind objc
; ======================================================================
  10015a9b0  stp     x29, x30, [sp, #-0x10]!
  10015a9b4  mov     x29, sp
  10015a9b8  stp     x20, x19, [sp, #-0x10]!
  10015a9bc  stp     x22, x21, [sp, #-0x10]!
  10015a9c0  mov     x20, x0
  10015a9c4  mov     x0, x2
  10015a9c8  bl      _objc_retain
  10015a9cc  mov     x19, x0
  10015a9d0  adrp    x8, #0x10041d000
  10015a9d4  nop
  10015a9d8  ldr     x1, [x8, #0xc20]
  10015a9dc  mov     x0, x20
  10015a9e0  bl      _objc_msgSend                            ; [self dataLayer]
  10015a9e4  mov     x29, x29
  10015a9e8  bl      _objc_retainAutoreleasedReturnValue
  10015a9ec  mov     x20, x0
  10015a9f0  adrp    x8, #0x10041d000
  10015a9f4  nop
  10015a9f8  ldr     x1, [x8, #0x4b0]
  10015a9fc  mov     x2, x19
  10015aa00  bl      _objc_msgSend                            ; [[self dataLayer] onKeyValuesLoaded:arg1]
  10015aa04  mov     x0, x20
  10015aa08  bl      _objc_release
  10015aa0c  mov     x0, x19
  10015aa10  ldp     x22, x21, [sp], #0x10
  10015aa14  ldp     x20, x19, [sp], #0x10
  10015aa18  ldp     x29, x30, [sp], #0x10
  10015aa1c  b       _objc_release
  10015aa20  mov     x21, x0
  10015aa24  b       loc_10015aa34
  10015aa28  mov     x21, x0
  10015aa2c  mov     x0, x20
  10015aa30  bl      _objc_release
loc_10015aa34:
  10015aa34  mov     x0, x19
  10015aa38  bl      _objc_release
  10015aa3c  mov     x0, x21
  10015aa40  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerCallback dataLayer]
; address 0x10015aa44  size 16  kind objc
; ======================================================================
  10015aa44  adrp    x8, #0x100420000
  10015aa48  ldrsw   x2, [x8, #0xafc]                         ; ivar offset TAGDataLayerCallback._dataLayer (+0x8)
  10015aa4c  mov     w3, #1
  10015aa50  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGDataLayerCallback .cxx_destruct]
; address 0x10015aa54  size 20  kind objc
; ======================================================================
  10015aa54  mov     x1, #0
  10015aa58  adrp    x8, #0x100420000
  10015aa5c  ldrsw   x8, [x8, #0xafc]                         ; ivar offset TAGDataLayerCallback._dataLayer (+0x8)
  10015aa60  add     x0, x0, x8
  10015aa64  b       _objc_storeStrong
