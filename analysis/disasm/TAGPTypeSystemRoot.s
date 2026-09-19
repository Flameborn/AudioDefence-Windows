// unit TAGPTypeSystemRoot — 2 functions
//   0x10014b9fc     140  +[TAGPTypeSystemRoot extensionRegistry]
//   0x10014ba88     108  +[TAGPTypeSystemRoot load]

; ======================================================================
; +[TAGPTypeSystemRoot extensionRegistry]
; address 0x10014b9fc  size 140  kind objc
; ======================================================================
  10014b9fc  stp     x29, x30, [sp, #-0x10]!
  10014ba00  mov     x29, sp
  10014ba04  stp     x20, x19, [sp, #-0x10]!
  10014ba08  adrp    x20, #0x10042d000
  10014ba0c  add     x20, x20, #0xe60                         ; &g_10042de60
  10014ba10  ldr     x0, [x20]                                ; load g_10042de60
  10014ba14  cbnz    x0, loc_10014ba7c                        ; if (g_10042de60 != 0)
  10014ba18  adrp    x8, #0x10041e000
  10014ba1c  ldr     x0, [x8, #0x738]                         ; class TAGPBExtensionRegistry
  10014ba20  adrp    x8, #0x100416000
  10014ba24  nop
  10014ba28  ldr     x1, [x8, #0xac8]
  10014ba2c  bl      _objc_msgSend                            ; [TAGPBExtensionRegistry alloc]
  10014ba30  adrp    x8, #0x100416000
  10014ba34  nop
  10014ba38  ldr     x1, [x8, #0xab8]
  10014ba3c  bl      _objc_msgSend                            ; [[TAGPBExtensionRegistry alloc] init]
  10014ba40  mov     x19, x0
  10014ba44  str     x19, [x20]                               ; store g_10042de60 = [[TAGPBExtensionRegistry alloc] init]
  10014ba48  adrp    x8, #0x10041e000
  10014ba4c  ldr     x0, [x8, #0x758]                         ; class TAGPBObjectivecDescriptorRoot
  10014ba50  adrp    x8, #0x10041c000
  10014ba54  nop
  10014ba58  ldr     x1, [x8, #0x4c8]
  10014ba5c  bl      _objc_msgSend                            ; [TAGPBObjectivecDescriptorRoot extensionRegistry]
  10014ba60  mov     x2, x0
  10014ba64  adrp    x8, #0x10041c000
  10014ba68  nop
  10014ba6c  ldr     x1, [x8, #0x4d0]
  10014ba70  mov     x0, x19
  10014ba74  bl      _objc_msgSend                            ; [[[TAGPBExtensionRegistry alloc] init] addExtensions:[TAGPBObjectivecDescriptorRoot extensionRegistry]]
  10014ba78  ldr     x0, [x20]                                ; load g_10042de60
loc_10014ba7c:
  10014ba7c  ldp     x20, x19, [sp], #0x10
  10014ba80  ldp     x29, x30, [sp], #0x10
  10014ba84  ret

; ======================================================================
; +[TAGPTypeSystemRoot load]
; address 0x10014ba88  size 108  kind objc
; ======================================================================
  10014ba88  stp     x29, x30, [sp, #-0x10]!
  10014ba8c  mov     x29, sp
  10014ba90  stp     x20, x19, [sp, #-0x10]!
  10014ba94  mov     x19, x0
  10014ba98  adrp    x8, #0x10041e000
  10014ba9c  ldr     x0, [x8, #0x748]                         ; class NSAutoreleasePool
  10014baa0  adrp    x8, #0x100416000
  10014baa4  nop
  10014baa8  ldr     x1, [x8, #0xac8]
  10014baac  bl      _objc_msgSend                            ; [NSAutoreleasePool alloc]
  10014bab0  adrp    x8, #0x100416000
  10014bab4  nop
  10014bab8  ldr     x1, [x8, #0xab8]
  10014babc  bl      _objc_msgSend                            ; [[NSAutoreleasePool alloc] init]
  10014bac0  mov     x20, x0
  10014bac4  adrp    x8, #0x10041c000
  10014bac8  nop
  10014bacc  ldr     x1, [x8, #0x4c8]
  10014bad0  mov     x0, x19
  10014bad4  bl      _objc_msgSend                            ; [TAGPTypeSystemRoot extensionRegistry]
  10014bad8  adrp    x8, #0x10041c000
  10014badc  nop
  10014bae0  ldr     x1, [x8, #0x4d8]
  10014bae4  mov     x0, x20
  10014bae8  ldp     x20, x19, [sp], #0x10
  10014baec  ldp     x29, x30, [sp], #0x10
  10014baf0  b       _objc_msgSend                            ; [[[NSAutoreleasePool alloc] init] drain]
