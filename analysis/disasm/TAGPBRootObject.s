// unit TAGPBRootObject — 13 functions
//   0x100146d80     116  +[TAGPBRootObject initialize]
//   0x100146df4       8  sub_100146df4
//   0x100146dfc       4  sub_100146dfc
//   0x100146e00      32  sub_100146e00
//   0x100146e20      28  sub_100146e20
//   0x100146e3c      56  sub_100146e3c
//   0x100146e74       8  +[TAGPBRootObject extensionRegistry]
//   0x100146e7c      84  +[TAGPBRootObject globallyRegisterExtension:]
//   0x100146ed0     240  +[TAGPBRootObject resolveClassMethod:]
//   0x100146fc0     228  sub_100146fc0
//   0x1001470a4       8  +[TAGPBRootObject resolveClassMethod:]_block_invoke
//   0x1001470ac      16  sub_1001470ac
//   0x1001470bc      12  sub_1001470bc

; ======================================================================
; +[TAGPBRootObject initialize]
; address 0x100146d80  size 116  kind objc
; ======================================================================
  100146d80  stp     x29, x30, [sp, #-0x10]!
  100146d84  mov     x29, sp
  100146d88  stp     x20, x19, [sp, #-0x10]!
  100146d8c  sub     sp, sp, #0x30
  100146d90  adrp    x19, #0x10042d000
  100146d94  add     x19, x19, #0xd00                         ; &g_10042dd00
  100146d98  ldr     x8, [x19, #0x140]                        ; load g_10042de40
  100146d9c  cbnz    x8, loc_100146de4                        ; if (g_10042de40 != 0)
  100146da0  adrp    x8, #0x1003b8000
  100146da4  add     x8, x8, #0xaf0                           ; &d_1003b8af0
  100146da8  ldr     q0, [x8, #0x20]                          ; [&d_1003b8b10] -> &sub_100146e20
  100146dac  str     q0, [sp, #0x20]
  100146db0  ldr     q0, [x8, #0x10]                          ; [&d_1003b8b00] -> &sub_100146dfc
  100146db4  str     q0, [sp, #0x10]
  100146db8  ldr     q0, [x8]                                 ; [&d_1003b8af0] -> 0x0
  100146dbc  str     q0, [sp]
  100146dc0  adrp    x8, #0x1003b0000
  100146dc4  ldr     x8, [x8, #0x1f0]                         ; _kCFAllocatorDefault
  100146dc8  ldr     x0, [x8]                                 ; x0 = _kCFAllocatorDefault[+0x0]
  100146dcc  mov     x1, #0
  100146dd0  adrp    x3, #0x1003b0000
  100146dd4  ldr     x3, [x3, #0x228]                         ; _kCFTypeDictionaryValueCallBacks
  100146dd8  mov     x2, sp
  100146ddc  bl      _CFDictionaryCreateMutable               ; CFDictionaryCreateMutable(_kCFAllocatorDefault[+0x0], 0, ^{sub_100146dfc captures +0x20=&sub_100146e20}, _kCFTypeDictionaryValueCallBacks)
  100146de0  str     x0, [x19, #0x140]                        ; store g_10042de40 = CFDictionaryCreateMutable(_kCFAllocatorDefault[+0x0], 0, ^{sub_100146dfc captures +0x20=&sub_100146e20}, _kCFTypeDictionaryValueCallBacks)
loc_100146de4:
  100146de4  sub     sp, x29, #0x10
  100146de8  ldp     x20, x19, [sp], #0x10
  100146dec  ldp     x29, x30, [sp], #0x10
  100146df0  ret

; ======================================================================
; sub_100146df4
; address 0x100146df4  size 8  kind sub
; ======================================================================
  100146df4  mov     x0, x1
  100146df8  ret

; ======================================================================
; sub_100146dfc
; address 0x100146dfc  size 4  kind sub
; ======================================================================
  100146dfc  ret

; ======================================================================
; sub_100146e00
; address 0x100146e00  size 32  kind sub
; ======================================================================
  100146e00  mov     x8, x0
  100146e04  adrp    x9, #0x1003b0000
  100146e08  ldr     x9, [x9, #0x1f0]                         ; _kCFAllocatorDefault
  100146e0c  ldr     x0, [x9]                                 ; x0 = _kCFAllocatorDefault[+0x0]
  100146e10  mov     w2, #0x8000000
  100146e14  movk    w2, #0x100
  100146e18  mov     x1, x8
  100146e1c  b       _CFStringCreateWithCString               ; CFStringCreateWithCString(_kCFAllocatorDefault[+0x0], a0, 0x8000100, a3)

; ======================================================================
; sub_100146e20
; address 0x100146e20  size 28  kind sub
; ======================================================================
  100146e20  stp     x29, x30, [sp, #-0x10]!
  100146e24  mov     x29, sp
  100146e28  bl      _strcmp                                  ; strcmp(a0, a1, a2, a3)
  100146e2c  cmp     w0, #0
  100146e30  cset    w0, eq
  100146e34  ldp     x29, x30, [sp], #0x10
  100146e38  ret

; ======================================================================
; sub_100146e3c
; address 0x100146e3c  size 56  kind sub
; ======================================================================
  100146e3c  mov     w8, #0
  100146e40  ldrb    w10, [x0]                                ; w10 = a0[+0x0]
  100146e44  cbz     w10, loc_100146e68                       ; if (a0[+0x0] == 0)
  100146e48  mov     w9, #1
loc_100146e4c:
  100146e4c  add     w8, w8, w10, sxtb
  100146e50  add     w8, w8, w8, lsl #10
  100146e54  eor     w8, w8, w8, lsr #6
  100146e58  ldrb    w10, [x0, w9, uxtw]
  100146e5c  add     w9, w9, #1
  100146e60  cbnz    w10, loc_100146e4c                       ; if (w10 != 0)
  100146e64  add     w8, w8, w8, lsl #3                       ; t1 = ((((w8 + w10) + ((w8 + w10) << 10)) ^ (((w8 + w10) + ((w8 + w10) << 10)) >>> 6)) + ((((w8 + w10) + ((w8 + w10) << 10)) ^ (((w8 + w10) + ((w8 + w10) << 10)) >>> 6)) << 3))
loc_100146e68:
  100146e68  eor     w8, w8, w8, lsr #11
  100146e6c  add     w0, w8, w8, lsl #15
  100146e70  ret

; ======================================================================
; +[TAGPBRootObject extensionRegistry]
; address 0x100146e74  size 8  kind objc
; ======================================================================
  100146e74  mov     x0, #0
  100146e78  ret

; ======================================================================
; +[TAGPBRootObject globallyRegisterExtension:]
; address 0x100146e7c  size 84  kind objc
; ======================================================================
  100146e7c  stp     x29, x30, [sp, #-0x10]!
  100146e80  mov     x29, sp
  100146e84  stp     x20, x19, [sp, #-0x10]!
  100146e88  mov     x19, x2
  100146e8c  adrp    x8, #0x10041c000
  100146e90  nop
  100146e94  ldr     x1, [x8, #0x7e8]
  100146e98  mov     x0, x19
  100146e9c  bl      _objc_msgSend                            ; [arg1 descriptor]
  100146ea0  adrp    x8, #0x10041c000
  100146ea4  nop
  100146ea8  ldr     x1, [x8, #0xbb8]
  100146eac  bl      _objc_msgSend                            ; [[arg1 descriptor] singletonNameC]
  100146eb0  mov     x1, x0
  100146eb4  adrp    x8, #0x10042d000
  100146eb8  add     x8, x8, #0xd00                           ; &g_10042dd00
  100146ebc  ldr     x0, [x8, #0x140]                         ; load g_10042de40
  100146ec0  mov     x2, x19
  100146ec4  ldp     x20, x19, [sp], #0x10
  100146ec8  ldp     x29, x30, [sp], #0x10
  100146ecc  b       _CFDictionarySetValue                    ; CFDictionarySetValue(g_10042de40, [[arg1 descriptor] singletonNameC], arg1)

; ======================================================================
; +[TAGPBRootObject resolveClassMethod:]
; address 0x100146ed0  size 240  kind objc
; ======================================================================
  100146ed0  stp     x29, x30, [sp, #-0x10]!
  100146ed4  mov     x29, sp
  100146ed8  stp     x20, x19, [sp, #-0x10]!
  100146edc  stp     x22, x21, [sp, #-0x10]!
  100146ee0  sub     sp, sp, #0x40
  100146ee4  mov     x19, x2
  100146ee8  mov     x21, x0
  100146eec  mov     x1, x19
  100146ef0  bl      sub_100146fc0                            ; sub_100146fc0(TAGPBRootObject, arg1, arg1)
  100146ef4  mov     x20, x0
  100146ef8  cbz     x20, loc_100146f84                       ; if (sub_100146fc0(TAGPBRootObject, arg1, arg1) == 0)
  100146efc  adrp    x8, #0x10041c000
  100146f00  nop
  100146f04  ldr     x22, [x8, #0xbc0]
  100146f08  adrp    x0, #0x100394000
  100146f0c  add     x0, x0, #0xa3f                           ; "TAGPBMessageSignatureProtocol"
  100146f10  bl      _objc_getProtocol                        ; objc_getProtocol("TAGPBMessageSignatureProtocol")
  100146f14  mov     w2, #0
  100146f18  mov     w3, #0
  100146f1c  mov     x1, x22
  100146f20  bl      _protocol_getMethodDescription           ; protocol_getMethodDescription(objc_getProtocol("TAGPBMessageSignatureProtocol"), @selector(getClassValue), 0, 0)
  100146f24  mov     x22, x1
  100146f28  mov     x0, x21
  100146f2c  bl      _class_getName                           ; class_getName(TAGPBRootObject)
  100146f30  bl      _objc_getMetaClass                       ; objc_getMetaClass(class_getName(TAGPBRootObject))
  100146f34  mov     x21, x0
  100146f38  adrp    x8, #0x1003b0000
  100146f3c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100146f40  mov     w9, #-0x3e000000
  100146f44  adr     x10, #0x1001470a4                        ; &+[TAGPBRootObject resolveClassMethod:]_block_invoke
  100146f48  nop
  100146f4c  str     x8, [sp, #0x18]
  100146f50  stp     w9, wzr, [sp, #0x20]
  100146f54  adrp    x8, #0x1003b8000
  100146f58  add     x8, x8, #0xb20                           ; &d_1003b8b20
  100146f5c  stp     x10, x8, [sp, #0x28]
  100146f60  str     x20, [sp, #0x38]
  100146f64  add     x0, sp, #0x18
  100146f68  bl      _imp_implementationWithBlock             ; imp_implementationWithBlock(^{+[TAGPBRootObject resolveClassMethod:]_block_invoke captures +0x20=sub_100146fc0(TAGPBRootObject, arg1, arg…})
  100146f6c  mov     x2, x0
  100146f70  mov     x0, x21
  100146f74  mov     x1, x19
  100146f78  mov     x3, x22
  100146f7c  bl      _class_addMethod                         ; class_addMethod(objc_getMetaClass(class_getName(TAGPBRootObject)), arg1, imp_implementationWithBlock(^{+[TAGPBRootObject resolveClassMethod:]_block_invoke captures +0x20=sub_100146fc0(TAGPBRootObject, arg1, arg…}))
  100146f80  b       loc_100146fac
loc_100146f84:
  100146f84  str     x21, [sp, #8]
  100146f88  adrp    x8, #0x10041f000
  100146f8c  ldr     x8, [x8, #0x1e8]
  100146f90  str     x8, [sp, #0x10]
  100146f94  adrp    x8, #0x10041c000
  100146f98  nop
  100146f9c  ldr     x1, [x8, #0xbc8]
  100146fa0  add     x0, sp, #8
  100146fa4  mov     x2, x19
  100146fa8  bl      _objc_msgSendSuper2                      ; [super resolveClassMethod:arg1]
loc_100146fac:
  100146fac  sub     sp, x29, #0x20
  100146fb0  ldp     x22, x21, [sp], #0x10
  100146fb4  ldp     x20, x19, [sp], #0x10
  100146fb8  ldp     x29, x30, [sp], #0x10
  100146fbc  ret

; ======================================================================
; sub_100146fc0
; address 0x100146fc0  size 228  kind sub
; ======================================================================
  100146fc0  stp     x29, x30, [sp, #-0x10]!
  100146fc4  mov     x29, sp
  100146fc8  stp     x20, x19, [sp, #-0x10]!
  100146fcc  stp     x22, x21, [sp, #-0x10]!
  100146fd0  stp     x24, x23, [sp, #-0x10]!
  100146fd4  sub     sp, sp, #0x10
  100146fd8  mov     x19, x1
  100146fdc  adrp    x24, #0x1003b0000
  100146fe0  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  100146fe4  ldr     x8, [x24]                                ; x8 = ___stack_chk_guard[+0x0]
  100146fe8  stur    x8, [x29, #-0x38]
  100146fec  bl      _class_getName                           ; class_getName(a0, a1, a2, a3)
  100146ff0  mov     x20, x0
  100146ff4  mov     x0, x19
  100146ff8  bl      _sel_getName                             ; sel_getName(a1)
  100146ffc  mov     x19, x0
  100147000  mov     x0, x20
  100147004  bl      _strlen                                  ; strlen(class_getName(a0, a1, a2, a3))
  100147008  mov     x21, x0
  10014700c  mov     x0, x19
  100147010  bl      _strlen                                  ; strlen(sel_getName(a1))
  100147014  mov     x22, x0
  100147018  add     x8, x21, x22
  10014701c  add     x8, x8, #0x11
  100147020  and     x8, x8, #0xfffffffffffffff0
  100147024  mov     x9, sp
  100147028  sub     x23, x9, x8                              ; t1 = (&sp[0x0] - (((strlen(class_getName(a0, a1, a2, a3)) + strlen(sel_getName(a1))) + 17) & -16))
  10014702c  mov     sp, x23
  100147030  mov     x0, x23
  100147034  mov     x1, x20
  100147038  mov     x2, x21
  10014703c  bl      _memcpy                                  ; memcpy(t1, class_getName(a0, a1, a2, a3), strlen(class_getName(a0, a1, a2, a3)))
  100147040  mov     w8, #0x5f
  100147044  strb    w8, [x23, x21]
  100147048  add     x20, x21, #1
  10014704c  add     x0, x23, x20
  100147050  mov     x1, x19
  100147054  mov     x2, x22
  100147058  bl      _memcpy                                  ; memcpy((t1 + (strlen(class_getName(a0, a1, a2, a3)) + 1)), sel_getName(a1), strlen(sel_getName(a1)))
  10014705c  add     x8, x20, x22
  100147060  strb    wzr, [x23, x8]
  100147064  adrp    x8, #0x10042d000
  100147068  add     x8, x8, #0xd00                           ; &g_10042dd00
  10014706c  ldr     x0, [x8, #0x140]                         ; load g_10042de40
  100147070  mov     x1, x23
  100147074  bl      _CFDictionaryGetValue                    ; CFDictionaryGetValue(g_10042de40, t1)
  100147078  ldr     x8, [x24]                                ; x8 = ___stack_chk_guard[+0x0]
  10014707c  ldur    x9, [x29, #-0x38]
  100147080  sub     x8, x8, x9
  100147084  cbnz    x8, loc_1001470a0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100147088  sub     sp, x29, #0x30
  10014708c  ldp     x24, x23, [sp], #0x10
  100147090  ldp     x22, x21, [sp], #0x10
  100147094  ldp     x20, x19, [sp], #0x10
  100147098  ldp     x29, x30, [sp], #0x10
  10014709c  ret
loc_1001470a0:
  1001470a0  bl      ___stack_chk_fail                        ; stack_chk_fail(CFDictionaryGetValue(g_10042de40, t1))

; ======================================================================
; +[TAGPBRootObject resolveClassMethod:]_block_invoke
; address 0x1001470a4  size 8  kind block
; ======================================================================
  1001470a4  ldr     x0, [x0, #0x20]                          ; x0 = captured sub_100146fc0(TAGPBRootObject, arg1, arg1)
  1001470a8  ret

; ======================================================================
; sub_1001470ac
; address 0x1001470ac  size 16  kind sub
; ======================================================================
  1001470ac  add     x0, x0, #0x20
  1001470b0  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  1001470b4  mov     w2, #3
  1001470b8  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 3, a3)

; ======================================================================
; sub_1001470bc
; address 0x1001470bc  size 12  kind sub
; ======================================================================
  1001470bc  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1001470c0  mov     w1, #3
  1001470c4  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 3, a2, a3)
