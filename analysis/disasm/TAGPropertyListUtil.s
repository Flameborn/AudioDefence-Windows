// unit TAGPropertyListUtil — 8 functions
//   0x100162af0     548  +[TAGPropertyListUtil readPropertyList:]
//   0x100162d14     380  +[TAGPropertyListUtil removePropertyList:]
//   0x100162e90     276  +[TAGPropertyListUtil writePropertyListAsync:withData:]
//   0x100162fa4      80  +[TAGPropertyListUtil writePropertyListAsync:withData:]_block_invoke
//   0x100162ff4      40  sub_100162ff4
//   0x10016301c      40  sub_10016301c
//   0x100163044     436  +[TAGPropertyListUtil writePropertyList:withData:]
//   0x1001631f8     216  +[TAGPropertyListUtil plistFilePath:]

; ======================================================================
; +[TAGPropertyListUtil readPropertyList:]
; address 0x100162af0  size 548  kind objc
; ======================================================================
  100162af0  stp     x29, x30, [sp, #-0x10]!
  100162af4  mov     x29, sp
  100162af8  stp     x20, x19, [sp, #-0x10]!
  100162afc  stp     x22, x21, [sp, #-0x10]!
  100162b00  stp     x24, x23, [sp, #-0x10]!
  100162b04  sub     sp, sp, #0x20
  100162b08  adrp    x8, #0x10041e000
  100162b0c  ldr     x0, [x8, #0x978]                         ; class TAGPropertyListUtil
  100162b10  adrp    x8, #0x10041d000
  100162b14  nop
  100162b18  ldr     x1, [x8, #0x678]
  100162b1c  bl      _objc_msgSend                            ; [TAGPropertyListUtil plistFilePath:arg1]
  100162b20  mov     x29, x29
  100162b24  bl      _objc_retainAutoreleasedReturnValue
  100162b28  mov     x19, x0
  100162b2c  adrp    x8, #0x10041e000
  100162b30  ldr     x0, [x8, #0x4f0]                         ; class NSFileManager
  100162b34  adrp    x8, #0x10041b000
  100162b38  nop
  100162b3c  ldr     x1, [x8, #0x8b0]
  100162b40  bl      _objc_msgSend                            ; [NSFileManager defaultManager]
  100162b44  mov     x29, x29
  100162b48  bl      _objc_retainAutoreleasedReturnValue
  100162b4c  mov     x21, x0
  100162b50  adrp    x8, #0x10041b000
  100162b54  nop
  100162b58  ldr     x1, [x8, #0x910]
  100162b5c  mov     x2, x19
  100162b60  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] contentsAtPath:[TAGPropertyListUtil plistFilePath:arg1]]
  100162b64  mov     x29, x29
  100162b68  bl      _objc_retainAutoreleasedReturnValue
  100162b6c  mov     x20, x0
  100162b70  mov     x0, x21
  100162b74  bl      _objc_release
  100162b78  cbz     x20, loc_100162c2c                       ; if ([[NSFileManager defaultManager] contentsAtPath:[TAGPropertyListUtil plistFilePath:arg1]] == 0)
  100162b7c  adrp    x8, #0x10041e000
  100162b80  ldr     x0, [x8, #0x980]                         ; class NSPropertyListSerialization
  100162b84  str     xzr, [sp, #0x10]
  100162b88  adrp    x8, #0x10041d000
  100162b8c  nop
  100162b90  ldr     x1, [x8, #0x680]
  100162b94  add     x4, sp, #0x18
  100162b98  add     x5, sp, #0x10
  100162b9c  mov     x3, #2
  100162ba0  mov     x2, x20
  100162ba4  bl      _objc_msgSend                            ; [NSPropertyListSerialization propertyListWithData:[[NSFileManager defaultManager] contentsAtPath:[TAGPropertyListUtil plistFilePath:arg1]] options:2 format:&sp[0x18] error:&sp[0x10]]
  100162ba8  mov     x29, x29
  100162bac  bl      _objc_retainAutoreleasedReturnValue
  100162bb0  mov     x21, x0
  100162bb4  ldr     x0, [sp, #0x10]
  100162bb8  bl      _objc_retain
  100162bbc  mov     x22, x0
  100162bc0  cbnz    x21, loc_100162c20                       ; if ([NSPropertyListSerialization propertyListWithData:[[NSFileManager defaultManager] contentsAtPath:[TAGPropertyListUtil plistFilePath:arg1]] options:2 format:&sp[0x18] error:&sp[0x10]] != 0)
  100162bc4  adrp    x8, #0x10041e000
  100162bc8  ldr     x23, [x8, #0x538]                        ; class TAGLog
  100162bcc  adrp    x8, #0x10041d000
  100162bd0  ldr     x0, [x8, #0xf78]                         ; class NSString
  100162bd4  ldr     x8, [sp, #0x18]
  100162bd8  adrp    x9, #0x100416000
  100162bdc  nop
  100162be0  ldr     x1, [x9, #0xee8]
  100162be4  stp     x22, x8, [sp]
  100162be8  adrp    x2, #0x1003c8000
  100162bec  add     x2, x2, #0xa10                           ; @"Error reading plist: %@, format: %lur"
  100162bf0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Error reading plist: %@, format: %lur", 0, sp[8]]
  100162bf4  mov     x29, x29
  100162bf8  bl      _objc_retainAutoreleasedReturnValue
  100162bfc  mov     x24, x0
  100162c00  adrp    x8, #0x10041b000
  100162c04  nop
  100162c08  ldr     x1, [x8, #0xea0]
  100162c0c  mov     x0, x23
  100162c10  mov     x2, x24
  100162c14  bl      _objc_msgSend                            ; [TAGLog info:[NSString stringWithFormat:@"Error reading plist: %@, format: %lur", 0, sp[8]]]
  100162c18  mov     x0, x24
  100162c1c  bl      _objc_release
loc_100162c20:
  100162c20  mov     x0, x22
  100162c24  bl      _objc_release
  100162c28  b       loc_100162c88
loc_100162c2c:
  100162c2c  adrp    x8, #0x10041e000
  100162c30  ldr     x21, [x8, #0x538]                        ; class TAGLog
  100162c34  adrp    x8, #0x10041d000
  100162c38  ldr     x0, [x8, #0xf78]                         ; class NSString
  100162c3c  adrp    x8, #0x100416000
  100162c40  nop
  100162c44  ldr     x1, [x8, #0xee8]
  100162c48  str     x19, [sp]
  100162c4c  adrp    x2, #0x1003c8000
  100162c50  add     x2, x2, #0x9f0                           ; @"No plist file: %@ found."
  100162c54  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"No plist file: %@ found.", [TAGPropertyListUtil plistFilePath:arg1]]
  100162c58  mov     x29, x29
  100162c5c  bl      _objc_retainAutoreleasedReturnValue
  100162c60  mov     x22, x0
  100162c64  adrp    x8, #0x10041d000
  100162c68  nop
  100162c6c  ldr     x1, [x8, #0x248]
  100162c70  mov     x0, x21
  100162c74  mov     x2, x22
  100162c78  bl      _objc_msgSend                            ; [TAGLog debug:[NSString stringWithFormat:@"No plist file: %@ found.", [TAGPropertyListUtil plistFilePath:arg1]]]
  100162c7c  mov     x0, x22
  100162c80  bl      _objc_release
  100162c84  mov     x21, #0
loc_100162c88:
  100162c88  mov     x0, x20
  100162c8c  bl      _objc_release
  100162c90  mov     x0, x19
  100162c94  bl      _objc_release
  100162c98  mov     x0, x21
  100162c9c  sub     sp, x29, #0x30
  100162ca0  ldp     x24, x23, [sp], #0x10
  100162ca4  ldp     x22, x21, [sp], #0x10
  100162ca8  ldp     x20, x19, [sp], #0x10
  100162cac  ldp     x29, x30, [sp], #0x10
  100162cb0  b       _objc_autoreleaseReturnValue
  100162cb4  mov     x23, x0
  100162cb8  b       loc_100162d0c
  100162cbc  mov     x23, x0
  100162cc0  b       loc_100162d04
  100162cc4  mov     x23, x0
  100162cc8  mov     x0, x21
  100162ccc  b       loc_100162d00
  100162cd0  b       loc_100162ce8
  100162cd4  b       loc_100162cf0
  100162cd8  mov     x23, x0
  100162cdc  mov     x0, x24
  100162ce0  bl      _objc_release
  100162ce4  b       loc_100162cf4
loc_100162ce8:
  100162ce8  mov     x23, x0
  100162cec  b       loc_100162cfc
loc_100162cf0:
  100162cf0  mov     x23, x0
loc_100162cf4:
  100162cf4  mov     x0, x22
  100162cf8  bl      _objc_release
loc_100162cfc:
  100162cfc  mov     x0, x20
loc_100162d00:
  100162d00  bl      _objc_release
loc_100162d04:
  100162d04  mov     x0, x19
  100162d08  bl      _objc_release
loc_100162d0c:
  100162d0c  mov     x0, x23
  100162d10  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGPropertyListUtil removePropertyList:]
; address 0x100162d14  size 380  kind objc
; ======================================================================
  100162d14  stp     x29, x30, [sp, #-0x10]!
  100162d18  mov     x29, sp
  100162d1c  stp     x20, x19, [sp, #-0x10]!
  100162d20  stp     x22, x21, [sp, #-0x10]!
  100162d24  stp     x24, x23, [sp, #-0x10]!
  100162d28  sub     sp, sp, #0x20
  100162d2c  adrp    x8, #0x10041e000
  100162d30  ldr     x0, [x8, #0x978]                         ; class TAGPropertyListUtil
  100162d34  adrp    x8, #0x10041d000
  100162d38  nop
  100162d3c  ldr     x1, [x8, #0x678]
  100162d40  bl      _objc_msgSend                            ; [TAGPropertyListUtil plistFilePath:arg1]
  100162d44  mov     x29, x29
  100162d48  bl      _objc_retainAutoreleasedReturnValue
  100162d4c  mov     x19, x0
  100162d50  adrp    x8, #0x10041e000
  100162d54  ldr     x0, [x8, #0x4f0]                         ; class NSFileManager
  100162d58  adrp    x8, #0x10041b000
  100162d5c  nop
  100162d60  ldr     x1, [x8, #0x8b0]
  100162d64  mov     x20, #0
  100162d68  bl      _objc_msgSend                            ; [NSFileManager defaultManager]
  100162d6c  mov     x29, x29
  100162d70  bl      _objc_retainAutoreleasedReturnValue
  100162d74  mov     x22, x0
  100162d78  str     xzr, [sp, #0x18]
  100162d7c  adrp    x8, #0x10041b000
  100162d80  nop
  100162d84  ldr     x1, [x8, #0xe68]
  100162d88  add     x3, sp, #0x18
  100162d8c  mov     x2, x19
  100162d90  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] removeItemAtPath:[TAGPropertyListUtil plistFilePath:arg1] error:&sp[0x18]]
  100162d94  mov     x21, x0
  100162d98  ldr     x0, [sp, #0x18]
  100162d9c  bl      _objc_retain
  100162da0  mov     x20, x0
  100162da4  mov     x0, x22
  100162da8  bl      _objc_release
  100162dac  cbz     x20, loc_100162e24                       ; if (0 == 0)
  100162db0  adrp    x8, #0x10041b000
  100162db4  nop
  100162db8  ldr     x1, [x8, #0xd88]
  100162dbc  mov     x0, x20
  100162dc0  bl      _objc_msgSend                            ; [0 code]
  100162dc4  cmp     x0, #4
  100162dc8  b.eq    loc_100162e24                            ; if ([0 code] == 4)
  100162dcc  adrp    x8, #0x10041e000
  100162dd0  ldr     x22, [x8, #0x538]                        ; class TAGLog
  100162dd4  adrp    x8, #0x10041d000
  100162dd8  ldr     x0, [x8, #0xf78]                         ; class NSString
  100162ddc  adrp    x8, #0x100416000
  100162de0  nop
  100162de4  ldr     x1, [x8, #0xee8]
  100162de8  stp     x19, x20, [sp]
  100162dec  adrp    x2, #0x1003c8000
  100162df0  add     x2, x2, #0xa30                           ; @"Error clearing out plist: %@ with error: %@"
  100162df4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Error clearing out plist: %@ with error: %@", [TAGPropertyListUtil plistFilePath:arg1], 0]
  100162df8  mov     x29, x29
  100162dfc  bl      _objc_retainAutoreleasedReturnValue
  100162e00  mov     x23, x0
  100162e04  adrp    x8, #0x10041b000
  100162e08  nop
  100162e0c  ldr     x1, [x8, #0xdd0]
  100162e10  mov     x0, x22
  100162e14  mov     x2, x23
  100162e18  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Error clearing out plist: %@ with error: %@", [TAGPropertyListUtil plistFilePath:arg1], 0]]
  100162e1c  mov     x0, x23
  100162e20  bl      _objc_release
loc_100162e24:
  100162e24  mov     x0, x19
  100162e28  bl      _objc_release
  100162e2c  mov     x0, x20
  100162e30  bl      _objc_release
  100162e34  mov     x0, x21
  100162e38  sub     sp, x29, #0x30
  100162e3c  ldp     x24, x23, [sp], #0x10
  100162e40  ldp     x22, x21, [sp], #0x10
  100162e44  ldp     x20, x19, [sp], #0x10
  100162e48  ldp     x29, x30, [sp], #0x10
  100162e4c  ret
  100162e50  mov     x21, x0
  100162e54  b       loc_100162e88
  100162e58  mov     x21, x0
  100162e5c  mov     x0, x22
  100162e60  b       loc_100162e7c
  100162e64  mov     x21, x0
  100162e68  b       loc_100162e78
  100162e6c  mov     x21, x0
  100162e70  mov     x0, x23
  100162e74  bl      _objc_release
loc_100162e78:
  100162e78  mov     x0, x20
loc_100162e7c:
  100162e7c  bl      _objc_release
  100162e80  mov     x0, x19
  100162e84  bl      _objc_release
loc_100162e88:
  100162e88  mov     x0, x21
  100162e8c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGPropertyListUtil writePropertyListAsync:withData:]
; address 0x100162e90  size 276  kind objc
; ======================================================================
  100162e90  stp     x29, x30, [sp, #-0x10]!
  100162e94  mov     x29, sp
  100162e98  stp     x20, x19, [sp, #-0x10]!
  100162e9c  stp     x22, x21, [sp, #-0x10]!
  100162ea0  stp     x24, x23, [sp, #-0x10]!
  100162ea4  sub     sp, sp, #0x40
  100162ea8  mov     x19, x3
  100162eac  mov     x20, x0
  100162eb0  mov     x0, x2
  100162eb4  bl      _objc_retain
  100162eb8  mov     x21, x0
  100162ebc  mov     x0, x19
  100162ec0  bl      _objc_retain
  100162ec4  mov     x22, x0
  100162ec8  adrp    x8, #0x1003b0000
  100162ecc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100162ed0  adrp    x9, #0x10041e000
  100162ed4  ldr     x23, [x9, #0x910]                        ; class TAGAsyncUtil
  100162ed8  mov     w9, #-0x3e000000
  100162edc  adr     x10, #0x100162fa4                        ; &+[TAGPropertyListUtil writePropertyListAsync:withData:]_block_invoke
  100162ee0  nop
  100162ee4  str     x8, [sp, #8]
  100162ee8  stp     w9, wzr, [sp, #0x10]
  100162eec  adrp    x8, #0x1003b9000
  100162ef0  add     x8, x8, #0x820                           ; &d_1003b9820
  100162ef4  stp     x10, x8, [sp, #0x18]
  100162ef8  str     x20, [sp, #0x28]
  100162efc  mov     x0, x21
  100162f00  bl      _objc_retain
  100162f04  mov     x19, x0
  100162f08  stp     x19, x22, [sp, #0x30]
  100162f0c  adrp    x8, #0x10041d000
  100162f10  nop
  100162f14  ldr     x21, [x8, #0x270]
  100162f18  mov     x0, x22
  100162f1c  bl      _objc_retain
  100162f20  mov     x20, x0
  100162f24  mov     x3, #0
  100162f28  add     x2, sp, #8
  100162f2c  mov     x0, x23
  100162f30  mov     x1, x21
  100162f34  bl      _objc_msgSend                            ; [TAGAsyncUtil invokeAsync:^{+[TAGPropertyListUtil writePropertyListAsync:withData:]_block_invoke captures +0x20=TAGPropertyListUtil, +0x28=arg1, +0x30=arg2} resultBlock:0]
  100162f38  ldr     x0, [sp, #0x38]
  100162f3c  bl      _objc_release
  100162f40  ldr     x0, [sp, #0x30]
  100162f44  bl      _objc_release
  100162f48  mov     x0, x20
  100162f4c  bl      _objc_release
  100162f50  mov     x0, x19
  100162f54  bl      _objc_release
  100162f58  sub     sp, x29, #0x30
  100162f5c  ldp     x24, x23, [sp], #0x10
  100162f60  ldp     x22, x21, [sp], #0x10
  100162f64  ldp     x20, x19, [sp], #0x10
  100162f68  ldp     x29, x30, [sp], #0x10
  100162f6c  ret
  100162f70  mov     x21, x0
  100162f74  ldr     x8, [sp, #0x38]
  100162f78  mov     x0, x8
  100162f7c  bl      _objc_release
  100162f80  ldr     x8, [sp, #0x30]
  100162f84  mov     x0, x8
  100162f88  bl      _objc_release
  100162f8c  mov     x0, x20
  100162f90  bl      _objc_release
  100162f94  mov     x0, x19
  100162f98  bl      _objc_release
  100162f9c  mov     x0, x21
  100162fa0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGPropertyListUtil writePropertyListAsync:withData:]_block_invoke
; address 0x100162fa4  size 80  kind block
; ======================================================================
  100162fa4  stp     x29, x30, [sp, #-0x10]!
  100162fa8  mov     x29, sp
  100162fac  stp     x20, x19, [sp, #-0x10]!
  100162fb0  adrp    x8, #0x10041d000
  100162fb4  ldr     x19, [x8, #0xf68]                        ; class NSNumber
  100162fb8  ldp     x8, x2, [x0, #0x20]
  100162fbc  ldr     x3, [x0, #0x30]                          ; x3 = captured arg2
  100162fc0  adrp    x9, #0x10041d000
  100162fc4  nop
  100162fc8  ldr     x1, [x9, #0x688]
  100162fcc  mov     x0, x8
  100162fd0  bl      _objc_msgSend                            ; [x0 writePropertyList:x2 withData:arg2]
  100162fd4  mov     x2, x0
  100162fd8  adrp    x8, #0x100417000
  100162fdc  nop
  100162fe0  ldr     x1, [x8, #0xb8]
  100162fe4  mov     x0, x19
  100162fe8  ldp     x20, x19, [sp], #0x10
  100162fec  ldp     x29, x30, [sp], #0x10
  100162ff0  b       _objc_msgSend                            ; [NSNumber numberWithBool:[x0 writePropertyList:x2 withData:arg2]]

; ======================================================================
; sub_100162ff4
; address 0x100162ff4  size 40  kind sub
; ======================================================================
  100162ff4  stp     x29, x30, [sp, #-0x10]!
  100162ff8  mov     x29, sp
  100162ffc  stp     x20, x19, [sp, #-0x10]!
  100163000  mov     x19, x1
  100163004  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100163008  bl      _objc_retain
  10016300c  ldr     x0, [x19, #0x30]                         ; x0 = a1[+0x30]
  100163010  ldp     x20, x19, [sp], #0x10
  100163014  ldp     x29, x30, [sp], #0x10
  100163018  b       _objc_retain

; ======================================================================
; sub_10016301c
; address 0x10016301c  size 40  kind sub
; ======================================================================
  10016301c  stp     x29, x30, [sp, #-0x10]!
  100163020  mov     x29, sp
  100163024  stp     x20, x19, [sp, #-0x10]!
  100163028  mov     x19, x0
  10016302c  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100163030  bl      _objc_release
  100163034  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  100163038  ldp     x20, x19, [sp], #0x10
  10016303c  ldp     x29, x30, [sp], #0x10
  100163040  b       _objc_release

; ======================================================================
; +[TAGPropertyListUtil writePropertyList:withData:]
; address 0x100163044  size 436  kind objc
; ======================================================================
  100163044  stp     x29, x30, [sp, #-0x10]!
  100163048  mov     x29, sp
  10016304c  stp     x20, x19, [sp, #-0x10]!
  100163050  stp     x22, x21, [sp, #-0x10]!
  100163054  stp     x24, x23, [sp, #-0x10]!
  100163058  sub     sp, sp, #0x20
  10016305c  mov     x20, x3
  100163060  mov     x0, x2
  100163064  bl      _objc_retain
  100163068  mov     x19, x0
  10016306c  mov     x0, x20
  100163070  bl      _objc_retain
  100163074  mov     x20, x0
  100163078  str     xzr, [sp, #0x18]
  10016307c  adrp    x8, #0x10041e000
  100163080  ldr     x0, [x8, #0x978]                         ; class TAGPropertyListUtil
  100163084  adrp    x8, #0x10041d000
  100163088  nop
  10016308c  ldr     x1, [x8, #0x678]
  100163090  mov     x2, x19
  100163094  bl      _objc_msgSend                            ; [TAGPropertyListUtil plistFilePath:arg1]
  100163098  mov     x29, x29
  10016309c  bl      _objc_retainAutoreleasedReturnValue
  1001630a0  mov     x21, x0
  1001630a4  adrp    x8, #0x10041e000
  1001630a8  ldr     x0, [x8, #0x980]                         ; class NSPropertyListSerialization
  1001630ac  adrp    x8, #0x10041d000
  1001630b0  nop
  1001630b4  ldr     x1, [x8, #0x690]
  1001630b8  add     x4, sp, #0x18
  1001630bc  mov     x3, #0xc8
  1001630c0  mov     x2, x20
  1001630c4  bl      _objc_msgSend                            ; [NSPropertyListSerialization dataFromPropertyList:arg2 format:200 errorDescription:&sp[0x18]]
  1001630c8  mov     x29, x29
  1001630cc  bl      _objc_retainAutoreleasedReturnValue
  1001630d0  mov     x22, x0
  1001630d4  cbz     x22, loc_1001630fc                       ; if ([NSPropertyListSerialization dataFromPropertyList:arg2 format:200 errorDescription:&sp[0x18]] == 0)
  1001630d8  adrp    x8, #0x10041d000
  1001630dc  nop
  1001630e0  ldr     x1, [x8, #0x698]
  1001630e4  mov     w23, #1
  1001630e8  mov     w3, #1
  1001630ec  mov     x0, x22
  1001630f0  mov     x2, x21
  1001630f4  bl      _objc_msgSend                            ; [[NSPropertyListSerialization dataFromPropertyList:arg2 format:200 errorDescription:&sp[0x18]] writeToFile:[TAGPropertyListUtil plistFilePath:arg1] atomically:1]
  1001630f8  b       loc_10016315c
loc_1001630fc:
  1001630fc  adrp    x8, #0x10041e000
  100163100  ldr     x23, [x8, #0x538]                        ; class TAGLog
  100163104  adrp    x8, #0x10041d000
  100163108  ldr     x0, [x8, #0xf78]                         ; class NSString
  10016310c  ldr     x8, [sp, #0x18]
  100163110  adrp    x9, #0x100416000
  100163114  nop
  100163118  ldr     x1, [x9, #0xee8]
  10016311c  stp     x19, x8, [sp]
  100163120  adrp    x2, #0x1003c8000
  100163124  add     x2, x2, #0xa50                           ; @"Failed to Write property list %@ with error %@"
  100163128  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Failed to Write property list %@ with error %@", arg1, 0]
  10016312c  mov     x29, x29
  100163130  bl      _objc_retainAutoreleasedReturnValue
  100163134  mov     x24, x0
  100163138  adrp    x8, #0x10041b000
  10016313c  nop
  100163140  ldr     x1, [x8, #0xe90]
  100163144  mov     x0, x23
  100163148  mov     x2, x24
  10016314c  bl      _objc_msgSend                            ; [TAGLog warning:[NSString stringWithFormat:@"Failed to Write property list %@ with error %@", arg1, 0]]
  100163150  mov     x0, x24
  100163154  bl      _objc_release
  100163158  mov     w23, #0
loc_10016315c:
  10016315c  mov     x0, x22
  100163160  bl      _objc_release
  100163164  mov     x0, x21
  100163168  bl      _objc_release
  10016316c  ldr     x0, [sp, #0x18]
  100163170  bl      _objc_release
  100163174  mov     x0, x20
  100163178  bl      _objc_release
  10016317c  mov     x0, x19
  100163180  bl      _objc_release
  100163184  mov     x0, x23
  100163188  sub     sp, x29, #0x30
  10016318c  ldp     x24, x23, [sp], #0x10
  100163190  ldp     x22, x21, [sp], #0x10
  100163194  ldp     x20, x19, [sp], #0x10
  100163198  ldp     x29, x30, [sp], #0x10
  10016319c  ret
  1001631a0  mov     x23, x0
  1001631a4  b       loc_1001631e0
  1001631a8  mov     x23, x0
  1001631ac  b       loc_1001631cc
  1001631b0  mov     x23, x0
  1001631b4  b       loc_1001631c4
  1001631b8  mov     x23, x0
  1001631bc  mov     x0, x24
  1001631c0  bl      _objc_release
loc_1001631c4:
  1001631c4  mov     x0, x22
  1001631c8  bl      _objc_release
loc_1001631cc:
  1001631cc  mov     x0, x21
  1001631d0  bl      _objc_release
  1001631d4  ldr     x8, [sp, #0x18]
  1001631d8  mov     x0, x8
  1001631dc  bl      _objc_release
loc_1001631e0:
  1001631e0  mov     x0, x20
  1001631e4  bl      _objc_release
  1001631e8  mov     x0, x19
  1001631ec  bl      _objc_release
  1001631f0  mov     x0, x23
  1001631f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGPropertyListUtil plistFilePath:]
; address 0x1001631f8  size 216  kind objc
; ======================================================================
  1001631f8  stp     x29, x30, [sp, #-0x10]!
  1001631fc  mov     x29, sp
  100163200  stp     x20, x19, [sp, #-0x10]!
  100163204  stp     x22, x21, [sp, #-0x10]!
  100163208  mov     x0, x2
  10016320c  bl      _objc_retain
  100163210  mov     x19, x0
  100163214  mov     x0, #9
  100163218  mov     x1, #1
  10016321c  mov     w2, #1
  100163220  bl      _NSSearchPathForDirectoriesInDomains     ; NSSearchPathForDirectoriesInDomains(9, 1, 1)
  100163224  mov     x29, x29
  100163228  bl      _objc_retainAutoreleasedReturnValue
  10016322c  mov     x21, x0
  100163230  adrp    x8, #0x100416000
  100163234  nop
  100163238  ldr     x1, [x8, #0xc30]
  10016323c  mov     x2, #0
  100163240  bl      _objc_msgSend                            ; [NSSearchPathForDirectoriesInDomains(9, 1, 1) objectAtIndex:0]
  100163244  mov     x29, x29
  100163248  bl      _objc_retainAutoreleasedReturnValue
  10016324c  mov     x20, x0
  100163250  mov     x0, x21
  100163254  bl      _objc_release
  100163258  adrp    x8, #0x10041b000
  10016325c  nop
  100163260  ldr     x1, [x8, #0xf30]
  100163264  mov     x0, x20
  100163268  mov     x2, x19
  10016326c  bl      _objc_msgSend                            ; [[NSSearchPathForDirectoriesInDomains(9, 1, 1) objectAtIndex:0] stringByAppendingPathComponent:arg1]
  100163270  mov     x29, x29
  100163274  bl      _objc_retainAutoreleasedReturnValue
  100163278  mov     x21, x0
  10016327c  mov     x0, x20
  100163280  bl      _objc_release
  100163284  mov     x0, x19
  100163288  bl      _objc_release
  10016328c  mov     x0, x21
  100163290  ldp     x22, x21, [sp], #0x10
  100163294  ldp     x20, x19, [sp], #0x10
  100163298  ldp     x29, x30, [sp], #0x10
  10016329c  b       _objc_autoreleaseReturnValue
  1001632a0  mov     x22, x0
  1001632a4  b       loc_1001632c0
  1001632a8  mov     x22, x0
  1001632ac  mov     x0, x21
  1001632b0  b       loc_1001632bc
  1001632b4  mov     x22, x0
  1001632b8  mov     x0, x20
loc_1001632bc:
  1001632bc  bl      _objc_release
loc_1001632c0:
  1001632c0  mov     x0, x19
  1001632c4  bl      _objc_release
  1001632c8  mov     x0, x22
  1001632cc  bl      __Unwind_Resume                          ; Unwind_Resume()
