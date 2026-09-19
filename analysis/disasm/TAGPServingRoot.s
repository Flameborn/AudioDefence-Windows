// unit TAGPServingRoot — 2 functions
//   0x10014bc98     344  +[TAGPServingRoot extensionRegistry]
//   0x10014bdf0     108  +[TAGPServingRoot load]

; ======================================================================
; +[TAGPServingRoot extensionRegistry]
; address 0x10014bc98  size 344  kind objc
; ======================================================================
  10014bc98  stp     x29, x30, [sp, #-0x10]!
  10014bc9c  mov     x29, sp
  10014bca0  stp     x20, x19, [sp, #-0x10]!
  10014bca4  stp     x22, x21, [sp, #-0x10]!
  10014bca8  stp     x24, x23, [sp, #-0x10]!
  10014bcac  stp     x26, x25, [sp, #-0x10]!
  10014bcb0  mov     x19, x0
  10014bcb4  adrp    x25, #0x10042d000
  10014bcb8  add     x25, x25, #0xe60                         ; &g_10042de60
  10014bcbc  ldr     x0, [x25, #0x20]                         ; load g_10042de80
  10014bcc0  cbnz    x0, loc_10014bdd8                        ; if (g_10042de80 != 0)
  10014bcc4  adrp    x8, #0x10041e000
  10014bcc8  ldr     x0, [x8, #0x738]                         ; class TAGPBExtensionRegistry
  10014bccc  adrp    x8, #0x100416000
  10014bcd0  nop
  10014bcd4  ldr     x20, [x8, #0xac8]
  10014bcd8  mov     x1, x20
  10014bcdc  bl      _objc_msgSend                            ; [TAGPBExtensionRegistry alloc]
  10014bce0  adrp    x8, #0x100416000
  10014bce4  nop
  10014bce8  ldr     x1, [x8, #0xab8]
  10014bcec  bl      _objc_msgSend                            ; [[TAGPBExtensionRegistry alloc] init]
  10014bcf0  str     x0, [x25, #0x20]                         ; store g_10042de80 = [[TAGPBExtensionRegistry alloc] init]
  10014bcf4  adrp    x8, #0x10041c000
  10014bcf8  nop
  10014bcfc  ldr     x21, [x8, #0x4b0]
  10014bd00  adrp    x8, #0x10041c000
  10014bd04  nop
  10014bd08  ldr     x22, [x8, #0x4b8]
  10014bd0c  adrp    x8, #0x10041c000
  10014bd10  nop
  10014bd14  ldr     x23, [x8, #0x4c0]
  10014bd18  adrp    x8, #0x10041b000
  10014bd1c  nop
  10014bd20  ldr     x24, [x8, #0xd70]
  10014bd24  adrp    x8, #0x10041e000
  10014bd28  ldr     x0, [x8, #0x740]                         ; class TAGPBExtensionField
  10014bd2c  mov     x1, x20
  10014bd30  bl      _objc_msgSend                            ; [TAGPBExtensionField alloc]
  10014bd34  adrp    x2, #0x10042c000
  10014bd38  add     x2, x2, #0xf8                            ; &d_10042c0f8
  10014bd3c  mov     x1, x21
  10014bd40  bl      _objc_msgSend                            ; [[TAGPBExtensionField alloc] initWithDescription:&d_10042c0f8]
  10014bd44  mov     x20, x0
  10014bd48  ldr     x0, [x25, #0x20]                         ; load g_10042de80
  10014bd4c  mov     x1, x22
  10014bd50  mov     x2, x20
  10014bd54  bl      _objc_msgSend                            ; [g_10042de80 addExtension:[[TAGPBExtensionField alloc] initWithDescription:&d_10042c0f8]]
  10014bd58  mov     x0, x19
  10014bd5c  mov     x1, x23
  10014bd60  mov     x2, x20
  10014bd64  bl      _objc_msgSend                            ; [TAGPServingRoot globallyRegisterExtension:[[TAGPBExtensionField alloc] initWithDescription:&d_10042c0f8]]
  10014bd68  mov     x0, x20
  10014bd6c  mov     x1, x24
  10014bd70  bl      _objc_msgSend                            ; [[[TAGPBExtensionField alloc] initWithDescription:&d_10042c0f8] release]
  10014bd74  ldr     x19, [x25, #0x20]                        ; load g_10042de80
  10014bd78  adrp    x8, #0x10041e000
  10014bd7c  ldr     x0, [x8, #0x7d8]                         ; class TAGPTypeSystemRoot
  10014bd80  adrp    x8, #0x10041c000
  10014bd84  nop
  10014bd88  ldr     x20, [x8, #0x4c8]
  10014bd8c  mov     x1, x20
  10014bd90  bl      _objc_msgSend                            ; [TAGPTypeSystemRoot extensionRegistry]
  10014bd94  mov     x2, x0
  10014bd98  adrp    x8, #0x10041c000
  10014bd9c  nop
  10014bda0  ldr     x21, [x8, #0x4d0]
  10014bda4  mov     x0, x19
  10014bda8  mov     x1, x21
  10014bdac  bl      _objc_msgSend                            ; [g_10042de80 addExtensions:[TAGPTypeSystemRoot extensionRegistry]]
  10014bdb0  ldr     x19, [x25, #0x20]                        ; load g_10042de80
  10014bdb4  adrp    x8, #0x10041e000
  10014bdb8  ldr     x0, [x8, #0x758]                         ; class TAGPBObjectivecDescriptorRoot
  10014bdbc  mov     x1, x20
  10014bdc0  bl      _objc_msgSend                            ; [TAGPBObjectivecDescriptorRoot extensionRegistry]
  10014bdc4  mov     x2, x0
  10014bdc8  mov     x0, x19
  10014bdcc  mov     x1, x21
  10014bdd0  bl      _objc_msgSend                            ; [g_10042de80 addExtensions:[TAGPBObjectivecDescriptorRoot extensionRegistry]]
  10014bdd4  ldr     x0, [x25, #0x20]                         ; load g_10042de80
loc_10014bdd8:
  10014bdd8  ldp     x26, x25, [sp], #0x10
  10014bddc  ldp     x24, x23, [sp], #0x10
  10014bde0  ldp     x22, x21, [sp], #0x10
  10014bde4  ldp     x20, x19, [sp], #0x10
  10014bde8  ldp     x29, x30, [sp], #0x10
  10014bdec  ret

; ======================================================================
; +[TAGPServingRoot load]
; address 0x10014bdf0  size 108  kind objc
; ======================================================================
  10014bdf0  stp     x29, x30, [sp, #-0x10]!
  10014bdf4  mov     x29, sp
  10014bdf8  stp     x20, x19, [sp, #-0x10]!
  10014bdfc  mov     x19, x0
  10014be00  adrp    x8, #0x10041e000
  10014be04  ldr     x0, [x8, #0x748]                         ; class NSAutoreleasePool
  10014be08  adrp    x8, #0x100416000
  10014be0c  nop
  10014be10  ldr     x1, [x8, #0xac8]
  10014be14  bl      _objc_msgSend                            ; [NSAutoreleasePool alloc]
  10014be18  adrp    x8, #0x100416000
  10014be1c  nop
  10014be20  ldr     x1, [x8, #0xab8]
  10014be24  bl      _objc_msgSend                            ; [[NSAutoreleasePool alloc] init]
  10014be28  mov     x20, x0
  10014be2c  adrp    x8, #0x10041c000
  10014be30  nop
  10014be34  ldr     x1, [x8, #0x4c8]
  10014be38  mov     x0, x19
  10014be3c  bl      _objc_msgSend                            ; [TAGPServingRoot extensionRegistry]
  10014be40  adrp    x8, #0x10041c000
  10014be44  nop
  10014be48  ldr     x1, [x8, #0x4d8]
  10014be4c  mov     x0, x20
  10014be50  ldp     x20, x19, [sp], #0x10
  10014be54  ldp     x29, x30, [sp], #0x10
  10014be58  b       _objc_msgSend                            ; [[[NSAutoreleasePool alloc] init] drain]
