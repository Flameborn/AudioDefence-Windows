// unit TAGPreviewManager — 13 functions
//   0x10015481c     240  -[TAGPreviewManager init]
//   0x10015490c    1176  -[TAGPreviewManager generatePreviewDataForUrl:]
//   0x100154da4     196  -[TAGPreviewManager isPreviewingContainer:]
//   0x100154e68      92  -[TAGPreviewManager clear]
//   0x100154ec4     256  -[TAGPreviewManager containerIdForQuery:]
//   0x100154fc4      48  +[TAGPreviewManager instance]
//   0x100154ff4      16  -[TAGPreviewManager previewMode]
//   0x100155004      16  -[TAGPreviewManager setPreviewMode:]
//   0x100155014      16  -[TAGPreviewManager ctfeUrlPath]
//   0x100155024      12  -[TAGPreviewManager setCtfeUrlPath:]
//   0x100155030      16  -[TAGPreviewManager containerId]
//   0x100155040      12  -[TAGPreviewManager setContainerId:]
//   0x10015504c      64  -[TAGPreviewManager .cxx_destruct]

; ======================================================================
; -[TAGPreviewManager init]
; address 0x10015481c  size 240  kind objc
; ======================================================================
  10015481c  stp     x29, x30, [sp, #-0x10]!
  100154820  mov     x29, sp
  100154824  stp     x20, x19, [sp, #-0x10]!
  100154828  stp     x22, x21, [sp, #-0x10]!
  10015482c  sub     sp, sp, #0x10
  100154830  str     x0, [sp]
  100154834  adrp    x8, #0x10041f000
  100154838  ldr     x8, [x8, #0x248]
  10015483c  str     x8, [sp, #8]
  100154840  adrp    x8, #0x100416000
  100154844  nop
  100154848  ldr     x1, [x8, #0xab8]
  10015484c  mov     x20, #0
  100154850  mov     x0, sp
  100154854  bl      _objc_msgSendSuper2                      ; [super init]
  100154858  mov     x19, x0
  10015485c  cbz     x19, loc_1001548cc                       ; if (self == 0)
  100154860  mov     x20, x19
  100154864  adrp    x8, #0x10041e000
  100154868  ldr     x0, [x8, #0x8f8]                         ; class TAGPreviewManager
  10015486c  adrp    x8, #0x100417000
  100154870  nop
  100154874  ldr     x1, [x8, #0x2e0]
  100154878  bl      _objc_msgSend                            ; [TAGPreviewManager class]
  10015487c  mov     x29, x29
  100154880  bl      _objc_retainAutoreleasedReturnValue
  100154884  mov     x20, x0
  100154888  bl      _objc_sync_enter                         ; objc_sync_enter([TAGPreviewManager class])
  10015488c  adrp    x21, #0x10042d000
  100154890  ldr     x0, [x21, #0xf28]                        ; load g_10042df28
  100154894  cbz     x0, loc_1001548a8                        ; if (g_10042df28 == 0)
  100154898  bl      _objc_retain
  10015489c  mov     x21, x0
  1001548a0  mov     w22, #0
  1001548a4  b       loc_1001548b8
loc_1001548a8:
  1001548a8  mov     x0, x19
  1001548ac  bl      _objc_retain
  1001548b0  str     x19, [x21, #0xf28]                       ; store g_10042df28 = self
  1001548b4  mov     w22, #1
loc_1001548b8:
  1001548b8  mov     x0, x20
  1001548bc  bl      _objc_sync_exit                          ; objc_sync_exit([TAGPreviewManager class])
  1001548c0  mov     x0, x20
  1001548c4  bl      _objc_release
  1001548c8  cbz     w22, loc_1001548d8                       ; if (one of {0, 1} == 0)
loc_1001548cc:
  1001548cc  mov     x0, x19
  1001548d0  bl      _objc_retain
  1001548d4  mov     x21, x0
loc_1001548d8:
  1001548d8  mov     x0, x19
  1001548dc  bl      _objc_release
  1001548e0  mov     x0, x21
  1001548e4  sub     sp, x29, #0x20
  1001548e8  ldp     x22, x21, [sp], #0x10
  1001548ec  ldp     x20, x19, [sp], #0x10
  1001548f0  ldp     x29, x30, [sp], #0x10
  1001548f4  ret
  1001548f8  mov     x19, x0
  1001548fc  mov     x0, x20
  100154900  bl      _objc_release
  100154904  mov     x0, x19
  100154908  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGPreviewManager generatePreviewDataForUrl:]
; address 0x10015490c  size 1176  kind objc
; ======================================================================
  10015490c  stp     x29, x30, [sp, #-0x10]!
  100154910  mov     x29, sp
  100154914  stp     x20, x19, [sp, #-0x10]!
  100154918  stp     x22, x21, [sp, #-0x10]!
  10015491c  stp     x24, x23, [sp, #-0x10]!
  100154920  stp     x26, x25, [sp, #-0x10]!
  100154924  stp     x28, x27, [sp, #-0x10]!
  100154928  sub     sp, sp, #0x20
  10015492c  mov     x24, x0
  100154930  mov     x0, x2
  100154934  bl      _objc_retain
  100154938  mov     x19, x0
  10015493c  cbz     x19, loc_100154b40                       ; if (arg1 == 0)
  100154940  adrp    x8, #0x10041c000
  100154944  nop
  100154948  ldr     x23, [x8, #0x3c0]
  10015494c  mov     x0, x19
  100154950  mov     x1, x23
  100154954  bl      _objc_msgSend                            ; [arg1 absoluteString]
  100154958  mov     x29, x29
  10015495c  bl      _objc_retainAutoreleasedReturnValue
  100154960  mov     x21, x0
  100154964  adrp    x8, #0x10041a000
  100154968  nop
  10015496c  ldr     x25, [x8, #0x620]
  100154970  adrp    x0, #0x1003c7000
  100154974  add     x0, x0, #0xb10                           ; @"Preview Url = "
  100154978  mov     x1, x25
  10015497c  mov     x2, x21
  100154980  bl      _objc_msgSend                            ; [@"Preview Url = " stringByAppendingString:[arg1 absoluteString]]
  100154984  mov     x29, x29
  100154988  bl      _objc_retainAutoreleasedReturnValue
  10015498c  mov     x22, x0
  100154990  str     x22, [sp, #0x18]
  100154994  mov     x0, x21
  100154998  bl      _objc_release
  10015499c  adrp    x20, #0x10041e000
  1001549a0  ldr     x0, [x20, #0x538]                        ; class TAGLog
  1001549a4  adrp    x8, #0x10041b000
  1001549a8  nop
  1001549ac  ldr     x26, [x8, #0xea0]
  1001549b0  mov     x1, x26
  1001549b4  mov     x2, x22
  1001549b8  bl      _objc_msgSend                            ; [TAGLog info:[@"Preview Url = " stringByAppendingString:[arg1 absoluteString]]]
  1001549bc  adrp    x21, #0x10041e000
  1001549c0  ldr     x0, [x21, #0x510]                        ; class NSPredicate
  1001549c4  adrp    x8, #0x10041b000
  1001549c8  nop
  1001549cc  ldr     x22, [x8, #0x9d0]
  1001549d0  adrp    x8, #0x1003c7000
  1001549d4  add     x8, x8, #0xad0                           ; @"^tagmanager.c.\S+:\/\/preview\/p\?id=\S+&gtm_auth=\S+&gtm_preview=\d+$"
  1001549d8  str     x8, [sp]
  1001549dc  adrp    x2, #0x1003c7000
  1001549e0  add     x2, x2, #0xb30                           ; @"SELF MATCHES %@"
  1001549e4  mov     x1, x22
  1001549e8  bl      _objc_msgSend                            ; [NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^tagmanager.c.\S+:\/\/preview\/p\?id=\S+&gtm_auth=\S+&gtm_preview=\d+$"]
  1001549ec  mov     x29, x29
  1001549f0  bl      _objc_retainAutoreleasedReturnValue
  1001549f4  mov     x27, x0
  1001549f8  ldr     x0, [x21, #0x510]                        ; class NSPredicate
  1001549fc  adrp    x8, #0x1003c7000
  100154a00  add     x8, x8, #0xaf0                           ; @"^tagmanager.c.\S+:\/\/preview\/p\?id=\S+&gtm_preview=$"
  100154a04  str     x8, [sp]
  100154a08  adrp    x2, #0x1003c7000
  100154a0c  add     x2, x2, #0xb30                           ; @"SELF MATCHES %@"
  100154a10  mov     x1, x22
  100154a14  bl      _objc_msgSend                            ; [NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^tagmanager.c.\S+:\/\/preview\/p\?id=\S+&gtm_preview=$"]
  100154a18  mov     x29, x29
  100154a1c  bl      _objc_retainAutoreleasedReturnValue
  100154a20  mov     x28, x0
  100154a24  mov     x0, x19
  100154a28  mov     x1, x23
  100154a2c  bl      _objc_msgSend                            ; [arg1 absoluteString]
  100154a30  mov     x29, x29
  100154a34  bl      _objc_retainAutoreleasedReturnValue
  100154a38  mov     x23, x0
  100154a3c  adrp    x8, #0x10041d000
  100154a40  nop
  100154a44  ldr     x22, [x8, #0x1a8]
  100154a48  mov     x0, x27
  100154a4c  mov     x1, x22
  100154a50  mov     x2, x23
  100154a54  bl      _objc_msgSend                            ; [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^tagmanager.c.\S+:\/\/preview\/p\?id=\S+&gtm_auth=\S+&gtm_preview=\d+$"] evaluateWithObject:[arg1 absoluteString]]
  100154a58  cbz     w0, loc_100154b48                        ; if ([[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^tagmanager.c.\S+:\/\/preview\/p\?id=\S+&gtm_auth=\S+&gtm_preview=\d+$"] evaluateWithObject:[arg1 absoluteString]] == 0)
  100154a5c  adrp    x8, #0x10041d000
  100154a60  nop
  100154a64  ldr     x1, [x8, #0x1b0]
  100154a68  mov     x2, #1
  100154a6c  mov     x0, x24
  100154a70  bl      _objc_msgSend                            ; [self setPreviewMode:1]
  100154a74  adrp    x8, #0x10041c000
  100154a78  nop
  100154a7c  ldr     x1, [x8, #0x138]
  100154a80  mov     x0, x19
  100154a84  bl      _objc_msgSend                            ; [arg1 query]
  100154a88  mov     x29, x29
  100154a8c  bl      _objc_retainAutoreleasedReturnValue
  100154a90  mov     x26, x0
  100154a94  adrp    x8, #0x10041d000
  100154a98  nop
  100154a9c  ldr     x1, [x8, #0x1d0]
  100154aa0  mov     x0, x24
  100154aa4  bl      _objc_msgSend                            ; [self previewMode]
  100154aa8  cmp     x0, #1
  100154aac  b.ne    loc_100154af0                            ; if ([self previewMode] != 1)
  100154ab0  adrp    x0, #0x1003c7000
  100154ab4  add     x0, x0, #0xab0                           ; @"/r?"
  100154ab8  mov     x1, x25
  100154abc  mov     x2, x26
  100154ac0  bl      _objc_msgSend                            ; [@"/r?" stringByAppendingString:[arg1 query]]
  100154ac4  mov     x29, x29
  100154ac8  bl      _objc_retainAutoreleasedReturnValue
  100154acc  mov     x22, x0
  100154ad0  adrp    x8, #0x10041d000
  100154ad4  nop
  100154ad8  ldr     x1, [x8, #0x1c8]
  100154adc  mov     x0, x24
  100154ae0  mov     x2, x22
  100154ae4  bl      _objc_msgSend                            ; [self setCtfeUrlPath:[@"/r?" stringByAppendingString:[arg1 query]]]
  100154ae8  mov     x0, x22
  100154aec  bl      _objc_release
loc_100154af0:
  100154af0  adrp    x8, #0x10041d000
  100154af4  nop
  100154af8  ldr     x1, [x8, #0x1b8]
  100154afc  mov     x0, x24
  100154b00  mov     x2, x26
  100154b04  bl      _objc_msgSend                            ; [self containerIdForQuery:[arg1 query]]
  100154b08  mov     x29, x29
  100154b0c  bl      _objc_retainAutoreleasedReturnValue
  100154b10  mov     x22, x0
  100154b14  adrp    x8, #0x10041d000
  100154b18  nop
  100154b1c  ldr     x1, [x8, #0x1d8]
  100154b20  mov     x0, x24
  100154b24  mov     x2, x22
  100154b28  bl      _objc_msgSend                            ; [self setContainerId:[self containerIdForQuery:[arg1 query]]]
  100154b2c  mov     x0, x22
  100154b30  bl      _objc_release
  100154b34  mov     x0, x26
  100154b38  bl      _objc_release
  100154b3c  b       loc_100154c30
loc_100154b40:
  100154b40  mov     w24, #0
  100154b44  b       loc_100154c98
loc_100154b48:
  100154b48  mov     x0, x28
  100154b4c  mov     x1, x22
  100154b50  mov     x2, x23
  100154b54  bl      _objc_msgSend                            ; [[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^tagmanager.c.\S+:\/\/preview\/p\?id=\S+&gtm_preview=$"] evaluateWithObject:[arg1 absoluteString]]
  100154b58  cbz     w0, loc_100154c38                        ; if ([[NSPredicate predicateWithFormat:@"SELF MATCHES %@", @"^tagmanager.c.\S+:\/\/preview\/p\?id=\S+&gtm_preview=$"] evaluateWithObject:[arg1 absoluteString]] == 0)
  100154b5c  adrp    x8, #0x10041c000
  100154b60  nop
  100154b64  ldr     x1, [x8, #0x138]
  100154b68  mov     x0, x19
  100154b6c  bl      _objc_msgSend                            ; [arg1 query]
  100154b70  stp     x28, x27, [sp, #8]
  100154b74  mov     x29, x29
  100154b78  bl      _objc_retainAutoreleasedReturnValue
  100154b7c  mov     x27, x0
  100154b80  adrp    x8, #0x10041d000
  100154b84  nop
  100154b88  ldr     x1, [x8, #0x1b8]
  100154b8c  mov     x0, x24
  100154b90  mov     x2, x27
  100154b94  bl      _objc_msgSend                            ; [self containerIdForQuery:[arg1 query]]
  100154b98  mov     x29, x29
  100154b9c  bl      _objc_retainAutoreleasedReturnValue
  100154ba0  mov     x28, x0
  100154ba4  adrp    x8, #0x10041d000
  100154ba8  nop
  100154bac  ldr     x1, [x8, #0x1c0]
  100154bb0  mov     x0, x24
  100154bb4  bl      _objc_msgSend                            ; [self containerId]
  100154bb8  mov     x29, x29
  100154bbc  bl      _objc_retainAutoreleasedReturnValue
  100154bc0  mov     x22, x0
  100154bc4  adrp    x8, #0x100416000
  100154bc8  nop
  100154bcc  ldr     x1, [x8, #0xf58]
  100154bd0  mov     x0, x28
  100154bd4  mov     x2, x22
  100154bd8  bl      _objc_msgSend                            ; [[self containerIdForQuery:[arg1 query]] isEqualToString:[self containerId]]
  100154bdc  mov     x21, x0
  100154be0  mov     x0, x22
  100154be4  bl      _objc_release
  100154be8  mov     x0, x28
  100154bec  bl      _objc_release
  100154bf0  mov     x0, x27
  100154bf4  bl      _objc_release
  100154bf8  ldp     x28, x27, [sp, #8]
  100154bfc  cbz     w21, loc_100154c38                       ; if ([[self containerIdForQuery:[arg1 query]] isEqualToString:[self containerId]] == 0)
  100154c00  adrp    x8, #0x10041d000
  100154c04  nop
  100154c08  ldr     x1, [x8, #0x1b0]
  100154c0c  mov     x2, #0
  100154c10  mov     x0, x24
  100154c14  bl      _objc_msgSend                            ; [self setPreviewMode:0]
  100154c18  adrp    x8, #0x10041d000
  100154c1c  nop
  100154c20  ldr     x1, [x8, #0x1c8]
  100154c24  mov     x2, #0
  100154c28  mov     x0, x24
  100154c2c  bl      _objc_msgSend                            ; [self setCtfeUrlPath:0]
loc_100154c30:
  100154c30  mov     w24, #1
  100154c34  b       loc_100154c78
loc_100154c38:
  100154c38  ldr     x24, [x20, #0x538]                       ; class TAGLog
  100154c3c  adrp    x0, #0x1003c7000
  100154c40  add     x0, x0, #0xb50                           ; @"Not a tag manager "
  100154c44  mov     x1, x25
  100154c48  ldr     x2, [sp, #0x18]
  100154c4c  bl      _objc_msgSend                            ; [@"Not a tag manager " stringByAppendingString:[@"Preview Url = " stringByAppendingString:[arg1 absoluteString]]]
  100154c50  mov     x29, x29
  100154c54  bl      _objc_retainAutoreleasedReturnValue
  100154c58  mov     x22, x0
  100154c5c  mov     x0, x24
  100154c60  mov     x1, x26
  100154c64  mov     x2, x22
  100154c68  bl      _objc_msgSend                            ; [TAGLog info:[@"Not a tag manager " stringByAppendingString:[@"Preview Url = " stringByAppendingString:[arg1 absoluteString]]]]
  100154c6c  mov     x0, x22
  100154c70  bl      _objc_release
  100154c74  mov     w24, #0
loc_100154c78:
  100154c78  mov     x0, x23
  100154c7c  bl      _objc_release
  100154c80  mov     x0, x28
  100154c84  bl      _objc_release
  100154c88  mov     x0, x27
  100154c8c  bl      _objc_release
  100154c90  ldr     x0, [sp, #0x18]
  100154c94  bl      _objc_release
loc_100154c98:
  100154c98  mov     x0, x19
  100154c9c  bl      _objc_release
  100154ca0  mov     x0, x24
  100154ca4  sub     sp, x29, #0x50
  100154ca8  ldp     x28, x27, [sp], #0x10
  100154cac  ldp     x26, x25, [sp], #0x10
  100154cb0  ldp     x24, x23, [sp], #0x10
  100154cb4  ldp     x22, x21, [sp], #0x10
  100154cb8  ldp     x20, x19, [sp], #0x10
  100154cbc  ldp     x29, x30, [sp], #0x10
  100154cc0  ret
  100154cc4  mov     x24, x0
  100154cc8  b       loc_100154d94
  100154ccc  mov     x24, x0
  100154cd0  mov     x0, x21
  100154cd4  bl      _objc_release
  100154cd8  b       loc_100154d94
  100154cdc  mov     x24, x0
  100154ce0  b       loc_100154d8c
  100154ce4  str     x27, [sp, #0x10]
  100154ce8  mov     x24, x0
  100154cec  b       loc_100154d84
  100154cf0  stp     x28, x27, [sp, #8]
  100154cf4  mov     x24, x0
  100154cf8  b       loc_100154d7c
  100154cfc  b       loc_100154d0c
  100154d00  stp     x28, x27, [sp, #8]
  100154d04  mov     x24, x0
  100154d08  b       loc_100154d1c
loc_100154d0c:
  100154d0c  stp     x28, x27, [sp, #8]
  100154d10  mov     x24, x0
  100154d14  mov     x0, x22
  100154d18  bl      _objc_release
loc_100154d1c:
  100154d1c  mov     x0, x26
  100154d20  bl      _objc_release
  100154d24  b       loc_100154d74
  100154d28  mov     x24, x0
  100154d2c  b       loc_100154d4c
  100154d30  mov     x24, x0
  100154d34  b       loc_100154d44
  100154d38  mov     x24, x0
  100154d3c  mov     x0, x22
  100154d40  bl      _objc_release
loc_100154d44:
  100154d44  mov     x0, x28
  100154d48  bl      _objc_release
loc_100154d4c:
  100154d4c  mov     x0, x27
  100154d50  bl      _objc_release
  100154d54  b       loc_100154d74
  100154d58  stp     x28, x27, [sp, #8]
  100154d5c  mov     x24, x0
  100154d60  b       loc_100154d74
  100154d64  stp     x28, x27, [sp, #8]
  100154d68  mov     x24, x0
  100154d6c  mov     x0, x22
  100154d70  bl      _objc_release
loc_100154d74:
  100154d74  mov     x0, x23
  100154d78  bl      _objc_release
loc_100154d7c:
  100154d7c  ldr     x0, [sp, #8]
  100154d80  bl      _objc_release
loc_100154d84:
  100154d84  ldr     x0, [sp, #0x10]
  100154d88  bl      _objc_release
loc_100154d8c:
  100154d8c  ldr     x0, [sp, #0x18]
  100154d90  bl      _objc_release
loc_100154d94:
  100154d94  mov     x0, x19
  100154d98  bl      _objc_release
  100154d9c  mov     x0, x24
  100154da0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGPreviewManager isPreviewingContainer:]
; address 0x100154da4  size 196  kind objc
; ======================================================================
  100154da4  stp     x29, x30, [sp, #-0x10]!
  100154da8  mov     x29, sp
  100154dac  stp     x20, x19, [sp, #-0x10]!
  100154db0  stp     x22, x21, [sp, #-0x10]!
  100154db4  mov     x20, x0
  100154db8  mov     x0, x2
  100154dbc  bl      _objc_retain
  100154dc0  mov     x19, x0
  100154dc4  adrp    x8, #0x10041d000
  100154dc8  nop
  100154dcc  ldr     x1, [x8, #0x1d0]
  100154dd0  mov     x0, x20
  100154dd4  bl      _objc_msgSend                            ; [self previewMode]
  100154dd8  cmp     x0, #1
  100154ddc  b.ne    loc_100154e24                            ; if ([self previewMode] != 1)
  100154de0  adrp    x8, #0x10041d000
  100154de4  nop
  100154de8  ldr     x1, [x8, #0x1c0]
  100154dec  mov     x0, x20
  100154df0  bl      _objc_msgSend                            ; [self containerId]
  100154df4  mov     x29, x29
  100154df8  bl      _objc_retainAutoreleasedReturnValue
  100154dfc  mov     x20, x0
  100154e00  adrp    x8, #0x100416000
  100154e04  nop
  100154e08  ldr     x1, [x8, #0xf58]
  100154e0c  mov     x2, x19
  100154e10  bl      _objc_msgSend                            ; [[self containerId] isEqualToString:arg1]
  100154e14  mov     x21, x0
  100154e18  mov     x0, x20
  100154e1c  bl      _objc_release
  100154e20  b       loc_100154e28
loc_100154e24:
  100154e24  mov     w21, #0
loc_100154e28:
  100154e28  mov     x0, x19
  100154e2c  bl      _objc_release
  100154e30  mov     x0, x21
  100154e34  ldp     x22, x21, [sp], #0x10
  100154e38  ldp     x20, x19, [sp], #0x10
  100154e3c  ldp     x29, x30, [sp], #0x10
  100154e40  ret
  100154e44  mov     x21, x0
  100154e48  b       loc_100154e58
  100154e4c  mov     x21, x0
  100154e50  mov     x0, x20
  100154e54  bl      _objc_release
loc_100154e58:
  100154e58  mov     x0, x19
  100154e5c  bl      _objc_release
  100154e60  mov     x0, x21
  100154e64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGPreviewManager clear]
; address 0x100154e68  size 92  kind objc
; ======================================================================
  100154e68  stp     x29, x30, [sp, #-0x10]!
  100154e6c  mov     x29, sp
  100154e70  stp     x20, x19, [sp, #-0x10]!
  100154e74  mov     x19, x0
  100154e78  adrp    x8, #0x10041d000
  100154e7c  nop
  100154e80  ldr     x1, [x8, #0x1b0]
  100154e84  mov     x2, #0
  100154e88  bl      _objc_msgSend                            ; [self setPreviewMode:0]
  100154e8c  adrp    x8, #0x10041d000
  100154e90  nop
  100154e94  ldr     x1, [x8, #0x1c8]
  100154e98  mov     x2, #0
  100154e9c  mov     x0, x19
  100154ea0  bl      _objc_msgSend                            ; [self setCtfeUrlPath:0]
  100154ea4  mov     x2, #0
  100154ea8  adrp    x8, #0x10041d000
  100154eac  nop
  100154eb0  ldr     x1, [x8, #0x1d8]
  100154eb4  mov     x0, x19
  100154eb8  ldp     x20, x19, [sp], #0x10
  100154ebc  ldp     x29, x30, [sp], #0x10
  100154ec0  b       _objc_msgSend                            ; [self setContainerId:0]

; ======================================================================
; -[TAGPreviewManager containerIdForQuery:]
; address 0x100154ec4  size 256  kind objc
; ======================================================================
  100154ec4  stp     x29, x30, [sp, #-0x10]!
  100154ec8  mov     x29, sp
  100154ecc  stp     x20, x19, [sp, #-0x10]!
  100154ed0  stp     x22, x21, [sp, #-0x10]!
  100154ed4  adrp    x8, #0x100419000
  100154ed8  nop
  100154edc  ldr     x21, [x8, #0x188]
  100154ee0  adrp    x8, #0x1003c4000
  100154ee4  add     x8, x8, #0xb10                           ; @"&"
  100154ee8  mov     x0, x2
  100154eec  mov     x1, x21
  100154ef0  mov     x2, x8
  100154ef4  bl      _objc_msgSend                            ; [arg1 componentsSeparatedByString:@"&"]
  100154ef8  mov     x29, x29
  100154efc  bl      _objc_retainAutoreleasedReturnValue
  100154f00  mov     x19, x0
  100154f04  adrp    x8, #0x10041b000
  100154f08  nop
  100154f0c  ldr     x22, [x8, #0xf28]
  100154f10  mov     x2, #0
  100154f14  mov     x1, x22
  100154f18  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@"&"] objectAtIndexedSubscript:0]
  100154f1c  mov     x29, x29
  100154f20  bl      _objc_retainAutoreleasedReturnValue
  100154f24  mov     x20, x0
  100154f28  adrp    x2, #0x1003c5000
  100154f2c  add     x2, x2, #0x2b0                           ; @"="
  100154f30  mov     x1, x21
  100154f34  bl      _objc_msgSend                            ; [[[arg1 componentsSeparatedByString:@"&"] objectAtIndexedSubscript:0] componentsSeparatedByString:@"="]
  100154f38  mov     x29, x29
  100154f3c  bl      _objc_retainAutoreleasedReturnValue
  100154f40  mov     x21, x0
  100154f44  mov     x2, #1
  100154f48  mov     x1, x22
  100154f4c  bl      _objc_msgSend                            ; [[[[arg1 componentsSeparatedByString:@"&"] objectAtIndexedSubscript:0] componentsSeparatedByString:@"="] objectAtIndexedSubscript:1]
  100154f50  mov     x29, x29
  100154f54  bl      _objc_retainAutoreleasedReturnValue
  100154f58  mov     x22, x0
  100154f5c  mov     x0, x21
  100154f60  bl      _objc_release
  100154f64  mov     x0, x20
  100154f68  bl      _objc_release
  100154f6c  mov     x0, x19
  100154f70  bl      _objc_release
  100154f74  mov     x0, x22
  100154f78  ldp     x22, x21, [sp], #0x10
  100154f7c  ldp     x20, x19, [sp], #0x10
  100154f80  ldp     x29, x30, [sp], #0x10
  100154f84  b       _objc_autoreleaseReturnValue
  100154f88  mov     x22, x0
  100154f8c  b       loc_100154fbc
  100154f90  mov     x22, x0
  100154f94  b       loc_100154fb4
  100154f98  mov     x22, x0
  100154f9c  b       loc_100154fac
  100154fa0  mov     x22, x0
  100154fa4  mov     x0, x21
  100154fa8  bl      _objc_release
loc_100154fac:
  100154fac  mov     x0, x20
  100154fb0  bl      _objc_release
loc_100154fb4:
  100154fb4  mov     x0, x19
  100154fb8  bl      _objc_release
loc_100154fbc:
  100154fbc  mov     x0, x22
  100154fc0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGPreviewManager instance]
; address 0x100154fc4  size 48  kind objc
; ======================================================================
  100154fc4  stp     x29, x30, [sp, #-0x10]!
  100154fc8  mov     x29, sp
  100154fcc  adrp    x8, #0x100416000
  100154fd0  nop
  100154fd4  ldr     x1, [x8, #0xac8]
  100154fd8  bl      _objc_msgSend                            ; [TAGPreviewManager alloc]
  100154fdc  adrp    x8, #0x100416000
  100154fe0  nop
  100154fe4  ldr     x1, [x8, #0xab8]
  100154fe8  bl      _objc_msgSend                            ; [[TAGPreviewManager alloc] init]
  100154fec  ldp     x29, x30, [sp], #0x10
  100154ff0  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[TAGPreviewManager previewMode]
; address 0x100154ff4  size 16  kind objc
; ======================================================================
  100154ff4  adrp    x8, #0x100420000
  100154ff8  ldrsw   x8, [x8, #0xa9c]                         ; ivar offset TAGPreviewManager._previewMode (+0x8)
  100154ffc  ldr     x0, [x0, x8]                             ; x0 = self->_previewMode
  100155000  ret

; ======================================================================
; -[TAGPreviewManager setPreviewMode:]
; address 0x100155004  size 16  kind objc
; ======================================================================
  100155004  adrp    x8, #0x100420000
  100155008  ldrsw   x8, [x8, #0xa9c]                         ; ivar offset TAGPreviewManager._previewMode (+0x8)
  10015500c  str     x2, [x0, x8]                             ; self->_previewMode = arg1
  100155010  ret

; ======================================================================
; -[TAGPreviewManager ctfeUrlPath]
; address 0x100155014  size 16  kind objc
; ======================================================================
  100155014  adrp    x8, #0x100420000
  100155018  ldrsw   x2, [x8, #0xaa0]                         ; ivar offset TAGPreviewManager._ctfeUrlPath (+0x10)
  10015501c  mov     w3, #1
  100155020  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGPreviewManager setCtfeUrlPath:]
; address 0x100155024  size 12  kind objc
; ======================================================================
  100155024  adrp    x8, #0x100420000
  100155028  ldrsw   x3, [x8, #0xaa0]                         ; ivar offset TAGPreviewManager._ctfeUrlPath (+0x10)
  10015502c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGPreviewManager containerId]
; address 0x100155030  size 16  kind objc
; ======================================================================
  100155030  adrp    x8, #0x100420000
  100155034  ldrsw   x2, [x8, #0xaa4]                         ; ivar offset TAGPreviewManager._containerId (+0x18)
  100155038  mov     w3, #1
  10015503c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGPreviewManager setContainerId:]
; address 0x100155040  size 12  kind objc
; ======================================================================
  100155040  adrp    x8, #0x100420000
  100155044  ldrsw   x3, [x8, #0xaa4]                         ; ivar offset TAGPreviewManager._containerId (+0x18)
  100155048  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGPreviewManager .cxx_destruct]
; address 0x10015504c  size 64  kind objc
; ======================================================================
  10015504c  stp     x29, x30, [sp, #-0x10]!
  100155050  mov     x29, sp
  100155054  stp     x20, x19, [sp, #-0x10]!
  100155058  mov     x19, x0
  10015505c  adrp    x8, #0x100420000
  100155060  ldrsw   x8, [x8, #0xaa4]                         ; ivar offset TAGPreviewManager._containerId (+0x18)
  100155064  add     x0, x19, x8
  100155068  mov     x1, #0
  10015506c  bl      _objc_storeStrong
  100155070  mov     x1, #0
  100155074  adrp    x8, #0x100420000
  100155078  ldrsw   x8, [x8, #0xaa0]                         ; ivar offset TAGPreviewManager._ctfeUrlPath (+0x10)
  10015507c  add     x0, x19, x8
  100155080  ldp     x20, x19, [sp], #0x10
  100155084  ldp     x29, x30, [sp], #0x10
  100155088  b       _objc_storeStrong
