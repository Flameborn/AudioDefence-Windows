// unit TAGWaitForNonDefaultRefresh — 7 functions
//   0x1001519e4     164  -[TAGWaitForNonDefaultRefresh initWithContainerOpener:]
//   0x100151a88       4  -[TAGWaitForNonDefaultRefresh containerRefreshBegin:refreshType:]
//   0x100151a8c     148  -[TAGWaitForNonDefaultRefresh containerRefreshSuccess:refreshType:]
//   0x100151b20     160  -[TAGWaitForNonDefaultRefresh containerRefreshFailure:failure:refreshType:]
//   0x100151bc0      16  -[TAGWaitForNonDefaultRefresh containerOpener]
//   0x100151bd0      12  -[TAGWaitForNonDefaultRefresh setContainerOpener:]
//   0x100151bdc      20  -[TAGWaitForNonDefaultRefresh .cxx_destruct]

; ======================================================================
; -[TAGWaitForNonDefaultRefresh initWithContainerOpener:]
; address 0x1001519e4  size 164  kind objc
; ======================================================================
  1001519e4  stp     x29, x30, [sp, #-0x10]!
  1001519e8  mov     x29, sp
  1001519ec  stp     x20, x19, [sp, #-0x10]!
  1001519f0  stp     x22, x21, [sp, #-0x10]!
  1001519f4  sub     sp, sp, #0x10
  1001519f8  mov     x20, x0
  1001519fc  mov     x0, x2
  100151a00  bl      _objc_retain
  100151a04  mov     x19, x0
  100151a08  str     x20, [sp]
  100151a0c  adrp    x8, #0x10041f000
  100151a10  ldr     x8, [x8, #0x220]
  100151a14  str     x8, [sp, #8]
  100151a18  adrp    x8, #0x100416000
  100151a1c  nop
  100151a20  ldr     x1, [x8, #0xab8]
  100151a24  mov     x0, sp
  100151a28  bl      _objc_msgSendSuper2                      ; [super init]
  100151a2c  mov     x20, x0
  100151a30  cbz     x20, loc_100151a54                       ; if (self == 0)
  100151a34  adrp    x8, #0x100420000
  100151a38  ldrsw   x21, [x8, #0xa5c]                        ; ivar offset TAGWaitForNonDefaultRefresh._containerOpener (+0x8)
  100151a3c  mov     x0, x19
  100151a40  bl      _objc_retain
  100151a44  ldr     x8, [x20, x21]                           ; x8 = self->_containerOpener
  100151a48  str     x0, [x20, x21]                           ; self->_containerOpener = arg1
  100151a4c  mov     x0, x8
  100151a50  bl      _objc_release
loc_100151a54:
  100151a54  mov     x0, x19
  100151a58  bl      _objc_release
  100151a5c  mov     x0, x20
  100151a60  sub     sp, x29, #0x20
  100151a64  ldp     x22, x21, [sp], #0x10
  100151a68  ldp     x20, x19, [sp], #0x10
  100151a6c  ldp     x29, x30, [sp], #0x10
  100151a70  ret
  100151a74  mov     x20, x0
  100151a78  mov     x0, x19
  100151a7c  bl      _objc_release
  100151a80  mov     x0, x20
  100151a84  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGWaitForNonDefaultRefresh containerRefreshBegin:refreshType:]
; address 0x100151a88  size 4  kind objc
; ======================================================================
  100151a88  ret

; ======================================================================
; -[TAGWaitForNonDefaultRefresh containerRefreshSuccess:refreshType:]
; address 0x100151a8c  size 148  kind objc
; ======================================================================
  100151a8c  stp     x29, x30, [sp, #-0x10]!
  100151a90  mov     x29, sp
  100151a94  stp     x20, x19, [sp, #-0x10]!
  100151a98  stp     x22, x21, [sp, #-0x10]!
  100151a9c  mov     x20, x0
  100151aa0  mov     x0, x2
  100151aa4  bl      _objc_retain
  100151aa8  mov     x19, x0
  100151aac  adrp    x8, #0x10041d000
  100151ab0  nop
  100151ab4  ldr     x1, [x8, #0x90]
  100151ab8  mov     x0, x20
  100151abc  bl      _objc_msgSend                            ; [self containerOpener]
  100151ac0  mov     x29, x29
  100151ac4  bl      _objc_retainAutoreleasedReturnValue
  100151ac8  mov     x20, x0
  100151acc  adrp    x8, #0x10041d000
  100151ad0  nop
  100151ad4  ldr     x1, [x8, #0x98]
  100151ad8  mov     x2, x19
  100151adc  bl      _objc_msgSend                            ; [[self containerOpener] callNotifiers:arg1]
  100151ae0  mov     x0, x20
  100151ae4  bl      _objc_release
  100151ae8  mov     x0, x19
  100151aec  ldp     x22, x21, [sp], #0x10
  100151af0  ldp     x20, x19, [sp], #0x10
  100151af4  ldp     x29, x30, [sp], #0x10
  100151af8  b       _objc_release
  100151afc  mov     x21, x0
  100151b00  b       loc_100151b10
  100151b04  mov     x21, x0
  100151b08  mov     x0, x20
  100151b0c  bl      _objc_release
loc_100151b10:
  100151b10  mov     x0, x19
  100151b14  bl      _objc_release
  100151b18  mov     x0, x21
  100151b1c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGWaitForNonDefaultRefresh containerRefreshFailure:failure:refreshType:]
; address 0x100151b20  size 160  kind objc
; ======================================================================
  100151b20  stp     x29, x30, [sp, #-0x10]!
  100151b24  mov     x29, sp
  100151b28  stp     x20, x19, [sp, #-0x10]!
  100151b2c  stp     x22, x21, [sp, #-0x10]!
  100151b30  mov     x21, x4
  100151b34  mov     x20, x0
  100151b38  mov     x0, x2
  100151b3c  bl      _objc_retain
  100151b40  mov     x19, x0
  100151b44  cmp     w21, #1
  100151b48  b.ne    loc_100151b88                            ; if (arg3 != 1)
  100151b4c  adrp    x8, #0x10041d000
  100151b50  nop
  100151b54  ldr     x1, [x8, #0x90]
  100151b58  mov     x0, x20
  100151b5c  bl      _objc_msgSend                            ; [self containerOpener]
  100151b60  mov     x29, x29
  100151b64  bl      _objc_retainAutoreleasedReturnValue
  100151b68  mov     x20, x0
  100151b6c  adrp    x8, #0x10041d000
  100151b70  nop
  100151b74  ldr     x1, [x8, #0x98]
  100151b78  mov     x2, x19
  100151b7c  bl      _objc_msgSend                            ; [[self containerOpener] callNotifiers:arg1]
  100151b80  mov     x0, x20
  100151b84  bl      _objc_release
loc_100151b88:
  100151b88  mov     x0, x19
  100151b8c  ldp     x22, x21, [sp], #0x10
  100151b90  ldp     x20, x19, [sp], #0x10
  100151b94  ldp     x29, x30, [sp], #0x10
  100151b98  b       _objc_release
  100151b9c  mov     x21, x0
  100151ba0  b       loc_100151bb0
  100151ba4  mov     x21, x0
  100151ba8  mov     x0, x20
  100151bac  bl      _objc_release
loc_100151bb0:
  100151bb0  mov     x0, x19
  100151bb4  bl      _objc_release
  100151bb8  mov     x0, x21
  100151bbc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGWaitForNonDefaultRefresh containerOpener]
; address 0x100151bc0  size 16  kind objc
; ======================================================================
  100151bc0  adrp    x8, #0x100420000
  100151bc4  ldrsw   x2, [x8, #0xa5c]                         ; ivar offset TAGWaitForNonDefaultRefresh._containerOpener (+0x8)
  100151bc8  mov     w3, #1
  100151bcc  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGWaitForNonDefaultRefresh setContainerOpener:]
; address 0x100151bd0  size 12  kind objc
; ======================================================================
  100151bd0  adrp    x8, #0x100420000
  100151bd4  ldrsw   x3, [x8, #0xa5c]                         ; ivar offset TAGWaitForNonDefaultRefresh._containerOpener (+0x8)
  100151bd8  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGWaitForNonDefaultRefresh .cxx_destruct]
; address 0x100151bdc  size 20  kind objc
; ======================================================================
  100151bdc  mov     x1, #0
  100151be0  adrp    x8, #0x100420000
  100151be4  ldrsw   x8, [x8, #0xa5c]                         ; ivar offset TAGWaitForNonDefaultRefresh._containerOpener (+0x8)
  100151be8  add     x0, x0, x8
  100151bec  b       _objc_storeStrong
