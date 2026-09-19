// unit TAGNoopDataLayerPersistentStore — 3 functions
//   0x10015a880       4  -[TAGNoopDataLayerPersistentStore saveKeyValues:lifetimeInMillis:]
//   0x10015a884     132  -[TAGNoopDataLayerPersistentStore loadSaved:]
//   0x10015a908       4  -[TAGNoopDataLayerPersistentStore clearKeysWithPrefix:]

; ======================================================================
; -[TAGNoopDataLayerPersistentStore saveKeyValues:lifetimeInMillis:]
; address 0x10015a880  size 4  kind objc
; ======================================================================
  10015a880  ret

; ======================================================================
; -[TAGNoopDataLayerPersistentStore loadSaved:]
; address 0x10015a884  size 132  kind objc
; ======================================================================
  10015a884  stp     x29, x30, [sp, #-0x10]!
  10015a888  mov     x29, sp
  10015a88c  stp     x20, x19, [sp, #-0x10]!
  10015a890  sub     sp, sp, #0x10
  10015a894  mov     x0, x2
  10015a898  bl      _objc_retain
  10015a89c  mov     x19, x0
  10015a8a0  adrp    x8, #0x10041d000
  10015a8a4  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10015a8a8  adrp    x8, #0x100417000
  10015a8ac  nop
  10015a8b0  ldr     x1, [x8, #0x3c8]
  10015a8b4  mov     x3, #0
  10015a8b8  add     x2, sp, #8
  10015a8bc  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:0]
  10015a8c0  mov     x2, x0
  10015a8c4  adrp    x8, #0x10041d000
  10015a8c8  nop
  10015a8cc  ldr     x1, [x8, #0x4b0]
  10015a8d0  mov     x0, x19
  10015a8d4  bl      _objc_msgSend                            ; [arg1 onKeyValuesLoaded:[NSArray arrayWithObjects:&sp[0x8] count:0]]
  10015a8d8  mov     x0, x19
  10015a8dc  bl      _objc_release
  10015a8e0  sub     sp, x29, #0x10
  10015a8e4  ldp     x20, x19, [sp], #0x10
  10015a8e8  ldp     x29, x30, [sp], #0x10
  10015a8ec  ret
  10015a8f0  b       loc_10015a8f4
loc_10015a8f4:
  10015a8f4  mov     x20, x0
  10015a8f8  mov     x0, x19
  10015a8fc  bl      _objc_release
  10015a900  mov     x0, x20
  10015a904  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNoopDataLayerPersistentStore clearKeysWithPrefix:]
; address 0x10015a908  size 4  kind objc
; ======================================================================
  10015a908  ret
