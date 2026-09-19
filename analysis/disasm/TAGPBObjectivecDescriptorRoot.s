// unit TAGPBObjectivecDescriptorRoot — 2 functions
//   0x10012d360     300  +[TAGPBObjectivecDescriptorRoot extensionRegistry]
//   0x10012d48c     108  +[TAGPBObjectivecDescriptorRoot load]

; ======================================================================
; +[TAGPBObjectivecDescriptorRoot extensionRegistry]
; address 0x10012d360  size 300  kind objc
; ======================================================================
  10012d360  stp     x29, x30, [sp, #-0x10]!
  10012d364  mov     x29, sp
  10012d368  stp     x20, x19, [sp, #-0x10]!
  10012d36c  stp     x22, x21, [sp, #-0x10]!
  10012d370  stp     x24, x23, [sp, #-0x10]!
  10012d374  stp     x26, x25, [sp, #-0x10]!
  10012d378  mov     x19, x0
  10012d37c  adrp    x25, #0x10042d000
  10012d380  add     x25, x25, #0xd00                         ; &g_10042dd00
  10012d384  ldr     x0, [x25, #0x120]                        ; load g_10042de20
  10012d388  cbnz    x0, loc_10012d474                        ; if (g_10042de20 != 0)
  10012d38c  adrp    x8, #0x10041e000
  10012d390  ldr     x0, [x8, #0x738]                         ; class TAGPBExtensionRegistry
  10012d394  adrp    x8, #0x100416000
  10012d398  nop
  10012d39c  ldr     x20, [x8, #0xac8]
  10012d3a0  mov     x1, x20
  10012d3a4  bl      _objc_msgSend                            ; [TAGPBExtensionRegistry alloc]
  10012d3a8  adrp    x8, #0x100416000
  10012d3ac  nop
  10012d3b0  ldr     x1, [x8, #0xab8]
  10012d3b4  bl      _objc_msgSend                            ; [[TAGPBExtensionRegistry alloc] init]
  10012d3b8  str     x0, [x25, #0x120]                        ; store g_10042de20 = [[TAGPBExtensionRegistry alloc] init]
  10012d3bc  adrp    x8, #0x10041c000
  10012d3c0  nop
  10012d3c4  ldr     x21, [x8, #0x4b0]
  10012d3c8  adrp    x8, #0x10041c000
  10012d3cc  nop
  10012d3d0  ldr     x22, [x8, #0x4b8]
  10012d3d4  adrp    x8, #0x10041c000
  10012d3d8  nop
  10012d3dc  ldr     x23, [x8, #0x4c0]
  10012d3e0  adrp    x8, #0x10041b000
  10012d3e4  nop
  10012d3e8  ldr     x24, [x8, #0xd70]
  10012d3ec  adrp    x8, #0x10041e000
  10012d3f0  ldr     x0, [x8, #0x740]                         ; class TAGPBExtensionField
  10012d3f4  mov     x1, x20
  10012d3f8  bl      _objc_msgSend                            ; [TAGPBExtensionField alloc]
  10012d3fc  adrp    x2, #0x10042b000
  10012d400  add     x2, x2, #0x9b0                           ; &d_10042b9b0
  10012d404  mov     x1, x21
  10012d408  bl      _objc_msgSend                            ; [[TAGPBExtensionField alloc] initWithDescription:&d_10042b9b0]
  10012d40c  mov     x20, x0
  10012d410  ldr     x0, [x25, #0x120]                        ; load g_10042de20
  10012d414  mov     x1, x22
  10012d418  mov     x2, x20
  10012d41c  bl      _objc_msgSend                            ; [g_10042de20 addExtension:[[TAGPBExtensionField alloc] initWithDescription:&d_10042b9b0]]
  10012d420  mov     x0, x19
  10012d424  mov     x1, x23
  10012d428  mov     x2, x20
  10012d42c  bl      _objc_msgSend                            ; [TAGPBObjectivecDescriptorRoot globallyRegisterExtension:[[TAGPBExtensionField alloc] initWithDescription:&d_10042b9b0]]
  10012d430  mov     x0, x20
  10012d434  mov     x1, x24
  10012d438  bl      _objc_msgSend                            ; [[[TAGPBExtensionField alloc] initWithDescription:&d_10042b9b0] release]
  10012d43c  ldr     x19, [x25, #0x120]                       ; load g_10042de20
  10012d440  adrp    x8, #0x10041e000
  10012d444  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012d448  adrp    x8, #0x10041c000
  10012d44c  nop
  10012d450  ldr     x1, [x8, #0x4c8]
  10012d454  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot extensionRegistry]
  10012d458  mov     x2, x0
  10012d45c  adrp    x8, #0x10041c000
  10012d460  nop
  10012d464  ldr     x1, [x8, #0x4d0]
  10012d468  mov     x0, x19
  10012d46c  bl      _objc_msgSend                            ; [g_10042de20 addExtensions:[TAGPBDescriptorRoot extensionRegistry]]
  10012d470  ldr     x0, [x25, #0x120]                        ; load g_10042de20
loc_10012d474:
  10012d474  ldp     x26, x25, [sp], #0x10
  10012d478  ldp     x24, x23, [sp], #0x10
  10012d47c  ldp     x22, x21, [sp], #0x10
  10012d480  ldp     x20, x19, [sp], #0x10
  10012d484  ldp     x29, x30, [sp], #0x10
  10012d488  ret

; ======================================================================
; +[TAGPBObjectivecDescriptorRoot load]
; address 0x10012d48c  size 108  kind objc
; ======================================================================
  10012d48c  stp     x29, x30, [sp, #-0x10]!
  10012d490  mov     x29, sp
  10012d494  stp     x20, x19, [sp, #-0x10]!
  10012d498  mov     x19, x0
  10012d49c  adrp    x8, #0x10041e000
  10012d4a0  ldr     x0, [x8, #0x748]                         ; class NSAutoreleasePool
  10012d4a4  adrp    x8, #0x100416000
  10012d4a8  nop
  10012d4ac  ldr     x1, [x8, #0xac8]
  10012d4b0  bl      _objc_msgSend                            ; [NSAutoreleasePool alloc]
  10012d4b4  adrp    x8, #0x100416000
  10012d4b8  nop
  10012d4bc  ldr     x1, [x8, #0xab8]
  10012d4c0  bl      _objc_msgSend                            ; [[NSAutoreleasePool alloc] init]
  10012d4c4  mov     x20, x0
  10012d4c8  adrp    x8, #0x10041c000
  10012d4cc  nop
  10012d4d0  ldr     x1, [x8, #0x4c8]
  10012d4d4  mov     x0, x19
  10012d4d8  bl      _objc_msgSend                            ; [TAGPBObjectivecDescriptorRoot extensionRegistry]
  10012d4dc  adrp    x8, #0x10041c000
  10012d4e0  nop
  10012d4e4  ldr     x1, [x8, #0x4d8]
  10012d4e8  mov     x0, x20
  10012d4ec  ldp     x20, x19, [sp], #0x10
  10012d4f0  ldp     x29, x30, [sp], #0x10
  10012d4f4  b       _objc_msgSend                            ; [[[NSAutoreleasePool alloc] init] drain]
