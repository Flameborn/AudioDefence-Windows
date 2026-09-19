// unit TAGResourceStorageImpl — 26 functions
//   0x100156c1c     164  -[TAGResourceStorageImpl initWithContainerId:]
//   0x100156cc0     220  -[TAGResourceStorageImpl loadResourceFromDiskInBackground]
//   0x100156d9c      20  -[TAGResourceStorageImpl loadResourceFromDiskInBackground]_block_invoke
//   0x100156db0       8  sub_100156db0
//   0x100156db8       8  sub_100156db8
//   0x100156dc0     312  -[TAGResourceStorageImpl loadResourceFromDiskInBackground]_block_invoke_2
//   0x100156ef8       8  sub_100156ef8
//   0x100156f00       8  sub_100156f00
//   0x100156f08    1100  -[TAGResourceStorageImpl loadResourceFromDisk]
//   0x100157354      36  -[TAGResourceStorageImpl saveResourceToDiskInBackground:]
//   0x100157378     272  -[TAGResourceStorageImpl saveResourceToDiskInBackground:resultBlock:]
//   0x100157488      64  -[TAGResourceStorageImpl saveResourceToDiskInBackground:resultBlock:]_block_invoke
//   0x1001574c8      40  sub_1001574c8
//   0x1001574f0      40  sub_1001574f0
//   0x100157518     980  -[TAGResourceStorageImpl loadResourceFromContainerFile:]
//   0x1001578ec     876  -[TAGResourceStorageImpl loadExpandedResourceFromJsonFile:]
//   0x100157c58     724  -[TAGResourceStorageImpl loadExpandedResourceFromPlistFile:]
//   0x100157f2c     528  -[TAGResourceStorageImpl saveResourceToDisk:]
//   0x10015813c     252  -[TAGResourceStorageImpl resourceFilename]
//   0x100158238     764  -[TAGResourceStorageImpl dataPath]
//   0x100158534      24  -[TAGResourceStorageImpl mainBundle]
//   0x10015854c      16  -[TAGResourceStorageImpl loadCallback]
//   0x10015855c      20  -[TAGResourceStorageImpl setLoadCallback:]
//   0x100158570      16  -[TAGResourceStorageImpl containerId]
//   0x100158580      56  -[TAGResourceStorageImpl setContainerId:]
//   0x1001585b8      64  -[TAGResourceStorageImpl .cxx_destruct]

; ======================================================================
; -[TAGResourceStorageImpl initWithContainerId:]
; address 0x100156c1c  size 164  kind objc
; ======================================================================
  100156c1c  stp     x29, x30, [sp, #-0x10]!
  100156c20  mov     x29, sp
  100156c24  stp     x20, x19, [sp, #-0x10]!
  100156c28  stp     x22, x21, [sp, #-0x10]!
  100156c2c  sub     sp, sp, #0x10
  100156c30  mov     x20, x0
  100156c34  mov     x0, x2
  100156c38  bl      _objc_retain
  100156c3c  mov     x19, x0
  100156c40  str     x20, [sp]
  100156c44  adrp    x8, #0x10041f000
  100156c48  ldr     x8, [x8, #0x260]
  100156c4c  str     x8, [sp, #8]
  100156c50  adrp    x8, #0x100416000
  100156c54  nop
  100156c58  ldr     x1, [x8, #0xab8]
  100156c5c  mov     x0, sp
  100156c60  bl      _objc_msgSendSuper2                      ; [super init]
  100156c64  mov     x20, x0
  100156c68  cbz     x20, loc_100156c8c                       ; if (self == 0)
  100156c6c  adrp    x8, #0x100420000
  100156c70  ldrsw   x21, [x8, #0xae4]                        ; ivar offset TAGResourceStorageImpl._containerId (+0x10)
  100156c74  mov     x0, x19
  100156c78  bl      _objc_retain
  100156c7c  ldr     x8, [x20, x21]                           ; x8 = self->_containerId
  100156c80  str     x0, [x20, x21]                           ; self->_containerId = arg1
  100156c84  mov     x0, x8
  100156c88  bl      _objc_release
loc_100156c8c:
  100156c8c  mov     x0, x19
  100156c90  bl      _objc_release
  100156c94  mov     x0, x20
  100156c98  sub     sp, x29, #0x20
  100156c9c  ldp     x22, x21, [sp], #0x10
  100156ca0  ldp     x20, x19, [sp], #0x10
  100156ca4  ldp     x29, x30, [sp], #0x10
  100156ca8  ret
  100156cac  mov     x20, x0
  100156cb0  mov     x0, x19
  100156cb4  bl      _objc_release
  100156cb8  mov     x0, x20
  100156cbc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceStorageImpl loadResourceFromDiskInBackground]
; address 0x100156cc0  size 220  kind objc
; ======================================================================
  100156cc0  stp     x29, x30, [sp, #-0x10]!
  100156cc4  mov     x29, sp
  100156cc8  stp     x20, x19, [sp, #-0x10]!
  100156ccc  stp     x22, x21, [sp, #-0x10]!
  100156cd0  sub     sp, sp, #0x50
  100156cd4  adrp    x20, #0x1003b0000
  100156cd8  ldr     x20, [x20, #0x118]                       ; __NSConcreteStackBlock
  100156cdc  adrp    x8, #0x10041e000
  100156ce0  ldr     x19, [x8, #0x910]                        ; class TAGAsyncUtil
  100156ce4  mov     w21, #-0x3e000000
  100156ce8  str     x20, [sp, #0x28]
  100156cec  stp     w21, wzr, [sp, #0x30]
  100156cf0  adr     x8, #0x100156d9c                         ; &-[TAGResourceStorageImpl loadResourceFromDiskInBackground]_block_invoke
  100156cf4  nop
  100156cf8  str     x8, [sp, #0x38]
  100156cfc  adrp    x8, #0x1003b9000
  100156d00  add     x8, x8, #0x690                           ; &d_1003b9690
  100156d04  str     x8, [sp, #0x40]
  100156d08  bl      _objc_retain
  100156d0c  str     x0, [sp, #0x48]
  100156d10  str     x20, [sp]
  100156d14  stp     w21, wzr, [sp, #8]
  100156d18  adr     x8, #0x100156dc0                         ; &-[TAGResourceStorageImpl loadResourceFromDiskInBackground]_block_invoke_2
  100156d1c  nop
  100156d20  str     x8, [sp, #0x10]
  100156d24  adrp    x8, #0x1003b9000
  100156d28  add     x8, x8, #0x6c0                           ; &d_1003b96c0
  100156d2c  str     x8, [sp, #0x18]
  100156d30  bl      _objc_retain
  100156d34  str     x0, [sp, #0x20]
  100156d38  adrp    x8, #0x10041d000
  100156d3c  nop
  100156d40  ldr     x1, [x8, #0x270]
  100156d44  add     x2, sp, #0x28
  100156d48  mov     x3, sp
  100156d4c  mov     x0, x19
  100156d50  bl      _objc_msgSend                            ; [TAGAsyncUtil invokeAsync:^{-[TAGResourceStorageImpl loadResourceFromDiskInBackground]_block_invoke captures +0x20=self} resultBlock:^{-[TAGResourceStorageImpl loadResourceFromDiskInBackground]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[TAGResourceStorageImpl loadResourceFr…, +0x40=&d_1003b9690, +0x48=self}]
  100156d54  ldr     x0, [sp, #0x20]
  100156d58  bl      _objc_release
  100156d5c  ldr     x0, [sp, #0x48]
  100156d60  bl      _objc_release
  100156d64  sub     sp, x29, #0x20
  100156d68  ldp     x22, x21, [sp], #0x10
  100156d6c  ldp     x20, x19, [sp], #0x10
  100156d70  ldp     x29, x30, [sp], #0x10
  100156d74  ret
  100156d78  mov     x19, x0
  100156d7c  ldr     x8, [sp, #0x20]
  100156d80  mov     x0, x8
  100156d84  bl      _objc_release
  100156d88  ldr     x8, [sp, #0x48]
  100156d8c  mov     x0, x8
  100156d90  bl      _objc_release
  100156d94  mov     x0, x19
  100156d98  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceStorageImpl loadResourceFromDiskInBackground]_block_invoke
; address 0x100156d9c  size 20  kind block
; ======================================================================
  100156d9c  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  100156da0  adrp    x8, #0x10041d000
  100156da4  nop
  100156da8  ldr     x1, [x8, #0x260]
  100156dac  b       _objc_msgSend                            ; [self loadResourceFromDisk]

; ======================================================================
; sub_100156db0
; address 0x100156db0  size 8  kind sub
; ======================================================================
  100156db0  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100156db4  b       _objc_retain

; ======================================================================
; sub_100156db8
; address 0x100156db8  size 8  kind sub
; ======================================================================
  100156db8  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100156dbc  b       _objc_release

; ======================================================================
; -[TAGResourceStorageImpl loadResourceFromDiskInBackground]_block_invoke_2
; address 0x100156dc0  size 312  kind block
; ======================================================================
  100156dc0  stp     x29, x30, [sp, #-0x10]!
  100156dc4  mov     x29, sp
  100156dc8  stp     x20, x19, [sp, #-0x10]!
  100156dcc  stp     x22, x21, [sp, #-0x10]!
  100156dd0  mov     x20, x0
  100156dd4  mov     x0, x1
  100156dd8  bl      _objc_retain
  100156ddc  mov     x19, x0
  100156de0  adrp    x8, #0x100417000
  100156de4  nop
  100156de8  ldr     x21, [x8, #0x9a8]
  100156dec  mov     x1, x21
  100156df0  bl      _objc_msgSend                            ; [blockarg1 type]
  100156df4  mov     x29, x29
  100156df8  bl      _objc_retainAutoreleasedReturnValue
  100156dfc  mov     x22, x0
  100156e00  bl      _objc_release
  100156e04  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  100156e08  adrp    x8, #0x10041d000
  100156e0c  add     x8, x8, #0x240                           ; &@selector(loadCallback)
  100156e10  ldr     x1, [x8]
  100156e14  cbz     x22, loc_100156e64                       ; if ([blockarg1 type] == 0)
  100156e18  bl      _objc_msgSend                            ; [self loadCallback]
  100156e1c  mov     x29, x29
  100156e20  bl      _objc_retainAutoreleasedReturnValue
  100156e24  mov     x20, x0
  100156e28  mov     x0, x19
  100156e2c  mov     x1, x21
  100156e30  bl      _objc_msgSend                            ; [blockarg1 type]
  100156e34  mov     x29, x29
  100156e38  bl      _objc_retainAutoreleasedReturnValue
  100156e3c  mov     x21, x0
  100156e40  adrp    x8, #0x10041d000
  100156e44  nop
  100156e48  ldr     x1, [x8, #0x210]
  100156e4c  mov     x0, x20
  100156e50  mov     x2, x21
  100156e54  bl      _objc_msgSend                            ; [[self loadCallback] onSuccess:[blockarg1 type]]
  100156e58  mov     x0, x21
  100156e5c  bl      _objc_release
  100156e60  b       loc_100156ea0
loc_100156e64:
  100156e64  bl      _objc_msgSend                            ; [self loadCallback]
  100156e68  mov     x29, x29
  100156e6c  bl      _objc_retainAutoreleasedReturnValue
  100156e70  mov     x20, x0
  100156e74  adrp    x8, #0x10041d000
  100156e78  nop
  100156e7c  ldr     x1, [x8, #0x268]
  100156e80  mov     x0, x19
  100156e84  bl      _objc_msgSend                            ; [blockarg1 failure]
  100156e88  mov     x2, x0
  100156e8c  adrp    x8, #0x10041c000
  100156e90  nop
  100156e94  ldr     x1, [x8, #0xed0]
  100156e98  mov     x0, x20
  100156e9c  bl      _objc_msgSend                            ; [[self loadCallback] onFailure:[blockarg1 failure]]
loc_100156ea0:
  100156ea0  mov     x0, x20
  100156ea4  bl      _objc_release
  100156ea8  mov     x0, x19
  100156eac  ldp     x22, x21, [sp], #0x10
  100156eb0  ldp     x20, x19, [sp], #0x10
  100156eb4  ldp     x29, x30, [sp], #0x10
  100156eb8  b       _objc_release
  100156ebc  mov     x22, x0
  100156ec0  b       loc_100156ee0
  100156ec4  mov     x22, x0
  100156ec8  mov     x0, x21
  100156ecc  bl      _objc_release
  100156ed0  b       loc_100156ee0
  100156ed4  mov     x22, x0
  100156ed8  b       loc_100156ee8
  100156edc  mov     x22, x0
loc_100156ee0:
  100156ee0  mov     x0, x20
  100156ee4  bl      _objc_release
loc_100156ee8:
  100156ee8  mov     x0, x19
  100156eec  bl      _objc_release
  100156ef0  mov     x0, x22
  100156ef4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100156ef8
; address 0x100156ef8  size 8  kind sub
; ======================================================================
  100156ef8  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100156efc  b       _objc_retain

; ======================================================================
; sub_100156f00
; address 0x100156f00  size 8  kind sub
; ======================================================================
  100156f00  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100156f04  b       _objc_release

; ======================================================================
; -[TAGResourceStorageImpl loadResourceFromDisk]
; address 0x100156f08  size 1100  kind objc
; ======================================================================
  100156f08  stp     x29, x30, [sp, #-0x10]!
  100156f0c  mov     x29, sp
  100156f10  stp     x20, x19, [sp, #-0x10]!
  100156f14  stp     x22, x21, [sp, #-0x10]!
  100156f18  stp     x24, x23, [sp, #-0x10]!
  100156f1c  stp     x26, x25, [sp, #-0x10]!
  100156f20  mov     x20, x0
  100156f24  adrp    x8, #0x10041d000
  100156f28  nop
  100156f2c  ldr     x1, [x8, #0x240]
  100156f30  bl      _objc_msgSend                            ; [self loadCallback]
  100156f34  mov     x29, x29
  100156f38  bl      _objc_retainAutoreleasedReturnValue
  100156f3c  mov     x19, x0
  100156f40  adrp    x8, #0x10041d000
  100156f44  nop
  100156f48  ldr     x1, [x8, #0x218]
  100156f4c  bl      _objc_msgSend                            ; [[self loadCallback] startLoad]
  100156f50  mov     x0, x19
  100156f54  bl      _objc_release
  100156f58  adrp    x8, #0x10041e000
  100156f5c  ldr     x0, [x8, #0x8f8]                         ; class TAGPreviewManager
  100156f60  adrp    x8, #0x10041b000
  100156f64  nop
  100156f68  ldr     x1, [x8, #0xd30]
  100156f6c  bl      _objc_msgSend                            ; [TAGPreviewManager instance]
  100156f70  mov     x29, x29
  100156f74  bl      _objc_retainAutoreleasedReturnValue
  100156f78  mov     x19, x0
  100156f7c  adrp    x8, #0x10041d000
  100156f80  nop
  100156f84  ldr     x1, [x8, #0x1c0]
  100156f88  mov     x0, x20
  100156f8c  bl      _objc_msgSend                            ; [self containerId]
  100156f90  mov     x29, x29
  100156f94  bl      _objc_retainAutoreleasedReturnValue
  100156f98  mov     x21, x0
  100156f9c  adrp    x8, #0x10041c000
  100156fa0  nop
  100156fa4  ldr     x1, [x8, #0xee0]
  100156fa8  mov     x0, x19
  100156fac  mov     x2, x21
  100156fb0  bl      _objc_msgSend                            ; [[TAGPreviewManager instance] isPreviewingContainer:[self containerId]]
  100156fb4  mov     x22, x0
  100156fb8  mov     x0, x21
  100156fbc  bl      _objc_release
  100156fc0  cbz     w22, loc_100156ff8                       ; if ([[TAGPreviewManager instance] isPreviewingContainer:[self containerId]] == 0)
  100156fc4  adrp    x8, #0x10041e000
  100156fc8  ldr     x0, [x8, #0x918]                         ; class TAGTypeOrFailure
  100156fcc  adrp    x8, #0x100416000
  100156fd0  nop
  100156fd4  ldr     x1, [x8, #0xac8]
  100156fd8  bl      _objc_msgSend                            ; [TAGTypeOrFailure alloc]
  100156fdc  adrp    x8, #0x10041d000
  100156fe0  nop
  100156fe4  ldr     x1, [x8, #0x278]
  100156fe8  mov     x2, #1
  100156fec  bl      _objc_msgSend                            ; [[TAGTypeOrFailure alloc] initWithFailure:1]
  100156ff0  mov     x25, x0
  100156ff4  b       loc_1001572e0
loc_100156ff8:
  100156ff8  adrp    x8, #0x10041d000
  100156ffc  nop
  100157000  ldr     x1, [x8, #0x280]
  100157004  mov     x0, x20
  100157008  bl      _objc_msgSend                            ; [self resourceFilename]
  10015700c  mov     x29, x29
  100157010  bl      _objc_retainAutoreleasedReturnValue
  100157014  mov     x20, x0
  100157018  adrp    x8, #0x10041e000
  10015701c  ldr     x0, [x8, #0x770]                         ; class NSData
  100157020  adrp    x8, #0x10041d000
  100157024  nop
  100157028  ldr     x1, [x8, #0x288]
  10015702c  mov     x2, x20
  100157030  bl      _objc_msgSend                            ; [NSData dataWithContentsOfFile:[self resourceFilename]]
  100157034  mov     x29, x29
  100157038  bl      _objc_retainAutoreleasedReturnValue
  10015703c  mov     x21, x0
  100157040  cbz     x21, loc_100157128                       ; if ([NSData dataWithContentsOfFile:[self resourceFilename]] == 0)
  100157044  adrp    x8, #0x10041e000
  100157048  ldr     x0, [x8, #0x738]                         ; class TAGPBExtensionRegistry
  10015704c  adrp    x8, #0x100416000
  100157050  nop
  100157054  ldr     x22, [x8, #0xac8]
  100157058  mov     x1, x22
  10015705c  bl      _objc_msgSend                            ; [TAGPBExtensionRegistry alloc]
  100157060  adrp    x8, #0x100416000
  100157064  nop
  100157068  ldr     x1, [x8, #0xab8]
  10015706c  bl      _objc_msgSend                            ; [[TAGPBExtensionRegistry alloc] init]
  100157070  mov     x23, x0
  100157074  adrp    x8, #0x10041e000
  100157078  ldr     x0, [x8, #0x7f0]                         ; class TAGPServingValue
  10015707c  adrp    x8, #0x10041d000
  100157080  nop
  100157084  ldr     x1, [x8, #0x208]
  100157088  bl      _objc_msgSend                            ; [TAGPServingValue ext]
  10015708c  mov     x29, x29
  100157090  bl      _objc_retainAutoreleasedReturnValue
  100157094  mov     x24, x0
  100157098  adrp    x8, #0x10041c000
  10015709c  nop
  1001570a0  ldr     x1, [x8, #0x4b8]
  1001570a4  mov     x0, x23
  1001570a8  mov     x2, x24
  1001570ac  bl      _objc_msgSend                            ; [[[TAGPBExtensionRegistry alloc] init] addExtension:[TAGPServingValue ext]]
  1001570b0  mov     x0, x24
  1001570b4  bl      _objc_release
  1001570b8  adrp    x8, #0x10041e000
  1001570bc  ldr     x0, [x8, #0x850]                         ; class TAGPResourceWithMetadata
  1001570c0  adrp    x8, #0x10041c000
  1001570c4  nop
  1001570c8  ldr     x1, [x8, #0x768]
  1001570cc  mov     x2, x21
  1001570d0  mov     x3, x23
  1001570d4  bl      _objc_msgSend                            ; [TAGPResourceWithMetadata parseFromData:[NSData dataWithContentsOfFile:[self resourceFilename]] extensionRegistry:[[TAGPBExtensionRegistry alloc] init]]
  1001570d8  mov     x29, x29
  1001570dc  bl      _objc_retainAutoreleasedReturnValue
  1001570e0  mov     x24, x0
  1001570e4  adrp    x8, #0x10041c000
  1001570e8  nop
  1001570ec  ldr     x1, [x8, #0x9d0]
  1001570f0  bl      _objc_msgSend                            ; [[TAGPResourceWithMetadata parseFromData:[NSData dataWithContentsOfFile:[self resourceFilename]] extensionRegistry:[[TAGPBExtensionRegistry alloc] init]] isInitialized]
  1001570f4  cbz     w0, loc_10015717c                        ; if ([[TAGPResourceWithMetadata parseFromData:[NSData dataWithContentsOfFile:[self resourceFilename]] extensionRegistry:[[TAGPBExtensionRegistry alloc] init]] isInitialized] == 0)
  1001570f8  adrp    x8, #0x10041e000
  1001570fc  ldr     x0, [x8, #0x918]                         ; class TAGTypeOrFailure
  100157100  mov     x1, x22
  100157104  bl      _objc_msgSend                            ; [TAGTypeOrFailure alloc]
  100157108  adrp    x8, #0x10041a000
  10015710c  nop
  100157110  ldr     x1, [x8, #0x448]
  100157114  mov     x2, x24
  100157118  bl      _objc_msgSend                            ; [[TAGTypeOrFailure alloc] initWithType:[TAGPResourceWithMetadata parseFromData:[NSData dataWithContentsOfFile:[self resourceFilename]] extensionRegistry:[[TAGPBExtensionRegistry alloc] init]]]
  10015711c  mov     x25, x0
  100157120  mov     w26, #0
  100157124  b       loc_1001571a0
loc_100157128:
  100157128  adrp    x8, #0x10041e000
  10015712c  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100157130  adrp    x8, #0x10041d000
  100157134  nop
  100157138  ldr     x1, [x8, #0x248]
  10015713c  adrp    x2, #0x1003c7000
  100157140  add     x2, x2, #0xdf0                           ; @"Resource not on disk"
  100157144  bl      _objc_msgSend                            ; [TAGLog debug:@"Resource not on disk"]
  100157148  adrp    x8, #0x10041e000
  10015714c  ldr     x0, [x8, #0x918]                         ; class TAGTypeOrFailure
  100157150  adrp    x8, #0x100416000
  100157154  nop
  100157158  ldr     x1, [x8, #0xac8]
  10015715c  bl      _objc_msgSend                            ; [TAGTypeOrFailure alloc]
  100157160  adrp    x8, #0x10041d000
  100157164  nop
  100157168  ldr     x1, [x8, #0x278]
  10015716c  mov     x2, #1
  100157170  bl      _objc_msgSend                            ; [[TAGTypeOrFailure alloc] initWithFailure:1]
  100157174  mov     x25, x0
  100157178  b       loc_1001572d0
loc_10015717c:
  10015717c  adrp    x8, #0x10041e000
  100157180  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100157184  adrp    x8, #0x10041b000
  100157188  nop
  10015718c  ldr     x1, [x8, #0xe90]
  100157190  adrp    x2, #0x1003c7000
  100157194  add     x2, x2, #0xe10                           ; @"Resource from disk not initialized."
  100157198  bl      _objc_msgSend                            ; [TAGLog warning:@"Resource from disk not initialized."]
  10015719c  mov     w26, #1
loc_1001571a0:
  1001571a0  mov     x0, x24
  1001571a4  bl      _objc_release
  1001571a8  mov     x0, x23
  1001571ac  bl      _objc_release
  1001571b0  cbz     w26, loc_1001572d0                       ; if (one of {0, 1} == 0)
  1001571b4  b       loc_1001572a8
  1001571b8  b       loc_1001571cc
  1001571bc  mov     x25, x0
  1001571c0  mov     x0, x21
  1001571c4  bl      _objc_release
  1001571c8  b       loc_100157344
loc_1001571cc:
  1001571cc  mov     x25, x0
  1001571d0  b       loc_100157344
  1001571d4  mov     x25, x0
  1001571d8  b       loc_10015733c
  1001571dc  mov     x26, x1
  1001571e0  mov     x25, x0
  1001571e4  b       loc_100157210
  1001571e8  b       loc_1001571f8
  1001571ec  mov     x26, x1
  1001571f0  mov     x25, x0
  1001571f4  b       loc_100157208
loc_1001571f8:
  1001571f8  mov     x26, x1
  1001571fc  mov     x25, x0
  100157200  mov     x0, x24
  100157204  bl      _objc_release
loc_100157208:
  100157208  mov     x0, x23
  10015720c  bl      _objc_release
loc_100157210:
  100157210  cmp     w26, #1
  100157214  b.ne    loc_100157334                            ; if (w26 != 1)
  100157218  mov     x0, x25
  10015721c  bl      _objc_begin_catch                        ; objc_begin_catch()
  100157220  adrp    x8, #0x10041e000
  100157224  ldr     x24, [x8, #0x538]                        ; class TAGLog
  100157228  adrp    x8, #0x100418000
  10015722c  nop
  100157230  ldr     x8, [x8, #0x648]
  100157234  mov     x1, x8
  100157238  bl      _objc_msgSend                            ; [objc_begin_catch() description]
  10015723c  mov     x29, x29
  100157240  bl      _objc_retainAutoreleasedReturnValue
  100157244  mov     x23, x0
  100157248  adrp    x8, #0x10041a000
  10015724c  nop
  100157250  ldr     x8, [x8, #0x620]
  100157254  adrp    x9, #0x1003c7000
  100157258  add     x9, x9, #0xe30                           ; @"Error reading resource from disk"
  10015725c  mov     x0, x9
  100157260  mov     x1, x8
  100157264  mov     x2, x23
  100157268  bl      _objc_msgSend                            ; [@"Error reading resource from disk" stringByAppendingString:[objc_begin_catch() description]]
  10015726c  mov     x29, x29
  100157270  bl      _objc_retainAutoreleasedReturnValue
  100157274  mov     x26, x0
  100157278  adrp    x8, #0x10041b000
  10015727c  nop
  100157280  ldr     x8, [x8, #0xe90]
  100157284  mov     x0, x24
  100157288  mov     x1, x8
  10015728c  mov     x2, x26
  100157290  bl      _objc_msgSend                            ; [TAGLog warning:[@"Error reading resource from disk" stringByAppendingString:[objc_begin_catch() description]]]
  100157294  mov     x0, x26
  100157298  bl      _objc_release
  10015729c  mov     x0, x23
  1001572a0  bl      _objc_release
  1001572a4  bl      _objc_end_catch                          ; objc_end_catch()
loc_1001572a8:
  1001572a8  adrp    x8, #0x10041e000
  1001572ac  ldr     x0, [x8, #0x918]                         ; class TAGTypeOrFailure
  1001572b0  mov     x1, x22
  1001572b4  bl      _objc_msgSend                            ; [TAGTypeOrFailure alloc]
  1001572b8  adrp    x8, #0x10041d000
  1001572bc  nop
  1001572c0  ldr     x1, [x8, #0x278]
  1001572c4  mov     x2, #2
  1001572c8  bl      _objc_msgSend                            ; [[TAGTypeOrFailure alloc] initWithFailure:2]
  1001572cc  mov     x25, x0
loc_1001572d0:
  1001572d0  mov     x0, x21
  1001572d4  bl      _objc_release
  1001572d8  mov     x0, x20
  1001572dc  bl      _objc_release
loc_1001572e0:
  1001572e0  mov     x0, x19
  1001572e4  bl      _objc_release
  1001572e8  mov     x0, x25
  1001572ec  ldp     x26, x25, [sp], #0x10
  1001572f0  ldp     x24, x23, [sp], #0x10
  1001572f4  ldp     x22, x21, [sp], #0x10
  1001572f8  ldp     x20, x19, [sp], #0x10
  1001572fc  ldp     x29, x30, [sp], #0x10
  100157300  b       _objc_autoreleaseReturnValue
  100157304  mov     x25, x0
  100157308  b       loc_100157328
  10015730c  mov     x25, x0
  100157310  b       loc_100157320
  100157314  mov     x25, x0
  100157318  mov     x0, x26
  10015731c  bl      _objc_release
loc_100157320:
  100157320  mov     x0, x23
  100157324  bl      _objc_release
loc_100157328:
  100157328  bl      _objc_end_catch                          ; objc_end_catch()
  10015732c  b       loc_100157334
  100157330  mov     x25, x0
loc_100157334:
  100157334  mov     x0, x21
  100157338  bl      _objc_release
loc_10015733c:
  10015733c  mov     x0, x20
  100157340  bl      _objc_release
loc_100157344:
  100157344  mov     x0, x19
  100157348  bl      _objc_release
  10015734c  mov     x0, x25
  100157350  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceStorageImpl saveResourceToDiskInBackground:]
; address 0x100157354  size 36  kind objc
; ======================================================================
  100157354  stp     x29, x30, [sp, #-0x10]!
  100157358  mov     x29, sp
  10015735c  adrp    x8, #0x10041d000
  100157360  nop
  100157364  ldr     x1, [x8, #0x290]
  100157368  mov     x3, #0
  10015736c  bl      _objc_msgSend                            ; [self saveResourceToDiskInBackground:arg1 resultBlock:0]
  100157370  ldp     x29, x30, [sp], #0x10
  100157374  ret

; ======================================================================
; -[TAGResourceStorageImpl saveResourceToDiskInBackground:resultBlock:]
; address 0x100157378  size 272  kind objc
; ======================================================================
  100157378  stp     x29, x30, [sp, #-0x10]!
  10015737c  mov     x29, sp
  100157380  stp     x20, x19, [sp, #-0x10]!
  100157384  stp     x22, x21, [sp, #-0x10]!
  100157388  stp     x24, x23, [sp, #-0x10]!
  10015738c  sub     sp, sp, #0x30
  100157390  mov     x19, x3
  100157394  mov     x21, x0
  100157398  mov     x0, x2
  10015739c  bl      _objc_retain
  1001573a0  mov     x22, x0
  1001573a4  adrp    x8, #0x1003b0000
  1001573a8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001573ac  adrp    x9, #0x10041e000
  1001573b0  ldr     x23, [x9, #0x910]                        ; class TAGAsyncUtil
  1001573b4  mov     w9, #-0x3e000000
  1001573b8  str     x8, [sp]
  1001573bc  stp     w9, wzr, [sp, #8]
  1001573c0  adr     x8, #0x100157488                         ; &-[TAGResourceStorageImpl saveResourceToDiskInBackground:resultBlock:]_block_invoke
  1001573c4  nop
  1001573c8  str     x8, [sp, #0x10]
  1001573cc  adrp    x8, #0x1003b9000
  1001573d0  add     x8, x8, #0x6f0                           ; &d_1003b96f0
  1001573d4  str     x8, [sp, #0x18]
  1001573d8  mov     x0, x19
  1001573dc  bl      _objc_retain
  1001573e0  mov     x20, x0
  1001573e4  mov     x0, x21
  1001573e8  bl      _objc_retain
  1001573ec  stp     x0, x22, [sp, #0x20]
  1001573f0  adrp    x8, #0x10041d000
  1001573f4  nop
  1001573f8  ldr     x21, [x8, #0x270]
  1001573fc  mov     x0, x22
  100157400  bl      _objc_retain
  100157404  mov     x19, x0
  100157408  mov     x2, sp
  10015740c  mov     x0, x23
  100157410  mov     x1, x21
  100157414  mov     x3, x20
  100157418  bl      _objc_msgSend                            ; [TAGAsyncUtil invokeAsync:^{-[TAGResourceStorageImpl saveResourceToDiskInBackground:resultBlock:]_block_invoke captures +0x20=self, +0x28=arg1} resultBlock:arg2]
  10015741c  mov     x0, x20
  100157420  bl      _objc_release
  100157424  ldr     x0, [sp, #0x28]
  100157428  bl      _objc_release
  10015742c  ldr     x0, [sp, #0x20]
  100157430  bl      _objc_release
  100157434  mov     x0, x19
  100157438  bl      _objc_release
  10015743c  sub     sp, x29, #0x30
  100157440  ldp     x24, x23, [sp], #0x10
  100157444  ldp     x22, x21, [sp], #0x10
  100157448  ldp     x20, x19, [sp], #0x10
  10015744c  ldp     x29, x30, [sp], #0x10
  100157450  ret
  100157454  mov     x21, x0
  100157458  mov     x0, x20
  10015745c  bl      _objc_release
  100157460  ldr     x8, [sp, #0x28]
  100157464  mov     x0, x8
  100157468  bl      _objc_release
  10015746c  ldr     x8, [sp, #0x20]
  100157470  mov     x0, x8
  100157474  bl      _objc_release
  100157478  mov     x0, x19
  10015747c  bl      _objc_release
  100157480  mov     x0, x21
  100157484  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceStorageImpl saveResourceToDiskInBackground:resultBlock:]_block_invoke
; address 0x100157488  size 64  kind block
; ======================================================================
  100157488  stp     x29, x30, [sp, #-0x10]!
  10015748c  mov     x29, sp
  100157490  ldp     x8, x2, [x0, #0x20]
  100157494  adrp    x9, #0x10041c000
  100157498  nop
  10015749c  ldr     x1, [x9, #0xee8]
  1001574a0  mov     x0, x8
  1001574a4  bl      _objc_msgSend                            ; [x0 saveResourceToDisk:x2]
  1001574a8  mov     x2, x0
  1001574ac  adrp    x8, #0x10041d000
  1001574b0  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1001574b4  adrp    x8, #0x100417000
  1001574b8  nop
  1001574bc  ldr     x1, [x8, #0xb8]
  1001574c0  ldp     x29, x30, [sp], #0x10
  1001574c4  b       _objc_msgSend                            ; [NSNumber numberWithBool:[x0 saveResourceToDisk:x2]]

; ======================================================================
; sub_1001574c8
; address 0x1001574c8  size 40  kind sub
; ======================================================================
  1001574c8  stp     x29, x30, [sp, #-0x10]!
  1001574cc  mov     x29, sp
  1001574d0  stp     x20, x19, [sp, #-0x10]!
  1001574d4  mov     x19, x1
  1001574d8  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  1001574dc  bl      _objc_retain
  1001574e0  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  1001574e4  ldp     x20, x19, [sp], #0x10
  1001574e8  ldp     x29, x30, [sp], #0x10
  1001574ec  b       _objc_retain

; ======================================================================
; sub_1001574f0
; address 0x1001574f0  size 40  kind sub
; ======================================================================
  1001574f0  stp     x29, x30, [sp, #-0x10]!
  1001574f4  mov     x29, sp
  1001574f8  stp     x20, x19, [sp, #-0x10]!
  1001574fc  mov     x19, x0
  100157500  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100157504  bl      _objc_release
  100157508  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10015750c  ldp     x20, x19, [sp], #0x10
  100157510  ldp     x29, x30, [sp], #0x10
  100157514  b       _objc_release

; ======================================================================
; -[TAGResourceStorageImpl loadResourceFromContainerFile:]
; address 0x100157518  size 980  kind objc
; ======================================================================
  100157518  stp     x29, x30, [sp, #-0x10]!
  10015751c  mov     x29, sp
  100157520  stp     x20, x19, [sp, #-0x10]!
  100157524  stp     x22, x21, [sp, #-0x10]!
  100157528  stp     x24, x23, [sp, #-0x10]!
  10015752c  stp     x26, x25, [sp, #-0x10]!
  100157530  stp     x28, x27, [sp, #-0x10]!
  100157534  sub     sp, sp, #0x10
  100157538  mov     x20, x0
  10015753c  mov     x0, x2
  100157540  bl      _objc_retain
  100157544  mov     x19, x0
  100157548  adrp    x8, #0x100416000
  10015754c  nop
  100157550  ldr     x1, [x8, #0xb58]
  100157554  mov     x0, x20
  100157558  bl      _objc_msgSend                            ; [self mainBundle]
  10015755c  mov     x29, x29
  100157560  bl      _objc_retainAutoreleasedReturnValue
  100157564  mov     x21, x0
  100157568  adrp    x8, #0x100417000
  10015756c  nop
  100157570  ldr     x1, [x8, #0x780]
  100157574  adrp    x3, #0x1003b9000
  100157578  add     x3, x3, #0x870                           ; @""
  10015757c  mov     x2, x19
  100157580  bl      _objc_msgSend                            ; [[self mainBundle] pathForResource:arg1 ofType:@""]
  100157584  mov     x29, x29
  100157588  bl      _objc_retainAutoreleasedReturnValue
  10015758c  mov     x20, x0
  100157590  mov     x0, x21
  100157594  bl      _objc_release
  100157598  adrp    x25, #0x10041e000
  10015759c  ldr     x21, [x25, #0x538]                       ; class TAGLog
  1001575a0  cbz     x20, loc_1001576dc                       ; if ([[self mainBundle] pathForResource:arg1 ofType:@""] == 0)
  1001575a4  adrp    x8, #0x10041a000
  1001575a8  nop
  1001575ac  ldr     x22, [x8, #0x620]
  1001575b0  adrp    x0, #0x1003c7000
  1001575b4  add     x0, x0, #0xe70                           ; @"Loading default container from "
  1001575b8  mov     x1, x22
  1001575bc  mov     x2, x19
  1001575c0  bl      _objc_msgSend                            ; [@"Loading default container from " stringByAppendingString:arg1]
  1001575c4  mov     x29, x29
  1001575c8  bl      _objc_retainAutoreleasedReturnValue
  1001575cc  mov     x23, x0
  1001575d0  adrp    x8, #0x10041b000
  1001575d4  nop
  1001575d8  ldr     x1, [x8, #0xb08]
  1001575dc  mov     x0, x21
  1001575e0  mov     x2, x23
  1001575e4  bl      _objc_msgSend                            ; [TAGLog verbose:[@"Loading default container from " stringByAppendingString:arg1]]
  1001575e8  mov     x0, x23
  1001575ec  bl      _objc_release
  1001575f0  adrp    x8, #0x10041e000
  1001575f4  ldr     x0, [x8, #0x770]                         ; class NSData
  1001575f8  adrp    x8, #0x10041d000
  1001575fc  nop
  100157600  ldr     x1, [x8, #0x288]
  100157604  mov     x2, x20
  100157608  bl      _objc_msgSend                            ; [NSData dataWithContentsOfFile:[[self mainBundle] pathForResource:arg1 ofType:@""]]
  10015760c  mov     x29, x29
  100157610  bl      _objc_retainAutoreleasedReturnValue
  100157614  mov     x21, x0
  100157618  adrp    x8, #0x10041e000
  10015761c  ldr     x0, [x8, #0x738]                         ; class TAGPBExtensionRegistry
  100157620  adrp    x8, #0x100416000
  100157624  nop
  100157628  ldr     x1, [x8, #0xac8]
  10015762c  bl      _objc_msgSend                            ; [TAGPBExtensionRegistry alloc]
  100157630  adrp    x8, #0x100416000
  100157634  nop
  100157638  ldr     x1, [x8, #0xab8]
  10015763c  bl      _objc_msgSend                            ; [[TAGPBExtensionRegistry alloc] init]
  100157640  mov     x23, x0
  100157644  adrp    x8, #0x10041e000
  100157648  ldr     x0, [x8, #0x7f0]                         ; class TAGPServingValue
  10015764c  adrp    x8, #0x10041d000
  100157650  nop
  100157654  ldr     x1, [x8, #0x208]
  100157658  bl      _objc_msgSend                            ; [TAGPServingValue ext]
  10015765c  mov     x29, x29
  100157660  bl      _objc_retainAutoreleasedReturnValue
  100157664  mov     x24, x0
  100157668  adrp    x8, #0x10041c000
  10015766c  nop
  100157670  ldr     x1, [x8, #0x4b8]
  100157674  mov     x0, x23
  100157678  mov     x2, x24
  10015767c  bl      _objc_msgSend                            ; [[[TAGPBExtensionRegistry alloc] init] addExtension:[TAGPServingValue ext]]
  100157680  mov     x0, x24
  100157684  bl      _objc_release
  100157688  adrp    x8, #0x10041e000
  10015768c  ldr     x0, [x8, #0x818]                         ; class TAGPResource
  100157690  adrp    x8, #0x10041c000
  100157694  nop
  100157698  ldr     x1, [x8, #0x768]
  10015769c  mov     x2, x21
  1001576a0  mov     x3, x23
  1001576a4  bl      _objc_msgSend                            ; [TAGPResource parseFromData:[NSData dataWithContentsOfFile:[[self mainBundle] pathForResource:arg1 ofType:@""]] extensionRegistry:[[TAGPBExtensionRegistry alloc] init]]
  1001576a8  mov     x29, x29
  1001576ac  bl      _objc_retainAutoreleasedReturnValue
  1001576b0  mov     x24, x0
  1001576b4  adrp    x8, #0x10041c000
  1001576b8  nop
  1001576bc  ldr     x1, [x8, #0x9d0]
  1001576c0  bl      _objc_msgSend                            ; [[TAGPResource parseFromData:[NSData dataWithContentsOfFile:[[self mainBundle] pathForResource:arg1 ofType:@""]] extensionRegistry:[[TAGPBExtensionRegistry alloc] init]] isInitialized]
  1001576c4  cbz     w0, loc_100157734                        ; if ([[TAGPResource parseFromData:[NSData dataWithContentsOfFile:[[self mainBundle] pathForResource:arg1 ofType:@""]] extensionRegistry:[[TAGPBExtensionRegistry alloc] init]] isInitialized] == 0)
  1001576c8  mov     x0, x24
  1001576cc  bl      _objc_retain
  1001576d0  mov     x22, x0
  1001576d4  mov     w25, #0
  1001576d8  b       loc_100157754
loc_1001576dc:
  1001576dc  adrp    x8, #0x10041d000
  1001576e0  ldr     x0, [x8, #0xf78]                         ; class NSString
  1001576e4  adrp    x8, #0x100416000
  1001576e8  nop
  1001576ec  ldr     x1, [x8, #0xee8]
  1001576f0  str     x19, [sp]
  1001576f4  adrp    x2, #0x1003c7000
  1001576f8  add     x2, x2, #0xe50                           ; @"Cannot find binary resource file '%@'."
  1001576fc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Cannot find binary resource file '%@'.", arg1]
  100157700  mov     x29, x29
  100157704  bl      _objc_retainAutoreleasedReturnValue
  100157708  mov     x22, x0
  10015770c  adrp    x8, #0x10041b000
  100157710  nop
  100157714  ldr     x1, [x8, #0xe90]
  100157718  mov     x0, x21
  10015771c  mov     x2, x22
  100157720  bl      _objc_msgSend                            ; [TAGLog warning:[NSString stringWithFormat:@"Cannot find binary resource file '%@'.", arg1]]
  100157724  mov     x0, x22
  100157728  bl      _objc_release
  10015772c  mov     x22, #0
  100157730  b       loc_100157870
loc_100157734:
  100157734  ldr     x0, [x25, #0x538]                        ; class TAGLog
  100157738  adrp    x8, #0x10041b000
  10015773c  nop
  100157740  ldr     x1, [x8, #0xe90]
  100157744  adrp    x2, #0x1003c7000
  100157748  add     x2, x2, #0xe90                           ; @"Resource from container not initialized."
  10015774c  bl      _objc_msgSend                            ; [TAGLog warning:@"Resource from container not initialized."]
  100157750  mov     w25, #1
loc_100157754:
  100157754  mov     x0, x24
  100157758  bl      _objc_release
  10015775c  mov     x0, x23
  100157760  bl      _objc_release
  100157764  cbz     w25, loc_100157868                       ; if (one of {0, 1} == 0)
  100157768  b       loc_100157864
  10015776c  mov     x26, x0
  100157770  b       loc_1001578dc
  100157774  mov     x26, x0
  100157778  mov     x0, x21
  10015777c  b       loc_1001578d8
  100157780  mov     x26, x0
  100157784  mov     x0, x23
  100157788  bl      _objc_release
  10015778c  b       loc_1001578d4
  100157790  mov     x27, x1
  100157794  mov     x26, x0
  100157798  b       loc_1001577dc
  10015779c  b       loc_1001577c4
  1001577a0  mov     x27, x1
  1001577a4  mov     x26, x0
  1001577a8  b       loc_1001577d4
  1001577ac  mov     x26, x0
  1001577b0  b       loc_1001578d4
  1001577b4  mov     x26, x0
  1001577b8  mov     x0, x22
  1001577bc  bl      _objc_release
  1001577c0  b       loc_1001578d4
loc_1001577c4:
  1001577c4  mov     x27, x1
  1001577c8  mov     x26, x0
  1001577cc  mov     x0, x24
  1001577d0  bl      _objc_release
loc_1001577d4:
  1001577d4  mov     x0, x23
  1001577d8  bl      _objc_release
loc_1001577dc:
  1001577dc  cmp     w27, #1
  1001577e0  b.ne    loc_1001578cc                            ; if (w27 != 1)
  1001577e4  mov     x0, x26
  1001577e8  bl      _objc_begin_catch                        ; objc_begin_catch()
  1001577ec  ldr     x24, [x25, #0x538]
  1001577f0  adrp    x8, #0x100418000
  1001577f4  nop
  1001577f8  ldr     x8, [x8, #0x648]
  1001577fc  mov     x1, x8
  100157800  bl      _objc_msgSend                            ; [objc_begin_catch() description]
  100157804  mov     x29, x29
  100157808  bl      _objc_retainAutoreleasedReturnValue
  10015780c  mov     x23, x0
  100157810  adrp    x8, #0x1003c7000
  100157814  add     x8, x8, #0xeb0                           ; @"Error reading resource from binary container file: "
  100157818  mov     x0, x8
  10015781c  mov     x1, x22
  100157820  mov     x2, x23
  100157824  bl      _objc_msgSend                            ; [@"Error reading resource from binary container file: " <sel x1>]
  100157828  mov     x29, x29
  10015782c  bl      _objc_retainAutoreleasedReturnValue
  100157830  mov     x22, x0
  100157834  adrp    x8, #0x10041b000
  100157838  nop
  10015783c  ldr     x8, [x8, #0xe90]
  100157840  mov     x0, x24
  100157844  mov     x1, x8
  100157848  mov     x2, x22
  10015784c  bl      _objc_msgSend                            ; [x0 warning:[@"Error reading resource from binary container file: " <sel x1>]]
  100157850  mov     x0, x22
  100157854  bl      _objc_release
  100157858  mov     x0, x23
  10015785c  bl      _objc_release
  100157860  bl      _objc_end_catch                          ; objc_end_catch()
loc_100157864:
  100157864  mov     x22, #0
loc_100157868:
  100157868  mov     x0, x21
  10015786c  bl      _objc_release
loc_100157870:
  100157870  mov     x0, x20
  100157874  bl      _objc_release
  100157878  mov     x0, x19
  10015787c  bl      _objc_release
  100157880  mov     x0, x22
  100157884  sub     sp, x29, #0x50
  100157888  ldp     x28, x27, [sp], #0x10
  10015788c  ldp     x26, x25, [sp], #0x10
  100157890  ldp     x24, x23, [sp], #0x10
  100157894  ldp     x22, x21, [sp], #0x10
  100157898  ldp     x20, x19, [sp], #0x10
  10015789c  ldp     x29, x30, [sp], #0x10
  1001578a0  b       _objc_autoreleaseReturnValue
  1001578a4  mov     x26, x0
  1001578a8  b       loc_1001578c8
  1001578ac  mov     x26, x0
  1001578b0  b       loc_1001578c0
  1001578b4  mov     x26, x0
  1001578b8  mov     x0, x22
  1001578bc  bl      _objc_release
loc_1001578c0:
  1001578c0  mov     x0, x23
  1001578c4  bl      _objc_release
loc_1001578c8:
  1001578c8  bl      _objc_end_catch                          ; objc_end_catch()
loc_1001578cc:
  1001578cc  mov     x0, x21
  1001578d0  bl      _objc_release
loc_1001578d4:
  1001578d4  mov     x0, x20
loc_1001578d8:
  1001578d8  bl      _objc_release
loc_1001578dc:
  1001578dc  mov     x0, x19
  1001578e0  bl      _objc_release
  1001578e4  mov     x0, x26
  1001578e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceStorageImpl loadExpandedResourceFromJsonFile:]
; address 0x1001578ec  size 876  kind objc
; ======================================================================
  1001578ec  stp     x29, x30, [sp, #-0x10]!
  1001578f0  mov     x29, sp
  1001578f4  stp     x20, x19, [sp, #-0x10]!
  1001578f8  stp     x22, x21, [sp, #-0x10]!
  1001578fc  stp     x24, x23, [sp, #-0x10]!
  100157900  stp     x26, x25, [sp, #-0x10]!
  100157904  sub     sp, sp, #0x10
  100157908  mov     x20, x0
  10015790c  mov     x0, x2
  100157910  bl      _objc_retain
  100157914  mov     x19, x0
  100157918  adrp    x8, #0x100416000
  10015791c  nop
  100157920  ldr     x1, [x8, #0xb58]
  100157924  mov     x0, x20
  100157928  bl      _objc_msgSend                            ; [self mainBundle]
  10015792c  mov     x29, x29
  100157930  bl      _objc_retainAutoreleasedReturnValue
  100157934  mov     x21, x0
  100157938  adrp    x8, #0x100417000
  10015793c  nop
  100157940  ldr     x1, [x8, #0x780]
  100157944  adrp    x3, #0x1003c7000
  100157948  add     x3, x3, #0xed0                           ; @"json"
  10015794c  mov     x2, x19
  100157950  bl      _objc_msgSend                            ; [[self mainBundle] pathForResource:arg1 ofType:@"json"]
  100157954  mov     x29, x29
  100157958  bl      _objc_retainAutoreleasedReturnValue
  10015795c  mov     x20, x0
  100157960  mov     x0, x21
  100157964  bl      _objc_release
  100157968  adrp    x26, #0x10041e000
  10015796c  ldr     x21, [x26, #0x538]                       ; class TAGLog
  100157970  adrp    x8, #0x10041d000
  100157974  ldr     x0, [x8, #0xf78]                         ; class NSString
  100157978  adrp    x8, #0x100416000
  10015797c  add     x8, x8, #0xee8                           ; &@selector(stringWithFormat:)
  100157980  ldr     x1, [x8]
  100157984  cbz     x20, loc_100157a98                       ; if ([[self mainBundle] pathForResource:arg1 ofType:@"json"] == 0)
  100157988  str     x19, [sp]
  10015798c  adrp    x2, #0x1003c7000
  100157990  add     x2, x2, #0xf10                           ; @"loading default container from %@.json"
  100157994  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"loading default container from %@.json", arg1]
  100157998  mov     x29, x29
  10015799c  bl      _objc_retainAutoreleasedReturnValue
  1001579a0  mov     x23, x0
  1001579a4  adrp    x8, #0x10041b000
  1001579a8  nop
  1001579ac  ldr     x22, [x8, #0xb08]
  1001579b0  mov     x0, x21
  1001579b4  mov     x1, x22
  1001579b8  mov     x2, x23
  1001579bc  bl      _objc_msgSend                            ; [TAGLog verbose:[NSString stringWithFormat:@"loading default container from %@.json", arg1]]
  1001579c0  mov     x0, x23
  1001579c4  bl      _objc_release
  1001579c8  adrp    x8, #0x10041e000
  1001579cc  ldr     x0, [x8, #0x770]                         ; class NSData
  1001579d0  adrp    x8, #0x10041d000
  1001579d4  nop
  1001579d8  ldr     x1, [x8, #0x288]
  1001579dc  mov     x2, x20
  1001579e0  bl      _objc_msgSend                            ; [NSData dataWithContentsOfFile:[[self mainBundle] pathForResource:arg1 ofType:@"json"]]
  1001579e4  mov     x29, x29
  1001579e8  bl      _objc_retainAutoreleasedReturnValue
  1001579ec  mov     x21, x0
  1001579f0  adrp    x8, #0x10041e000
  1001579f4  ldr     x0, [x8, #0xb18]                         ; class NSJSONSerialization
  1001579f8  str     xzr, [sp, #8]
  1001579fc  adrp    x8, #0x10041d000
  100157a00  nop
  100157a04  ldr     x1, [x8, #0xa50]
  100157a08  add     x4, sp, #8
  100157a0c  mov     x3, #4
  100157a10  mov     x2, x21
  100157a14  bl      _objc_msgSend                            ; [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:[[self mainBundle] pathForResource:arg1 ofType:@"json"]] options:4 error:&sp[0x8]]
  100157a18  mov     x29, x29
  100157a1c  bl      _objc_retainAutoreleasedReturnValue
  100157a20  mov     x23, x0
  100157a24  ldr     x24, [x26, #0x538]                       ; class TAGLog
  100157a28  adrp    x8, #0x100418000
  100157a2c  nop
  100157a30  ldr     x1, [x8, #0x648]
  100157a34  bl      _objc_msgSend                            ; [[NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:[[self mainBundle] pathForResource:arg1 ofType:@"json"]] options:4 error:&sp[0x8]] description]
  100157a38  mov     x29, x29
  100157a3c  bl      _objc_retainAutoreleasedReturnValue
  100157a40  mov     x25, x0
  100157a44  mov     x0, x24
  100157a48  mov     x1, x22
  100157a4c  mov     x2, x25
  100157a50  bl      _objc_msgSend                            ; [TAGLog verbose:[[NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:[[self mainBundle] pathForResource:arg1 ofType:@"json"]] options:4 error:&sp[0x8]] description]]
  100157a54  mov     x0, x25
  100157a58  bl      _objc_release
  100157a5c  adrp    x8, #0x10041e000
  100157a60  ldr     x0, [x8, #0xb20]                         ; class TAGSerialization
  100157a64  adrp    x8, #0x10041d000
  100157a68  nop
  100157a6c  ldr     x1, [x8, #0xa58]
  100157a70  mov     x2, x23
  100157a74  bl      _objc_msgSend                            ; [TAGSerialization expandedResourceFromDeserializedObject:[NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:[[self mainBundle] pathForResource:arg1 ofType:@"json"]] options:4 error:&sp[0x8]]]
  100157a78  mov     x29, x29
  100157a7c  bl      _objc_retainAutoreleasedReturnValue
  100157a80  mov     x22, x0
  100157a84  mov     x0, x23
  100157a88  bl      _objc_release
loc_100157a8c:
  100157a8c  mov     x0, x21
  100157a90  bl      _objc_release
  100157a94  b       loc_100157ad8
loc_100157a98:
  100157a98  str     x19, [sp]
  100157a9c  adrp    x2, #0x1003c7000
  100157aa0  add     x2, x2, #0xef0                           ; @"Cannot find resource file '%@.json'."
  100157aa4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Cannot find resource file '%@.json'.", arg1]
  100157aa8  mov     x29, x29
  100157aac  bl      _objc_retainAutoreleasedReturnValue
  100157ab0  mov     x22, x0
  100157ab4  adrp    x8, #0x10041b000
  100157ab8  nop
  100157abc  ldr     x1, [x8, #0xe90]
  100157ac0  mov     x0, x21
  100157ac4  mov     x2, x22
  100157ac8  bl      _objc_msgSend                            ; [TAGLog warning:[NSString stringWithFormat:@"Cannot find resource file '%@.json'.", arg1]]
  100157acc  mov     x0, x22
  100157ad0  bl      _objc_release
  100157ad4  mov     x22, #0
loc_100157ad8:
  100157ad8  mov     x0, x20
  100157adc  bl      _objc_release
  100157ae0  mov     x0, x19
  100157ae4  bl      _objc_release
  100157ae8  mov     x0, x22
  100157aec  sub     sp, x29, #0x40
  100157af0  ldp     x26, x25, [sp], #0x10
  100157af4  ldp     x24, x23, [sp], #0x10
  100157af8  ldp     x22, x21, [sp], #0x10
  100157afc  ldp     x20, x19, [sp], #0x10
  100157b00  ldp     x29, x30, [sp], #0x10
  100157b04  b       _objc_autoreleaseReturnValue
  100157b08  mov     x24, x0
  100157b0c  b       loc_100157c48
  100157b10  mov     x24, x0
  100157b14  mov     x0, x21
  100157b18  b       loc_100157c44
  100157b1c  mov     x24, x0
  100157b20  mov     x0, x23
  100157b24  bl      _objc_release
  100157b28  b       loc_100157c40
  100157b2c  mov     x22, x1
  100157b30  mov     x24, x0
  100157b34  b       loc_100157b5c
  100157b38  mov     x22, x1
  100157b3c  mov     x24, x0
  100157b40  mov     x0, x25
  100157b44  bl      _objc_release
  100157b48  b       loc_100157b54
  100157b4c  mov     x22, x1
  100157b50  mov     x24, x0
loc_100157b54:
  100157b54  mov     x0, x23
  100157b58  bl      _objc_release
loc_100157b5c:
  100157b5c  cmp     w22, #1
  100157b60  b.ne    loc_100157c38                            ; if (w22 != 1)
  100157b64  mov     x0, x24
  100157b68  bl      _objc_begin_catch                        ; objc_begin_catch()
  100157b6c  ldr     x23, [x26, #0x538]
  100157b70  adrp    x8, #0x100418000
  100157b74  nop
  100157b78  ldr     x8, [x8, #0x648]
  100157b7c  mov     x1, x8
  100157b80  bl      _objc_msgSend                            ; [objc_begin_catch() description]
  100157b84  mov     x29, x29
  100157b88  bl      _objc_retainAutoreleasedReturnValue
  100157b8c  mov     x22, x0
  100157b90  adrp    x8, #0x10041a000
  100157b94  nop
  100157b98  ldr     x8, [x8, #0x620]
  100157b9c  adrp    x9, #0x1003c7000
  100157ba0  add     x9, x9, #0xf30                           ; @"Error reading resource from json file: "
  100157ba4  mov     x0, x9
  100157ba8  mov     x1, x8
  100157bac  mov     x2, x22
  100157bb0  bl      _objc_msgSend                            ; [@"Error reading resource from json file: " stringByAppendingString:[objc_begin_catch() description]]
  100157bb4  mov     x29, x29
  100157bb8  bl      _objc_retainAutoreleasedReturnValue
  100157bbc  mov     x25, x0
  100157bc0  adrp    x8, #0x10041b000
  100157bc4  nop
  100157bc8  ldr     x8, [x8, #0xe90]
  100157bcc  mov     x0, x23
  100157bd0  mov     x1, x8
  100157bd4  mov     x2, x25
  100157bd8  bl      _objc_msgSend                            ; [x0 warning:[@"Error reading resource from json file: " stringByAppendingString:[objc_begin_catch() description]]]
  100157bdc  mov     x0, x25
  100157be0  bl      _objc_release
  100157be4  mov     x0, x22
  100157be8  bl      _objc_release
  100157bec  bl      _objc_end_catch                          ; objc_end_catch()
  100157bf0  mov     x22, #0
  100157bf4  b       loc_100157a8c
  100157bf8  mov     x24, x0
  100157bfc  b       loc_100157c40
  100157c00  mov     x24, x0
  100157c04  mov     x0, x22
  100157c08  bl      _objc_release
  100157c0c  b       loc_100157c40
  100157c10  mov     x24, x0
  100157c14  b       loc_100157c34
  100157c18  mov     x24, x0
  100157c1c  b       loc_100157c2c
  100157c20  mov     x24, x0
  100157c24  mov     x0, x25
  100157c28  bl      _objc_release
loc_100157c2c:
  100157c2c  mov     x0, x22
  100157c30  bl      _objc_release
loc_100157c34:
  100157c34  bl      _objc_end_catch                          ; objc_end_catch()
loc_100157c38:
  100157c38  mov     x0, x21
  100157c3c  bl      _objc_release
loc_100157c40:
  100157c40  mov     x0, x20
loc_100157c44:
  100157c44  bl      _objc_release
loc_100157c48:
  100157c48  mov     x0, x19
  100157c4c  bl      _objc_release
  100157c50  mov     x0, x24
  100157c54  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceStorageImpl loadExpandedResourceFromPlistFile:]
; address 0x100157c58  size 724  kind objc
; ======================================================================
  100157c58  stp     x29, x30, [sp, #-0x10]!
  100157c5c  mov     x29, sp
  100157c60  stp     x20, x19, [sp, #-0x10]!
  100157c64  stp     x22, x21, [sp, #-0x10]!
  100157c68  stp     x24, x23, [sp, #-0x10]!
  100157c6c  stp     x26, x25, [sp, #-0x10]!
  100157c70  sub     sp, sp, #0x10
  100157c74  mov     x20, x0
  100157c78  mov     x0, x2
  100157c7c  bl      _objc_retain
  100157c80  mov     x19, x0
  100157c84  adrp    x8, #0x100416000
  100157c88  nop
  100157c8c  ldr     x1, [x8, #0xb58]
  100157c90  mov     x0, x20
  100157c94  bl      _objc_msgSend                            ; [self mainBundle]
  100157c98  mov     x29, x29
  100157c9c  bl      _objc_retainAutoreleasedReturnValue
  100157ca0  mov     x21, x0
  100157ca4  adrp    x8, #0x100417000
  100157ca8  nop
  100157cac  ldr     x1, [x8, #0x780]
  100157cb0  adrp    x3, #0x1003b9000
  100157cb4  add     x3, x3, #0xa70                           ; @"plist"
  100157cb8  mov     x2, x19
  100157cbc  bl      _objc_msgSend                            ; [[self mainBundle] pathForResource:arg1 ofType:@"plist"]
  100157cc0  mov     x29, x29
  100157cc4  bl      _objc_retainAutoreleasedReturnValue
  100157cc8  mov     x20, x0
  100157ccc  mov     x0, x21
  100157cd0  bl      _objc_release
  100157cd4  adrp    x23, #0x10041e000
  100157cd8  ldr     x21, [x23, #0x538]                       ; class TAGLog
  100157cdc  adrp    x8, #0x10041d000
  100157ce0  ldr     x0, [x8, #0xf78]                         ; class NSString
  100157ce4  adrp    x8, #0x100416000
  100157ce8  add     x8, x8, #0xee8                           ; &@selector(stringWithFormat:)
  100157cec  ldr     x1, [x8]
  100157cf0  cbz     x20, loc_100157d8c                       ; if ([[self mainBundle] pathForResource:arg1 ofType:@"plist"] == 0)
  100157cf4  str     x19, [sp]
  100157cf8  adrp    x2, #0x1003c7000
  100157cfc  add     x2, x2, #0xf70                           ; @"loading default container from %@.plist"
  100157d00  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"loading default container from %@.plist", arg1]
  100157d04  mov     x29, x29
  100157d08  bl      _objc_retainAutoreleasedReturnValue
  100157d0c  mov     x22, x0
  100157d10  adrp    x8, #0x10041b000
  100157d14  nop
  100157d18  ldr     x1, [x8, #0xb08]
  100157d1c  mov     x0, x21
  100157d20  mov     x2, x22
  100157d24  bl      _objc_msgSend                            ; [TAGLog verbose:[NSString stringWithFormat:@"loading default container from %@.plist", arg1]]
  100157d28  mov     x0, x22
  100157d2c  bl      _objc_release
  100157d30  adrp    x8, #0x10041d000
  100157d34  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100157d38  nop
  100157d3c  nop
  100157d40  ldr     x1, [x8, #0x298]
  100157d44  mov     x2, x20
  100157d48  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfFile:[[self mainBundle] pathForResource:arg1 ofType:@"plist"]]
  100157d4c  mov     x29, x29
  100157d50  bl      _objc_retainAutoreleasedReturnValue
  100157d54  mov     x21, x0
  100157d58  adrp    x8, #0x10041e000
  100157d5c  ldr     x0, [x8, #0xb20]                         ; class TAGSerialization
  100157d60  adrp    x8, #0x10041d000
  100157d64  nop
  100157d68  ldr     x1, [x8, #0xa58]
  100157d6c  mov     x2, x21
  100157d70  bl      _objc_msgSend                            ; [TAGSerialization expandedResourceFromDeserializedObject:[NSDictionary dictionaryWithContentsOfFile:[[self mainBundle] pathForResource:arg1 ofType:@"plist"]]]
  100157d74  mov     x29, x29
  100157d78  bl      _objc_retainAutoreleasedReturnValue
  100157d7c  mov     x22, x0
  100157d80  mov     x0, x21
  100157d84  bl      _objc_release
  100157d88  b       loc_100157dcc
loc_100157d8c:
  100157d8c  str     x19, [sp]
  100157d90  adrp    x2, #0x1003c7000
  100157d94  add     x2, x2, #0xf50                           ; @"Cannot find resource file '%@.plist'."
  100157d98  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Cannot find resource file '%@.plist'.", arg1]
  100157d9c  mov     x29, x29
  100157da0  bl      _objc_retainAutoreleasedReturnValue
  100157da4  mov     x22, x0
  100157da8  adrp    x8, #0x10041b000
  100157dac  nop
  100157db0  ldr     x1, [x8, #0xe90]
  100157db4  mov     x0, x21
  100157db8  mov     x2, x22
  100157dbc  bl      _objc_msgSend                            ; [TAGLog warning:[NSString stringWithFormat:@"Cannot find resource file '%@.plist'.", arg1]]
  100157dc0  mov     x0, x22
  100157dc4  bl      _objc_release
loc_100157dc8:
  100157dc8  mov     x22, #0
loc_100157dcc:
  100157dcc  mov     x0, x20
  100157dd0  bl      _objc_release
  100157dd4  mov     x0, x19
  100157dd8  bl      _objc_release
  100157ddc  mov     x0, x22
  100157de0  sub     sp, x29, #0x40
  100157de4  ldp     x26, x25, [sp], #0x10
  100157de8  ldp     x24, x23, [sp], #0x10
  100157dec  ldp     x22, x21, [sp], #0x10
  100157df0  ldp     x20, x19, [sp], #0x10
  100157df4  ldp     x29, x30, [sp], #0x10
  100157df8  b       _objc_autoreleaseReturnValue
  100157dfc  mov     x24, x0
  100157e00  b       loc_100157f1c
  100157e04  mov     x24, x0
  100157e08  mov     x0, x21
  100157e0c  b       loc_100157f18
  100157e10  mov     x25, x1
  100157e14  mov     x24, x0
  100157e18  mov     x0, x22
  100157e1c  b       loc_100157e38
  100157e20  mov     x25, x1
  100157e24  mov     x24, x0
  100157e28  b       loc_100157e3c
  100157e2c  mov     x25, x1
  100157e30  mov     x24, x0
  100157e34  mov     x0, x21
loc_100157e38:
  100157e38  bl      _objc_release
loc_100157e3c:
  100157e3c  cmp     w25, #1
  100157e40  b.ne    loc_100157f14                            ; if (w25 != 1)
  100157e44  mov     x0, x24
  100157e48  bl      _objc_begin_catch                        ; objc_begin_catch()
  100157e4c  ldr     x22, [x23, #0x538]
  100157e50  adrp    x8, #0x100418000
  100157e54  nop
  100157e58  ldr     x8, [x8, #0x648]
  100157e5c  mov     x1, x8
  100157e60  bl      _objc_msgSend                            ; [objc_begin_catch() description]
  100157e64  mov     x29, x29
  100157e68  bl      _objc_retainAutoreleasedReturnValue
  100157e6c  mov     x21, x0
  100157e70  adrp    x8, #0x10041a000
  100157e74  nop
  100157e78  ldr     x8, [x8, #0x620]
  100157e7c  adrp    x9, #0x1003c7000
  100157e80  add     x9, x9, #0xf90                           ; @"Error reading resource from plist file: "
  100157e84  mov     x0, x9
  100157e88  mov     x1, x8
  100157e8c  mov     x2, x21
  100157e90  bl      _objc_msgSend                            ; [@"Error reading resource from plist file: " stringByAppendingString:[objc_begin_catch() description]]
  100157e94  mov     x29, x29
  100157e98  bl      _objc_retainAutoreleasedReturnValue
  100157e9c  mov     x23, x0
  100157ea0  adrp    x8, #0x10041b000
  100157ea4  nop
  100157ea8  ldr     x8, [x8, #0xe90]
  100157eac  mov     x0, x22
  100157eb0  mov     x1, x8
  100157eb4  mov     x2, x23
  100157eb8  bl      _objc_msgSend                            ; [x0 warning:[@"Error reading resource from plist file: " stringByAppendingString:[objc_begin_catch() description]]]
  100157ebc  mov     x0, x23
  100157ec0  bl      _objc_release
  100157ec4  mov     x0, x21
  100157ec8  bl      _objc_release
  100157ecc  bl      _objc_end_catch                          ; objc_end_catch()
  100157ed0  b       loc_100157dc8
  100157ed4  mov     x24, x0
  100157ed8  b       loc_100157f14
  100157edc  mov     x24, x0
  100157ee0  mov     x0, x22
  100157ee4  bl      _objc_release
  100157ee8  b       loc_100157f14
  100157eec  mov     x24, x0
  100157ef0  b       loc_100157f10
  100157ef4  mov     x24, x0
  100157ef8  b       loc_100157f08
  100157efc  mov     x24, x0
  100157f00  mov     x0, x23
  100157f04  bl      _objc_release
loc_100157f08:
  100157f08  mov     x0, x21
  100157f0c  bl      _objc_release
loc_100157f10:
  100157f10  bl      _objc_end_catch                          ; objc_end_catch()
loc_100157f14:
  100157f14  mov     x0, x20
loc_100157f18:
  100157f18  bl      _objc_release
loc_100157f1c:
  100157f1c  mov     x0, x19
  100157f20  bl      _objc_release
  100157f24  mov     x0, x24
  100157f28  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceStorageImpl saveResourceToDisk:]
; address 0x100157f2c  size 528  kind objc
; ======================================================================
  100157f2c  stp     x29, x30, [sp, #-0x10]!
  100157f30  mov     x29, sp
  100157f34  stp     x20, x19, [sp, #-0x10]!
  100157f38  stp     x22, x21, [sp, #-0x10]!
  100157f3c  stp     x24, x23, [sp, #-0x10]!
  100157f40  mov     x20, x0
  100157f44  mov     x0, x2
  100157f48  bl      _objc_retain
  100157f4c  mov     x19, x0
  100157f50  adrp    x8, #0x10041d000
  100157f54  nop
  100157f58  ldr     x1, [x8, #0x280]
  100157f5c  mov     x0, x20
  100157f60  bl      _objc_msgSend                            ; [self resourceFilename]
  100157f64  mov     x29, x29
  100157f68  bl      _objc_retainAutoreleasedReturnValue
  100157f6c  mov     x20, x0
  100157f70  adrp    x8, #0x10041e000
  100157f74  ldr     x0, [x8, #0x920]                         ; class NSOutputStream
  100157f78  adrp    x8, #0x10041d000
  100157f7c  nop
  100157f80  ldr     x1, [x8, #0x2a0]
  100157f84  mov     w3, #0
  100157f88  mov     x2, x20
  100157f8c  bl      _objc_msgSend                            ; [NSOutputStream outputStreamToFileAtPath:[self resourceFilename] append:0]
  100157f90  mov     x29, x29
  100157f94  bl      _objc_retainAutoreleasedReturnValue
  100157f98  mov     x21, x0
  100157f9c  adrp    x8, #0x10041d000
  100157fa0  nop
  100157fa4  ldr     x1, [x8, #0x2a8]
  100157fa8  mov     x0, x19
  100157fac  mov     x2, x21
  100157fb0  bl      _objc_msgSend                            ; [arg1 writeToOutputStream:[NSOutputStream outputStreamToFileAtPath:[self resourceFilename] append:0]]
  100157fb4  mov     w23, #0
  100157fb8  mov     w22, #1
loc_100157fbc:
  100157fbc  adrp    x8, #0x10041c000
  100157fc0  nop
  100157fc4  ldr     x1, [x8, #0x5b0]
  100157fc8  mov     x0, x21
  100157fcc  bl      _objc_msgSend                            ; [[NSOutputStream outputStreamToFileAtPath:[self resourceFilename] append:0] close]
  100157fd0  cbnz    w23, loc_1001580dc                       ; if (0 != 0)
loc_100157fd4:
  100157fd4  cmp     w22, #2
  100157fd8  cset    w22, ne
  100157fdc  mov     x0, x21
  100157fe0  bl      _objc_release
  100157fe4  mov     x0, x20
  100157fe8  bl      _objc_release
  100157fec  mov     x0, x19
  100157ff0  bl      _objc_release
  100157ff4  mov     x0, x22
  100157ff8  ldp     x24, x23, [sp], #0x10
  100157ffc  ldp     x22, x21, [sp], #0x10
  100158000  ldp     x20, x19, [sp], #0x10
  100158004  ldp     x29, x30, [sp], #0x10
  100158008  ret
  10015800c  mov     x22, x0
  100158010  b       loc_1001580fc
  100158014  mov     x22, x0
  100158018  b       loc_1001580f4
  10015801c  mov     x8, x1
  100158020  mov     x22, x0
  100158024  cmp     w8, #2
  100158028  b.ne    loc_100158124                            ; if (w8 != 2)
  10015802c  mov     x0, x22
  100158030  bl      _objc_begin_catch                        ; objc_begin_catch()
  100158034  adrp    x8, #0x10041e000
  100158038  ldr     x8, [x8, #0x538]                         ; class TAGLog
  10015803c  adrp    x9, #0x10041b000
  100158040  nop
  100158044  ldr     x9, [x9, #0xe90]
  100158048  adrp    x10, #0x1003c7000
  10015804c  add     x10, x10, #0xfb0                         ; @"Error writing resource to disk. Removing resource from disk."
  100158050  mov     x0, x8
  100158054  mov     x1, x9
  100158058  mov     x2, x10
  10015805c  bl      _objc_msgSend                            ; [TAGLog warning:@"Error writing resource to disk. Removing resource from disk."]
  100158060  adrp    x8, #0x10041e000
  100158064  ldr     x8, [x8, #0x4f0]                         ; class NSFileManager
  100158068  adrp    x9, #0x100416000
  10015806c  nop
  100158070  ldr     x9, [x9, #0xac8]
  100158074  mov     x0, x8
  100158078  mov     x1, x9
  10015807c  bl      _objc_msgSend                            ; [NSFileManager alloc]
  100158080  adrp    x8, #0x100416000
  100158084  nop
  100158088  ldr     x8, [x8, #0xab8]
  10015808c  mov     x1, x8
  100158090  bl      _objc_msgSend                            ; [[NSFileManager alloc] init]
  100158094  mov     x23, x0
  100158098  adrp    x8, #0x10041b000
  10015809c  nop
  1001580a0  ldr     x8, [x8, #0xe68]
  1001580a4  mov     x3, #0
  1001580a8  mov     x0, x23
  1001580ac  mov     x1, x8
  1001580b0  mov     x2, x20
  1001580b4  bl      _objc_msgSend                            ; [[[NSFileManager alloc] init] removeItemAtPath:x2 error:0]
  1001580b8  mov     x0, x23
  1001580bc  bl      _objc_release
  1001580c0  bl      _objc_end_catch                          ; objc_end_catch()
  1001580c4  mov     w23, #0
  1001580c8  mov     w22, #2
  1001580cc  b       loc_100157fbc
  1001580d0  mov     x22, x0
  1001580d4  cbz     w23, loc_1001580ec                       ; if (w23 == 0)
  1001580d8  b       loc_1001580e8
loc_1001580dc:
  1001580dc  bl      _objc_exception_rethrow                  ; objc_exception_rethrow([[NSOutputStream outputStreamToFileAtPath:[self resourceFilename] append:0] close])
  1001580e0  b       loc_100157fd4
  1001580e4  mov     x22, x0
loc_1001580e8:
  1001580e8  bl      _objc_end_catch                          ; objc_end_catch()
loc_1001580ec:
  1001580ec  mov     x0, x21
  1001580f0  bl      _objc_release
loc_1001580f4:
  1001580f4  mov     x0, x20
  1001580f8  bl      _objc_release
loc_1001580fc:
  1001580fc  mov     x0, x19
  100158100  bl      _objc_release
  100158104  mov     x0, x22
  100158108  bl      __Unwind_Resume                          ; Unwind_Resume()
  10015810c  mov     x22, x0
  100158110  b       loc_100158120
  100158114  mov     x22, x0
  100158118  mov     x0, x23
  10015811c  bl      _objc_release
loc_100158120:
  100158120  bl      _objc_end_catch                          ; objc_end_catch()
loc_100158124:
  100158124  mov     x0, x22
  100158128  bl      _objc_begin_catch                        ; objc_begin_catch()
  10015812c  mov     w22, #3
  100158130  mov     w23, #1
  100158134  b       loc_100157fbc
  100158138  bl      _objc_terminate                          ; objc_terminate()

; ======================================================================
; -[TAGResourceStorageImpl resourceFilename]
; address 0x10015813c  size 252  kind objc
; ======================================================================
  10015813c  stp     x29, x30, [sp, #-0x10]!
  100158140  mov     x29, sp
  100158144  stp     x20, x19, [sp, #-0x10]!
  100158148  stp     x22, x21, [sp, #-0x10]!
  10015814c  mov     x20, x0
  100158150  adrp    x8, #0x10041d000
  100158154  nop
  100158158  ldr     x1, [x8, #0x2b0]
  10015815c  bl      _objc_msgSend                            ; [self dataPath]
  100158160  mov     x29, x29
  100158164  bl      _objc_retainAutoreleasedReturnValue
  100158168  mov     x19, x0
  10015816c  adrp    x8, #0x10041d000
  100158170  nop
  100158174  ldr     x1, [x8, #0x1c0]
  100158178  mov     x0, x20
  10015817c  bl      _objc_msgSend                            ; [self containerId]
  100158180  mov     x29, x29
  100158184  bl      _objc_retainAutoreleasedReturnValue
  100158188  mov     x20, x0
  10015818c  adrp    x8, #0x10041a000
  100158190  nop
  100158194  ldr     x1, [x8, #0x620]
  100158198  adrp    x0, #0x1003c7000
  10015819c  add     x0, x0, #0xdd0                           ; @"resource_"
  1001581a0  mov     x2, x20
  1001581a4  bl      _objc_msgSend                            ; [@"resource_" stringByAppendingString:[self containerId]]
  1001581a8  mov     x29, x29
  1001581ac  bl      _objc_retainAutoreleasedReturnValue
  1001581b0  mov     x21, x0
  1001581b4  adrp    x8, #0x10041b000
  1001581b8  nop
  1001581bc  ldr     x1, [x8, #0xf30]
  1001581c0  mov     x0, x19
  1001581c4  mov     x2, x21
  1001581c8  bl      _objc_msgSend                            ; [[self dataPath] stringByAppendingPathComponent:[@"resource_" stringByAppendingString:[self containerId]]]
  1001581cc  mov     x29, x29
  1001581d0  bl      _objc_retainAutoreleasedReturnValue
  1001581d4  mov     x22, x0
  1001581d8  mov     x0, x21
  1001581dc  bl      _objc_release
  1001581e0  mov     x0, x20
  1001581e4  bl      _objc_release
  1001581e8  mov     x0, x19
  1001581ec  bl      _objc_release
  1001581f0  mov     x0, x22
  1001581f4  ldp     x22, x21, [sp], #0x10
  1001581f8  ldp     x20, x19, [sp], #0x10
  1001581fc  ldp     x29, x30, [sp], #0x10
  100158200  b       _objc_autoreleaseReturnValue
  100158204  mov     x22, x0
  100158208  b       loc_100158228
  10015820c  mov     x22, x0
  100158210  b       loc_100158220
  100158214  mov     x22, x0
  100158218  mov     x0, x21
  10015821c  bl      _objc_release
loc_100158220:
  100158220  mov     x0, x20
  100158224  bl      _objc_release
loc_100158228:
  100158228  mov     x0, x19
  10015822c  bl      _objc_release
  100158230  mov     x0, x22
  100158234  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceStorageImpl dataPath]
; address 0x100158238  size 764  kind objc
; ======================================================================
  100158238  stp     x29, x30, [sp, #-0x10]!
  10015823c  mov     x29, sp
  100158240  stp     x20, x19, [sp, #-0x10]!
  100158244  stp     x22, x21, [sp, #-0x10]!
  100158248  stp     x24, x23, [sp, #-0x10]!
  10015824c  stp     x26, x25, [sp, #-0x10]!
  100158250  stp     x28, x27, [sp, #-0x10]!
  100158254  sub     sp, sp, #0x10
  100158258  mov     x0, #5
  10015825c  mov     x1, #1
  100158260  mov     w2, #1
  100158264  bl      _NSSearchPathForDirectoriesInDomains     ; NSSearchPathForDirectoriesInDomains(5, 1, 1)
  100158268  mov     x29, x29
  10015826c  bl      _objc_retainAutoreleasedReturnValue
  100158270  mov     x19, x0
  100158274  adrp    x8, #0x100416000
  100158278  nop
  10015827c  ldr     x1, [x8, #0xc30]
  100158280  mov     x2, #0
  100158284  bl      _objc_msgSend                            ; [NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndex:0]
  100158288  mov     x29, x29
  10015828c  bl      _objc_retainAutoreleasedReturnValue
  100158290  mov     x21, x0
  100158294  adrp    x8, #0x10041b000
  100158298  nop
  10015829c  ldr     x22, [x8, #0xf30]
  1001582a0  adrp    x2, #0x1003c7000
  1001582a4  add     x2, x2, #0xfd0                           ; @"Application Support"
  1001582a8  mov     x1, x22
  1001582ac  bl      _objc_msgSend                            ; [[NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndex:0] stringByAppendingPathComponent:@"Application Support"]
  1001582b0  mov     x29, x29
  1001582b4  bl      _objc_retainAutoreleasedReturnValue
  1001582b8  mov     x20, x0
  1001582bc  mov     x0, x21
  1001582c0  bl      _objc_release
  1001582c4  adrp    x2, #0x1003c7000
  1001582c8  add     x2, x2, #0xff0                           ; @"Google"
  1001582cc  mov     x0, x20
  1001582d0  mov     x1, x22
  1001582d4  bl      _objc_msgSend                            ; [[[NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndex:0] stringByAppendingPathComponent:@"Application Support"] stringByAppendingPathComponent:@"Google"]
  1001582d8  mov     x29, x29
  1001582dc  bl      _objc_retainAutoreleasedReturnValue
  1001582e0  mov     x21, x0
  1001582e4  adrp    x2, #0x1003c8000
  1001582e8  add     x2, x2, #0x10                            ; @"TagManager"
  1001582ec  mov     x1, x22
  1001582f0  bl      _objc_msgSend                            ; [[[[NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndex:0] stringByAppendingPathComponent:@"Application Support"] stringByAppendingPathComponent:@"Google"] stringByAppendingPathComponent:@"TagManager"]
  1001582f4  mov     x29, x29
  1001582f8  bl      _objc_retainAutoreleasedReturnValue
  1001582fc  mov     x22, x0
  100158300  adrp    x8, #0x10041e000
  100158304  ldr     x0, [x8, #0x4f0]                         ; class NSFileManager
  100158308  adrp    x8, #0x100416000
  10015830c  nop
  100158310  ldr     x1, [x8, #0xac8]
  100158314  bl      _objc_msgSend                            ; [NSFileManager alloc]
  100158318  adrp    x8, #0x100416000
  10015831c  nop
  100158320  ldr     x1, [x8, #0xab8]
  100158324  bl      _objc_msgSend                            ; [[NSFileManager alloc] init]
  100158328  mov     x23, x0
  10015832c  adrp    x8, #0x10041d000
  100158330  nop
  100158334  ldr     x1, [x8, #0x2b8]
  100158338  mov     x24, #0
  10015833c  mov     x0, x23
  100158340  mov     x2, x22
  100158344  bl      _objc_msgSend                            ; [[[NSFileManager alloc] init] fileExistsAtPath:[[[[NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndex:0] stringByAppendingPathComponent:@"Application Support"] stringByAppendingPathComponent:@"Google"] stringByAppendingPathComponent:@"TagManager"]]
  100158348  tbz     w0, #0, loc_100158354                    ; if (!([[[NSFileManager alloc] init] fileExistsAtPath:[[[[NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndex:0] stringByAppendingPathComponent:@"Application Support"] stringByAppendingPathComponent:@"Google"] stringByAppendingPathComponent:@"TagManager"]] & 1))
  10015834c  mov     x24, #0
  100158350  b       loc_100158394
loc_100158354:
  100158354  str     xzr, [sp, #8]
  100158358  adrp    x8, #0x10041b000
  10015835c  nop
  100158360  ldr     x1, [x8, #0x8c8]
  100158364  mov     x24, #0
  100158368  add     x5, sp, #8
  10015836c  mov     w3, #1
  100158370  mov     x0, x23
  100158374  mov     x2, x22
  100158378  mov     x4, #0
  10015837c  bl      _objc_msgSend                            ; [[[NSFileManager alloc] init] createDirectoryAtPath:[[[[NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndex:0] stringByAppendingPathComponent:@"Application Support"] stringByAppendingPathComponent:@"Google"] stringByAppendingPathComponent:@"TagManager"] withIntermediateDirectories:1 attributes:0 error:&sp[0x8]]
  100158380  mov     x25, x0
  100158384  ldr     x0, [sp, #8]
  100158388  bl      _objc_retain
  10015838c  mov     x24, x0
  100158390  tbz     w25, #0, loc_100158404                   ; if (!([[[NSFileManager alloc] init] createDirectoryAtPath:[[[[NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndex:0] stringByAppendingPathComponent:@"Application Support"] stringByAppendingPathComponent:@"Google"] stringByAppendingPathComponent:@"TagManager"] withIntermediateDirectories:1 attributes:0 error:&sp[0x8]] & 1))
loc_100158394:
  100158394  mov     x0, x24
  100158398  bl      _objc_release
  10015839c  mov     x0, x23
  1001583a0  bl      _objc_release
  1001583a4  mov     x0, x21
  1001583a8  bl      _objc_release
  1001583ac  mov     x0, x20
  1001583b0  bl      _objc_release
  1001583b4  mov     x0, x19
  1001583b8  bl      _objc_release
  1001583bc  mov     x0, x22
  1001583c0  sub     sp, x29, #0x50
  1001583c4  ldp     x28, x27, [sp], #0x10
  1001583c8  ldp     x26, x25, [sp], #0x10
  1001583cc  ldp     x24, x23, [sp], #0x10
  1001583d0  ldp     x22, x21, [sp], #0x10
  1001583d4  ldp     x20, x19, [sp], #0x10
  1001583d8  ldp     x29, x30, [sp], #0x10
  1001583dc  b       _objc_autoreleaseReturnValue
  1001583e0  mov     x25, x0
  1001583e4  mov     x0, x21
  1001583e8  b       loc_100158520
  1001583ec  mov     x25, x0
  1001583f0  b       loc_10015851c
  1001583f4  mov     x25, x0
  1001583f8  b       loc_100158514
  1001583fc  mov     x25, x0
  100158400  b       loc_10015850c
loc_100158404:
  100158404  adrp    x8, #0x10041e000
  100158408  ldr     x25, [x8, #0x538]                        ; class TAGLog
  10015840c  adrp    x8, #0x100418000
  100158410  nop
  100158414  ldr     x8, [x8, #0x648]
  100158418  mov     x0, x24
  10015841c  mov     x1, x8
  100158420  bl      _objc_msgSend                            ; [0 description]
  100158424  mov     x29, x29
  100158428  bl      _objc_retainAutoreleasedReturnValue
  10015842c  mov     x26, x0
  100158430  adrp    x8, #0x10041a000
  100158434  nop
  100158438  ldr     x8, [x8, #0x620]
  10015843c  adrp    x9, #0x1003c8000
  100158440  add     x9, x9, #0x30                            ; @"Create directory error: "
  100158444  mov     x0, x9
  100158448  mov     x1, x8
  10015844c  mov     x2, x26
  100158450  bl      _objc_msgSend                            ; [@"Create directory error: " stringByAppendingString:[0 description]]
  100158454  mov     x29, x29
  100158458  bl      _objc_retainAutoreleasedReturnValue
  10015845c  mov     x27, x0
  100158460  adrp    x8, #0x10041b000
  100158464  nop
  100158468  ldr     x8, [x8, #0xdd0]
  10015846c  mov     x0, x25
  100158470  mov     x1, x8
  100158474  mov     x2, x27
  100158478  bl      _objc_msgSend                            ; [TAGLog error:[@"Create directory error: " stringByAppendingString:[0 description]]]
  10015847c  mov     x0, x27
  100158480  bl      _objc_release
  100158484  mov     x0, x26
  100158488  bl      _objc_release
  10015848c  adrp    x8, #0x10041d000
  100158490  ldr     x8, [x8, #0xfc8]                         ; class NSException
  100158494  adrp    x9, #0x10041b000
  100158498  nop
  10015849c  ldr     x9, [x9, #0x380]
  1001584a0  mov     x3, #0
  1001584a4  mov     x4, #0
  1001584a8  adrp    x10, #0x1003c8000
  1001584ac  add     x10, x10, #0x50                          ; @"UnableToCreateDataDirectory"
  1001584b0  mov     x0, x8
  1001584b4  mov     x1, x9
  1001584b8  mov     x2, x10
  1001584bc  bl      _objc_msgSend                            ; [NSException exceptionWithName:@"UnableToCreateDataDirectory" reason:0 userInfo:0]
  1001584c0  mov     x29, x29
  1001584c4  bl      _objc_retainAutoreleasedReturnValue
  1001584c8  bl      _objc_autorelease
  1001584cc  bl      _objc_exception_throw                    ; objc_exception_throw([NSException exceptionWithName:@"UnableToCreateDataDirectory" reason:0 userInfo:0])
  1001584d0  mov     x25, x0
  1001584d4  b       loc_100158524
  1001584d8  mov     x25, x0
  1001584dc  b       loc_1001584ec
  1001584e0  mov     x25, x0
  1001584e4  mov     x0, x27
  1001584e8  bl      _objc_release
loc_1001584ec:
  1001584ec  mov     x0, x26
  1001584f0  bl      _objc_release
  1001584f4  b       loc_1001584fc
  1001584f8  mov     x25, x0
loc_1001584fc:
  1001584fc  mov     x0, x24
  100158500  bl      _objc_release
  100158504  mov     x0, x23
  100158508  bl      _objc_release
loc_10015850c:
  10015850c  mov     x0, x22
  100158510  bl      _objc_release
loc_100158514:
  100158514  mov     x0, x21
  100158518  bl      _objc_release
loc_10015851c:
  10015851c  mov     x0, x20
loc_100158520:
  100158520  bl      _objc_release
loc_100158524:
  100158524  mov     x0, x19
  100158528  bl      _objc_release
  10015852c  mov     x0, x25
  100158530  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResourceStorageImpl mainBundle]
; address 0x100158534  size 24  kind objc
; ======================================================================
  100158534  adrp    x8, #0x10041d000
  100158538  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10015853c  adrp    x8, #0x100416000
  100158540  nop
  100158544  ldr     x1, [x8, #0xb58]
  100158548  b       _objc_msgSend                            ; [NSBundle mainBundle]

; ======================================================================
; -[TAGResourceStorageImpl loadCallback]
; address 0x10015854c  size 16  kind objc
; ======================================================================
  10015854c  adrp    x8, #0x100420000
  100158550  ldrsw   x8, [x8, #0xae8]                         ; ivar offset TAGResourceStorageImpl._loadCallback (+0x8)
  100158554  ldr     x0, [x0, x8]                             ; x0 = self->_loadCallback
  100158558  ret

; ======================================================================
; -[TAGResourceStorageImpl setLoadCallback:]
; address 0x10015855c  size 20  kind objc
; ======================================================================
  10015855c  adrp    x8, #0x100420000
  100158560  ldrsw   x8, [x8, #0xae8]                         ; ivar offset TAGResourceStorageImpl._loadCallback (+0x8)
  100158564  add     x0, x0, x8
  100158568  mov     x1, x2
  10015856c  b       _objc_storeStrong

; ======================================================================
; -[TAGResourceStorageImpl containerId]
; address 0x100158570  size 16  kind objc
; ======================================================================
  100158570  adrp    x8, #0x100420000
  100158574  ldrsw   x8, [x8, #0xae4]                         ; ivar offset TAGResourceStorageImpl._containerId (+0x10)
  100158578  ldr     x0, [x0, x8]                             ; x0 = self->_containerId
  10015857c  ret

; ======================================================================
; -[TAGResourceStorageImpl setContainerId:]
; address 0x100158580  size 56  kind objc
; ======================================================================
  100158580  stp     x29, x30, [sp, #-0x10]!
  100158584  mov     x29, sp
  100158588  stp     x20, x19, [sp, #-0x10]!
  10015858c  mov     x19, x0
  100158590  adrp    x8, #0x100420000
  100158594  ldrsw   x20, [x8, #0xae4]                        ; ivar offset TAGResourceStorageImpl._containerId (+0x10)
  100158598  mov     x0, x2
  10015859c  bl      _objc_retain
  1001585a0  ldr     x8, [x19, x20]                           ; x8 = self->_containerId
  1001585a4  str     x0, [x19, x20]                           ; self->_containerId = arg1
  1001585a8  mov     x0, x8
  1001585ac  ldp     x20, x19, [sp], #0x10
  1001585b0  ldp     x29, x30, [sp], #0x10
  1001585b4  b       _objc_release

; ======================================================================
; -[TAGResourceStorageImpl .cxx_destruct]
; address 0x1001585b8  size 64  kind objc
; ======================================================================
  1001585b8  stp     x29, x30, [sp, #-0x10]!
  1001585bc  mov     x29, sp
  1001585c0  stp     x20, x19, [sp, #-0x10]!
  1001585c4  mov     x19, x0
  1001585c8  adrp    x8, #0x100420000
  1001585cc  ldrsw   x8, [x8, #0xae4]                         ; ivar offset TAGResourceStorageImpl._containerId (+0x10)
  1001585d0  add     x0, x19, x8
  1001585d4  mov     x1, #0
  1001585d8  bl      _objc_storeStrong
  1001585dc  mov     x1, #0
  1001585e0  adrp    x8, #0x100420000
  1001585e4  ldrsw   x8, [x8, #0xae8]                         ; ivar offset TAGResourceStorageImpl._loadCallback (+0x8)
  1001585e8  add     x0, x19, x8
  1001585ec  ldp     x20, x19, [sp], #0x10
  1001585f0  ldp     x29, x30, [sp], #0x10
  1001585f4  b       _objc_storeStrong
