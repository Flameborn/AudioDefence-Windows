// unit TAGPResourcewithmetadataRoot — 2 functions
//   0x10014c8e4     192  +[TAGPResourcewithmetadataRoot extensionRegistry]
//   0x10014c9a4     108  +[TAGPResourcewithmetadataRoot load]

; ======================================================================
; +[TAGPResourcewithmetadataRoot extensionRegistry]
; address 0x10014c8e4  size 192  kind objc
; ======================================================================
  10014c8e4  stp     x29, x30, [sp, #-0x10]!
  10014c8e8  mov     x29, sp
  10014c8ec  stp     x20, x19, [sp, #-0x10]!
  10014c8f0  stp     x22, x21, [sp, #-0x10]!
  10014c8f4  adrp    x22, #0x10042d000
  10014c8f8  add     x22, x22, #0xe60                         ; &g_10042de60
  10014c8fc  ldr     x0, [x22, #0xa8]                         ; load g_10042df08
  10014c900  cbnz    x0, loc_10014c994                        ; if (g_10042df08 != 0)
  10014c904  adrp    x8, #0x10041e000
  10014c908  ldr     x0, [x8, #0x738]                         ; class TAGPBExtensionRegistry
  10014c90c  adrp    x8, #0x100416000
  10014c910  nop
  10014c914  ldr     x1, [x8, #0xac8]
  10014c918  bl      _objc_msgSend                            ; [TAGPBExtensionRegistry alloc]
  10014c91c  adrp    x8, #0x100416000
  10014c920  nop
  10014c924  ldr     x1, [x8, #0xab8]
  10014c928  bl      _objc_msgSend                            ; [[TAGPBExtensionRegistry alloc] init]
  10014c92c  mov     x19, x0
  10014c930  str     x19, [x22, #0xa8]                        ; store g_10042df08 = [[TAGPBExtensionRegistry alloc] init]
  10014c934  adrp    x8, #0x10041e000
  10014c938  ldr     x0, [x8, #0x7e8]                         ; class TAGPServingRoot
  10014c93c  adrp    x8, #0x10041c000
  10014c940  nop
  10014c944  ldr     x20, [x8, #0x4c8]
  10014c948  mov     x1, x20
  10014c94c  bl      _objc_msgSend                            ; [TAGPServingRoot extensionRegistry]
  10014c950  mov     x2, x0
  10014c954  adrp    x8, #0x10041c000
  10014c958  nop
  10014c95c  ldr     x21, [x8, #0x4d0]
  10014c960  mov     x0, x19
  10014c964  mov     x1, x21
  10014c968  bl      _objc_msgSend                            ; [[[TAGPBExtensionRegistry alloc] init] addExtensions:[TAGPServingRoot extensionRegistry]]
  10014c96c  ldr     x19, [x22, #0xa8]                        ; load g_10042df08
  10014c970  adrp    x8, #0x10041e000
  10014c974  ldr     x0, [x8, #0x758]                         ; class TAGPBObjectivecDescriptorRoot
  10014c978  mov     x1, x20
  10014c97c  bl      _objc_msgSend                            ; [TAGPBObjectivecDescriptorRoot extensionRegistry]
  10014c980  mov     x2, x0
  10014c984  mov     x0, x19
  10014c988  mov     x1, x21
  10014c98c  bl      _objc_msgSend                            ; [g_10042df08 addExtensions:[TAGPBObjectivecDescriptorRoot extensionRegistry]]
  10014c990  ldr     x0, [x22, #0xa8]                         ; load g_10042df08
loc_10014c994:
  10014c994  ldp     x22, x21, [sp], #0x10
  10014c998  ldp     x20, x19, [sp], #0x10
  10014c99c  ldp     x29, x30, [sp], #0x10
  10014c9a0  ret

; ======================================================================
; +[TAGPResourcewithmetadataRoot load]
; address 0x10014c9a4  size 108  kind objc
; ======================================================================
  10014c9a4  stp     x29, x30, [sp, #-0x10]!
  10014c9a8  mov     x29, sp
  10014c9ac  stp     x20, x19, [sp, #-0x10]!
  10014c9b0  mov     x19, x0
  10014c9b4  adrp    x8, #0x10041e000
  10014c9b8  ldr     x0, [x8, #0x748]                         ; class NSAutoreleasePool
  10014c9bc  adrp    x8, #0x100416000
  10014c9c0  nop
  10014c9c4  ldr     x1, [x8, #0xac8]
  10014c9c8  bl      _objc_msgSend                            ; [NSAutoreleasePool alloc]
  10014c9cc  adrp    x8, #0x100416000
  10014c9d0  nop
  10014c9d4  ldr     x1, [x8, #0xab8]
  10014c9d8  bl      _objc_msgSend                            ; [[NSAutoreleasePool alloc] init]
  10014c9dc  mov     x20, x0
  10014c9e0  adrp    x8, #0x10041c000
  10014c9e4  nop
  10014c9e8  ldr     x1, [x8, #0x4c8]
  10014c9ec  mov     x0, x19
  10014c9f0  bl      _objc_msgSend                            ; [TAGPResourcewithmetadataRoot extensionRegistry]
  10014c9f4  adrp    x8, #0x10041c000
  10014c9f8  nop
  10014c9fc  ldr     x1, [x8, #0x4d8]
  10014ca00  mov     x0, x20
  10014ca04  ldp     x20, x19, [sp], #0x10
  10014ca08  ldp     x29, x30, [sp], #0x10
  10014ca0c  b       _objc_msgSend                            ; [[[NSAutoreleasePool alloc] init] drain]
