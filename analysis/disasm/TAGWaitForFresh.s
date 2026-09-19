// unit TAGWaitForFresh — 10 functions
//   0x100151bf0     188  -[TAGWaitForFresh initWithContainerOpener:oldestTimeToBeFresh:]
//   0x100151cac       4  -[TAGWaitForFresh containerRefreshBegin:refreshType:]
//   0x100151cb0     184  -[TAGWaitForFresh containerRefreshSuccess:refreshType:]
//   0x100151d68     160  -[TAGWaitForFresh containerRefreshFailure:failure:refreshType:]
//   0x100151e08     204  -[TAGWaitForFresh isFresh]
//   0x100151ed4      20  -[TAGWaitForFresh oldestTimeToBeFresh]
//   0x100151ee8      20  -[TAGWaitForFresh setOldestTimeToBeFresh:]
//   0x100151efc      16  -[TAGWaitForFresh containerOpener]
//   0x100151f0c      12  -[TAGWaitForFresh setContainerOpener:]
//   0x100151f18      20  -[TAGWaitForFresh .cxx_destruct]

; ======================================================================
; -[TAGWaitForFresh initWithContainerOpener:oldestTimeToBeFresh:]
; address 0x100151bf0  size 188  kind objc
; ======================================================================
  100151bf0  stp     x29, x30, [sp, #-0x10]!
  100151bf4  mov     x29, sp
  100151bf8  stp     x20, x19, [sp, #-0x10]!
  100151bfc  stp     x22, x21, [sp, #-0x10]!
  100151c00  stp     d9, d8, [sp, #-0x10]!
  100151c04  sub     sp, sp, #0x10
  100151c08  mov     v8.16b, v0.16b
  100151c0c  mov     x20, x0
  100151c10  mov     x0, x2
  100151c14  bl      _objc_retain
  100151c18  mov     x19, x0
  100151c1c  str     x20, [sp]
  100151c20  adrp    x8, #0x10041f000
  100151c24  ldr     x8, [x8, #0x228]
  100151c28  str     x8, [sp, #8]
  100151c2c  adrp    x8, #0x100416000
  100151c30  nop
  100151c34  ldr     x1, [x8, #0xab8]
  100151c38  mov     x0, sp
  100151c3c  bl      _objc_msgSendSuper2                      ; [super init]
  100151c40  mov     x20, x0
  100151c44  cbz     x20, loc_100151c74                       ; if (self == 0)
  100151c48  adrp    x8, #0x100420000
  100151c4c  ldrsw   x21, [x8, #0xa60]                        ; ivar offset TAGWaitForFresh._containerOpener (+0x10)
  100151c50  mov     x0, x19
  100151c54  bl      _objc_retain
  100151c58  ldr     x8, [x20, x21]                           ; x8 = self->_containerOpener
  100151c5c  str     x0, [x20, x21]                           ; self->_containerOpener = arg1
  100151c60  mov     x0, x8
  100151c64  bl      _objc_release
  100151c68  adrp    x8, #0x100420000
  100151c6c  ldrsw   x8, [x8, #0xa64]                         ; ivar offset TAGWaitForFresh._oldestTimeToBeFresh (+0x8)
  100151c70  str     d8, [x20, x8]                            ; self->_oldestTimeToBeFresh = arg2
loc_100151c74:
  100151c74  mov     x0, x19
  100151c78  bl      _objc_release
  100151c7c  mov     x0, x20
  100151c80  sub     sp, x29, #0x30
  100151c84  ldp     d9, d8, [sp], #0x10
  100151c88  ldp     x22, x21, [sp], #0x10
  100151c8c  ldp     x20, x19, [sp], #0x10
  100151c90  ldp     x29, x30, [sp], #0x10
  100151c94  ret
  100151c98  mov     x20, x0
  100151c9c  mov     x0, x19
  100151ca0  bl      _objc_release
  100151ca4  mov     x0, x20
  100151ca8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGWaitForFresh containerRefreshBegin:refreshType:]
; address 0x100151cac  size 4  kind objc
; ======================================================================
  100151cac  ret

; ======================================================================
; -[TAGWaitForFresh containerRefreshSuccess:refreshType:]
; address 0x100151cb0  size 184  kind objc
; ======================================================================
  100151cb0  stp     x29, x30, [sp, #-0x10]!
  100151cb4  mov     x29, sp
  100151cb8  stp     x20, x19, [sp, #-0x10]!
  100151cbc  stp     x22, x21, [sp, #-0x10]!
  100151cc0  mov     x21, x3
  100151cc4  mov     x20, x0
  100151cc8  mov     x0, x2
  100151ccc  bl      _objc_retain
  100151cd0  mov     x19, x0
  100151cd4  cmp     w21, #1
  100151cd8  b.eq    loc_100151cf4                            ; if (arg2 == 1)
  100151cdc  adrp    x8, #0x10041d000
  100151ce0  nop
  100151ce4  ldr     x1, [x8, #0xa0]
  100151ce8  mov     x0, x20
  100151cec  bl      _objc_msgSend                            ; [self isFresh]
  100151cf0  cbz     w0, loc_100151d30                        ; if ([self isFresh] == 0)
loc_100151cf4:
  100151cf4  adrp    x8, #0x10041d000
  100151cf8  nop
  100151cfc  ldr     x1, [x8, #0x90]
  100151d00  mov     x0, x20
  100151d04  bl      _objc_msgSend                            ; [self containerOpener]
  100151d08  mov     x29, x29
  100151d0c  bl      _objc_retainAutoreleasedReturnValue
  100151d10  mov     x20, x0
  100151d14  adrp    x8, #0x10041d000
  100151d18  nop
  100151d1c  ldr     x1, [x8, #0x98]
  100151d20  mov     x2, x19
  100151d24  bl      _objc_msgSend                            ; [[self containerOpener] callNotifiers:arg1]
  100151d28  mov     x0, x20
  100151d2c  bl      _objc_release
loc_100151d30:
  100151d30  mov     x0, x19
  100151d34  ldp     x22, x21, [sp], #0x10
  100151d38  ldp     x20, x19, [sp], #0x10
  100151d3c  ldp     x29, x30, [sp], #0x10
  100151d40  b       _objc_release
  100151d44  mov     x21, x0
  100151d48  b       loc_100151d58
  100151d4c  mov     x21, x0
  100151d50  mov     x0, x20
  100151d54  bl      _objc_release
loc_100151d58:
  100151d58  mov     x0, x19
  100151d5c  bl      _objc_release
  100151d60  mov     x0, x21
  100151d64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGWaitForFresh containerRefreshFailure:failure:refreshType:]
; address 0x100151d68  size 160  kind objc
; ======================================================================
  100151d68  stp     x29, x30, [sp, #-0x10]!
  100151d6c  mov     x29, sp
  100151d70  stp     x20, x19, [sp, #-0x10]!
  100151d74  stp     x22, x21, [sp, #-0x10]!
  100151d78  mov     x21, x4
  100151d7c  mov     x20, x0
  100151d80  mov     x0, x2
  100151d84  bl      _objc_retain
  100151d88  mov     x19, x0
  100151d8c  cmp     w21, #1
  100151d90  b.ne    loc_100151dd0                            ; if (arg3 != 1)
  100151d94  adrp    x8, #0x10041d000
  100151d98  nop
  100151d9c  ldr     x1, [x8, #0x90]
  100151da0  mov     x0, x20
  100151da4  bl      _objc_msgSend                            ; [self containerOpener]
  100151da8  mov     x29, x29
  100151dac  bl      _objc_retainAutoreleasedReturnValue
  100151db0  mov     x20, x0
  100151db4  adrp    x8, #0x10041d000
  100151db8  nop
  100151dbc  ldr     x1, [x8, #0x98]
  100151dc0  mov     x2, x19
  100151dc4  bl      _objc_msgSend                            ; [[self containerOpener] callNotifiers:arg1]
  100151dc8  mov     x0, x20
  100151dcc  bl      _objc_release
loc_100151dd0:
  100151dd0  mov     x0, x19
  100151dd4  ldp     x22, x21, [sp], #0x10
  100151dd8  ldp     x20, x19, [sp], #0x10
  100151ddc  ldp     x29, x30, [sp], #0x10
  100151de0  b       _objc_release
  100151de4  mov     x21, x0
  100151de8  b       loc_100151df8
  100151dec  mov     x21, x0
  100151df0  mov     x0, x20
  100151df4  bl      _objc_release
loc_100151df8:
  100151df8  mov     x0, x19
  100151dfc  bl      _objc_release
  100151e00  mov     x0, x21
  100151e04  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGWaitForFresh isFresh]
; address 0x100151e08  size 204  kind objc
; ======================================================================
  100151e08  stp     x29, x30, [sp, #-0x10]!
  100151e0c  mov     x29, sp
  100151e10  stp     x20, x19, [sp, #-0x10]!
  100151e14  stp     x22, x21, [sp, #-0x10]!
  100151e18  stp     d9, d8, [sp, #-0x10]!
  100151e1c  mov     x19, x0
  100151e20  adrp    x8, #0x10041d000
  100151e24  nop
  100151e28  ldr     x1, [x8, #0xa8]
  100151e2c  bl      _objc_msgSend                            ; [self oldestTimeToBeFresh]
  100151e30  mov     v8.16b, v0.16b
  100151e34  adrp    x8, #0x10041d000
  100151e38  nop
  100151e3c  ldr     x1, [x8, #0x90]
  100151e40  mov     x0, x19
  100151e44  bl      _objc_msgSend                            ; [self containerOpener]
  100151e48  mov     x29, x29
  100151e4c  bl      _objc_retainAutoreleasedReturnValue
  100151e50  mov     x19, x0
  100151e54  adrp    x8, #0x10041c000
  100151e58  nop
  100151e5c  ldr     x1, [x8, #0xde0]
  100151e60  bl      _objc_msgSend                            ; [[self containerOpener] container]
  100151e64  mov     x29, x29
  100151e68  bl      _objc_retainAutoreleasedReturnValue
  100151e6c  mov     x20, x0
  100151e70  adrp    x8, #0x10041c000
  100151e74  nop
  100151e78  ldr     x1, [x8, #0xe98]
  100151e7c  bl      _objc_msgSend                            ; [[[self containerOpener] container] lastRefreshTime]
  100151e80  fcmp    d8, d0
  100151e84  cset    w21, mi
  100151e88  mov     x0, x20
  100151e8c  bl      _objc_release
  100151e90  mov     x0, x19
  100151e94  bl      _objc_release
  100151e98  mov     x0, x21
  100151e9c  ldp     d9, d8, [sp], #0x10
  100151ea0  ldp     x22, x21, [sp], #0x10
  100151ea4  ldp     x20, x19, [sp], #0x10
  100151ea8  ldp     x29, x30, [sp], #0x10
  100151eac  ret
  100151eb0  mov     x21, x0
  100151eb4  b       loc_100151ec4
  100151eb8  mov     x21, x0
  100151ebc  mov     x0, x20
  100151ec0  bl      _objc_release
loc_100151ec4:
  100151ec4  mov     x0, x19
  100151ec8  bl      _objc_release
  100151ecc  mov     x0, x21
  100151ed0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGWaitForFresh oldestTimeToBeFresh]
; address 0x100151ed4  size 20  kind objc
; ======================================================================
  100151ed4  adrp    x8, #0x100420000
  100151ed8  ldrsw   x8, [x8, #0xa64]                         ; ivar offset TAGWaitForFresh._oldestTimeToBeFresh (+0x8)
  100151edc  ldr     x8, [x0, x8]                             ; x8 = self->_oldestTimeToBeFresh
  100151ee0  fmov    d0, x8
  100151ee4  ret

; ======================================================================
; -[TAGWaitForFresh setOldestTimeToBeFresh:]
; address 0x100151ee8  size 20  kind objc
; ======================================================================
  100151ee8  fmov    x8, d0
  100151eec  adrp    x9, #0x100420000
  100151ef0  ldrsw   x9, [x9, #0xa64]                         ; ivar offset TAGWaitForFresh._oldestTimeToBeFresh (+0x8)
  100151ef4  str     x8, [x0, x9]                             ; self->_oldestTimeToBeFresh = arg1
  100151ef8  ret

; ======================================================================
; -[TAGWaitForFresh containerOpener]
; address 0x100151efc  size 16  kind objc
; ======================================================================
  100151efc  adrp    x8, #0x100420000
  100151f00  ldrsw   x2, [x8, #0xa60]                         ; ivar offset TAGWaitForFresh._containerOpener (+0x10)
  100151f04  mov     w3, #1
  100151f08  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGWaitForFresh setContainerOpener:]
; address 0x100151f0c  size 12  kind objc
; ======================================================================
  100151f0c  adrp    x8, #0x100420000
  100151f10  ldrsw   x3, [x8, #0xa60]                         ; ivar offset TAGWaitForFresh._containerOpener (+0x10)
  100151f14  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGWaitForFresh .cxx_destruct]
; address 0x100151f18  size 20  kind objc
; ======================================================================
  100151f18  mov     x1, #0
  100151f1c  adrp    x8, #0x100420000
  100151f20  ldrsw   x8, [x8, #0xa60]                         ; ivar offset TAGWaitForFresh._containerOpener (+0x10)
  100151f24  add     x0, x0, x8
  100151f28  b       _objc_storeStrong
