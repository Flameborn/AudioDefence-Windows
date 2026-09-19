// unit TAGAsyncUtil — 7 functions
//   0x100158998     232  +[TAGAsyncUtil invokeAsync:resultBlock:]
//   0x100158a80     460  +[TAGAsyncUtil invokeAsync:resultBlock:]_block_invoke
//   0x100158c4c      60  +[TAGAsyncUtil invokeAsync:resultBlock:]_block_invoke_block_invoke
//   0x100158c88      60  sub_100158c88
//   0x100158cc4      48  sub_100158cc4
//   0x100158cf4      60  sub_100158cf4
//   0x100158d30      40  sub_100158d30

; ======================================================================
; +[TAGAsyncUtil invokeAsync:resultBlock:]
; address 0x100158998  size 232  kind objc
; ======================================================================
  100158998  stp     x29, x30, [sp, #-0x10]!
  10015899c  mov     x29, sp
  1001589a0  stp     x20, x19, [sp, #-0x10]!
  1001589a4  stp     x22, x21, [sp, #-0x10]!
  1001589a8  sub     sp, sp, #0x30
  1001589ac  mov     x19, x3
  1001589b0  mov     x0, x2
  1001589b4  bl      _objc_retain
  1001589b8  mov     x20, x0
  1001589bc  mov     x0, x19
  1001589c0  bl      _objc_retain
  1001589c4  mov     x19, x0
  1001589c8  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  1001589cc  mov     x21, x0
  1001589d0  mov     x0, #0
  1001589d4  mov     x1, #0
  1001589d8  bl      _dispatch_get_global_queue               ; dispatch_get_global_queue(0, 0)
  1001589dc  mov     x29, x29
  1001589e0  bl      _objc_retainAutoreleasedReturnValue
  1001589e4  mov     x22, x0
  1001589e8  adrp    x8, #0x1003b0000
  1001589ec  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001589f0  mov     w9, #-0x3e000000
  1001589f4  adr     x10, #0x100158a80                        ; &+[TAGAsyncUtil invokeAsync:resultBlock:]_block_invoke
  1001589f8  nop
  1001589fc  str     x8, [sp]
  100158a00  stp     w9, wzr, [sp, #8]
  100158a04  adrp    x8, #0x1003b9000
  100158a08  add     x8, x8, #0x750                           ; &d_1003b9750
  100158a0c  stp     x10, x8, [sp, #0x10]
  100158a10  str     x20, [sp, #0x20]
  100158a14  mov     x0, x20
  100158a18  bl      _objc_retain
  100158a1c  mov     x20, x0
  100158a20  str     x19, [sp, #0x28]
  100158a24  mov     x0, x19
  100158a28  bl      _objc_retain
  100158a2c  mov     x19, x0
  100158a30  mov     x1, sp
  100158a34  mov     x0, x22
  100158a38  bl      _dispatch_async                          ; dispatch_async(dispatch_get_global_queue(0, 0), ^{+[TAGAsyncUtil invokeAsync:resultBlock:]_block_invoke captures +0x20=arg1, +0x28=arg2})
  100158a3c  ldr     x0, [sp, #0x28]
  100158a40  bl      _objc_release
  100158a44  ldr     x0, [sp, #0x20]
  100158a48  bl      _objc_release
  100158a4c  mov     x0, x19
  100158a50  bl      _objc_release
  100158a54  mov     x0, x20
  100158a58  bl      _objc_release
  100158a5c  mov     x0, x22
  100158a60  bl      _objc_release
  100158a64  mov     x0, x21
  100158a68  bl      _objc_autoreleasePoolPop
  100158a6c  sub     sp, x29, #0x20
  100158a70  ldp     x22, x21, [sp], #0x10
  100158a74  ldp     x20, x19, [sp], #0x10
  100158a78  ldp     x29, x30, [sp], #0x10
  100158a7c  ret

; ======================================================================
; +[TAGAsyncUtil invokeAsync:resultBlock:]_block_invoke
; address 0x100158a80  size 460  kind block
; ======================================================================
  100158a80  stp     x29, x30, [sp, #-0x10]!
  100158a84  mov     x29, sp
  100158a88  stp     x20, x19, [sp, #-0x10]!
  100158a8c  stp     x22, x21, [sp, #-0x10]!
  100158a90  stp     x24, x23, [sp, #-0x10]!
  100158a94  sub     sp, sp, #0x40
  100158a98  mov     x20, x0
  100158a9c  ldr     x0, [x20, #0x20]                         ; x0 = captured arg1
  100158aa0  ldr     x8, [x0, #0x10]                          ; x8 = arg1[+0x10]
  100158aa4  blr     x8                                       ; call arg1[+0x10]
  100158aa8  mov     x29, x29
  100158aac  bl      _objc_retainAutoreleasedReturnValue
  100158ab0  mov     x21, x0
  100158ab4  mov     x19, #0
loc_100158ab8:
  100158ab8  ldr     x20, [x20, #0x28]                        ; x20 = captured arg2
  100158abc  cbz     x20, loc_100158b38                       ; if (arg2 == 0)
  100158ac0  adrp    x8, #0x1003b0000
  100158ac4  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100158ac8  mov     w9, #-0x3e000000
  100158acc  str     x8, [sp, #8]
  100158ad0  stp     w9, wzr, [sp, #0x10]
  100158ad4  adr     x8, #0x100158c4c                         ; &+[TAGAsyncUtil invokeAsync:resultBlock:]_block_invoke_block_invoke
  100158ad8  nop
  100158adc  str     x8, [sp, #0x18]
  100158ae0  adrp    x8, #0x1003b9000
  100158ae4  add     x8, x8, #0x720                           ; &d_1003b9720
  100158ae8  str     x8, [sp, #0x20]
  100158aec  mov     x0, x19
  100158af0  bl      _objc_retain
  100158af4  str     x0, [sp, #0x28]
  100158af8  mov     x0, x20
  100158afc  bl      _objc_retain
  100158b00  str     x0, [sp, #0x30]
  100158b04  mov     x0, x21
  100158b08  bl      _objc_retain
  100158b0c  str     x0, [sp, #0x38]
  100158b10  adrp    x0, #0x1003b0000
  100158b14  ldr     x0, [x0, #0x1e8]                         ; __dispatch_main_q
  100158b18  add     x1, sp, #8
  100158b1c  bl      _dispatch_async                          ; dispatch_async(__dispatch_main_q, ^{+[TAGAsyncUtil invokeAsync:resultBlock:]_block_invoke_block_invoke captures +0x20=0, +0x28=arg2, +0x30=arg1[+0x10](…)})
  100158b20  ldr     x0, [sp, #0x38]
  100158b24  bl      _objc_release
  100158b28  ldr     x0, [sp, #0x30]
  100158b2c  bl      _objc_release
  100158b30  ldr     x0, [sp, #0x28]
  100158b34  bl      _objc_release
loc_100158b38:
  100158b38  mov     x0, x19
  100158b3c  bl      _objc_release
  100158b40  mov     x0, x21
  100158b44  bl      _objc_release
  100158b48  sub     sp, x29, #0x30
  100158b4c  ldp     x24, x23, [sp], #0x10
  100158b50  ldp     x22, x21, [sp], #0x10
  100158b54  ldp     x20, x19, [sp], #0x10
  100158b58  ldp     x29, x30, [sp], #0x10
  100158b5c  ret
  100158b60  mov     x8, x1
  100158b64  mov     x22, x0
  100158b68  cmp     w8, #1
  100158b6c  b.ne    loc_100158c44                            ; if (w8 != 1)
  100158b70  mov     x0, x22
  100158b74  bl      _objc_begin_catch                        ; objc_begin_catch()
  100158b78  mov     x29, x29
  100158b7c  bl      _objc_retainAutoreleasedReturnValue
  100158b80  mov     x19, x0
  100158b84  adrp    x8, #0x10041e000
  100158b88  ldr     x22, [x8, #0x538]                        ; class TAGLog
  100158b8c  adrp    x8, #0x100418000
  100158b90  nop
  100158b94  ldr     x8, [x8, #0x648]
  100158b98  mov     x1, x8
  100158b9c  bl      _objc_msgSend                            ; [objc_begin_catch() description]
  100158ba0  mov     x29, x29
  100158ba4  bl      _objc_retainAutoreleasedReturnValue
  100158ba8  mov     x21, x0
  100158bac  adrp    x8, #0x10041a000
  100158bb0  nop
  100158bb4  ldr     x8, [x8, #0x620]
  100158bb8  adrp    x9, #0x1003c8000
  100158bbc  add     x9, x9, #0xf0                            ; @"Caught exception: "
  100158bc0  mov     x0, x9
  100158bc4  mov     x1, x8
  100158bc8  mov     x2, x21
  100158bcc  bl      _objc_msgSend                            ; [@"Caught exception: " stringByAppendingString:[objc_begin_catch() description]]
  100158bd0  mov     x29, x29
  100158bd4  bl      _objc_retainAutoreleasedReturnValue
  100158bd8  mov     x23, x0
  100158bdc  adrp    x8, #0x10041b000
  100158be0  nop
  100158be4  ldr     x8, [x8, #0xdd0]
  100158be8  mov     x0, x22
  100158bec  mov     x1, x8
  100158bf0  mov     x2, x23
  100158bf4  bl      _objc_msgSend                            ; [TAGLog error:[@"Caught exception: " stringByAppendingString:[objc_begin_catch() description]]]
  100158bf8  mov     x0, x23
  100158bfc  bl      _objc_release
  100158c00  mov     x0, x21
  100158c04  bl      _objc_release
  100158c08  bl      _objc_end_catch                          ; objc_end_catch()
  100158c0c  mov     x21, #0
  100158c10  b       loc_100158ab8
  100158c14  mov     x22, x0
  100158c18  b       loc_100158c38
  100158c1c  mov     x22, x0
  100158c20  b       loc_100158c30
  100158c24  mov     x22, x0
  100158c28  mov     x0, x23
  100158c2c  bl      _objc_release
loc_100158c30:
  100158c30  mov     x0, x21
  100158c34  bl      _objc_release
loc_100158c38:
  100158c38  mov     x0, x19
  100158c3c  bl      _objc_release
  100158c40  bl      _objc_end_catch                          ; objc_end_catch()
loc_100158c44:
  100158c44  mov     x0, x22
  100158c48  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGAsyncUtil invokeAsync:resultBlock:]_block_invoke_block_invoke
; address 0x100158c4c  size 60  kind block
; ======================================================================
  100158c4c  stp     x29, x30, [sp, #-0x10]!
  100158c50  mov     x29, sp
  100158c54  stp     x20, x19, [sp, #-0x10]!
  100158c58  mov     x20, x0
  100158c5c  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  100158c60  mov     x19, x0
  100158c64  ldr     x8, [x20, #0x20]                         ; x8 = captured 0
  100158c68  cbnz    x8, loc_100158c78                        ; if (0 != 0)
  100158c6c  ldp     x0, x1, [x20, #0x28]
  100158c70  ldr     x8, [x0, #0x10]
  100158c74  blr     x8
loc_100158c78:
  100158c78  mov     x0, x19
  100158c7c  ldp     x20, x19, [sp], #0x10
  100158c80  ldp     x29, x30, [sp], #0x10
  100158c84  b       _objc_autoreleasePoolPop

; ======================================================================
; sub_100158c88
; address 0x100158c88  size 60  kind sub
; ======================================================================
  100158c88  stp     x29, x30, [sp, #-0x10]!
  100158c8c  mov     x29, sp
  100158c90  stp     x20, x19, [sp, #-0x10]!
  100158c94  mov     x19, x1
  100158c98  mov     x20, x0
  100158c9c  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100158ca0  bl      _objc_retain
  100158ca4  add     x0, x20, #0x28
  100158ca8  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  100158cac  mov     w2, #7
  100158cb0  bl      __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 7)
  100158cb4  ldr     x0, [x19, #0x30]                         ; x0 = a1[+0x30]
  100158cb8  ldp     x20, x19, [sp], #0x10
  100158cbc  ldp     x29, x30, [sp], #0x10
  100158cc0  b       _objc_retain

; ======================================================================
; sub_100158cc4
; address 0x100158cc4  size 48  kind sub
; ======================================================================
  100158cc4  stp     x29, x30, [sp, #-0x10]!
  100158cc8  mov     x29, sp
  100158ccc  stp     x20, x19, [sp, #-0x10]!
  100158cd0  mov     x19, x0
  100158cd4  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100158cd8  bl      _objc_release
  100158cdc  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100158ce0  bl      _objc_release
  100158ce4  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  100158ce8  ldp     x20, x19, [sp], #0x10
  100158cec  ldp     x29, x30, [sp], #0x10
  100158cf0  b       _objc_release

; ======================================================================
; sub_100158cf4
; address 0x100158cf4  size 60  kind sub
; ======================================================================
  100158cf4  stp     x29, x30, [sp, #-0x10]!
  100158cf8  mov     x29, sp
  100158cfc  stp     x20, x19, [sp, #-0x10]!
  100158d00  mov     x19, x1
  100158d04  mov     x20, x0
  100158d08  add     x0, x20, #0x20
  100158d0c  ldr     x1, [x19, #0x20]                         ; x1 = a1[+0x20]
  100158d10  mov     w2, #7
  100158d14  bl      __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 7, a3)
  100158d18  add     x0, x20, #0x28
  100158d1c  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  100158d20  mov     w2, #7
  100158d24  ldp     x20, x19, [sp], #0x10
  100158d28  ldp     x29, x30, [sp], #0x10
  100158d2c  b       __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 7)

; ======================================================================
; sub_100158d30
; address 0x100158d30  size 40  kind sub
; ======================================================================
  100158d30  stp     x29, x30, [sp, #-0x10]!
  100158d34  mov     x29, sp
  100158d38  stp     x20, x19, [sp, #-0x10]!
  100158d3c  mov     x19, x0
  100158d40  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100158d44  bl      _objc_release
  100158d48  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100158d4c  ldp     x20, x19, [sp], #0x10
  100158d50  ldp     x29, x30, [sp], #0x10
  100158d54  b       _objc_release
