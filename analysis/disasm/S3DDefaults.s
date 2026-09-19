// unit S3DDefaults — 16 functions
//   0x1000f9510      84  +[S3DDefaults linearPannerWithDuration:maxLeft:maxRight:leftToRight:]
//   0x1000f9564     188  +[S3DDefaults linearPannerWithDuration:maxLeft:maxRight:leftToRight:]_block_invoke
//   0x1000f9620      84  +[S3DDefaults sinePannerWithDuration:maxLeft:maxRight:leftToRight:]
//   0x1000f9674     252  +[S3DDefaults sinePannerWithDuration:maxLeft:maxRight:leftToRight:]_block_invoke
//   0x1000f9770      76  +[S3DDefaults fadeIn:]
//   0x1000f97bc     120  +[S3DDefaults fadeIn:]_block_invoke
//   0x1000f9834     260  +[S3DDefaults fadeOut:]
//   0x1000f9938     360  +[S3DDefaults fadeOut:]_block_invoke
//   0x1000f9aa0     108  sub_1000f9aa0
//   0x1000f9b0c      84  sub_1000f9b0c
//   0x1000f9b60     272  +[S3DDefaults chain:with:]
//   0x1000f9c70     212  +[S3DDefaults chain:with:]_block_invoke
//   0x1000f9d44      92  sub_1000f9d44
//   0x1000f9da0      64  sub_1000f9da0
//   0x1000f9de0     168  sub_1000f9de0
//   0x1000f9e88      24  sub_1000f9e88

; ======================================================================
; +[S3DDefaults linearPannerWithDuration:maxLeft:maxRight:leftToRight:]
; address 0x1000f9510  size 84  kind objc
; ======================================================================
  1000f9510  stp     x29, x30, [sp, #-0x10]!
  1000f9514  mov     x29, sp
  1000f9518  sub     sp, sp, #0x30
  1000f951c  adrp    x8, #0x1003b0000
  1000f9520  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000f9524  str     x8, [sp]
  1000f9528  mov     w8, #-0x40000000
  1000f952c  stp     w8, wzr, [sp, #8]
  1000f9530  adr     x8, #0x1000f9564                         ; &+[S3DDefaults linearPannerWithDuration:maxLeft:maxRight:leftToRight:]_block_invoke
  1000f9534  nop
  1000f9538  adrp    x9, #0x1003b6000
  1000f953c  add     x9, x9, #0xcb0                           ; &d_1003b6cb0
  1000f9540  stp     x8, x9, [sp, #0x10]
  1000f9544  str     s0, [sp, #0x20]
  1000f9548  strb    w2, [sp, #0x2c]
  1000f954c  stp     s2, s1, [sp, #0x24]
  1000f9550  mov     x0, sp
  1000f9554  bl      _objc_retainBlock
  1000f9558  mov     sp, x29
  1000f955c  ldp     x29, x30, [sp], #0x10
  1000f9560  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[S3DDefaults linearPannerWithDuration:maxLeft:maxRight:leftToRight:]_block_invoke
; address 0x1000f9564  size 188  kind block
; ======================================================================
  1000f9564  stp     d9, d8, [sp, #-0x30]!
  1000f9568  stp     x20, x19, [sp, #0x10]
  1000f956c  stp     x29, x30, [sp, #0x20]
  1000f9570  add     x29, sp, #0x20
  1000f9574  mov     x19, x2
  1000f9578  mov     v8.16b, v2.16b
  1000f957c  mov     v9.16b, v1.16b
  1000f9580  ldp     s1, s2, [x0, #0x20]
  1000f9584  fcvt    d1, s1
  1000f9588  fsub    d3, d8, d0
  1000f958c  fcmp    d1, d3
  1000f9590  fcsel   d1, d3, d1, gt
  1000f9594  fsub    d0, d9, d0
  1000f9598  fdiv    d1, d0, d1
  1000f959c  ldrb    w8, [x0, #0x2c]                          ; w8 = block[+0x2c]
  1000f95a0  fmov    d0, #1.00000000
  1000f95a4  fsub    d3, d0, d1
  1000f95a8  cmp     w8, #0
  1000f95ac  fcsel   d1, d1, d3, ne                           ; t1 = (block[+0x2c] != 0 ? ((d9 - d0) / (d1 > (d8 - d0) ? (d8 - d0) : d1)) : (1 - ((d9 - d0) / (d1 > (d8 - d0) ? (d8 - d0) : d1))))
  1000f95b0  ldr     s3, [x0, #0x28]                          ; s3 = block[+0x28]
  1000f95b4  fsub    s2, s2, s3
  1000f95b8  fcvt    d2, s2
  1000f95bc  fcvt    d3, s3
  1000f95c0  fmul    d1, d1, d2
  1000f95c4  fadd    d1, d3, d1
  1000f95c8  fmov    d2, #-1.00000000
  1000f95cc  fcmp    d1, d2
  1000f95d0  b.pl    loc_1000f95dc                            ; if ((block[+0x28] + (t1 * (s2 - block[+0x28]))) >= (or unordered) -1)
  1000f95d4  fmov    s0, #-1.00000000
  1000f95d8  b       loc_1000f95ec
loc_1000f95dc:
  1000f95dc  fcvt    s2, d1
  1000f95e0  fcmp    d1, d0
  1000f95e4  fmov    s0, #1.00000000
  1000f95e8  fcsel   s0, s0, s2, gt                           ; t2 = ((block[+0x28] + (t1 * (s2 - block[+0x28]))) > 1 ? 1 : (block[+0x28] + (t1 * (s2 - block[+0x28]))))
loc_1000f95ec:
  1000f95ec  adrp    x8, #0x10041b000
  1000f95f0  nop
  1000f95f4  ldr     x8, [x8, #0x3b0]
  1000f95f8  mov     x0, x1
  1000f95fc  mov     x1, x8
  1000f9600  bl      _objc_msgSend                            ; [blockarg1 setPan:d0]
  1000f9604  fcmp    d9, d8
  1000f9608  cset    w8, ge
  1000f960c  strb    w8, [x19]                                ; blockarg2[+0x0] = (d9 >= d8)
  1000f9610  ldp     x29, x30, [sp, #0x20]
  1000f9614  ldp     x20, x19, [sp, #0x10]
  1000f9618  ldp     d9, d8, [sp], #0x30
  1000f961c  ret

; ======================================================================
; +[S3DDefaults sinePannerWithDuration:maxLeft:maxRight:leftToRight:]
; address 0x1000f9620  size 84  kind objc
; ======================================================================
  1000f9620  stp     x29, x30, [sp, #-0x10]!
  1000f9624  mov     x29, sp
  1000f9628  sub     sp, sp, #0x30
  1000f962c  adrp    x8, #0x1003b0000
  1000f9630  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000f9634  str     x8, [sp]
  1000f9638  mov     w8, #-0x40000000
  1000f963c  stp     w8, wzr, [sp, #8]
  1000f9640  adr     x8, #0x1000f9674                         ; &+[S3DDefaults sinePannerWithDuration:maxLeft:maxRight:leftToRight:]_block_invoke
  1000f9644  nop
  1000f9648  adrp    x9, #0x1003b6000
  1000f964c  add     x9, x9, #0xcd0                           ; &d_1003b6cd0
  1000f9650  stp     x8, x9, [sp, #0x10]
  1000f9654  str     s0, [sp, #0x20]
  1000f9658  strb    w2, [sp, #0x2c]
  1000f965c  stp     s2, s1, [sp, #0x24]
  1000f9660  mov     x0, sp
  1000f9664  bl      _objc_retainBlock
  1000f9668  mov     sp, x29
  1000f966c  ldp     x29, x30, [sp], #0x10
  1000f9670  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[S3DDefaults sinePannerWithDuration:maxLeft:maxRight:leftToRight:]_block_invoke
; address 0x1000f9674  size 252  kind block
; ======================================================================
  1000f9674  stp     d13, d12, [sp, #-0x50]!
  1000f9678  stp     d11, d10, [sp, #0x10]
  1000f967c  stp     d9, d8, [sp, #0x20]
  1000f9680  stp     x20, x19, [sp, #0x30]
  1000f9684  stp     x29, x30, [sp, #0x40]
  1000f9688  add     x29, sp, #0x40
  1000f968c  mov     x19, x2
  1000f9690  mov     v8.16b, v2.16b
  1000f9694  mov     v9.16b, v1.16b
  1000f9698  mov     x20, x1
  1000f969c  ldp     s1, s2, [x0, #0x20]
  1000f96a0  fcvt    d1, s1
  1000f96a4  fsub    d3, d8, d0
  1000f96a8  fcmp    d1, d3
  1000f96ac  fcsel   d1, d3, d1, gt
  1000f96b0  fsub    d0, d9, d0
  1000f96b4  fdiv    d0, d0, d1
  1000f96b8  ldrb    w8, [x0, #0x2c]                          ; w8 = block[+0x2c]
  1000f96bc  fmov    d10, #1.00000000
  1000f96c0  fsub    d3, d10, d0
  1000f96c4  cmp     w8, #0
  1000f96c8  fcsel   d0, d0, d3, ne                           ; t1 = (block[+0x2c] != 0 ? ((d9 - d0) / (d1 > (d8 - d0) ? (d8 - d0) : d1)) : (1 - ((d9 - d0) / (d1 > (d8 - d0) ? (d8 - d0) : d1))))
  1000f96cc  ldr     s3, [x0, #0x28]                          ; s3 = block[+0x28]
  1000f96d0  fsub    s2, s2, s3
  1000f96d4  fcvt    d11, s2
  1000f96d8  fmov    d2, #2.50000000
  1000f96dc  fdiv    d1, d2, d1
  1000f96e0  fcvt    d12, s3
  1000f96e4  fdiv    d0, d0, d1
  1000f96e8  nop
  1000f96ec  ldr     d1, #0x1001819e8                         ; d1 = 3.14159265
  1000f96f0  fmul    d0, d0, d1
  1000f96f4  fadd    d0, d0, d0                               ; t2 = (((t1 / (2.5 / (d1 > (d8 - d0) ? (d8 - d0) : d1))) * 3.14159) + ((t1 / (2.5 / (d1 > (d8 - d0) ? (d8 - d0) : d1))) * 3.14159))
  1000f96f8  fcvt    s0, d0
  1000f96fc  bl      _sinf                                    ; sinf(t2, 3.14159)
  1000f9700  fmov    s1, #1.00000000
  1000f9704  fadd    s0, s0, s1
  1000f9708  fcvt    d0, s0
  1000f970c  fmul    d0, d11, d0
  1000f9710  fdiv    d0, d0, d11
  1000f9714  fadd    d0, d12, d0
  1000f9718  fmov    d2, #-1.00000000
  1000f971c  fcmp    d0, d2
  1000f9720  b.pl    loc_1000f972c                            ; if ((block[+0x28] + (((s2 - block[+0x28]) * (sinf(t2, 3.14159) + 1)) / (s2 - block[+0x28]))) >= (or unordered) -1)
  1000f9724  fmov    s0, #-1.00000000
  1000f9728  b       loc_1000f9738
loc_1000f972c:
  1000f972c  fcvt    s2, d0
  1000f9730  fcmp    d0, d10
  1000f9734  fcsel   s0, s1, s2, gt                           ; t3 = ((block[+0x28] + (((s2 - block[+0x28]) * (sinf(t2, 3.14159) + 1)) / (s2 - block[+0x28]))) > 1 ? 1 : (block[+0x28] + (((s2 - block[+0x28]) * (sinf(t2, 3.14159) + 1)) / (s2 - block[+0x28]))))
loc_1000f9738:
  1000f9738  adrp    x8, #0x10041b000
  1000f973c  nop
  1000f9740  ldr     x1, [x8, #0x3b0]
  1000f9744  mov     x0, x20
  1000f9748  bl      _objc_msgSend                            ; [blockarg1 setPan:d0]
  1000f974c  fcmp    d9, d8
  1000f9750  cset    w8, ge
  1000f9754  strb    w8, [x19]                                ; blockarg2[+0x0] = (d9 >= d8)
  1000f9758  ldp     x29, x30, [sp, #0x40]
  1000f975c  ldp     x20, x19, [sp, #0x30]
  1000f9760  ldp     d9, d8, [sp, #0x20]
  1000f9764  ldp     d11, d10, [sp, #0x10]
  1000f9768  ldp     d13, d12, [sp], #0x50
  1000f976c  ret

; ======================================================================
; +[S3DDefaults fadeIn:]
; address 0x1000f9770  size 76  kind objc
; ======================================================================
  1000f9770  stp     x29, x30, [sp, #-0x10]!
  1000f9774  mov     x29, sp
  1000f9778  sub     sp, sp, #0x30
  1000f977c  adrp    x8, #0x1003b0000
  1000f9780  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000f9784  mov     w9, #-0x40000000
  1000f9788  adr     x10, #0x1000f97bc                        ; &+[S3DDefaults fadeIn:]_block_invoke
  1000f978c  nop
  1000f9790  str     x8, [sp, #8]
  1000f9794  stp     w9, wzr, [sp, #0x10]
  1000f9798  adrp    x8, #0x1003b6000
  1000f979c  add     x8, x8, #0xcf0                           ; &d_1003b6cf0
  1000f97a0  stp     x10, x8, [sp, #0x18]
  1000f97a4  str     s0, [sp, #0x28]
  1000f97a8  add     x0, sp, #8
  1000f97ac  bl      _objc_retainBlock
  1000f97b0  mov     sp, x29
  1000f97b4  ldp     x29, x30, [sp], #0x10
  1000f97b8  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[S3DDefaults fadeIn:]_block_invoke
; address 0x1000f97bc  size 120  kind block
; ======================================================================
  1000f97bc  stp     x20, x19, [sp, #-0x20]!
  1000f97c0  stp     x29, x30, [sp, #0x10]
  1000f97c4  add     x29, sp, #0x10
  1000f97c8  mov     x19, x2
  1000f97cc  ldr     s0, [x0, #0x20]                          ; s0 = block[+0x20]
  1000f97d0  fcvt    d0, s0
  1000f97d4  fcmp    d0, d1
  1000f97d8  b.ls    loc_1000f9804                            ; if (block[+0x20] <= d1)
  1000f97dc  fdiv    d0, d1, d0
  1000f97e0  fcvt    s0, d0
  1000f97e4  adrp    x8, #0x100416000
  1000f97e8  nop
  1000f97ec  ldr     x8, [x8, #0xcb0]
  1000f97f0  mov     x0, x1
  1000f97f4  mov     x1, x8
  1000f97f8  ldp     x29, x30, [sp, #0x10]
  1000f97fc  ldp     x20, x19, [sp], #0x20
  1000f9800  b       _objc_msgSend                            ; [blockarg1 setGain:(d1 / block[+0x20])]
loc_1000f9804:
  1000f9804  adrp    x8, #0x100416000
  1000f9808  nop
  1000f980c  ldr     x8, [x8, #0xcb0]
  1000f9810  fmov    s0, #1.00000000
  1000f9814  mov     x0, x1
  1000f9818  mov     x1, x8
  1000f981c  bl      _objc_msgSend                            ; [blockarg1 setGain:1]
  1000f9820  mov     w8, #1
  1000f9824  strb    w8, [x19]                                ; blockarg2[+0x0] = 1
  1000f9828  ldp     x29, x30, [sp, #0x10]
  1000f982c  ldp     x20, x19, [sp], #0x20
  1000f9830  ret

; ======================================================================
; +[S3DDefaults fadeOut:]
; address 0x1000f9834  size 260  kind objc
; ======================================================================
  1000f9834  stp     x20, x19, [sp, #-0x20]!
  1000f9838  stp     x29, x30, [sp, #0x10]
  1000f983c  add     x29, sp, #0x10
  1000f9840  sub     sp, sp, #0xf0
  1000f9844  stur    xzr, [x29, #-0x30]
  1000f9848  sub     x8, x29, #0x30
  1000f984c  mov     w9, #0x20000000
  1000f9850  stur    x8, [x29, #-0x28]
  1000f9854  mov     w10, #0x20
  1000f9858  mov     w11, #-0x40800000
  1000f985c  stp     w9, w10, [x29, #-0x20]
  1000f9860  stur    w11, [x29, #-0x18]
  1000f9864  sub     x12, x29, #0x50
  1000f9868  stp     xzr, x12, [x29, #-0x50]
  1000f986c  stp     w9, w10, [x29, #-0x40]
  1000f9870  stur    wzr, [x29, #-0x38]
  1000f9874  sub     x13, x29, #0x70
  1000f9878  stp     xzr, x13, [x29, #-0x70]
  1000f987c  stp     w9, w10, [x29, #-0x60]
  1000f9880  sturb   wzr, [x29, #-0x58]
  1000f9884  add     x14, sp, #0x70
  1000f9888  stp     xzr, x14, [sp, #0x70]
  1000f988c  stp     w9, w10, [sp, #0x80]
  1000f9890  str     w11, [sp, #0x88]
  1000f9894  add     x15, sp, #0x50
  1000f9898  stp     xzr, x15, [sp, #0x50]
  1000f989c  stp     w9, w10, [sp, #0x60]
  1000f98a0  str     w11, [sp, #0x68]
  1000f98a4  adrp    x9, #0x1003b0000
  1000f98a8  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  1000f98ac  str     x9, [sp]
  1000f98b0  mov     w9, #-0x3e000000
  1000f98b4  stp     w9, wzr, [sp, #8]
  1000f98b8  adr     x9, #0x1000f9938                         ; &+[S3DDefaults fadeOut:]_block_invoke
  1000f98bc  nop
  1000f98c0  str     x9, [sp, #0x10]
  1000f98c4  adrp    x9, #0x1003b6000
  1000f98c8  add     x9, x9, #0xd10                           ; &d_1003b6d10
  1000f98cc  stp     x9, x13, [sp, #0x18]
  1000f98d0  stp     x15, x14, [sp, #0x28]
  1000f98d4  str     s0, [sp, #0x48]
  1000f98d8  stp     x8, x12, [sp, #0x38]
  1000f98dc  mov     x0, sp
  1000f98e0  bl      _objc_retainBlock
  1000f98e4  mov     x19, x0
  1000f98e8  add     x0, sp, #0x50
  1000f98ec  mov     w1, #8
  1000f98f0  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x50], 8)
  1000f98f4  add     x0, sp, #0x70
  1000f98f8  mov     w1, #8
  1000f98fc  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x70], 8)
  1000f9900  sub     x0, x29, #0x70
  1000f9904  mov     w1, #8
  1000f9908  bl      __Block_object_dispose                   ; Block_object_dispose(&x29[-0x70], 8)
  1000f990c  sub     x0, x29, #0x50
  1000f9910  mov     w1, #8
  1000f9914  bl      __Block_object_dispose                   ; Block_object_dispose(&x29[-0x50], 8)
  1000f9918  sub     x0, x29, #0x30
  1000f991c  mov     w1, #8
  1000f9920  bl      __Block_object_dispose                   ; Block_object_dispose(&x29[-0x30], 8)
  1000f9924  mov     x0, x19
  1000f9928  sub     sp, x29, #0x10
  1000f992c  ldp     x29, x30, [sp, #0x10]
  1000f9930  ldp     x20, x19, [sp], #0x20
  1000f9934  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[S3DDefaults fadeOut:]_block_invoke
; address 0x1000f9938  size 360  kind block
; ======================================================================
  1000f9938  stp     d9, d8, [sp, #-0x40]!
  1000f993c  stp     x22, x21, [sp, #0x10]
  1000f9940  stp     x20, x19, [sp, #0x20]
  1000f9944  stp     x29, x30, [sp, #0x30]
  1000f9948  add     x29, sp, #0x30
  1000f994c  mov     x21, x2
  1000f9950  mov     v9.16b, v2.16b
  1000f9954  mov     v8.16b, v1.16b
  1000f9958  mov     x20, x0
  1000f995c  mov     x0, x1
  1000f9960  bl      _objc_retain
  1000f9964  mov     x19, x0
  1000f9968  ldr     x8, [x20, #0x20]                         ; x8 = block[+0x20]
  1000f996c  ldr     x8, [x8, #8]                             ; x8 = block[+0x20][+0x8]
  1000f9970  ldrb    w8, [x8, #0x18]                          ; w8 = block[+0x20][+0x8][+0x18]
  1000f9974  cbz     w8, loc_1000f9980                        ; if (block[+0x20][+0x8][+0x18] == 0)
  1000f9978  add     x22, x20, #0x30
  1000f997c  b       loc_1000f9a10
loc_1000f9980:
  1000f9980  fcvt    s0, d8
  1000f9984  ldr     x8, [x20, #0x28]                         ; x8 = block[+0x28]
  1000f9988  ldr     x8, [x8, #8]                             ; x8 = block[+0x28][+0x8]
  1000f998c  str     s0, [x8, #0x18]                          ; block[+0x28][+0x8][+0x18] = s0
  1000f9990  ldr     x8, [x20, #0x28]                         ; x8 = block[+0x28]
  1000f9994  ldr     x8, [x8, #8]                             ; x8 = block[+0x28][+0x8]
  1000f9998  ldr     s0, [x8, #0x18]                          ; s0 = block[+0x28][+0x8][+0x18]
  1000f999c  mov     x22, x20
  1000f99a0  ldr     x8, [x22, #0x30]!                        ; x8 = block[+0x30]
  1000f99a4  ldr     s1, [x22, #0x18]                         ; s1 = block[+0x18]
  1000f99a8  fadd    s0, s0, s1
  1000f99ac  ldr     x8, [x8, #8]                             ; x8 = block[+0x30][+0x8]
  1000f99b0  str     s0, [x8, #0x18]                          ; block[+0x30][+0x8][+0x18] = (block[+0x28][+0x8][+0x18] + block[+0x18])
  1000f99b4  ldr     x8, [x22]                                ; x8 = block[+0x0]
  1000f99b8  ldr     x8, [x8, #8]                             ; x8 = block[+0x0][+0x8]
  1000f99bc  ldr     s0, [x8, #0x18]                          ; s0 = block[+0x0][+0x8][+0x18]
  1000f99c0  fcvt    d0, s0
  1000f99c4  fcmp    d0, d9
  1000f99c8  b.le    loc_1000f99d4                            ; if (block[+0x0][+0x8][+0x18] <= (or unordered) d9)
  1000f99cc  fcvt    s0, d9
  1000f99d0  str     s0, [x8, #0x18]                          ; block[+0x0][+0x8][+0x18] = s0
loc_1000f99d4:
  1000f99d4  adrp    x8, #0x100419000
  1000f99d8  nop
  1000f99dc  ldr     x1, [x8, #0xe28]
  1000f99e0  mov     x0, x19
  1000f99e4  bl      _objc_msgSend                            ; [blockarg1 gain]
  1000f99e8  ldr     x8, [x20, #0x38]                         ; x8 = block[+0x38]
  1000f99ec  ldr     x8, [x8, #8]                             ; x8 = block[+0x38][+0x8]
  1000f99f0  str     s0, [x8, #0x18]                          ; block[+0x38][+0x8][+0x18] = [blockarg1 gain]
  1000f99f4  ldr     x8, [x20, #0x40]                         ; x8 = block[+0x40]
  1000f99f8  ldr     x8, [x8, #8]                             ; x8 = block[+0x40][+0x8]
  1000f99fc  str     wzr, [x8, #0x18]                         ; block[+0x40][+0x8][+0x18] = 0
  1000f9a00  ldr     x8, [x20, #0x20]                         ; x8 = block[+0x20]
  1000f9a04  ldr     x8, [x8, #8]                             ; x8 = block[+0x20][+0x8]
  1000f9a08  mov     w9, #1
  1000f9a0c  strb    w9, [x8, #0x18]                          ; block[+0x20][+0x8][+0x18] = 1
loc_1000f9a10:
  1000f9a10  ldr     x8, [x22]
  1000f9a14  ldr     x8, [x8, #8]
  1000f9a18  ldr     s0, [x8, #0x18]
  1000f9a1c  fcvt    d1, s0
  1000f9a20  fcmp    d1, d8
  1000f9a24  b.ls    loc_1000f9a80                            ; if (d1 <= d8)
  1000f9a28  ldr     x8, [x20, #0x28]                         ; x8 = block[+0x28]
  1000f9a2c  ldr     x8, [x8, #8]                             ; x8 = block[+0x28][+0x8]
  1000f9a30  ldr     s1, [x8, #0x18]                          ; s1 = block[+0x28][+0x8][+0x18]
  1000f9a34  fcvt    d2, s1
  1000f9a38  fsub    d2, d8, d2
  1000f9a3c  fcvt    s2, d2
  1000f9a40  fsub    s0, s0, s1
  1000f9a44  fdiv    s0, s2, s0
  1000f9a48  ldp     x8, x9, [x20, #0x38]
  1000f9a4c  ldr     x8, [x8, #8]
  1000f9a50  ldr     s1, [x8, #0x18]
  1000f9a54  ldr     x8, [x9, #8]
  1000f9a58  ldr     s2, [x8, #0x18]
  1000f9a5c  fsub    s2, s1, s2
  1000f9a60  fmul    s0, s0, s2
  1000f9a64  fsub    s0, s1, s0
  1000f9a68  adrp    x8, #0x100416000
  1000f9a6c  nop
  1000f9a70  ldr     x1, [x8, #0xcb0]
  1000f9a74  mov     x0, x19
  1000f9a78  bl      _objc_msgSend                            ; [blockarg1 setGain:(s1 - (((d8 - block[+0x28][+0x8][+0x18]) / (s0 - block[+0x28][+0x8][+0x18])) * (s1 - s2)))]
  1000f9a7c  b       loc_1000f9a88
loc_1000f9a80:
  1000f9a80  mov     w8, #1
  1000f9a84  strb    w8, [x21]                                ; blockarg2[+0x0] = 1
loc_1000f9a88:
  1000f9a88  mov     x0, x19
  1000f9a8c  ldp     x29, x30, [sp, #0x30]
  1000f9a90  ldp     x20, x19, [sp, #0x20]
  1000f9a94  ldp     x22, x21, [sp, #0x10]
  1000f9a98  ldp     d9, d8, [sp], #0x40
  1000f9a9c  b       _objc_release

; ======================================================================
; sub_1000f9aa0
; address 0x1000f9aa0  size 108  kind sub
; ======================================================================
  1000f9aa0  stp     x20, x19, [sp, #-0x20]!
  1000f9aa4  stp     x29, x30, [sp, #0x10]
  1000f9aa8  add     x29, sp, #0x10
  1000f9aac  mov     x19, x1
  1000f9ab0  mov     x20, x0
  1000f9ab4  add     x0, x20, #0x20
  1000f9ab8  ldr     x1, [x19, #0x20]                         ; x1 = a1[+0x20]
  1000f9abc  mov     w2, #8
  1000f9ac0  bl      __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 8, a3)
  1000f9ac4  add     x0, x20, #0x28
  1000f9ac8  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  1000f9acc  mov     w2, #8
  1000f9ad0  bl      __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 8)
  1000f9ad4  add     x0, x20, #0x30
  1000f9ad8  ldr     x1, [x19, #0x30]                         ; x1 = a1[+0x30]
  1000f9adc  mov     w2, #8
  1000f9ae0  bl      __Block_object_assign                    ; Block_object_assign((a0 + 48), a1[+0x30], 8)
  1000f9ae4  add     x0, x20, #0x38
  1000f9ae8  ldr     x1, [x19, #0x38]                         ; x1 = a1[+0x38]
  1000f9aec  mov     w2, #8
  1000f9af0  bl      __Block_object_assign                    ; Block_object_assign((a0 + 56), a1[+0x38], 8)
  1000f9af4  add     x0, x20, #0x40
  1000f9af8  ldr     x1, [x19, #0x40]                         ; x1 = a1[+0x40]
  1000f9afc  mov     w2, #8
  1000f9b00  ldp     x29, x30, [sp, #0x10]
  1000f9b04  ldp     x20, x19, [sp], #0x20
  1000f9b08  b       __Block_object_assign                    ; Block_object_assign((a0 + 64), a1[+0x40], 8)

; ======================================================================
; sub_1000f9b0c
; address 0x1000f9b0c  size 84  kind sub
; ======================================================================
  1000f9b0c  stp     x20, x19, [sp, #-0x20]!
  1000f9b10  stp     x29, x30, [sp, #0x10]
  1000f9b14  add     x29, sp, #0x10
  1000f9b18  mov     x19, x0
  1000f9b1c  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000f9b20  mov     w1, #8
  1000f9b24  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 8, a2, a3)
  1000f9b28  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000f9b2c  mov     w1, #8
  1000f9b30  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x28], 8)
  1000f9b34  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  1000f9b38  mov     w1, #8
  1000f9b3c  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x30], 8)
  1000f9b40  ldr     x0, [x19, #0x38]                         ; x0 = a0[+0x38]
  1000f9b44  mov     w1, #8
  1000f9b48  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x38], 8)
  1000f9b4c  ldr     x0, [x19, #0x40]                         ; x0 = a0[+0x40]
  1000f9b50  mov     w1, #8
  1000f9b54  ldp     x29, x30, [sp, #0x10]
  1000f9b58  ldp     x20, x19, [sp], #0x20
  1000f9b5c  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x40], 8)

; ======================================================================
; +[S3DDefaults chain:with:]
; address 0x1000f9b60  size 272  kind objc
; ======================================================================
  1000f9b60  stp     x22, x21, [sp, #-0x30]!
  1000f9b64  stp     x20, x19, [sp, #0x10]
  1000f9b68  stp     x29, x30, [sp, #0x20]
  1000f9b6c  add     x29, sp, #0x20
  1000f9b70  sub     sp, sp, #0x80
  1000f9b74  mov     x19, x3
  1000f9b78  mov     x0, x2
  1000f9b7c  bl      _objc_retain
  1000f9b80  mov     x20, x0
  1000f9b84  mov     x0, x19
  1000f9b88  bl      _objc_retain
  1000f9b8c  mov     x19, x0
  1000f9b90  stur    xzr, [x29, #-0x40]
  1000f9b94  sub     x8, x29, #0x40
  1000f9b98  mov     w9, #0x20000000
  1000f9b9c  str     xzr, [sp, #0x40]
  1000f9ba0  mov     w10, #0x20
  1000f9ba4  add     x11, sp, #0x40
  1000f9ba8  stur    x8, [x29, #-0x38]
  1000f9bac  stp     w9, w10, [x29, #-0x30]
  1000f9bb0  sturb   wzr, [x29, #-0x28]
  1000f9bb4  str     x11, [sp, #0x48]
  1000f9bb8  stp     w9, w10, [sp, #0x50]
  1000f9bbc  strb    wzr, [sp, #0x58]
  1000f9bc0  adrp    x9, #0x1003b0000
  1000f9bc4  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  1000f9bc8  mov     w10, #-0x3e000000
  1000f9bcc  str     x9, [sp]
  1000f9bd0  stp     w10, wzr, [sp, #8]
  1000f9bd4  adr     x9, #0x1000f9c70                         ; &+[S3DDefaults chain:with:]_block_invoke
  1000f9bd8  nop
  1000f9bdc  str     x9, [sp, #0x10]
  1000f9be0  adrp    x9, #0x1003b6000
  1000f9be4  add     x9, x9, #0xd40                           ; &d_1003b6d40
  1000f9be8  str     x9, [sp, #0x18]
  1000f9bec  str     x8, [sp, #0x30]
  1000f9bf0  str     x20, [sp, #0x20]
  1000f9bf4  str     x11, [sp, #0x38]
  1000f9bf8  mov     x0, x20
  1000f9bfc  bl      _objc_retain
  1000f9c00  mov     x20, x0
  1000f9c04  str     x19, [sp, #0x28]
  1000f9c08  mov     x0, x19
  1000f9c0c  bl      _objc_retain
  1000f9c10  mov     x19, x0
  1000f9c14  mov     x0, sp
  1000f9c18  bl      _objc_retainBlock
  1000f9c1c  mov     x21, x0
  1000f9c20  ldr     x0, [sp, #0x28]
  1000f9c24  bl      _objc_release
  1000f9c28  ldr     x0, [sp, #0x20]
  1000f9c2c  bl      _objc_release
  1000f9c30  mov     x0, x19
  1000f9c34  bl      _objc_release
  1000f9c38  mov     x0, x20
  1000f9c3c  bl      _objc_release
  1000f9c40  add     x0, sp, #0x40
  1000f9c44  mov     w1, #8
  1000f9c48  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x40], 8)
  1000f9c4c  sub     x0, x29, #0x40
  1000f9c50  mov     w1, #8
  1000f9c54  bl      __Block_object_dispose                   ; Block_object_dispose(&x29[-0x40], 8)
  1000f9c58  mov     x0, x21
  1000f9c5c  sub     sp, x29, #0x20
  1000f9c60  ldp     x29, x30, [sp, #0x20]
  1000f9c64  ldp     x20, x19, [sp, #0x10]
  1000f9c68  ldp     x22, x21, [sp], #0x30
  1000f9c6c  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[S3DDefaults chain:with:]_block_invoke
; address 0x1000f9c70  size 212  kind block
; ======================================================================
  1000f9c70  stp     d11, d10, [sp, #-0x50]!
  1000f9c74  stp     d9, d8, [sp, #0x10]
  1000f9c78  stp     x22, x21, [sp, #0x20]
  1000f9c7c  stp     x20, x19, [sp, #0x30]
  1000f9c80  stp     x29, x30, [sp, #0x40]
  1000f9c84  add     x29, sp, #0x40
  1000f9c88  mov     x19, x2
  1000f9c8c  mov     v8.16b, v2.16b
  1000f9c90  mov     v9.16b, v1.16b
  1000f9c94  mov     v10.16b, v0.16b
  1000f9c98  mov     x21, x0
  1000f9c9c  mov     x0, x1
  1000f9ca0  bl      _objc_retain
  1000f9ca4  mov     x20, x0
  1000f9ca8  ldr     x8, [x21, #0x30]                         ; x8 = block[+0x30]
  1000f9cac  ldr     x2, [x8, #8]                             ; x2 = block[+0x30][+0x8]
  1000f9cb0  ldrb    w8, [x2, #0x18]!                         ; w8 = block[+0x30][+0x8][+0x18]
  1000f9cb4  cbnz    w8, loc_1000f9cd4                        ; if (block[+0x30][+0x8][+0x18] != 0)
  1000f9cb8  ldr     x0, [x21, #0x20]                         ; x0 = block[+0x20]
  1000f9cbc  ldr     x8, [x0, #0x10]                          ; x8 = block[+0x20][+0x10]
  1000f9cc0  mov     x1, x20
  1000f9cc4  mov     v0.16b, v10.16b
  1000f9cc8  mov     v1.16b, v9.16b
  1000f9ccc  mov     v2.16b, v8.16b
  1000f9cd0  blr     x8                                       ; call block[+0x20][+0x10]
loc_1000f9cd4:
  1000f9cd4  ldr     x8, [x21, #0x38]                         ; x8 = block[+0x38]
  1000f9cd8  ldr     x2, [x8, #8]                             ; x2 = block[+0x38][+0x8]
  1000f9cdc  ldrb    w8, [x2, #0x18]!                         ; w8 = block[+0x38][+0x8][+0x18]
  1000f9ce0  cbnz    w8, loc_1000f9d00                        ; if (block[+0x38][+0x8][+0x18] != 0)
  1000f9ce4  ldr     x0, [x21, #0x28]                         ; x0 = block[+0x28]
  1000f9ce8  ldr     x8, [x0, #0x10]                          ; x8 = block[+0x28][+0x10]
  1000f9cec  mov     x1, x20
  1000f9cf0  mov     v0.16b, v10.16b
  1000f9cf4  mov     v1.16b, v9.16b
  1000f9cf8  mov     v2.16b, v8.16b
  1000f9cfc  blr     x8                                       ; call block[+0x28][+0x10]
loc_1000f9d00:
  1000f9d00  ldr     x8, [x21, #0x30]                         ; x8 = block[+0x30]
  1000f9d04  ldr     x8, [x8, #8]                             ; x8 = block[+0x30][+0x8]
  1000f9d08  ldrb    w8, [x8, #0x18]                          ; w8 = block[+0x30][+0x8][+0x18]
  1000f9d0c  cbz     w8, loc_1000f9d20                        ; if (block[+0x30][+0x8][+0x18] == 0)
  1000f9d10  ldr     x8, [x21, #0x38]                         ; x8 = block[+0x38]
  1000f9d14  ldr     x8, [x8, #8]                             ; x8 = block[+0x38][+0x8]
  1000f9d18  ldrb    w8, [x8, #0x18]                          ; w8 = block[+0x38][+0x8][+0x18]
  1000f9d1c  b       loc_1000f9d24
loc_1000f9d20:
  1000f9d20  mov     w8, #0
loc_1000f9d24:
  1000f9d24  strb    w8, [x19]                                ; blockarg2[+0x0] = w8
  1000f9d28  mov     x0, x20
  1000f9d2c  ldp     x29, x30, [sp, #0x40]
  1000f9d30  ldp     x20, x19, [sp, #0x30]
  1000f9d34  ldp     x22, x21, [sp, #0x20]
  1000f9d38  ldp     d9, d8, [sp, #0x10]
  1000f9d3c  ldp     d11, d10, [sp], #0x50
  1000f9d40  b       _objc_release

; ======================================================================
; sub_1000f9d44
; address 0x1000f9d44  size 92  kind sub
; ======================================================================
  1000f9d44  stp     x20, x19, [sp, #-0x20]!
  1000f9d48  stp     x29, x30, [sp, #0x10]
  1000f9d4c  add     x29, sp, #0x10
  1000f9d50  mov     x19, x1
  1000f9d54  mov     x20, x0
  1000f9d58  add     x0, x20, #0x30
  1000f9d5c  ldr     x1, [x19, #0x30]                         ; x1 = a1[+0x30]
  1000f9d60  mov     w2, #8
  1000f9d64  bl      __Block_object_assign                    ; Block_object_assign((a0 + 48), a1[+0x30], 8, a3)
  1000f9d68  add     x0, x20, #0x20
  1000f9d6c  ldr     x1, [x19, #0x20]                         ; x1 = a1[+0x20]
  1000f9d70  mov     w2, #7
  1000f9d74  bl      __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 7)
  1000f9d78  add     x0, x20, #0x38
  1000f9d7c  ldr     x1, [x19, #0x38]                         ; x1 = a1[+0x38]
  1000f9d80  mov     w2, #8
  1000f9d84  bl      __Block_object_assign                    ; Block_object_assign((a0 + 56), a1[+0x38], 8)
  1000f9d88  add     x0, x20, #0x28
  1000f9d8c  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  1000f9d90  mov     w2, #7
  1000f9d94  ldp     x29, x30, [sp, #0x10]
  1000f9d98  ldp     x20, x19, [sp], #0x20
  1000f9d9c  b       __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 7)

; ======================================================================
; sub_1000f9da0
; address 0x1000f9da0  size 64  kind sub
; ======================================================================
  1000f9da0  stp     x20, x19, [sp, #-0x20]!
  1000f9da4  stp     x29, x30, [sp, #0x10]
  1000f9da8  add     x29, sp, #0x10
  1000f9dac  mov     x19, x0
  1000f9db0  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  1000f9db4  mov     w1, #8
  1000f9db8  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x30], 8, a2, a3)
  1000f9dbc  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000f9dc0  bl      _objc_release
  1000f9dc4  ldr     x0, [x19, #0x38]                         ; x0 = a0[+0x38]
  1000f9dc8  mov     w1, #8
  1000f9dcc  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x38], 8)
  1000f9dd0  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000f9dd4  ldp     x29, x30, [sp, #0x10]
  1000f9dd8  ldp     x20, x19, [sp], #0x20
  1000f9ddc  b       _objc_release

; ======================================================================
; sub_1000f9de0
; address 0x1000f9de0  size 168  kind sub
; ======================================================================
  1000f9de0  stp     x20, x19, [sp, #-0x20]!
  1000f9de4  stp     x29, x30, [sp, #0x10]
  1000f9de8  add     x29, sp, #0x10
  1000f9dec  sub     sp, sp, #0x30
  1000f9df0  mov     x19, x0
  1000f9df4  cbz     x19, loc_1000f9e64                       ; if (a0 == 0)
  1000f9df8  adrp    x8, #0x10041d000
  1000f9dfc  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000f9e00  adrp    x8, #0x100417000
  1000f9e04  nop
  1000f9e08  ldr     x1, [x8, #0x4f0]
  1000f9e0c  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000f9e10  mov     x29, x29
  1000f9e14  bl      _objc_retainAutoreleasedReturnValue
  1000f9e18  mov     x20, x0
  1000f9e1c  adrp    x8, #0x1003b0000
  1000f9e20  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000f9e24  adr     x9, #0x1000f9e88                         ; &sub_1000f9e88
  1000f9e28  nop
  1000f9e2c  mov     w10, #-0x40000000
  1000f9e30  adrp    x11, #0x1003b6000
  1000f9e34  add     x11, x11, #0xd70                         ; &d_1003b6d70
  1000f9e38  str     x8, [sp, #8]
  1000f9e3c  stp     w10, wzr, [sp, #0x10]
  1000f9e40  stp     x9, x11, [sp, #0x18]
  1000f9e44  str     x19, [sp, #0x28]
  1000f9e48  adrp    x8, #0x10041b000
  1000f9e4c  nop
  1000f9e50  ldr     x1, [x8, #0x568]
  1000f9e54  add     x2, sp, #8
  1000f9e58  bl      _objc_msgSend                            ; [[S3DEngine engine] AU_preSerialize:^{sub_1000f9e88 captures +0x20=a0}]
  1000f9e5c  mov     x0, x20
  1000f9e60  bl      _objc_release
loc_1000f9e64:
  1000f9e64  sub     sp, x29, #0x10
  1000f9e68  ldp     x29, x30, [sp, #0x10]
  1000f9e6c  ldp     x20, x19, [sp], #0x20
  1000f9e70  ret
  1000f9e74  mov     x19, x0
  1000f9e78  mov     x0, x20
  1000f9e7c  bl      _objc_release
  1000f9e80  mov     x0, x19
  1000f9e84  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f9e88
; address 0x1000f9e88  size 24  kind sub
; ======================================================================
  1000f9e88  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000f9e8c  cbz     x0, loc_1000f9e9c                        ; if (a0[+0x20] == 0)
  1000f9e90  ldr     x8, [x0]                                 ; x8 = a0[+0x20][+0x0]
  1000f9e94  ldr     x1, [x8, #8]                             ; x1 = a0[+0x20][+0x0][+0x8]
  1000f9e98  br      x1
loc_1000f9e9c:
  1000f9e9c  ret
