// unit TAGPCacheOption_CacheLevelEnumDescriptor — 2 functions
//   0x10014c37c      16  +[TAGPCacheOption_CacheLevelEnumDescriptor enumDescriptor]_block_invoke
//   0x10014c38c      96  +[TAGPCacheOption_CacheLevelEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPCacheOption_CacheLevelEnumDescriptor enumDescriptor]_block_invoke
; address 0x10014c37c  size 16  kind block
; ======================================================================
  10014c37c  sub     w8, w0, #1
  10014c380  cmp     w8, #3
  10014c384  cset    w0, lo
  10014c388  ret

; ======================================================================
; +[TAGPCacheOption_CacheLevelEnumDescriptor enumDescriptor]
; address 0x10014c38c  size 96  kind objc
; ======================================================================
  10014c38c  stp     x29, x30, [sp, #-0x10]!
  10014c390  mov     x29, sp
  10014c394  stp     x20, x19, [sp, #-0x10]!
  10014c398  adrp    x19, #0x10042d000
  10014c39c  add     x19, x19, #0xe60                         ; &g_10042de60
  10014c3a0  ldr     x0, [x19, #0x68]                         ; load g_10042dec8
  10014c3a4  cbnz    x0, loc_10014c3e0                        ; if (g_10042dec8 != 0)
  10014c3a8  adrp    x8, #0x10041e000
  10014c3ac  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10014c3b0  adrp    x8, #0x10041c000
  10014c3b4  nop
  10014c3b8  ldr     x1, [x8, #0x4a8]
  10014c3bc  adrp    x2, #0x1003c7000
  10014c3c0  add     x2, x2, #0x6d0                           ; @"TAGPCacheOption_CacheLevel"
  10014c3c4  adrp    x3, #0x10042c000
  10014c3c8  add     x3, x3, #0x970                           ; &d_10042c970
  10014c3cc  adr     x5, #0x10014c37c                         ; &+[TAGPCacheOption_CacheLevelEnumDescriptor enumDescriptor]_block_invoke
  10014c3d0  nop
  10014c3d4  mov     x4, #3
  10014c3d8  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPCacheOption_CacheLevel" values:&d_10042c970 valueCount:3 enumVerifier:&+[TAGPCacheOption_CacheLevelEnumDescriptor enumDescriptor]_block_invoke]
  10014c3dc  str     x0, [x19, #0x68]                         ; store g_10042dec8 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPCacheOption_CacheLevel" values:&d_10042c970 valueCount:3 enumVerifier:&+[TAGPCacheOption_CacheLevelEnumDescriptor enumDescriptor]_block_invoke]
loc_10014c3e0:
  10014c3e0  ldp     x20, x19, [sp], #0x10
  10014c3e4  ldp     x29, x30, [sp], #0x10
  10014c3e8  ret
