// unit TAGFutureNotifier — 4 functions
//   0x1001520dc     148  -[TAGFutureNotifier containerAvailable:]
//   0x100152170      16  -[TAGFutureNotifier future]
//   0x100152180      12  -[TAGFutureNotifier setFuture:]
//   0x10015218c      20  -[TAGFutureNotifier .cxx_destruct]

; ======================================================================
; -[TAGFutureNotifier containerAvailable:]
; address 0x1001520dc  size 148  kind objc
; ======================================================================
  1001520dc  stp     x29, x30, [sp, #-0x10]!
  1001520e0  mov     x29, sp
  1001520e4  stp     x20, x19, [sp, #-0x10]!
  1001520e8  stp     x22, x21, [sp, #-0x10]!
  1001520ec  mov     x20, x0
  1001520f0  mov     x0, x2
  1001520f4  bl      _objc_retain
  1001520f8  mov     x19, x0
  1001520fc  adrp    x8, #0x10041d000
  100152100  nop
  100152104  ldr     x1, [x8, #0xb8]
  100152108  mov     x0, x20
  10015210c  bl      _objc_msgSend                            ; [self future]
  100152110  mov     x29, x29
  100152114  bl      _objc_retainAutoreleasedReturnValue
  100152118  mov     x20, x0
  10015211c  adrp    x8, #0x10041d000
  100152120  nop
  100152124  ldr     x1, [x8, #0xc0]
  100152128  mov     x2, x19
  10015212c  bl      _objc_msgSend                            ; [[self future] setContainer:arg1]
  100152130  mov     x0, x20
  100152134  bl      _objc_release
  100152138  mov     x0, x19
  10015213c  ldp     x22, x21, [sp], #0x10
  100152140  ldp     x20, x19, [sp], #0x10
  100152144  ldp     x29, x30, [sp], #0x10
  100152148  b       _objc_release
  10015214c  mov     x21, x0
  100152150  b       loc_100152160
  100152154  mov     x21, x0
  100152158  mov     x0, x20
  10015215c  bl      _objc_release
loc_100152160:
  100152160  mov     x0, x19
  100152164  bl      _objc_release
  100152168  mov     x0, x21
  10015216c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGFutureNotifier future]
; address 0x100152170  size 16  kind objc
; ======================================================================
  100152170  adrp    x8, #0x100420000
  100152174  ldrsw   x2, [x8, #0xa6c]                         ; ivar offset TAGFutureNotifier._future (+0x8)
  100152178  mov     w3, #1
  10015217c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGFutureNotifier setFuture:]
; address 0x100152180  size 12  kind objc
; ======================================================================
  100152180  adrp    x8, #0x100420000
  100152184  ldrsw   x3, [x8, #0xa6c]                         ; ivar offset TAGFutureNotifier._future (+0x8)
  100152188  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGFutureNotifier .cxx_destruct]
; address 0x10015218c  size 20  kind objc
; ======================================================================
  10015218c  mov     x1, #0
  100152190  adrp    x8, #0x100420000
  100152194  ldrsw   x8, [x8, #0xa6c]                         ; ivar offset TAGFutureNotifier._future (+0x8)
  100152198  add     x0, x0, x8
  10015219c  b       _objc_storeStrong
