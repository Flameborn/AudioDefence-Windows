// unit TAGContainerFutureImpl — 5 functions
//   0x100151f2c     320  -[TAGContainerFutureImpl get]
//   0x10015206c      64  -[TAGContainerFutureImpl isDone]
//   0x1001520ac      16  -[TAGContainerFutureImpl container]
//   0x1001520bc      12  -[TAGContainerFutureImpl setContainer:]
//   0x1001520c8      20  -[TAGContainerFutureImpl .cxx_destruct]

; ======================================================================
; -[TAGContainerFutureImpl get]
; address 0x100151f2c  size 320  kind objc
; ======================================================================
  100151f2c  stp     x29, x30, [sp, #-0x10]!
  100151f30  mov     x29, sp
  100151f34  stp     x20, x19, [sp, #-0x10]!
  100151f38  stp     x22, x21, [sp, #-0x10]!
  100151f3c  stp     x24, x23, [sp, #-0x10]!
  100151f40  stp     x26, x25, [sp, #-0x10]!
  100151f44  stp     x28, x27, [sp, #-0x10]!
  100151f48  stp     d9, d8, [sp, #-0x10]!
  100151f4c  mov     x19, x0
  100151f50  adrp    x8, #0x10041c000
  100151f54  nop
  100151f58  ldr     x20, [x8, #0xde0]
  100151f5c  mov     x1, x20
  100151f60  bl      _objc_msgSend                            ; [self container]
  100151f64  mov     x29, x29
  100151f68  bl      _objc_retainAutoreleasedReturnValue
  100151f6c  mov     x21, x0
  100151f70  bl      _objc_release
  100151f74  cbnz    x21, loc_100152020                       ; if ([self container] != 0)
  100151f78  adrp    x8, #0x10041b000
  100151f7c  nop
  100151f80  ldr     x21, [x8, #0xbe0]
  100151f84  adrp    x8, #0x100417000
  100151f88  nop
  100151f8c  adrp    x9, #0x10041d000
  100151f90  add     x9, x9, #0xb0                            ; &@selector(runUntilDate:)
  100151f94  ldr     x22, [x8, #0x6f8]
  100151f98  ldr     x23, [x9]
  100151f9c  adrp    x26, #0x10041e000
  100151fa0  adrp    x27, #0x10041e000
  100151fa4  adrp    x8, #0x100181000
  100151fa8  ldr     d8, [x8, #0x9e0]                         ; d8 = 0.1
loc_100151fac:
  100151fac  ldr     x0, [x26, #0x40]                         ; class NSRunLoop
  100151fb0  mov     x1, x21
  100151fb4  bl      _objc_msgSend                            ; [NSRunLoop currentRunLoop]
  100151fb8  mov     x29, x29
  100151fbc  bl      _objc_retainAutoreleasedReturnValue
  100151fc0  mov     x24, x0
  100151fc4  ldr     x0, [x27, #0x38]                         ; class NSDate
  100151fc8  mov     x1, x22
  100151fcc  mov     v0.16b, v8.16b
  100151fd0  bl      _objc_msgSend                            ; [NSDate dateWithTimeIntervalSinceNow:0.1]
  100151fd4  mov     x29, x29
  100151fd8  bl      _objc_retainAutoreleasedReturnValue
  100151fdc  mov     x25, x0
  100151fe0  mov     x0, x24
  100151fe4  mov     x1, x23
  100151fe8  mov     x2, x25
  100151fec  bl      _objc_msgSend                            ; [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:0.1]]
  100151ff0  mov     x0, x25
  100151ff4  bl      _objc_release
  100151ff8  mov     x0, x24
  100151ffc  bl      _objc_release
  100152000  mov     x0, x19
  100152004  mov     x1, x20
  100152008  bl      _objc_msgSend                            ; [self container]
  10015200c  mov     x29, x29
  100152010  bl      _objc_retainAutoreleasedReturnValue
  100152014  mov     x24, x0
  100152018  bl      _objc_release
  10015201c  cbz     x24, loc_100151fac                       ; if ([self container] == 0)
loc_100152020:
  100152020  mov     x0, x19
  100152024  mov     x1, x20
  100152028  ldp     d9, d8, [sp], #0x10
  10015202c  ldp     x28, x27, [sp], #0x10
  100152030  ldp     x26, x25, [sp], #0x10
  100152034  ldp     x24, x23, [sp], #0x10
  100152038  ldp     x22, x21, [sp], #0x10
  10015203c  ldp     x20, x19, [sp], #0x10
  100152040  ldp     x29, x30, [sp], #0x10
  100152044  b       _objc_msgSend                            ; [self container]
  100152048  mov     x19, x0
  10015204c  b       loc_10015205c
  100152050  mov     x19, x0
  100152054  mov     x0, x25
  100152058  bl      _objc_release
loc_10015205c:
  10015205c  mov     x0, x24
  100152060  bl      _objc_release
  100152064  mov     x0, x19
  100152068  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainerFutureImpl isDone]
; address 0x10015206c  size 64  kind objc
; ======================================================================
  10015206c  stp     x29, x30, [sp, #-0x10]!
  100152070  mov     x29, sp
  100152074  stp     x20, x19, [sp, #-0x10]!
  100152078  adrp    x8, #0x10041c000
  10015207c  nop
  100152080  ldr     x1, [x8, #0xde0]
  100152084  bl      _objc_msgSend                            ; [self container]
  100152088  mov     x29, x29
  10015208c  bl      _objc_retainAutoreleasedReturnValue
  100152090  cmp     x0, #0
  100152094  cset    w19, ne
  100152098  bl      _objc_release
  10015209c  mov     x0, x19
  1001520a0  ldp     x20, x19, [sp], #0x10
  1001520a4  ldp     x29, x30, [sp], #0x10
  1001520a8  ret

; ======================================================================
; -[TAGContainerFutureImpl container]
; address 0x1001520ac  size 16  kind objc
; ======================================================================
  1001520ac  adrp    x8, #0x100420000
  1001520b0  ldrsw   x2, [x8, #0xa68]                         ; ivar offset TAGContainerFutureImpl._container (+0x8)
  1001520b4  mov     w3, #1
  1001520b8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGContainerFutureImpl setContainer:]
; address 0x1001520bc  size 12  kind objc
; ======================================================================
  1001520bc  adrp    x8, #0x100420000
  1001520c0  ldrsw   x3, [x8, #0xa68]                         ; ivar offset TAGContainerFutureImpl._container (+0x8)
  1001520c4  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGContainerFutureImpl .cxx_destruct]
; address 0x1001520c8  size 20  kind objc
; ======================================================================
  1001520c8  mov     x1, #0
  1001520cc  adrp    x8, #0x100420000
  1001520d0  ldrsw   x8, [x8, #0xa68]                         ; ivar offset TAGContainerFutureImpl._container (+0x8)
  1001520d4  add     x0, x0, x8
  1001520d8  b       _objc_storeStrong
