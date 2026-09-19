// unit TAGNetworkLoadCallback — 11 functions
//   0x10014dbe0     220  -[TAGNetworkLoadCallback initWithCallback:container:]
//   0x10014dcbc     244  -[TAGNetworkLoadCallback startLoad]
//   0x10014ddb0    2464  -[TAGNetworkLoadCallback onSuccess:]
//   0x10014e750     368  -[TAGNetworkLoadCallback onFailure:]
//   0x10014e8c0      44  -[TAGNetworkLoadCallback failureToRefreshFailure:]
//   0x10014e8ec     124  -[TAGNetworkLoadCallback close]
//   0x10014e968      16  -[TAGNetworkLoadCallback callback]
//   0x10014e978      12  -[TAGNetworkLoadCallback setCallback:]
//   0x10014e984      16  -[TAGNetworkLoadCallback container]
//   0x10014e994      12  -[TAGNetworkLoadCallback setContainer:]
//   0x10014e9a0      64  -[TAGNetworkLoadCallback .cxx_destruct]

; ======================================================================
; -[TAGNetworkLoadCallback initWithCallback:container:]
; address 0x10014dbe0  size 220  kind objc
; ======================================================================
  10014dbe0  stp     x29, x30, [sp, #-0x10]!
  10014dbe4  mov     x29, sp
  10014dbe8  stp     x20, x19, [sp, #-0x10]!
  10014dbec  stp     x22, x21, [sp, #-0x10]!
  10014dbf0  sub     sp, sp, #0x10
  10014dbf4  mov     x20, x3
  10014dbf8  mov     x21, x2
  10014dbfc  mov     x22, x0
  10014dc00  mov     x0, x21
  10014dc04  bl      _objc_retain
  10014dc08  mov     x19, x0
  10014dc0c  mov     x0, x20
  10014dc10  bl      _objc_retain
  10014dc14  mov     x20, x0
  10014dc18  str     x22, [sp]
  10014dc1c  adrp    x8, #0x10041f000
  10014dc20  ldr     x8, [x8, #0x210]
  10014dc24  str     x8, [sp, #8]
  10014dc28  adrp    x8, #0x100416000
  10014dc2c  nop
  10014dc30  ldr     x1, [x8, #0xab8]
  10014dc34  mov     x0, sp
  10014dc38  bl      _objc_msgSendSuper2                      ; [super init]
  10014dc3c  mov     x22, x0
  10014dc40  cbz     x22, loc_10014dc78                       ; if (self == 0)
  10014dc44  adrp    x8, #0x100420000
  10014dc48  ldrsw   x8, [x8, #0xa0c]                         ; ivar offset TAGNetworkLoadCallback._callback (+0x8)
  10014dc4c  add     x0, x22, x8
  10014dc50  mov     x1, x21
  10014dc54  bl      _objc_storeStrong
  10014dc58  adrp    x8, #0x100420000
  10014dc5c  ldrsw   x21, [x8, #0xa10]                        ; ivar offset TAGNetworkLoadCallback._container (+0x10)
  10014dc60  mov     x0, x20
  10014dc64  bl      _objc_retain
  10014dc68  ldr     x8, [x22, x21]                           ; x8 = self->_container
  10014dc6c  str     x0, [x22, x21]                           ; self->_container = arg2
  10014dc70  mov     x0, x8
  10014dc74  bl      _objc_release
loc_10014dc78:
  10014dc78  mov     x0, x20
  10014dc7c  bl      _objc_release
  10014dc80  mov     x0, x19
  10014dc84  bl      _objc_release
  10014dc88  mov     x0, x22
  10014dc8c  sub     sp, x29, #0x20
  10014dc90  ldp     x22, x21, [sp], #0x10
  10014dc94  ldp     x20, x19, [sp], #0x10
  10014dc98  ldp     x29, x30, [sp], #0x10
  10014dc9c  ret
  10014dca0  mov     x21, x0
  10014dca4  mov     x0, x20
  10014dca8  bl      _objc_release
  10014dcac  mov     x0, x19
  10014dcb0  bl      _objc_release
  10014dcb4  mov     x0, x21
  10014dcb8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetworkLoadCallback startLoad]
; address 0x10014dcbc  size 244  kind objc
; ======================================================================
  10014dcbc  stp     x29, x30, [sp, #-0x10]!
  10014dcc0  mov     x29, sp
  10014dcc4  stp     x20, x19, [sp, #-0x10]!
  10014dcc8  stp     x22, x21, [sp, #-0x10]!
  10014dccc  mov     x21, x0
  10014dcd0  adrp    x8, #0x10041c000
  10014dcd4  nop
  10014dcd8  ldr     x22, [x8, #0xde0]
  10014dcdc  mov     x1, x22
  10014dce0  bl      _objc_msgSend                            ; [self container]
  10014dce4  mov     x29, x29
  10014dce8  bl      _objc_retainAutoreleasedReturnValue
  10014dcec  mov     x19, x0
  10014dcf0  bl      _objc_sync_enter                         ; objc_sync_enter([self container])
  10014dcf4  adrp    x8, #0x10041c000
  10014dcf8  nop
  10014dcfc  ldr     x1, [x8, #0xe10]
  10014dd00  mov     x0, x21
  10014dd04  bl      _objc_msgSend                            ; [self callback]
  10014dd08  mov     x29, x29
  10014dd0c  bl      _objc_retainAutoreleasedReturnValue
  10014dd10  mov     x20, x0
  10014dd14  mov     x0, x21
  10014dd18  mov     x1, x22
  10014dd1c  bl      _objc_msgSend                            ; [self container]
  10014dd20  mov     x29, x29
  10014dd24  bl      _objc_retainAutoreleasedReturnValue
  10014dd28  mov     x21, x0
  10014dd2c  adrp    x8, #0x10041c000
  10014dd30  nop
  10014dd34  ldr     x1, [x8, #0xe18]
  10014dd38  mov     w3, #1
  10014dd3c  mov     x0, x20
  10014dd40  mov     x2, x21
  10014dd44  bl      _objc_msgSend                            ; [[self callback] containerRefreshBegin:[self container] refreshType:1]
  10014dd48  mov     x0, x21
  10014dd4c  bl      _objc_release
  10014dd50  mov     x0, x20
  10014dd54  bl      _objc_release
  10014dd58  mov     x0, x19
  10014dd5c  bl      _objc_sync_exit                          ; objc_sync_exit([self container])
  10014dd60  mov     x0, x19
  10014dd64  ldp     x22, x21, [sp], #0x10
  10014dd68  ldp     x20, x19, [sp], #0x10
  10014dd6c  ldp     x29, x30, [sp], #0x10
  10014dd70  b       _objc_release
  10014dd74  mov     x22, x0
  10014dd78  b       loc_10014dd98
  10014dd7c  mov     x22, x0
  10014dd80  b       loc_10014dd90
  10014dd84  mov     x22, x0
  10014dd88  mov     x0, x21
  10014dd8c  bl      _objc_release
loc_10014dd90:
  10014dd90  mov     x0, x20
  10014dd94  bl      _objc_release
loc_10014dd98:
  10014dd98  mov     x0, x19
  10014dd9c  bl      _objc_sync_exit                          ; objc_sync_exit()
  10014dda0  mov     x0, x19
  10014dda4  bl      _objc_release
  10014dda8  mov     x0, x22
  10014ddac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetworkLoadCallback onSuccess:]
; address 0x10014ddb0  size 2464  kind objc
; ======================================================================
  10014ddb0  stp     x29, x30, [sp, #-0x10]!
  10014ddb4  mov     x29, sp
  10014ddb8  stp     x20, x19, [sp, #-0x10]!
  10014ddbc  stp     x22, x21, [sp, #-0x10]!
  10014ddc0  stp     x24, x23, [sp, #-0x10]!
  10014ddc4  stp     x26, x25, [sp, #-0x10]!
  10014ddc8  stp     x28, x27, [sp, #-0x10]!
  10014ddcc  sub     sp, sp, #0x20
  10014ddd0  mov     x22, x0
  10014ddd4  mov     x0, x2
  10014ddd8  bl      _objc_retain
  10014dddc  mov     x28, x0
  10014dde0  adrp    x8, #0x10041c000
  10014dde4  nop
  10014dde8  ldr     x23, [x8, #0xde0]
  10014ddec  mov     x0, x22
  10014ddf0  mov     x1, x23
  10014ddf4  bl      _objc_msgSend                            ; [self container]
  10014ddf8  mov     x29, x29
  10014ddfc  bl      _objc_retainAutoreleasedReturnValue
  10014de00  mov     x25, x0
  10014de04  bl      _objc_sync_enter                         ; objc_sync_enter([self container])
  10014de08  adrp    x8, #0x10041c000
  10014de0c  nop
  10014de10  ldr     x21, [x8, #0xec8]
  10014de14  mov     x0, x28
  10014de18  mov     x1, x21
  10014de1c  bl      _objc_msgSend                            ; [arg1 hasResource]
  10014de20  cbz     w0, loc_10014dedc                        ; if ([arg1 hasResource] == 0)
  10014de24  adrp    x8, #0x10041c000
  10014de28  nop
  10014de2c  ldr     x1, [x8, #0xe38]
  10014de30  mov     x0, x28
  10014de34  bl      _objc_msgSend                            ; [arg1 resource]
  10014de38  mov     x29, x29
  10014de3c  bl      _objc_retainAutoreleasedReturnValue
  10014de40  mov     x21, x0
  10014de44  mov     x0, x22
  10014de48  mov     x1, x23
  10014de4c  bl      _objc_msgSend                            ; [self container]
  10014de50  mov     x29, x29
  10014de54  bl      _objc_retainAutoreleasedReturnValue
  10014de58  mov     x20, x0
  10014de5c  adrp    x8, #0x10041c000
  10014de60  nop
  10014de64  ldr     x1, [x8, #0xe68]
  10014de68  mov     x2, x21
  10014de6c  bl      _objc_msgSend                            ; [[self container] setupEvaluatorsWithResource:[arg1 resource]]
  10014de70  mov     x0, x20
  10014de74  bl      _objc_release
  10014de78  mov     x0, x22
  10014de7c  mov     x1, x23
  10014de80  bl      _objc_msgSend                            ; [self container]
  10014de84  mov     x29, x29
  10014de88  bl      _objc_retainAutoreleasedReturnValue
  10014de8c  mov     x24, x0
  10014de90  adrp    x8, #0x10041c000
  10014de94  nop
  10014de98  ldr     x1, [x8, #0xe48]
  10014de9c  bl      _objc_msgSend                            ; [[self container] lastLoadedSupplementedResource]
  10014dea0  mov     x29, x29
  10014dea4  bl      _objc_retainAutoreleasedReturnValue
  10014dea8  mov     x20, x0
  10014deac  adrp    x8, #0x10041c000
  10014deb0  nop
  10014deb4  ldr     x1, [x8, #0xe50]
  10014deb8  mov     x2, x21
  10014debc  bl      _objc_msgSend                            ; [[[self container] lastLoadedSupplementedResource] setResource:[arg1 resource]]
  10014dec0  mov     x0, x20
  10014dec4  bl      _objc_release
  10014dec8  mov     x0, x24
  10014decc  bl      _objc_release
  10014ded0  mov     x0, x21
  10014ded4  bl      _objc_release
  10014ded8  b       loc_10014df30
loc_10014dedc:
  10014dedc  mov     x0, x22
  10014dee0  mov     x1, x23
  10014dee4  bl      _objc_msgSend                            ; [self container]
  10014dee8  mov     x29, x29
  10014deec  bl      _objc_retainAutoreleasedReturnValue
  10014def0  mov     x24, x0
  10014def4  adrp    x8, #0x10041c000
  10014def8  nop
  10014defc  ldr     x1, [x8, #0xe48]
  10014df00  bl      _objc_msgSend                            ; [[self container] lastLoadedSupplementedResource]
  10014df04  mov     x29, x29
  10014df08  bl      _objc_retainAutoreleasedReturnValue
  10014df0c  mov     x20, x0
  10014df10  mov     x1, x21
  10014df14  bl      _objc_msgSend                            ; [[[self container] lastLoadedSupplementedResource] hasResource]
  10014df18  mov     x19, x0
  10014df1c  mov     x0, x20
  10014df20  bl      _objc_release
  10014df24  mov     x0, x24
  10014df28  bl      _objc_release
  10014df2c  tbz     w19, #0, loc_10014e4b8                   ; if (!([[[self container] lastLoadedSupplementedResource] hasResource] & 1))
loc_10014df30:
  10014df30  adrp    x8, #0x10041c000
  10014df34  nop
  10014df38  ldr     x24, [x8, #0xe70]
  10014df3c  mov     x0, x28
  10014df40  mov     x1, x24
  10014df44  bl      _objc_msgSend                            ; [arg1 supplementalArray]
  10014df48  str     x25, [sp, #0x10]
  10014df4c  mov     x29, x29
  10014df50  bl      _objc_retainAutoreleasedReturnValue
  10014df54  str     x0, [sp, #0x18]
  10014df58  cbz     x0, loc_10014e024                        ; if ([arg1 supplementalArray] == 0)
  10014df5c  adrp    x8, #0x100416000
  10014df60  nop
  10014df64  ldr     x1, [x8, #0xe30]
  10014df68  ldr     x0, [sp, #0x18]
  10014df6c  bl      _objc_msgSend                            ; [[arg1 supplementalArray] count]
  10014df70  cbz     x0, loc_10014e024                        ; if ([[arg1 supplementalArray] count] == 0)
  10014df74  mov     x0, x22
  10014df78  mov     x1, x23
  10014df7c  bl      _objc_msgSend                            ; [self container]
  10014df80  mov     x29, x29
  10014df84  bl      _objc_retainAutoreleasedReturnValue
  10014df88  mov     x20, x0
  10014df8c  adrp    x8, #0x10041c000
  10014df90  nop
  10014df94  ldr     x1, [x8, #0xe78]
  10014df98  ldr     x2, [sp, #0x18]
  10014df9c  bl      _objc_msgSend                            ; [[self container] setSupplementals:[arg1 supplementalArray]]
  10014dfa0  mov     x0, x20
  10014dfa4  bl      _objc_release
  10014dfa8  mov     x0, x22
  10014dfac  mov     x1, x23
  10014dfb0  bl      _objc_msgSend                            ; [self container]
  10014dfb4  mov     x29, x29
  10014dfb8  bl      _objc_retainAutoreleasedReturnValue
  10014dfbc  mov     x25, x0
  10014dfc0  adrp    x8, #0x10041c000
  10014dfc4  nop
  10014dfc8  ldr     x1, [x8, #0xe48]
  10014dfcc  bl      _objc_msgSend                            ; [[self container] lastLoadedSupplementedResource]
  10014dfd0  mov     x29, x29
  10014dfd4  bl      _objc_retainAutoreleasedReturnValue
  10014dfd8  mov     x21, x0
  10014dfdc  mov     x0, x28
  10014dfe0  mov     x1, x24
  10014dfe4  bl      _objc_msgSend                            ; [arg1 supplementalArray]
  10014dfe8  mov     x29, x29
  10014dfec  bl      _objc_retainAutoreleasedReturnValue
  10014dff0  mov     x20, x0
  10014dff4  adrp    x8, #0x10041c000
  10014dff8  nop
  10014dffc  ldr     x1, [x8, #0xe58]
  10014e000  mov     x0, x21
  10014e004  mov     x2, x20
  10014e008  bl      _objc_msgSend                            ; [[[self container] lastLoadedSupplementedResource] setSupplementalArray:[arg1 supplementalArray]]
  10014e00c  mov     x0, x20
  10014e010  bl      _objc_release
  10014e014  mov     x0, x21
  10014e018  bl      _objc_release
  10014e01c  mov     x0, x25
  10014e020  bl      _objc_release
loc_10014e024:
  10014e024  mov     x0, x22
  10014e028  mov     x1, x23
  10014e02c  bl      _objc_msgSend                            ; [self container]
  10014e030  mov     x29, x29
  10014e034  bl      _objc_retainAutoreleasedReturnValue
  10014e038  mov     x21, x0
  10014e03c  mov     x0, x22
  10014e040  mov     x1, x23
  10014e044  bl      _objc_msgSend                            ; [self container]
  10014e048  mov     x29, x29
  10014e04c  bl      _objc_retainAutoreleasedReturnValue
  10014e050  mov     x20, x0
  10014e054  adrp    x8, #0x10041d000
  10014e058  nop
  10014e05c  ldr     x1, [x8, #0x4c8]
  10014e060  bl      _objc_msgSend                            ; [[self container] currentTimeInMilliseconds]
  10014e064  adrp    x8, #0x10041c000
  10014e068  nop
  10014e06c  ldr     x1, [x8, #0xe88]
  10014e070  mov     x0, x21
  10014e074  bl      _objc_msgSend                            ; [[self container] setLastRefreshTime:[[self container] currentTimeInMilliseconds]]
  10014e078  mov     x0, x20
  10014e07c  bl      _objc_release
  10014e080  mov     x0, x21
  10014e084  bl      _objc_release
  10014e088  mov     x0, x22
  10014e08c  mov     x1, x23
  10014e090  bl      _objc_msgSend                            ; [self container]
  10014e094  mov     x29, x29
  10014e098  bl      _objc_retainAutoreleasedReturnValue
  10014e09c  mov     x26, x0
  10014e0a0  adrp    x8, #0x10041c000
  10014e0a4  nop
  10014e0a8  ldr     x24, [x8, #0xe48]
  10014e0ac  mov     x1, x24
  10014e0b0  bl      _objc_msgSend                            ; [[self container] lastLoadedSupplementedResource]
  10014e0b4  mov     x29, x29
  10014e0b8  bl      _objc_retainAutoreleasedReturnValue
  10014e0bc  mov     x21, x0
  10014e0c0  adrp    x8, #0x10041c000
  10014e0c4  nop
  10014e0c8  ldr     x27, [x8, #0xed8]
  10014e0cc  mov     x0, x28
  10014e0d0  mov     x1, x27
  10014e0d4  bl      _objc_msgSend                            ; [arg1 fingerprint]
  10014e0d8  mov     x29, x29
  10014e0dc  bl      _objc_retainAutoreleasedReturnValue
  10014e0e0  mov     x20, x0
  10014e0e4  adrp    x8, #0x10041c000
  10014e0e8  nop
  10014e0ec  ldr     x25, [x8, #0xe60]
  10014e0f0  mov     x0, x21
  10014e0f4  mov     x1, x25
  10014e0f8  mov     x2, x20
  10014e0fc  bl      _objc_msgSend                            ; [[[self container] lastLoadedSupplementedResource] setFingerprint:[arg1 fingerprint]]
  10014e100  mov     x0, x20
  10014e104  bl      _objc_release
  10014e108  mov     x0, x21
  10014e10c  bl      _objc_release
  10014e110  mov     x0, x26
  10014e114  bl      _objc_release
  10014e118  mov     x0, x22
  10014e11c  mov     x1, x23
  10014e120  bl      _objc_msgSend                            ; [self container]
  10014e124  mov     x29, x29
  10014e128  bl      _objc_retainAutoreleasedReturnValue
  10014e12c  mov     x21, x0
  10014e130  mov     x1, x24
  10014e134  bl      _objc_msgSend                            ; [[self container] lastLoadedSupplementedResource]
  10014e138  mov     x29, x29
  10014e13c  bl      _objc_retainAutoreleasedReturnValue
  10014e140  mov     x26, x0
  10014e144  mov     x1, x27
  10014e148  bl      _objc_msgSend                            ; [[[self container] lastLoadedSupplementedResource] fingerprint]
  10014e14c  mov     x29, x29
  10014e150  bl      _objc_retainAutoreleasedReturnValue
  10014e154  mov     x20, x0
  10014e158  adrp    x8, #0x100417000
  10014e15c  nop
  10014e160  ldr     x1, [x8, #0xc58]
  10014e164  bl      _objc_msgSend                            ; [[[[self container] lastLoadedSupplementedResource] fingerprint] length]
  10014e168  mov     x19, x0
  10014e16c  mov     x0, x20
  10014e170  bl      _objc_release
  10014e174  mov     x0, x26
  10014e178  bl      _objc_release
  10014e17c  mov     x0, x21
  10014e180  bl      _objc_release
  10014e184  cbnz    x19, loc_10014e260                       ; if ([[[[self container] lastLoadedSupplementedResource] fingerprint] length] != 0)
  10014e188  mov     x0, x22
  10014e18c  mov     x1, x23
  10014e190  bl      _objc_msgSend                            ; [self container]
  10014e194  mov     x29, x29
  10014e198  bl      _objc_retainAutoreleasedReturnValue
  10014e19c  mov     x26, x0
  10014e1a0  mov     x1, x24
  10014e1a4  bl      _objc_msgSend                            ; [[self container] lastLoadedSupplementedResource]
  10014e1a8  str     x28, [sp, #8]
  10014e1ac  mov     x29, x29
  10014e1b0  bl      _objc_retainAutoreleasedReturnValue
  10014e1b4  mov     x27, x0
  10014e1b8  mov     x0, x22
  10014e1bc  mov     x1, x23
  10014e1c0  bl      _objc_msgSend                            ; [self container]
  10014e1c4  mov     x29, x29
  10014e1c8  bl      _objc_retainAutoreleasedReturnValue
  10014e1cc  mov     x28, x0
  10014e1d0  mov     x1, x24
  10014e1d4  bl      _objc_msgSend                            ; [[self container] lastLoadedSupplementedResource]
  10014e1d8  mov     x29, x29
  10014e1dc  bl      _objc_retainAutoreleasedReturnValue
  10014e1e0  mov     x21, x0
  10014e1e4  adrp    x8, #0x10041c000
  10014e1e8  nop
  10014e1ec  ldr     x1, [x8, #0xe38]
  10014e1f0  bl      _objc_msgSend                            ; [[[self container] lastLoadedSupplementedResource] resource]
  10014e1f4  mov     x29, x29
  10014e1f8  bl      _objc_retainAutoreleasedReturnValue
  10014e1fc  mov     x20, x0
  10014e200  adrp    x8, #0x10041d000
  10014e204  nop
  10014e208  ldr     x1, [x8, #0xc08]
  10014e20c  bl      _objc_msgSend                            ; [[[[self container] lastLoadedSupplementedResource] resource] version]
  10014e210  mov     x29, x29
  10014e214  bl      _objc_retainAutoreleasedReturnValue
  10014e218  mov     x19, x0
  10014e21c  mov     x0, x27
  10014e220  mov     x1, x25
  10014e224  mov     x2, x19
  10014e228  bl      _objc_msgSend                            ; [[[self container] lastLoadedSupplementedResource] setFingerprint:[[[[self container] lastLoadedSupplementedResource] resource] version]]
  10014e22c  mov     x0, x19
  10014e230  bl      _objc_release
  10014e234  mov     x0, x20
  10014e238  bl      _objc_release
  10014e23c  mov     x0, x21
  10014e240  bl      _objc_release
  10014e244  mov     x0, x28
  10014e248  bl      _objc_release
  10014e24c  mov     x0, x27
  10014e250  bl      _objc_release
  10014e254  mov     x0, x26
  10014e258  bl      _objc_release
  10014e25c  ldr     x28, [sp, #8]
loc_10014e260:
  10014e260  adrp    x8, #0x10041d000
  10014e264  ldr     x21, [x8, #0xf78]                        ; class NSString
  10014e268  mov     x0, x22
  10014e26c  mov     x1, x23
  10014e270  bl      _objc_msgSend                            ; [self container]
  10014e274  mov     x29, x29
  10014e278  bl      _objc_retainAutoreleasedReturnValue
  10014e27c  mov     x20, x0
  10014e280  adrp    x8, #0x10041c000
  10014e284  nop
  10014e288  ldr     x1, [x8, #0xe98]
  10014e28c  bl      _objc_msgSend                            ; [[self container] lastRefreshTime]
  10014e290  adrp    x8, #0x100416000
  10014e294  nop
  10014e298  ldr     x1, [x8, #0xee8]
  10014e29c  str     d0, [sp]
  10014e2a0  adrp    x2, #0x1003c7000
  10014e2a4  add     x2, x2, #0x710                           ; @"Setting refresh time to current time: %f"
  10014e2a8  mov     x0, x21
  10014e2ac  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Setting refresh time to current time: %f", [[self container] lastRefreshTime]]
  10014e2b0  mov     x29, x29
  10014e2b4  bl      _objc_retainAutoreleasedReturnValue
  10014e2b8  mov     x25, x0
  10014e2bc  mov     x0, x20
  10014e2c0  bl      _objc_release
  10014e2c4  adrp    x8, #0x10041e000
  10014e2c8  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10014e2cc  adrp    x8, #0x10041b000
  10014e2d0  nop
  10014e2d4  ldr     x1, [x8, #0xb08]
  10014e2d8  mov     x2, x25
  10014e2dc  ldr     x27, [sp, #0x10]
  10014e2e0  bl      _objc_msgSend                            ; [TAGLog verbose:[NSString stringWithFormat:@"Setting refresh time to current time: %f", [[self container] lastRefreshTime]]]
  10014e2e4  adrp    x8, #0x10041e000
  10014e2e8  ldr     x0, [x8, #0x8f8]                         ; class TAGPreviewManager
  10014e2ec  adrp    x8, #0x10041b000
  10014e2f0  nop
  10014e2f4  ldr     x1, [x8, #0xd30]
  10014e2f8  bl      _objc_msgSend                            ; [TAGPreviewManager instance]
  10014e2fc  mov     x29, x29
  10014e300  bl      _objc_retainAutoreleasedReturnValue
  10014e304  mov     x26, x0
  10014e308  mov     x0, x22
  10014e30c  mov     x1, x23
  10014e310  bl      _objc_msgSend                            ; [self container]
  10014e314  mov     x29, x29
  10014e318  bl      _objc_retainAutoreleasedReturnValue
  10014e31c  mov     x21, x0
  10014e320  adrp    x8, #0x10041d000
  10014e324  nop
  10014e328  ldr     x1, [x8, #0x1c0]
  10014e32c  bl      _objc_msgSend                            ; [[self container] containerId]
  10014e330  mov     x29, x29
  10014e334  bl      _objc_retainAutoreleasedReturnValue
  10014e338  mov     x20, x0
  10014e33c  adrp    x8, #0x10041c000
  10014e340  nop
  10014e344  ldr     x1, [x8, #0xee0]
  10014e348  mov     x0, x26
  10014e34c  mov     x2, x20
  10014e350  bl      _objc_msgSend                            ; [[TAGPreviewManager instance] isPreviewingContainer:[[self container] containerId]]
  10014e354  mov     x19, x0
  10014e358  mov     x0, x20
  10014e35c  bl      _objc_release
  10014e360  mov     x0, x21
  10014e364  bl      _objc_release
  10014e368  mov     x0, x26
  10014e36c  bl      _objc_release
  10014e370  tbnz    w19, #0, loc_10014e3e8                   ; if (([[TAGPreviewManager instance] isPreviewingContainer:[[self container] containerId]] & 1))
  10014e374  mov     x0, x22
  10014e378  mov     x1, x23
  10014e37c  bl      _objc_msgSend                            ; [self container]
  10014e380  mov     x29, x29
  10014e384  bl      _objc_retainAutoreleasedReturnValue
  10014e388  mov     x21, x0
  10014e38c  mov     x0, x22
  10014e390  mov     x1, x23
  10014e394  bl      _objc_msgSend                            ; [self container]
  10014e398  mov     x29, x29
  10014e39c  bl      _objc_retainAutoreleasedReturnValue
  10014e3a0  mov     x20, x0
  10014e3a4  mov     x1, x24
  10014e3a8  bl      _objc_msgSend                            ; [[self container] lastLoadedSupplementedResource]
  10014e3ac  mov     x29, x29
  10014e3b0  bl      _objc_retainAutoreleasedReturnValue
  10014e3b4  mov     x24, x0
  10014e3b8  adrp    x8, #0x10041c000
  10014e3bc  nop
  10014e3c0  ldr     x1, [x8, #0xee8]
  10014e3c4  mov     x0, x21
  10014e3c8  mov     x2, x24
  10014e3cc  bl      _objc_msgSend                            ; [[self container] saveResourceToDisk:[[self container] lastLoadedSupplementedResource]]
  10014e3d0  mov     x0, x24
  10014e3d4  bl      _objc_release
  10014e3d8  mov     x0, x20
  10014e3dc  bl      _objc_release
  10014e3e0  mov     x0, x21
  10014e3e4  bl      _objc_release
loc_10014e3e8:
  10014e3e8  mov     x0, x22
  10014e3ec  mov     x1, x23
  10014e3f0  bl      _objc_msgSend                            ; [self container]
  10014e3f4  mov     x29, x29
  10014e3f8  bl      _objc_retainAutoreleasedReturnValue
  10014e3fc  mov     x20, x0
  10014e400  adrp    x8, #0x10041e000
  10014e404  ldr     x0, [x8, #0x860]                         ; class TAGContainer
  10014e408  adrp    x8, #0x10041c000
  10014e40c  nop
  10014e410  ldr     x1, [x8, #0xe90]
  10014e414  bl      _objc_msgSend                            ; [TAGContainer refreshPeriodOnSuccess]
  10014e418  adrp    x8, #0x10041c000
  10014e41c  nop
  10014e420  ldr     x1, [x8, #0xea0]
  10014e424  mov     x0, x20
  10014e428  bl      _objc_msgSend                            ; [[self container] loadAfterDelay:[TAGContainer refreshPeriodOnSuccess]]
  10014e42c  mov     x0, x20
  10014e430  bl      _objc_release
  10014e434  adrp    x8, #0x10041c000
  10014e438  nop
  10014e43c  ldr     x1, [x8, #0xe10]
  10014e440  mov     x0, x22
  10014e444  bl      _objc_msgSend                            ; [self callback]
  10014e448  mov     x29, x29
  10014e44c  bl      _objc_retainAutoreleasedReturnValue
  10014e450  mov     x21, x0
  10014e454  mov     x0, x22
  10014e458  mov     x1, x23
  10014e45c  bl      _objc_msgSend                            ; [self container]
  10014e460  mov     x29, x29
  10014e464  bl      _objc_retainAutoreleasedReturnValue
  10014e468  mov     x20, x0
  10014e46c  adrp    x8, #0x10041c000
  10014e470  nop
  10014e474  ldr     x1, [x8, #0xea8]
  10014e478  mov     w3, #1
  10014e47c  mov     x0, x21
  10014e480  mov     x2, x20
  10014e484  bl      _objc_msgSend                            ; [[self callback] containerRefreshSuccess:[self container] refreshType:1]
  10014e488  mov     x0, x20
  10014e48c  bl      _objc_release
  10014e490  mov     x0, x21
  10014e494  bl      _objc_release
  10014e498  mov     x0, x25
  10014e49c  bl      _objc_release
  10014e4a0  ldr     x0, [sp, #0x18]
  10014e4a4  bl      _objc_release
  10014e4a8  mov     x0, x27
  10014e4ac  bl      _objc_sync_exit                          ; objc_sync_exit([self container])
  10014e4b0  mov     x0, x27
  10014e4b4  b       loc_10014e4dc
loc_10014e4b8:
  10014e4b8  adrp    x8, #0x10041c000
  10014e4bc  nop
  10014e4c0  ldr     x1, [x8, #0xed0]
  10014e4c4  mov     x2, #3
  10014e4c8  mov     x0, x22
  10014e4cc  bl      _objc_msgSend                            ; [self onFailure:3]
  10014e4d0  mov     x0, x25
  10014e4d4  bl      _objc_sync_exit                          ; objc_sync_exit([self container])
  10014e4d8  mov     x0, x25
loc_10014e4dc:
  10014e4dc  bl      _objc_release
  10014e4e0  mov     x0, x28
  10014e4e4  sub     sp, x29, #0x50
  10014e4e8  ldp     x28, x27, [sp], #0x10
  10014e4ec  ldp     x26, x25, [sp], #0x10
  10014e4f0  ldp     x24, x23, [sp], #0x10
  10014e4f4  ldp     x22, x21, [sp], #0x10
  10014e4f8  ldp     x20, x19, [sp], #0x10
  10014e4fc  ldp     x29, x30, [sp], #0x10
  10014e500  b       _objc_release
  10014e504  str     x28, [sp, #8]
  10014e508  mov     x22, x0
  10014e50c  b       loc_10014e740
  10014e510  stp     x28, x25, [sp, #8]
  10014e514  mov     x22, x0
  10014e518  mov     x0, x20
  10014e51c  b       loc_10014e54c
  10014e520  stp     x28, x25, [sp, #8]
  10014e524  mov     x22, x0
  10014e528  b       loc_10014e550
  10014e52c  stp     x28, x25, [sp, #8]
  10014e530  mov     x22, x0
  10014e534  b       loc_10014e548
  10014e538  stp     x28, x25, [sp, #8]
  10014e53c  mov     x22, x0
  10014e540  mov     x0, x20
  10014e544  bl      _objc_release
loc_10014e548:
  10014e548  mov     x0, x24
loc_10014e54c:
  10014e54c  bl      _objc_release
loc_10014e550:
  10014e550  mov     x0, x21
  10014e554  b       loc_10014e71c
  10014e558  stp     x28, x25, [sp, #8]
  10014e55c  mov     x22, x0
  10014e560  b       loc_10014e574
  10014e564  stp     x28, x25, [sp, #8]
  10014e568  mov     x22, x0
  10014e56c  mov     x0, x20
  10014e570  bl      _objc_release
loc_10014e574:
  10014e574  mov     x0, x24
  10014e578  b       loc_10014e71c
  10014e57c  b       loc_10014e66c
  10014e580  b       loc_10014e6e0
  10014e584  b       loc_10014e6ec
  10014e588  b       loc_10014e6f8
  10014e58c  b       loc_10014e5c8
  10014e590  str     x28, [sp, #8]
  10014e594  mov     x22, x0
  10014e598  mov     x0, x20
  10014e59c  b       loc_10014e5f4
  10014e5a0  b       loc_10014e600
  10014e5a4  str     x28, [sp, #8]
  10014e5a8  mov     x22, x0
  10014e5ac  b       loc_10014e5c0
  10014e5b0  str     x28, [sp, #8]
  10014e5b4  mov     x22, x0
  10014e5b8  mov     x0, x20
  10014e5bc  bl      _objc_release
loc_10014e5c0:
  10014e5c0  mov     x0, x21
  10014e5c4  b       loc_10014e654
loc_10014e5c8:
  10014e5c8  str     x28, [sp, #8]
  10014e5cc  mov     x22, x0
  10014e5d0  b       loc_10014e5f8
  10014e5d4  str     x28, [sp, #8]
  10014e5d8  mov     x22, x0
  10014e5dc  b       loc_10014e5f0
  10014e5e0  str     x28, [sp, #8]
  10014e5e4  mov     x22, x0
  10014e5e8  mov     x0, x20
  10014e5ec  bl      _objc_release
loc_10014e5f0:
  10014e5f0  mov     x0, x26
loc_10014e5f4:
  10014e5f4  bl      _objc_release
loc_10014e5f8:
  10014e5f8  mov     x0, x21
  10014e5fc  b       loc_10014e714
loc_10014e600:
  10014e600  str     x28, [sp, #8]
  10014e604  mov     x22, x0
  10014e608  b       loc_10014e658
  10014e60c  mov     x22, x0
  10014e610  b       loc_10014e650
  10014e614  mov     x22, x0
  10014e618  b       loc_10014e648
  10014e61c  mov     x22, x0
  10014e620  b       loc_10014e640
  10014e624  mov     x22, x0
  10014e628  b       loc_10014e638
  10014e62c  mov     x22, x0
  10014e630  mov     x0, x19
  10014e634  bl      _objc_release
loc_10014e638:
  10014e638  mov     x0, x20
  10014e63c  bl      _objc_release
loc_10014e640:
  10014e640  mov     x0, x21
  10014e644  bl      _objc_release
loc_10014e648:
  10014e648  mov     x0, x28
  10014e64c  bl      _objc_release
loc_10014e650:
  10014e650  mov     x0, x27
loc_10014e654:
  10014e654  bl      _objc_release
loc_10014e658:
  10014e658  mov     x0, x26
  10014e65c  b       loc_10014e714
  10014e660  str     x28, [sp, #8]
  10014e664  mov     x22, x0
  10014e668  b       loc_10014e718
loc_10014e66c:
  10014e66c  str     x28, [sp, #8]
  10014e670  mov     x22, x0
  10014e674  mov     x0, x20
  10014e678  b       loc_10014e714
  10014e67c  str     x28, [sp, #8]
  10014e680  mov     x22, x0
  10014e684  b       loc_10014e6ac
  10014e688  str     x28, [sp, #8]
  10014e68c  mov     x22, x0
  10014e690  b       loc_10014e6a4
  10014e694  str     x28, [sp, #8]
  10014e698  mov     x22, x0
  10014e69c  mov     x0, x20
  10014e6a0  bl      _objc_release
loc_10014e6a4:
  10014e6a4  mov     x0, x21
  10014e6a8  bl      _objc_release
loc_10014e6ac:
  10014e6ac  mov     x0, x26
  10014e6b0  b       loc_10014e70c
  10014e6b4  b       loc_10014e6ec
  10014e6b8  b       loc_10014e6f8
  10014e6bc  str     x28, [sp, #8]
  10014e6c0  mov     x22, x0
  10014e6c4  mov     x0, x24
  10014e6c8  bl      _objc_release
  10014e6cc  b       loc_10014e700
  10014e6d0  str     x28, [sp, #8]
  10014e6d4  mov     x22, x0
  10014e6d8  mov     x0, x20
  10014e6dc  b       loc_10014e70c
loc_10014e6e0:
  10014e6e0  str     x28, [sp, #8]
  10014e6e4  mov     x22, x0
  10014e6e8  b       loc_10014e710
loc_10014e6ec:
  10014e6ec  str     x28, [sp, #8]
  10014e6f0  mov     x22, x0
  10014e6f4  b       loc_10014e708
loc_10014e6f8:
  10014e6f8  str     x28, [sp, #8]
  10014e6fc  mov     x22, x0
loc_10014e700:
  10014e700  mov     x0, x20
  10014e704  bl      _objc_release
loc_10014e708:
  10014e708  mov     x0, x21
loc_10014e70c:
  10014e70c  bl      _objc_release
loc_10014e710:
  10014e710  mov     x0, x25
loc_10014e714:
  10014e714  bl      _objc_release
loc_10014e718:
  10014e718  ldr     x0, [sp, #0x18]
loc_10014e71c:
  10014e71c  bl      _objc_release
  10014e720  b       loc_10014e72c
  10014e724  stp     x28, x25, [sp, #8]
  10014e728  mov     x22, x0
loc_10014e72c:
  10014e72c  ldr     x19, [sp, #0x10]
  10014e730  mov     x0, x19
  10014e734  bl      _objc_sync_exit                          ; objc_sync_exit()
  10014e738  mov     x0, x19
  10014e73c  bl      _objc_release
loc_10014e740:
  10014e740  ldr     x0, [sp, #8]
  10014e744  bl      _objc_release
  10014e748  mov     x0, x22
  10014e74c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetworkLoadCallback onFailure:]
; address 0x10014e750  size 368  kind objc
; ======================================================================
  10014e750  stp     x29, x30, [sp, #-0x10]!
  10014e754  mov     x29, sp
  10014e758  stp     x20, x19, [sp, #-0x10]!
  10014e75c  stp     x22, x21, [sp, #-0x10]!
  10014e760  stp     x24, x23, [sp, #-0x10]!
  10014e764  mov     x20, x2
  10014e768  mov     x21, x0
  10014e76c  adrp    x8, #0x10041c000
  10014e770  nop
  10014e774  ldr     x22, [x8, #0xde0]
  10014e778  mov     x1, x22
  10014e77c  bl      _objc_msgSend                            ; [self container]
  10014e780  mov     x29, x29
  10014e784  bl      _objc_retainAutoreleasedReturnValue
  10014e788  mov     x19, x0
  10014e78c  bl      _objc_sync_enter                         ; objc_sync_enter([self container])
  10014e790  mov     x0, x21
  10014e794  mov     x1, x22
  10014e798  bl      _objc_msgSend                            ; [self container]
  10014e79c  mov     x29, x29
  10014e7a0  bl      _objc_retainAutoreleasedReturnValue
  10014e7a4  mov     x23, x0
  10014e7a8  adrp    x8, #0x10041e000
  10014e7ac  ldr     x0, [x8, #0x860]                         ; class TAGContainer
  10014e7b0  adrp    x8, #0x10041c000
  10014e7b4  nop
  10014e7b8  ldr     x1, [x8, #0xef0]
  10014e7bc  bl      _objc_msgSend                            ; [TAGContainer refreshPeriodOnFailure]
  10014e7c0  adrp    x8, #0x10041c000
  10014e7c4  nop
  10014e7c8  ldr     x1, [x8, #0xea0]
  10014e7cc  mov     x0, x23
  10014e7d0  bl      _objc_msgSend                            ; [[self container] loadAfterDelay:[TAGContainer refreshPeriodOnFailure]]
  10014e7d4  mov     x0, x23
  10014e7d8  bl      _objc_release
  10014e7dc  adrp    x8, #0x10041c000
  10014e7e0  nop
  10014e7e4  ldr     x1, [x8, #0xe10]
  10014e7e8  mov     x0, x21
  10014e7ec  bl      _objc_msgSend                            ; [self callback]
  10014e7f0  mov     x29, x29
  10014e7f4  bl      _objc_retainAutoreleasedReturnValue
  10014e7f8  mov     x23, x0
  10014e7fc  mov     x0, x21
  10014e800  mov     x1, x22
  10014e804  bl      _objc_msgSend                            ; [self container]
  10014e808  mov     x29, x29
  10014e80c  bl      _objc_retainAutoreleasedReturnValue
  10014e810  mov     x22, x0
  10014e814  adrp    x8, #0x10041c000
  10014e818  nop
  10014e81c  ldr     x1, [x8, #0xeb0]
  10014e820  mov     x0, x21
  10014e824  mov     x2, x20
  10014e828  bl      _objc_msgSend                            ; [self failureToRefreshFailure:arg1]
  10014e82c  mov     x3, x0
  10014e830  adrp    x8, #0x10041c000
  10014e834  nop
  10014e838  ldr     x1, [x8, #0xeb8]
  10014e83c  mov     w4, #1
  10014e840  mov     x0, x23
  10014e844  mov     x2, x22
  10014e848  bl      _objc_msgSend                            ; [[self callback] containerRefreshFailure:[self container] failure:[self failureToRefreshFailure:arg1] refreshType:1]
  10014e84c  mov     x0, x22
  10014e850  bl      _objc_release
  10014e854  mov     x0, x23
  10014e858  bl      _objc_release
  10014e85c  mov     x0, x19
  10014e860  bl      _objc_sync_exit                          ; objc_sync_exit([self container])
  10014e864  mov     x0, x19
  10014e868  ldp     x24, x23, [sp], #0x10
  10014e86c  ldp     x22, x21, [sp], #0x10
  10014e870  ldp     x20, x19, [sp], #0x10
  10014e874  ldp     x29, x30, [sp], #0x10
  10014e878  b       _objc_release
  10014e87c  mov     x20, x0
  10014e880  b       loc_10014e8a0
  10014e884  mov     x20, x0
  10014e888  b       loc_10014e8a8
  10014e88c  mov     x20, x0
  10014e890  b       loc_10014e8a0
  10014e894  mov     x20, x0
  10014e898  mov     x0, x22
  10014e89c  bl      _objc_release
loc_10014e8a0:
  10014e8a0  mov     x0, x23
  10014e8a4  bl      _objc_release
loc_10014e8a8:
  10014e8a8  mov     x0, x19
  10014e8ac  bl      _objc_sync_exit                          ; objc_sync_exit()
  10014e8b0  mov     x0, x19
  10014e8b4  bl      _objc_release
  10014e8b8  mov     x0, x20
  10014e8bc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetworkLoadCallback failureToRefreshFailure:]
; address 0x10014e8c0  size 44  kind objc
; ======================================================================
  10014e8c0  mov     w8, #2
  10014e8c4  mov     w9, #4
  10014e8c8  cmp     x2, #2
  10014e8cc  mov     w10, #5
  10014e8d0  mov     w11, #3
  10014e8d4  csel    w10, w10, w11, ne
  10014e8d8  cmp     x2, #3
  10014e8dc  csel    w9, w9, w10, eq
  10014e8e0  cmp     x2, #1
  10014e8e4  csel    w0, w8, w9, eq
  10014e8e8  ret

; ======================================================================
; -[TAGNetworkLoadCallback close]
; address 0x10014e8ec  size 124  kind objc
; ======================================================================
  10014e8ec  stp     x29, x30, [sp, #-0x10]!
  10014e8f0  mov     x29, sp
  10014e8f4  stp     x20, x19, [sp, #-0x10]!
  10014e8f8  mov     x20, x0
  10014e8fc  adrp    x8, #0x10041c000
  10014e900  nop
  10014e904  ldr     x1, [x8, #0xde0]
  10014e908  bl      _objc_msgSend                            ; [self container]
  10014e90c  mov     x29, x29
  10014e910  bl      _objc_retainAutoreleasedReturnValue
  10014e914  mov     x19, x0
  10014e918  bl      _objc_sync_enter                         ; objc_sync_enter([self container])
  10014e91c  adrp    x8, #0x10041c000
  10014e920  nop
  10014e924  ldr     x1, [x8, #0xec0]
  10014e928  mov     x2, #0
  10014e92c  mov     x0, x20
  10014e930  bl      _objc_msgSend                            ; [self setCallback:0]
  10014e934  mov     x0, x19
  10014e938  bl      _objc_sync_exit                          ; objc_sync_exit([self container])
  10014e93c  mov     x0, x19
  10014e940  ldp     x20, x19, [sp], #0x10
  10014e944  ldp     x29, x30, [sp], #0x10
  10014e948  b       _objc_release
  10014e94c  mov     x20, x0
  10014e950  mov     x0, x19
  10014e954  bl      _objc_sync_exit                          ; objc_sync_exit()
  10014e958  mov     x0, x19
  10014e95c  bl      _objc_release
  10014e960  mov     x0, x20
  10014e964  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGNetworkLoadCallback callback]
; address 0x10014e968  size 16  kind objc
; ======================================================================
  10014e968  adrp    x8, #0x100420000
  10014e96c  ldrsw   x2, [x8, #0xa0c]                         ; ivar offset TAGNetworkLoadCallback._callback (+0x8)
  10014e970  mov     w3, #1
  10014e974  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGNetworkLoadCallback setCallback:]
; address 0x10014e978  size 12  kind objc
; ======================================================================
  10014e978  adrp    x8, #0x100420000
  10014e97c  ldrsw   x3, [x8, #0xa0c]                         ; ivar offset TAGNetworkLoadCallback._callback (+0x8)
  10014e980  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGNetworkLoadCallback container]
; address 0x10014e984  size 16  kind objc
; ======================================================================
  10014e984  adrp    x8, #0x100420000
  10014e988  ldrsw   x2, [x8, #0xa10]                         ; ivar offset TAGNetworkLoadCallback._container (+0x10)
  10014e98c  mov     w3, #1
  10014e990  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGNetworkLoadCallback setContainer:]
; address 0x10014e994  size 12  kind objc
; ======================================================================
  10014e994  adrp    x8, #0x100420000
  10014e998  ldrsw   x3, [x8, #0xa10]                         ; ivar offset TAGNetworkLoadCallback._container (+0x10)
  10014e99c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGNetworkLoadCallback .cxx_destruct]
; address 0x10014e9a0  size 64  kind objc
; ======================================================================
  10014e9a0  stp     x29, x30, [sp, #-0x10]!
  10014e9a4  mov     x29, sp
  10014e9a8  stp     x20, x19, [sp, #-0x10]!
  10014e9ac  mov     x19, x0
  10014e9b0  adrp    x8, #0x100420000
  10014e9b4  ldrsw   x8, [x8, #0xa10]                         ; ivar offset TAGNetworkLoadCallback._container (+0x10)
  10014e9b8  add     x0, x19, x8
  10014e9bc  mov     x1, #0
  10014e9c0  bl      _objc_storeStrong
  10014e9c4  mov     x1, #0
  10014e9c8  adrp    x8, #0x100420000
  10014e9cc  ldrsw   x8, [x8, #0xa0c]                         ; ivar offset TAGNetworkLoadCallback._callback (+0x8)
  10014e9d0  add     x0, x19, x8
  10014e9d4  ldp     x20, x19, [sp], #0x10
  10014e9d8  ldp     x29, x30, [sp], #0x10
  10014e9dc  b       _objc_storeStrong
