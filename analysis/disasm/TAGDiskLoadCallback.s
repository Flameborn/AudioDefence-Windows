// unit TAGDiskLoadCallback — 11 functions
//   0x10014ce9c     220  -[TAGDiskLoadCallback initWithCallback:container:]
//   0x10014cf78     244  -[TAGDiskLoadCallback startLoad]
//   0x10014d06c    2232  -[TAGDiskLoadCallback onSuccess:]
//   0x10014d924     416  -[TAGDiskLoadCallback onFailure:]
//   0x10014dac4      40  -[TAGDiskLoadCallback failureToRefreshFailure:]
//   0x10014daec     124  -[TAGDiskLoadCallback close]
//   0x10014db68      16  -[TAGDiskLoadCallback callback]
//   0x10014db78      12  -[TAGDiskLoadCallback setCallback:]
//   0x10014db84      16  -[TAGDiskLoadCallback container]
//   0x10014db94      12  -[TAGDiskLoadCallback setContainer:]
//   0x10014dba0      64  -[TAGDiskLoadCallback .cxx_destruct]

; ======================================================================
; -[TAGDiskLoadCallback initWithCallback:container:]
; address 0x10014ce9c  size 220  kind objc
; ======================================================================
  10014ce9c  stp     x29, x30, [sp, #-0x10]!
  10014cea0  mov     x29, sp
  10014cea4  stp     x20, x19, [sp, #-0x10]!
  10014cea8  stp     x22, x21, [sp, #-0x10]!
  10014ceac  sub     sp, sp, #0x10
  10014ceb0  mov     x20, x3
  10014ceb4  mov     x21, x2
  10014ceb8  mov     x22, x0
  10014cebc  mov     x0, x21
  10014cec0  bl      _objc_retain
  10014cec4  mov     x19, x0
  10014cec8  mov     x0, x20
  10014cecc  bl      _objc_retain
  10014ced0  mov     x20, x0
  10014ced4  str     x22, [sp]
  10014ced8  adrp    x8, #0x10041f000
  10014cedc  ldr     x8, [x8, #0x208]
  10014cee0  str     x8, [sp, #8]
  10014cee4  adrp    x8, #0x100416000
  10014cee8  nop
  10014ceec  ldr     x1, [x8, #0xab8]
  10014cef0  mov     x0, sp
  10014cef4  bl      _objc_msgSendSuper2                      ; [super init]
  10014cef8  mov     x22, x0
  10014cefc  cbz     x22, loc_10014cf34                       ; if (self == 0)
  10014cf00  adrp    x8, #0x100420000
  10014cf04  ldrsw   x8, [x8, #0xa04]                         ; ivar offset TAGDiskLoadCallback._callback (+0x8)
  10014cf08  add     x0, x22, x8
  10014cf0c  mov     x1, x21
  10014cf10  bl      _objc_storeStrong
  10014cf14  adrp    x8, #0x100420000
  10014cf18  ldrsw   x21, [x8, #0xa08]                        ; ivar offset TAGDiskLoadCallback._container (+0x10)
  10014cf1c  mov     x0, x20
  10014cf20  bl      _objc_retain
  10014cf24  ldr     x8, [x22, x21]                           ; x8 = self->_container
  10014cf28  str     x0, [x22, x21]                           ; self->_container = arg2
  10014cf2c  mov     x0, x8
  10014cf30  bl      _objc_release
loc_10014cf34:
  10014cf34  mov     x0, x20
  10014cf38  bl      _objc_release
  10014cf3c  mov     x0, x19
  10014cf40  bl      _objc_release
  10014cf44  mov     x0, x22
  10014cf48  sub     sp, x29, #0x20
  10014cf4c  ldp     x22, x21, [sp], #0x10
  10014cf50  ldp     x20, x19, [sp], #0x10
  10014cf54  ldp     x29, x30, [sp], #0x10
  10014cf58  ret
  10014cf5c  mov     x21, x0
  10014cf60  mov     x0, x20
  10014cf64  bl      _objc_release
  10014cf68  mov     x0, x19
  10014cf6c  bl      _objc_release
  10014cf70  mov     x0, x21
  10014cf74  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDiskLoadCallback startLoad]
; address 0x10014cf78  size 244  kind objc
; ======================================================================
  10014cf78  stp     x29, x30, [sp, #-0x10]!
  10014cf7c  mov     x29, sp
  10014cf80  stp     x20, x19, [sp, #-0x10]!
  10014cf84  stp     x22, x21, [sp, #-0x10]!
  10014cf88  mov     x21, x0
  10014cf8c  adrp    x8, #0x10041c000
  10014cf90  nop
  10014cf94  ldr     x22, [x8, #0xde0]
  10014cf98  mov     x1, x22
  10014cf9c  bl      _objc_msgSend                            ; [self container]
  10014cfa0  mov     x29, x29
  10014cfa4  bl      _objc_retainAutoreleasedReturnValue
  10014cfa8  mov     x19, x0
  10014cfac  bl      _objc_sync_enter                         ; objc_sync_enter([self container])
  10014cfb0  adrp    x8, #0x10041c000
  10014cfb4  nop
  10014cfb8  ldr     x1, [x8, #0xe10]
  10014cfbc  mov     x0, x21
  10014cfc0  bl      _objc_msgSend                            ; [self callback]
  10014cfc4  mov     x29, x29
  10014cfc8  bl      _objc_retainAutoreleasedReturnValue
  10014cfcc  mov     x20, x0
  10014cfd0  mov     x0, x21
  10014cfd4  mov     x1, x22
  10014cfd8  bl      _objc_msgSend                            ; [self container]
  10014cfdc  mov     x29, x29
  10014cfe0  bl      _objc_retainAutoreleasedReturnValue
  10014cfe4  mov     x21, x0
  10014cfe8  adrp    x8, #0x10041c000
  10014cfec  nop
  10014cff0  ldr     x1, [x8, #0xe18]
  10014cff4  mov     w3, #0
  10014cff8  mov     x0, x20
  10014cffc  mov     x2, x21
  10014d000  bl      _objc_msgSend                            ; [[self callback] containerRefreshBegin:[self container] refreshType:0]
  10014d004  mov     x0, x21
  10014d008  bl      _objc_release
  10014d00c  mov     x0, x20
  10014d010  bl      _objc_release
  10014d014  mov     x0, x19
  10014d018  bl      _objc_sync_exit                          ; objc_sync_exit([self container])
  10014d01c  mov     x0, x19
  10014d020  ldp     x22, x21, [sp], #0x10
  10014d024  ldp     x20, x19, [sp], #0x10
  10014d028  ldp     x29, x30, [sp], #0x10
  10014d02c  b       _objc_release
  10014d030  mov     x22, x0
  10014d034  b       loc_10014d054
  10014d038  mov     x22, x0
  10014d03c  b       loc_10014d04c
  10014d040  mov     x22, x0
  10014d044  mov     x0, x21
  10014d048  bl      _objc_release
loc_10014d04c:
  10014d04c  mov     x0, x20
  10014d050  bl      _objc_release
loc_10014d054:
  10014d054  mov     x0, x19
  10014d058  bl      _objc_sync_exit                          ; objc_sync_exit()
  10014d05c  mov     x0, x19
  10014d060  bl      _objc_release
  10014d064  mov     x0, x22
  10014d068  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDiskLoadCallback onSuccess:]
; address 0x10014d06c  size 2232  kind objc
; ======================================================================
  10014d06c  stp     x29, x30, [sp, #-0x10]!
  10014d070  mov     x29, sp
  10014d074  stp     x20, x19, [sp, #-0x10]!
  10014d078  stp     x22, x21, [sp, #-0x10]!
  10014d07c  stp     x24, x23, [sp, #-0x10]!
  10014d080  stp     x26, x25, [sp, #-0x10]!
  10014d084  stp     x28, x27, [sp, #-0x10]!
  10014d088  stp     d9, d8, [sp, #-0x10]!
  10014d08c  stp     d11, d10, [sp, #-0x10]!
  10014d090  sub     sp, sp, #0x20
  10014d094  mov     x22, x0
  10014d098  mov     x0, x2
  10014d09c  bl      _objc_retain
  10014d0a0  mov     x28, x0
  10014d0a4  adrp    x8, #0x10041c000
  10014d0a8  nop
  10014d0ac  ldr     x23, [x8, #0xde0]
  10014d0b0  mov     x0, x22
  10014d0b4  mov     x1, x23
  10014d0b8  bl      _objc_msgSend                            ; [self container]
  10014d0bc  mov     x29, x29
  10014d0c0  bl      _objc_retainAutoreleasedReturnValue
  10014d0c4  mov     x19, x0
  10014d0c8  bl      _objc_sync_enter                         ; objc_sync_enter([self container])
  10014d0cc  mov     x0, x22
  10014d0d0  mov     x1, x23
  10014d0d4  bl      _objc_msgSend                            ; [self container]
  10014d0d8  mov     x29, x29
  10014d0dc  bl      _objc_retainAutoreleasedReturnValue
  10014d0e0  mov     x20, x0
  10014d0e4  adrp    x8, #0x10041c000
  10014d0e8  nop
  10014d0ec  ldr     x1, [x8, #0xe20]
  10014d0f0  bl      _objc_msgSend                            ; [[self container] isDefault]
  10014d0f4  mov     x21, x0
  10014d0f8  mov     x0, x20
  10014d0fc  bl      _objc_release
  10014d100  cbz     w21, loc_10014d680                       ; if ([[self container] isDefault] == 0)
  10014d104  adrp    x8, #0x10041c000
  10014d108  nop
  10014d10c  ldr     x1, [x8, #0xe28]
  10014d110  mov     x27, #0
  10014d114  mov     x0, x28
  10014d118  bl      _objc_msgSend                            ; [arg1 hasSupplementedResource]
  10014d11c  cbz     w0, loc_10014d1c4                        ; if ([arg1 hasSupplementedResource] == 0)
  10014d120  adrp    x8, #0x10041c000
  10014d124  nop
  10014d128  ldr     x20, [x8, #0xe30]
  10014d12c  mov     x27, #0
  10014d130  mov     x0, x28
  10014d134  mov     x1, x20
  10014d138  bl      _objc_msgSend                            ; [arg1 supplementedResource]
  10014d13c  mov     x29, x29
  10014d140  bl      _objc_retainAutoreleasedReturnValue
  10014d144  mov     x21, x0
  10014d148  adrp    x8, #0x10041c000
  10014d14c  nop
  10014d150  ldr     x1, [x8, #0xe38]
  10014d154  bl      _objc_msgSend                            ; [[arg1 supplementedResource] resource]
  10014d158  mov     x29, x29
  10014d15c  bl      _objc_retainAutoreleasedReturnValue
  10014d160  mov     x27, x0
  10014d164  mov     x0, x21
  10014d168  bl      _objc_release
  10014d16c  mov     x0, x22
  10014d170  mov     x1, x23
  10014d174  bl      _objc_msgSend                            ; [self container]
  10014d178  mov     x29, x29
  10014d17c  bl      _objc_retainAutoreleasedReturnValue
  10014d180  mov     x21, x0
  10014d184  mov     x0, x28
  10014d188  mov     x1, x20
  10014d18c  bl      _objc_msgSend                            ; [arg1 supplementedResource]
  10014d190  mov     x29, x29
  10014d194  bl      _objc_retainAutoreleasedReturnValue
  10014d198  mov     x20, x0
  10014d19c  adrp    x8, #0x10041c000
  10014d1a0  nop
  10014d1a4  ldr     x1, [x8, #0xe40]
  10014d1a8  mov     x0, x21
  10014d1ac  mov     x2, x20
  10014d1b0  bl      _objc_msgSend                            ; [[self container] setLastLoadedSupplementedResource:[arg1 supplementedResource]]
  10014d1b4  mov     x0, x20
  10014d1b8  bl      _objc_release
  10014d1bc  mov     x0, x21
  10014d1c0  b       loc_10014d30c
loc_10014d1c4:
  10014d1c4  adrp    x8, #0x10041c000
  10014d1c8  nop
  10014d1cc  ldr     x1, [x8, #0xe38]
  10014d1d0  mov     x27, #0
  10014d1d4  mov     x0, x28
  10014d1d8  bl      _objc_msgSend                            ; [arg1 resource]
  10014d1dc  mov     x29, x29
  10014d1e0  bl      _objc_retainAutoreleasedReturnValue
  10014d1e4  mov     x27, x0
  10014d1e8  mov     x0, x22
  10014d1ec  mov     x1, x23
  10014d1f0  bl      _objc_msgSend                            ; [self container]
  10014d1f4  mov     x29, x29
  10014d1f8  bl      _objc_retainAutoreleasedReturnValue
  10014d1fc  mov     x20, x0
  10014d200  adrp    x8, #0x10041c000
  10014d204  nop
  10014d208  ldr     x24, [x8, #0xe48]
  10014d20c  mov     x1, x24
  10014d210  bl      _objc_msgSend                            ; [[self container] lastLoadedSupplementedResource]
  10014d214  mov     x29, x29
  10014d218  bl      _objc_retainAutoreleasedReturnValue
  10014d21c  mov     x21, x0
  10014d220  adrp    x8, #0x10041c000
  10014d224  nop
  10014d228  ldr     x1, [x8, #0xe50]
  10014d22c  mov     x2, x27
  10014d230  bl      _objc_msgSend                            ; [[[self container] lastLoadedSupplementedResource] setResource:[arg1 resource]]
  10014d234  mov     x0, x21
  10014d238  bl      _objc_release
  10014d23c  mov     x0, x20
  10014d240  bl      _objc_release
  10014d244  mov     x0, x22
  10014d248  mov     x1, x23
  10014d24c  bl      _objc_msgSend                            ; [self container]
  10014d250  mov     x29, x29
  10014d254  bl      _objc_retainAutoreleasedReturnValue
  10014d258  mov     x20, x0
  10014d25c  mov     x1, x24
  10014d260  bl      _objc_msgSend                            ; [[self container] lastLoadedSupplementedResource]
  10014d264  mov     x29, x29
  10014d268  bl      _objc_retainAutoreleasedReturnValue
  10014d26c  mov     x21, x0
  10014d270  adrp    x8, #0x10041c000
  10014d274  nop
  10014d278  ldr     x1, [x8, #0xe58]
  10014d27c  mov     x2, #0
  10014d280  bl      _objc_msgSend                            ; [[[self container] lastLoadedSupplementedResource] setSupplementalArray:0]
  10014d284  mov     x0, x21
  10014d288  bl      _objc_release
  10014d28c  mov     x0, x20
  10014d290  bl      _objc_release
  10014d294  mov     x0, x22
  10014d298  mov     x1, x23
  10014d29c  bl      _objc_msgSend                            ; [self container]
  10014d2a0  mov     x29, x29
  10014d2a4  bl      _objc_retainAutoreleasedReturnValue
  10014d2a8  mov     x25, x0
  10014d2ac  mov     x1, x24
  10014d2b0  bl      _objc_msgSend                            ; [[self container] lastLoadedSupplementedResource]
  10014d2b4  mov     x29, x29
  10014d2b8  bl      _objc_retainAutoreleasedReturnValue
  10014d2bc  mov     x20, x0
  10014d2c0  adrp    x8, #0x10041d000
  10014d2c4  nop
  10014d2c8  ldr     x1, [x8, #0xc08]
  10014d2cc  mov     x0, x27
  10014d2d0  bl      _objc_msgSend                            ; [[arg1 resource] version]
  10014d2d4  mov     x29, x29
  10014d2d8  bl      _objc_retainAutoreleasedReturnValue
  10014d2dc  mov     x21, x0
  10014d2e0  adrp    x8, #0x10041c000
  10014d2e4  nop
  10014d2e8  ldr     x1, [x8, #0xe60]
  10014d2ec  mov     x0, x20
  10014d2f0  mov     x2, x21
  10014d2f4  bl      _objc_msgSend                            ; [[[self container] lastLoadedSupplementedResource] setFingerprint:[[arg1 resource] version]]
  10014d2f8  mov     x0, x21
  10014d2fc  bl      _objc_release
  10014d300  mov     x0, x20
  10014d304  bl      _objc_release
  10014d308  mov     x0, x25
loc_10014d30c:
  10014d30c  bl      _objc_release
  10014d310  mov     x0, x22
  10014d314  mov     x1, x23
  10014d318  bl      _objc_msgSend                            ; [self container]
  10014d31c  mov     x29, x29
  10014d320  bl      _objc_retainAutoreleasedReturnValue
  10014d324  mov     x20, x0
  10014d328  adrp    x8, #0x10041c000
  10014d32c  nop
  10014d330  ldr     x1, [x8, #0xe68]
  10014d334  mov     x2, x27
  10014d338  bl      _objc_msgSend                            ; [[self container] setupEvaluatorsWithResource:x2]
  10014d33c  mov     x0, x20
  10014d340  bl      _objc_release
  10014d344  mov     x0, x22
  10014d348  mov     x1, x23
  10014d34c  bl      _objc_msgSend                            ; [self container]
  10014d350  mov     x29, x29
  10014d354  bl      _objc_retainAutoreleasedReturnValue
  10014d358  mov     x20, x0
  10014d35c  adrp    x8, #0x10041c000
  10014d360  nop
  10014d364  ldr     x25, [x8, #0xe48]
  10014d368  mov     x1, x25
  10014d36c  bl      _objc_msgSend                            ; [[self container] lastLoadedSupplementedResource]
  10014d370  mov     x29, x29
  10014d374  bl      _objc_retainAutoreleasedReturnValue
  10014d378  mov     x21, x0
  10014d37c  adrp    x8, #0x10041c000
  10014d380  nop
  10014d384  ldr     x26, [x8, #0xe70]
  10014d388  mov     x1, x26
  10014d38c  bl      _objc_msgSend                            ; [[[self container] lastLoadedSupplementedResource] supplementalArray]
  10014d390  mov     x29, x29
  10014d394  bl      _objc_retainAutoreleasedReturnValue
  10014d398  mov     x24, x0
  10014d39c  bl      _objc_release
  10014d3a0  mov     x0, x21
  10014d3a4  bl      _objc_release
  10014d3a8  mov     x0, x20
  10014d3ac  bl      _objc_release
  10014d3b0  cbz     x24, loc_10014d44c                       ; if ([[[self container] lastLoadedSupplementedResource] supplementalArray] == 0)
  10014d3b4  mov     x0, x22
  10014d3b8  mov     x1, x23
  10014d3bc  bl      _objc_msgSend                            ; [self container]
  10014d3c0  str     x27, [sp, #0x18]
  10014d3c4  mov     x29, x29
  10014d3c8  bl      _objc_retainAutoreleasedReturnValue
  10014d3cc  mov     x24, x0
  10014d3d0  mov     x0, x22
  10014d3d4  mov     x1, x23
  10014d3d8  bl      _objc_msgSend                            ; [self container]
  10014d3dc  mov     x29, x29
  10014d3e0  bl      _objc_retainAutoreleasedReturnValue
  10014d3e4  mov     x27, x0
  10014d3e8  mov     x1, x25
  10014d3ec  bl      _objc_msgSend                            ; [[self container] lastLoadedSupplementedResource]
  10014d3f0  mov     x29, x29
  10014d3f4  bl      _objc_retainAutoreleasedReturnValue
  10014d3f8  mov     x20, x0
  10014d3fc  mov     x1, x26
  10014d400  bl      _objc_msgSend                            ; [[[self container] lastLoadedSupplementedResource] supplementalArray]
  10014d404  mov     x29, x29
  10014d408  bl      _objc_retainAutoreleasedReturnValue
  10014d40c  mov     x21, x0
  10014d410  adrp    x8, #0x10041c000
  10014d414  nop
  10014d418  ldr     x1, [x8, #0xe78]
  10014d41c  mov     x0, x24
  10014d420  mov     x2, x21
  10014d424  bl      _objc_msgSend                            ; [[self container] setSupplementals:[[[self container] lastLoadedSupplementedResource] supplementalArray]]
  10014d428  mov     x0, x21
  10014d42c  bl      _objc_release
  10014d430  mov     x0, x20
  10014d434  bl      _objc_release
  10014d438  mov     x0, x27
  10014d43c  bl      _objc_release
  10014d440  mov     x0, x24
  10014d444  bl      _objc_release
  10014d448  ldr     x27, [sp, #0x18]
loc_10014d44c:
  10014d44c  adrp    x8, #0x10041d000
  10014d450  ldr     x21, [x8, #0xf78]                        ; class NSString
  10014d454  adrp    x8, #0x10041c000
  10014d458  nop
  10014d45c  ldr     x20, [x8, #0xe80]
  10014d460  mov     x0, x28
  10014d464  mov     x1, x20
  10014d468  bl      _objc_msgSend                            ; [arg1 timeStamp]
  10014d46c  adrp    x8, #0x100416000
  10014d470  nop
  10014d474  ldr     x1, [x8, #0xee8]
  10014d478  str     x0, [sp]
  10014d47c  adrp    x2, #0x1003c7000
  10014d480  add     x2, x2, #0x6f0                           ; @"Setting refresh time to saved time: %lld"
  10014d484  mov     x0, x21
  10014d488  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Setting refresh time to saved time: %lld", [arg1 timeStamp]]
  10014d48c  stp     x19, x27, [sp, #0x10]
  10014d490  mov     x29, x29
  10014d494  bl      _objc_retainAutoreleasedReturnValue
  10014d498  mov     x24, x0
  10014d49c  adrp    x8, #0x10041e000
  10014d4a0  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10014d4a4  adrp    x8, #0x10041b000
  10014d4a8  nop
  10014d4ac  ldr     x1, [x8, #0xb08]
  10014d4b0  mov     x2, x24
  10014d4b4  bl      _objc_msgSend                            ; [TAGLog verbose:[NSString stringWithFormat:@"Setting refresh time to saved time: %lld", [arg1 timeStamp]]]
  10014d4b8  mov     x0, x22
  10014d4bc  mov     x1, x23
  10014d4c0  bl      _objc_msgSend                            ; [self container]
  10014d4c4  mov     x29, x29
  10014d4c8  bl      _objc_retainAutoreleasedReturnValue
  10014d4cc  mov     x21, x0
  10014d4d0  mov     x0, x28
  10014d4d4  mov     x1, x20
  10014d4d8  bl      _objc_msgSend                            ; [arg1 timeStamp]
  10014d4dc  scvtf   d0, x0
  10014d4e0  adrp    x8, #0x10041c000
  10014d4e4  nop
  10014d4e8  ldr     x1, [x8, #0xe88]
  10014d4ec  mov     x0, x21
  10014d4f0  bl      _objc_msgSend                            ; [[self container] setLastRefreshTime:(float)[arg1 timeStamp]]
  10014d4f4  mov     x0, x21
  10014d4f8  bl      _objc_release
  10014d4fc  adrp    x19, #0x10041e000
  10014d500  ldr     x0, [x19, #0x860]                        ; class TAGContainer
  10014d504  adrp    x8, #0x10041c000
  10014d508  nop
  10014d50c  ldr     x27, [x8, #0xe90]
  10014d510  mov     x1, x27
  10014d514  bl      _objc_msgSend                            ; [TAGContainer refreshPeriodOnSuccess]
  10014d518  mov     v8.16b, v0.16b
  10014d51c  mov     x0, x22
  10014d520  mov     x1, x23
  10014d524  bl      _objc_msgSend                            ; [self container]
  10014d528  str     x28, [sp, #8]
  10014d52c  mov     x29, x29
  10014d530  bl      _objc_retainAutoreleasedReturnValue
  10014d534  mov     x25, x0
  10014d538  adrp    x8, #0x10041c000
  10014d53c  nop
  10014d540  ldr     x28, [x8, #0xe98]
  10014d544  mov     x1, x28
  10014d548  bl      _objc_msgSend                            ; [[self container] lastRefreshTime]
  10014d54c  mov     v9.16b, v0.16b
  10014d550  ldr     x0, [x19, #0x860]                        ; class TAGContainer
  10014d554  mov     x1, x27
  10014d558  bl      _objc_msgSend                            ; [TAGContainer refreshPeriodOnSuccess]
  10014d55c  mov     v10.16b, v0.16b
  10014d560  mov     x0, x22
  10014d564  mov     x1, x23
  10014d568  bl      _objc_msgSend                            ; [self container]
  10014d56c  mov     x29, x29
  10014d570  bl      _objc_retainAutoreleasedReturnValue
  10014d574  mov     x26, x0
  10014d578  adrp    x8, #0x10041d000
  10014d57c  nop
  10014d580  ldr     x21, [x8, #0x4c8]
  10014d584  mov     x1, x21
  10014d588  bl      _objc_msgSend                            ; [[self container] currentTimeInMilliseconds]
  10014d58c  fadd    d1, d9, d10
  10014d590  fsub    d0, d1, d0                               ; t1 = (([[self container] lastRefreshTime] + [TAGContainer refreshPeriodOnSuccess]) - [[self container] currentTimeInMilliseconds])
  10014d594  fcmp    d8, d0
  10014d598  b.pl    loc_10014d5b0                            ; if ([TAGContainer refreshPeriodOnSuccess] >= (or unordered) t1)
  10014d59c  ldr     x0, [x19, #0x860]                        ; class TAGContainer
  10014d5a0  mov     x1, x27
  10014d5a4  bl      _objc_msgSend                            ; [TAGContainer refreshPeriodOnSuccess]
  10014d5a8  mov     v8.16b, v0.16b
  10014d5ac  b       loc_10014d61c
loc_10014d5b0:
  10014d5b0  mov     x0, x22
  10014d5b4  mov     x1, x23
  10014d5b8  bl      _objc_msgSend                            ; [self container]
  10014d5bc  mov     x29, x29
  10014d5c0  bl      _objc_retainAutoreleasedReturnValue
  10014d5c4  mov     x20, x0
  10014d5c8  mov     x1, x28
  10014d5cc  bl      _objc_msgSend                            ; [[self container] lastRefreshTime]
  10014d5d0  mov     v8.16b, v0.16b
  10014d5d4  ldr     x0, [x19, #0x860]                        ; class TAGContainer
  10014d5d8  mov     x1, x27
  10014d5dc  bl      _objc_msgSend                            ; [TAGContainer refreshPeriodOnSuccess]
  10014d5e0  mov     v9.16b, v0.16b
  10014d5e4  mov     x0, x22
  10014d5e8  mov     x1, x23
  10014d5ec  bl      _objc_msgSend                            ; [self container]
  10014d5f0  mov     x29, x29
  10014d5f4  bl      _objc_retainAutoreleasedReturnValue
  10014d5f8  mov     x27, x0
  10014d5fc  mov     x1, x21
  10014d600  bl      _objc_msgSend                            ; [[self container] currentTimeInMilliseconds]
  10014d604  fadd    d1, d8, d9
  10014d608  fsub    d8, d1, d0                               ; t2 = (([[self container] lastRefreshTime] + [TAGContainer refreshPeriodOnSuccess]) - [[self container] currentTimeInMilliseconds])
  10014d60c  mov     x0, x27
  10014d610  bl      _objc_release
  10014d614  mov     x0, x20
  10014d618  bl      _objc_release
loc_10014d61c:
  10014d61c  ldr     x28, [sp, #8]
  10014d620  mov     x0, x26
  10014d624  bl      _objc_release
  10014d628  mov     x0, x25
  10014d62c  bl      _objc_release
  10014d630  mov     x0, x22
  10014d634  mov     x1, x23
  10014d638  bl      _objc_msgSend                            ; [self container]
  10014d63c  mov     x29, x29
  10014d640  bl      _objc_retainAutoreleasedReturnValue
  10014d644  mov     x20, x0
  10014d648  fcmp    d8, #0.0
  10014d64c  movi    v0.16b, #0
  10014d650  fcsel   d0, d0, d8, mi
  10014d654  adrp    x8, #0x10041c000
  10014d658  nop
  10014d65c  ldr     x1, [x8, #0xea0]
  10014d660  bl      _objc_msgSend                            ; [[self container] loadAfterDelay:(d8 < 0.0 ? 0 : d8)]
  10014d664  mov     x0, x20
  10014d668  bl      _objc_release
  10014d66c  mov     x0, x24
  10014d670  bl      _objc_release
  10014d674  ldr     x0, [sp, #0x18]
  10014d678  bl      _objc_release
  10014d67c  ldr     x19, [sp, #0x10]
loc_10014d680:
  10014d680  adrp    x8, #0x10041c000
  10014d684  nop
  10014d688  ldr     x1, [x8, #0xe10]
  10014d68c  mov     x0, x22
  10014d690  bl      _objc_msgSend                            ; [self callback]
  10014d694  mov     x29, x29
  10014d698  bl      _objc_retainAutoreleasedReturnValue
  10014d69c  mov     x20, x0
  10014d6a0  mov     x0, x22
  10014d6a4  mov     x1, x23
  10014d6a8  bl      _objc_msgSend                            ; [self container]
  10014d6ac  mov     x29, x29
  10014d6b0  bl      _objc_retainAutoreleasedReturnValue
  10014d6b4  mov     x21, x0
  10014d6b8  adrp    x8, #0x10041c000
  10014d6bc  nop
  10014d6c0  ldr     x1, [x8, #0xea8]
  10014d6c4  mov     w3, #0
  10014d6c8  mov     x0, x20
  10014d6cc  mov     x2, x21
  10014d6d0  bl      _objc_msgSend                            ; [[self callback] containerRefreshSuccess:[self container] refreshType:0]
  10014d6d4  mov     x0, x21
  10014d6d8  bl      _objc_release
  10014d6dc  mov     x0, x20
  10014d6e0  bl      _objc_release
  10014d6e4  mov     x0, x19
  10014d6e8  bl      _objc_sync_exit                          ; objc_sync_exit([self container])
  10014d6ec  mov     x0, x19
  10014d6f0  bl      _objc_release
  10014d6f4  mov     x0, x28
  10014d6f8  sub     sp, x29, #0x70
  10014d6fc  ldp     d11, d10, [sp], #0x10
  10014d700  ldp     d9, d8, [sp], #0x10
  10014d704  ldp     x28, x27, [sp], #0x10
  10014d708  ldp     x26, x25, [sp], #0x10
  10014d70c  ldp     x24, x23, [sp], #0x10
  10014d710  ldp     x22, x21, [sp], #0x10
  10014d714  ldp     x20, x19, [sp], #0x10
  10014d718  ldp     x29, x30, [sp], #0x10
  10014d71c  b       _objc_release
  10014d720  str     x28, [sp, #8]
  10014d724  mov     x22, x0
  10014d728  b       loc_10014d914
  10014d72c  b       loc_10014d8dc
  10014d730  stp     x28, x19, [sp, #8]
  10014d734  mov     x22, x0
  10014d738  mov     x0, x21
  10014d73c  b       loc_10014d8fc
  10014d740  mov     x23, x27
  10014d744  stp     x28, x19, [sp, #8]
  10014d748  mov     x22, x0
  10014d74c  b       loc_10014d764
  10014d750  mov     x23, x27
  10014d754  stp     x28, x19, [sp, #8]
  10014d758  mov     x22, x0
  10014d75c  mov     x0, x20
  10014d760  bl      _objc_release
loc_10014d764:
  10014d764  mov     x0, x21
  10014d768  b       loc_10014d7fc
  10014d76c  b       loc_10014d7d4
  10014d770  b       loc_10014d7e4
  10014d774  b       loc_10014d7d4
  10014d778  b       loc_10014d7e4
  10014d77c  mov     x23, x27
  10014d780  stp     x28, x19, [sp, #8]
  10014d784  mov     x22, x0
  10014d788  b       loc_10014d7b8
  10014d78c  mov     x23, x27
  10014d790  stp     x28, x19, [sp, #8]
  10014d794  mov     x22, x0
  10014d798  b       loc_10014d7b0
  10014d79c  mov     x23, x27
  10014d7a0  stp     x28, x19, [sp, #8]
  10014d7a4  mov     x22, x0
  10014d7a8  mov     x0, x21
  10014d7ac  bl      _objc_release
loc_10014d7b0:
  10014d7b0  mov     x0, x20
  10014d7b4  bl      _objc_release
loc_10014d7b8:
  10014d7b8  mov     x0, x25
  10014d7bc  b       loc_10014d7fc
  10014d7c0  stp     x28, x19, [sp, #8]
  10014d7c4  mov     x22, x0
  10014d7c8  mov     x0, x20
  10014d7cc  bl      _objc_release
  10014d7d0  b       loc_10014d850
loc_10014d7d4:
  10014d7d4  mov     x23, x27
  10014d7d8  stp     x28, x19, [sp, #8]
  10014d7dc  mov     x22, x0
  10014d7e0  b       loc_10014d7f8
loc_10014d7e4:
  10014d7e4  mov     x23, x27
  10014d7e8  stp     x28, x19, [sp, #8]
  10014d7ec  mov     x22, x0
  10014d7f0  mov     x0, x21
  10014d7f4  bl      _objc_release
loc_10014d7f8:
  10014d7f8  mov     x0, x20
loc_10014d7fc:
  10014d7fc  bl      _objc_release
  10014d800  mov     x0, x23
  10014d804  b       loc_10014d8fc
  10014d808  str     x19, [sp, #0x10]
  10014d80c  b       loc_10014d8a4
  10014d810  stp     x28, x19, [sp, #8]
  10014d814  mov     x22, x0
  10014d818  b       loc_10014d840
  10014d81c  stp     x28, x19, [sp, #8]
  10014d820  mov     x22, x0
  10014d824  b       loc_10014d838
  10014d828  stp     x28, x19, [sp, #8]
  10014d82c  mov     x22, x0
  10014d830  mov     x0, x21
  10014d834  bl      _objc_release
loc_10014d838:
  10014d838  mov     x0, x20
  10014d83c  bl      _objc_release
loc_10014d840:
  10014d840  mov     x0, x27
  10014d844  b       loc_10014d8bc
  10014d848  stp     x28, x19, [sp, #8]
  10014d84c  mov     x22, x0
loc_10014d850:
  10014d850  mov     x0, x27
  10014d854  b       loc_10014d8fc
  10014d858  str     x28, [sp, #8]
  10014d85c  mov     x22, x0
  10014d860  mov     x0, x21
  10014d864  b       loc_10014d8bc
  10014d868  mov     x22, x0
  10014d86c  b       loc_10014d89c
  10014d870  mov     x22, x0
  10014d874  b       loc_10014d894
  10014d878  mov     x22, x0
  10014d87c  b       loc_10014d88c
  10014d880  mov     x22, x0
  10014d884  mov     x0, x27
  10014d888  bl      _objc_release
loc_10014d88c:
  10014d88c  mov     x0, x20
  10014d890  bl      _objc_release
loc_10014d894:
  10014d894  mov     x0, x26
  10014d898  bl      _objc_release
loc_10014d89c:
  10014d89c  mov     x0, x25
  10014d8a0  b       loc_10014d8bc
loc_10014d8a4:
  10014d8a4  str     x28, [sp, #8]
  10014d8a8  mov     x22, x0
  10014d8ac  b       loc_10014d8c0
  10014d8b0  str     x28, [sp, #8]
  10014d8b4  mov     x22, x0
  10014d8b8  mov     x0, x20
loc_10014d8bc:
  10014d8bc  bl      _objc_release
loc_10014d8c0:
  10014d8c0  mov     x0, x24
  10014d8c4  bl      _objc_release
  10014d8c8  ldr     x0, [sp, #0x18]
  10014d8cc  b       loc_10014d8fc
  10014d8d0  stp     x28, x19, [sp, #8]
  10014d8d4  mov     x22, x0
  10014d8d8  b       loc_10014d900
loc_10014d8dc:
  10014d8dc  stp     x28, x19, [sp, #8]
  10014d8e0  mov     x22, x0
  10014d8e4  b       loc_10014d8f8
  10014d8e8  stp     x28, x19, [sp, #8]
  10014d8ec  mov     x22, x0
  10014d8f0  mov     x0, x21
  10014d8f4  bl      _objc_release
loc_10014d8f8:
  10014d8f8  mov     x0, x20
loc_10014d8fc:
  10014d8fc  bl      _objc_release
loc_10014d900:
  10014d900  ldr     x19, [sp, #0x10]
  10014d904  mov     x0, x19
  10014d908  bl      _objc_sync_exit                          ; objc_sync_exit()
  10014d90c  mov     x0, x19
  10014d910  bl      _objc_release
loc_10014d914:
  10014d914  ldr     x0, [sp, #8]
  10014d918  bl      _objc_release
  10014d91c  mov     x0, x22
  10014d920  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDiskLoadCallback onFailure:]
; address 0x10014d924  size 416  kind objc
; ======================================================================
  10014d924  stp     x29, x30, [sp, #-0x10]!
  10014d928  mov     x29, sp
  10014d92c  stp     x20, x19, [sp, #-0x10]!
  10014d930  stp     x22, x21, [sp, #-0x10]!
  10014d934  stp     x24, x23, [sp, #-0x10]!
  10014d938  mov     x23, x2
  10014d93c  mov     x20, x0
  10014d940  adrp    x8, #0x10041c000
  10014d944  nop
  10014d948  ldr     x21, [x8, #0xde0]
  10014d94c  mov     x1, x21
  10014d950  bl      _objc_msgSend                            ; [self container]
  10014d954  mov     x29, x29
  10014d958  bl      _objc_retainAutoreleasedReturnValue
  10014d95c  mov     x19, x0
  10014d960  bl      _objc_sync_enter                         ; objc_sync_enter([self container])
  10014d964  adrp    x8, #0x10041c000
  10014d968  nop
  10014d96c  ldr     x1, [x8, #0xe10]
  10014d970  mov     x0, x20
  10014d974  bl      _objc_msgSend                            ; [self callback]
  10014d978  mov     x29, x29
  10014d97c  bl      _objc_retainAutoreleasedReturnValue
  10014d980  mov     x22, x0
  10014d984  mov     x0, x20
  10014d988  mov     x1, x21
  10014d98c  bl      _objc_msgSend                            ; [self container]
  10014d990  mov     x29, x29
  10014d994  bl      _objc_retainAutoreleasedReturnValue
  10014d998  mov     x24, x0
  10014d99c  adrp    x8, #0x10041c000
  10014d9a0  nop
  10014d9a4  ldr     x1, [x8, #0xeb0]
  10014d9a8  mov     x0, x20
  10014d9ac  mov     x2, x23
  10014d9b0  bl      _objc_msgSend                            ; [self failureToRefreshFailure:arg1]
  10014d9b4  mov     x3, x0
  10014d9b8  adrp    x8, #0x10041c000
  10014d9bc  nop
  10014d9c0  ldr     x1, [x8, #0xeb8]
  10014d9c4  mov     w4, #0
  10014d9c8  mov     x0, x22
  10014d9cc  mov     x2, x24
  10014d9d0  bl      _objc_msgSend                            ; [[self callback] containerRefreshFailure:[self container] failure:[self failureToRefreshFailure:arg1] refreshType:0]
  10014d9d4  mov     x0, x24
  10014d9d8  bl      _objc_release
  10014d9dc  mov     x0, x22
  10014d9e0  bl      _objc_release
  10014d9e4  mov     x0, x20
  10014d9e8  mov     x1, x21
  10014d9ec  bl      _objc_msgSend                            ; [self container]
  10014d9f0  mov     x29, x29
  10014d9f4  bl      _objc_retainAutoreleasedReturnValue
  10014d9f8  mov     x22, x0
  10014d9fc  adrp    x8, #0x10041c000
  10014da00  nop
  10014da04  ldr     x1, [x8, #0xe20]
  10014da08  bl      _objc_msgSend                            ; [[self container] isDefault]
  10014da0c  mov     x23, x0
  10014da10  mov     x0, x22
  10014da14  bl      _objc_release
  10014da18  cbz     w23, loc_10014da50                       ; if ([[self container] isDefault] == 0)
  10014da1c  mov     x0, x20
  10014da20  mov     x1, x21
  10014da24  bl      _objc_msgSend                            ; [self container]
  10014da28  mov     x29, x29
  10014da2c  bl      _objc_retainAutoreleasedReturnValue
  10014da30  mov     x20, x0
  10014da34  adrp    x8, #0x10041c000
  10014da38  nop
  10014da3c  ldr     x1, [x8, #0xea0]
  10014da40  movi    v0.16b, #0
  10014da44  bl      _objc_msgSend                            ; [[self container] loadAfterDelay:0]
  10014da48  mov     x0, x20
  10014da4c  bl      _objc_release
loc_10014da50:
  10014da50  mov     x0, x19
  10014da54  bl      _objc_sync_exit                          ; objc_sync_exit([self container])
  10014da58  mov     x0, x19
  10014da5c  ldp     x24, x23, [sp], #0x10
  10014da60  ldp     x22, x21, [sp], #0x10
  10014da64  ldp     x20, x19, [sp], #0x10
  10014da68  ldp     x29, x30, [sp], #0x10
  10014da6c  b       _objc_release
  10014da70  mov     x21, x0
  10014da74  b       loc_10014da8c
  10014da78  mov     x21, x0
  10014da7c  mov     x0, x24
  10014da80  bl      _objc_release
  10014da84  b       loc_10014da8c
  10014da88  mov     x21, x0
loc_10014da8c:
  10014da8c  mov     x0, x22
  10014da90  bl      _objc_release
  10014da94  b       loc_10014daac
  10014da98  mov     x21, x0
  10014da9c  b       loc_10014daac
  10014daa0  mov     x21, x0
  10014daa4  mov     x0, x20
  10014daa8  bl      _objc_release
loc_10014daac:
  10014daac  mov     x0, x19
  10014dab0  bl      _objc_sync_exit                          ; objc_sync_exit()
  10014dab4  mov     x0, x19
  10014dab8  bl      _objc_release
  10014dabc  mov     x0, x21
  10014dac0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDiskLoadCallback failureToRefreshFailure:]
; address 0x10014dac4  size 40  kind objc
; ======================================================================
  10014dac4  mov     w8, #4
  10014dac8  cmp     x2, #2
  10014dacc  mov     w9, #5
  10014dad0  mov     w10, #1
  10014dad4  csel    w9, w9, w10, ne
  10014dad8  cmp     x2, #3
  10014dadc  csel    w8, w8, w9, eq
  10014dae0  cmp     x2, #1
  10014dae4  csel    w0, wzr, w8, eq
  10014dae8  ret

; ======================================================================
; -[TAGDiskLoadCallback close]
; address 0x10014daec  size 124  kind objc
; ======================================================================
  10014daec  stp     x29, x30, [sp, #-0x10]!
  10014daf0  mov     x29, sp
  10014daf4  stp     x20, x19, [sp, #-0x10]!
  10014daf8  mov     x20, x0
  10014dafc  adrp    x8, #0x10041c000
  10014db00  nop
  10014db04  ldr     x1, [x8, #0xde0]
  10014db08  bl      _objc_msgSend                            ; [self container]
  10014db0c  mov     x29, x29
  10014db10  bl      _objc_retainAutoreleasedReturnValue
  10014db14  mov     x19, x0
  10014db18  bl      _objc_sync_enter                         ; objc_sync_enter([self container])
  10014db1c  adrp    x8, #0x10041c000
  10014db20  nop
  10014db24  ldr     x1, [x8, #0xec0]
  10014db28  mov     x2, #0
  10014db2c  mov     x0, x20
  10014db30  bl      _objc_msgSend                            ; [self setCallback:0]
  10014db34  mov     x0, x19
  10014db38  bl      _objc_sync_exit                          ; objc_sync_exit([self container])
  10014db3c  mov     x0, x19
  10014db40  ldp     x20, x19, [sp], #0x10
  10014db44  ldp     x29, x30, [sp], #0x10
  10014db48  b       _objc_release
  10014db4c  mov     x20, x0
  10014db50  mov     x0, x19
  10014db54  bl      _objc_sync_exit                          ; objc_sync_exit()
  10014db58  mov     x0, x19
  10014db5c  bl      _objc_release
  10014db60  mov     x0, x20
  10014db64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDiskLoadCallback callback]
; address 0x10014db68  size 16  kind objc
; ======================================================================
  10014db68  adrp    x8, #0x100420000
  10014db6c  ldrsw   x2, [x8, #0xa04]                         ; ivar offset TAGDiskLoadCallback._callback (+0x8)
  10014db70  mov     w3, #1
  10014db74  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGDiskLoadCallback setCallback:]
; address 0x10014db78  size 12  kind objc
; ======================================================================
  10014db78  adrp    x8, #0x100420000
  10014db7c  ldrsw   x3, [x8, #0xa04]                         ; ivar offset TAGDiskLoadCallback._callback (+0x8)
  10014db80  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGDiskLoadCallback container]
; address 0x10014db84  size 16  kind objc
; ======================================================================
  10014db84  adrp    x8, #0x100420000
  10014db88  ldrsw   x2, [x8, #0xa08]                         ; ivar offset TAGDiskLoadCallback._container (+0x10)
  10014db8c  mov     w3, #1
  10014db90  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGDiskLoadCallback setContainer:]
; address 0x10014db94  size 12  kind objc
; ======================================================================
  10014db94  adrp    x8, #0x100420000
  10014db98  ldrsw   x3, [x8, #0xa08]                         ; ivar offset TAGDiskLoadCallback._container (+0x10)
  10014db9c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGDiskLoadCallback .cxx_destruct]
; address 0x10014dba0  size 64  kind objc
; ======================================================================
  10014dba0  stp     x29, x30, [sp, #-0x10]!
  10014dba4  mov     x29, sp
  10014dba8  stp     x20, x19, [sp, #-0x10]!
  10014dbac  mov     x19, x0
  10014dbb0  adrp    x8, #0x100420000
  10014dbb4  ldrsw   x8, [x8, #0xa08]                         ; ivar offset TAGDiskLoadCallback._container (+0x10)
  10014dbb8  add     x0, x19, x8
  10014dbbc  mov     x1, #0
  10014dbc0  bl      _objc_storeStrong
  10014dbc4  mov     x1, #0
  10014dbc8  adrp    x8, #0x100420000
  10014dbcc  ldrsw   x8, [x8, #0xa04]                         ; ivar offset TAGDiskLoadCallback._callback (+0x8)
  10014dbd0  add     x0, x19, x8
  10014dbd4  ldp     x20, x19, [sp], #0x10
  10014dbd8  ldp     x29, x30, [sp], #0x10
  10014dbdc  b       _objc_storeStrong
