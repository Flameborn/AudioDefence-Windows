// unit S3DRepo — 22 functions
//   0x10010ba70     180  -[S3DRepo didReceiveMemoryWarning:]
//   0x10010bb24     296  -[S3DRepo dealloc]
//   0x10010bc4c     380  -[S3DRepo initWithBundlePath:]
//   0x10010bdc8     272  +[S3DRepo repoForBundlePath:]
//   0x10010bed8    1384  -[S3DRepo each:block:]
//   0x10010c440     448  -[S3DRepo generateIdForClass:]
//   0x10010c600      16  -[S3DRepo generateIdForClass:]_block_invoke
//   0x10010c610       8  -[S3DRepo generateIdForClass:]_block_invoke_2
//   0x10010c618     192  -[S3DRepo generateIdForClass:]_block_invoke_3
//   0x10010c6d8      60  sub_10010c6d8
//   0x10010c714      48  sub_10010c714
//   0x10010c744     296  -[S3DRepo extractClassName:]
//   0x10010c86c     396  -[S3DRepo instancePath:]
//   0x10010c9f8     324  -[S3DRepo read:]
//   0x10010cb3c     260  -[S3DRepo write:data:]
//   0x10010cc40     660  -[S3DRepo load:]
//   0x10010ced4     536  -[S3DRepo store:]
//   0x10010d0ec      16  -[S3DRepo bundlePath]
//   0x10010d0fc      56  -[S3DRepo setBundlePath:]
//   0x10010d134      16  -[S3DRepo cache]
//   0x10010d144      56  -[S3DRepo setCache:]
//   0x10010d17c      64  -[S3DRepo .cxx_destruct]

; ======================================================================
; -[S3DRepo didReceiveMemoryWarning:]
; address 0x10010ba70  size 180  kind objc
; ======================================================================
  10010ba70  stp     x20, x19, [sp, #-0x20]!
  10010ba74  stp     x29, x30, [sp, #0x10]
  10010ba78  add     x29, sp, #0x10
  10010ba7c  mov     x19, x0
  10010ba80  adrp    x8, #0x10041b000
  10010ba84  nop
  10010ba88  ldr     x1, [x8, #0x888]
  10010ba8c  bl      _objc_msgSend                            ; [self cache]
  10010ba90  mov     x29, x29
  10010ba94  bl      _objc_retainAutoreleasedReturnValue
  10010ba98  mov     x20, x0
  10010ba9c  adrp    x8, #0x100417000
  10010baa0  nop
  10010baa4  ldr     x1, [x8, #0x1b8]
  10010baa8  bl      _objc_msgSend                            ; [[self cache] removeAllObjects]
  10010baac  mov     x0, x20
  10010bab0  bl      _objc_release
  10010bab4  adrp    x8, #0x10041d000
  10010bab8  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10010babc  adrp    x8, #0x10041b000
  10010bac0  nop
  10010bac4  ldr     x1, [x8, #0x828]
  10010bac8  mov     w2, #5
  10010bacc  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:5]
  10010bad0  mov     x29, x29
  10010bad4  bl      _objc_retainAutoreleasedReturnValue
  10010bad8  mov     x20, x0
  10010badc  adrp    x8, #0x10041b000
  10010bae0  nop
  10010bae4  ldr     x1, [x8, #0x890]
  10010bae8  mov     x0, x19
  10010baec  mov     x2, x20
  10010baf0  bl      _objc_msgSend                            ; [self setCache:[NSMutableDictionary dictionaryWithCapacity:5]]
  10010baf4  mov     x0, x20
  10010baf8  ldp     x29, x30, [sp, #0x10]
  10010bafc  ldp     x20, x19, [sp], #0x20
  10010bb00  b       _objc_release
  10010bb04  mov     x19, x0
  10010bb08  b       loc_10010bb1c
  10010bb0c  b       loc_10010bb10
loc_10010bb10:
  10010bb10  mov     x19, x0
  10010bb14  mov     x0, x20
  10010bb18  bl      _objc_release
loc_10010bb1c:
  10010bb1c  mov     x0, x19
  10010bb20  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DRepo dealloc]
; address 0x10010bb24  size 296  kind objc
; ======================================================================
  10010bb24  stp     x20, x19, [sp, #-0x20]!
  10010bb28  stp     x29, x30, [sp, #0x10]
  10010bb2c  add     x29, sp, #0x10
  10010bb30  sub     sp, sp, #0x30
  10010bb34  mov     x19, x0
  10010bb38  adrp    x8, #0x100417000
  10010bb3c  nop
  10010bb40  ldr     x1, [x8, #0x2e0]
  10010bb44  bl      _objc_msgSend                            ; [self class]
  10010bb48  bl      _NSStringFromClass                       ; NSStringFromClass([self class])
  10010bb4c  mov     x29, x29
  10010bb50  bl      _objc_retainAutoreleasedReturnValue
  10010bb54  mov     x20, x0
  10010bb58  str     x20, [sp]
  10010bb5c  adrp    x0, #0x1003c3000
  10010bb60  add     x0, x0, #0xd90                           ; @"Repo %@ going away"
  10010bb64  bl      _NSLog                                   ; NSLog(@"Repo %@ going away", NSStringFromClass([self class]))
  10010bb68  mov     x0, x20
  10010bb6c  bl      _objc_release
  10010bb70  adrp    x8, #0x10041d000
  10010bb74  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10010bb78  adrp    x8, #0x100416000
  10010bb7c  nop
  10010bb80  ldr     x1, [x8, #0xe88]
  10010bb84  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10010bb88  mov     x29, x29
  10010bb8c  bl      _objc_retainAutoreleasedReturnValue
  10010bb90  mov     x20, x0
  10010bb94  adrp    x8, #0x1003b0000
  10010bb98  ldr     x8, [x8, #0xe0]                          ; _UIApplicationDidReceiveMemoryWarningNotification
  10010bb9c  ldr     x3, [x8]                                 ; x3 = _UIApplicationDidReceiveMemoryWarningNotification[+0x0]
  10010bba0  adrp    x8, #0x100416000
  10010bba4  nop
  10010bba8  ldr     x1, [x8, #0xfc0]
  10010bbac  mov     x4, #0
  10010bbb0  mov     x2, x19
  10010bbb4  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:self name:_UIApplicationDidReceiveMemoryWarningNotification[+0x0] object:0]
  10010bbb8  mov     x0, x20
  10010bbbc  bl      _objc_release
  10010bbc0  str     x19, [sp, #0x20]
  10010bbc4  adrp    x8, #0x10041f000
  10010bbc8  ldr     x8, [x8, #0x80]
  10010bbcc  str     x8, [sp, #0x28]
  10010bbd0  adrp    x8, #0x100416000
  10010bbd4  nop
  10010bbd8  ldr     x1, [x8, #0xfc8]
  10010bbdc  add     x0, sp, #0x20
  10010bbe0  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10010bbe4  sub     sp, x29, #0x10
  10010bbe8  ldp     x29, x30, [sp, #0x10]
  10010bbec  ldp     x20, x19, [sp], #0x20
  10010bbf0  ret
  10010bbf4  mov     x20, x0
  10010bbf8  b       loc_10010bc1c
  10010bbfc  mov     x8, x20
  10010bc00  mov     x20, x0
  10010bc04  mov     x0, x8
  10010bc08  b       loc_10010bc18
  10010bc0c  mov     x1, x20
  10010bc10  mov     x20, x0
  10010bc14  mov     x0, x1
loc_10010bc18:
  10010bc18  bl      _objc_release
loc_10010bc1c:
  10010bc1c  str     x19, [sp, #0x10]
  10010bc20  adrp    x8, #0x10041f000
  10010bc24  ldr     x8, [x8, #0x80]
  10010bc28  str     x8, [sp, #0x18]
  10010bc2c  adrp    x8, #0x100416000
  10010bc30  nop
  10010bc34  ldr     x1, [x8, #0xfc8]
  10010bc38  add     x0, sp, #0x10
  10010bc3c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10010bc40  mov     x0, x20
  10010bc44  bl      __Unwind_Resume                          ; Unwind_Resume()
  10010bc48  bl      sub_10000b760

; ======================================================================
; -[S3DRepo initWithBundlePath:]
; address 0x10010bc4c  size 380  kind objc
; ======================================================================
  10010bc4c  stp     x22, x21, [sp, #-0x30]!
  10010bc50  stp     x20, x19, [sp, #0x10]
  10010bc54  stp     x29, x30, [sp, #0x20]
  10010bc58  add     x29, sp, #0x20
  10010bc5c  sub     sp, sp, #0x10
  10010bc60  mov     x20, x0
  10010bc64  mov     x0, x2
  10010bc68  bl      _objc_retain
  10010bc6c  mov     x19, x0
  10010bc70  str     x20, [sp]
  10010bc74  adrp    x8, #0x10041f000
  10010bc78  ldr     x8, [x8, #0x80]
  10010bc7c  str     x8, [sp, #8]
  10010bc80  adrp    x8, #0x100416000
  10010bc84  nop
  10010bc88  ldr     x1, [x8, #0xab8]
  10010bc8c  mov     x21, #0
  10010bc90  mov     x0, sp
  10010bc94  bl      _objc_msgSendSuper2                      ; [super init]
  10010bc98  mov     x20, x0
  10010bc9c  cbz     x20, loc_10010bd68                       ; if (self == 0)
  10010bca0  mov     x21, x20
  10010bca4  adrp    x8, #0x10041b000
  10010bca8  nop
  10010bcac  ldr     x1, [x8, #0x898]
  10010bcb0  mov     x0, x20
  10010bcb4  mov     x2, x19
  10010bcb8  bl      _objc_msgSend                            ; [self setBundlePath:arg1]
  10010bcbc  mov     x21, x20
  10010bcc0  adrp    x8, #0x10041d000
  10010bcc4  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10010bcc8  adrp    x8, #0x10041b000
  10010bccc  nop
  10010bcd0  ldr     x1, [x8, #0x828]
  10010bcd4  mov     w2, #5
  10010bcd8  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:5]
  10010bcdc  mov     x29, x29
  10010bce0  bl      _objc_retainAutoreleasedReturnValue
  10010bce4  mov     x22, x0
  10010bce8  adrp    x8, #0x10041b000
  10010bcec  nop
  10010bcf0  ldr     x1, [x8, #0x890]
  10010bcf4  mov     x0, x20
  10010bcf8  mov     x2, x22
  10010bcfc  bl      _objc_msgSend                            ; [self setCache:[NSMutableDictionary dictionaryWithCapacity:5]]
  10010bd00  mov     x21, x20
  10010bd04  mov     x0, x22
  10010bd08  bl      _objc_release
  10010bd0c  adrp    x8, #0x10041d000
  10010bd10  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10010bd14  adrp    x8, #0x100416000
  10010bd18  nop
  10010bd1c  ldr     x1, [x8, #0xe88]
  10010bd20  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10010bd24  mov     x29, x29
  10010bd28  bl      _objc_retainAutoreleasedReturnValue
  10010bd2c  mov     x21, x0
  10010bd30  adrp    x8, #0x10041b000
  10010bd34  nop
  10010bd38  ldr     x3, [x8, #0x8a0]
  10010bd3c  adrp    x8, #0x1003b0000
  10010bd40  ldr     x8, [x8, #0xe0]                          ; _UIApplicationDidReceiveMemoryWarningNotification
  10010bd44  ldr     x4, [x8]                                 ; x4 = _UIApplicationDidReceiveMemoryWarningNotification[+0x0]
  10010bd48  adrp    x8, #0x100416000
  10010bd4c  nop
  10010bd50  ldr     x1, [x8, #0xe98]
  10010bd54  mov     x5, #0
  10010bd58  mov     x2, x20
  10010bd5c  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didReceiveMemoryWarning:) name:_UIApplicationDidReceiveMemoryWarningNotification[+0x0] object:0]
  10010bd60  mov     x0, x21
  10010bd64  bl      _objc_release
loc_10010bd68:
  10010bd68  mov     x0, x19
  10010bd6c  bl      _objc_release
  10010bd70  mov     x0, x20
  10010bd74  sub     sp, x29, #0x20
  10010bd78  ldp     x29, x30, [sp, #0x20]
  10010bd7c  ldp     x20, x19, [sp, #0x10]
  10010bd80  ldp     x22, x21, [sp], #0x30
  10010bd84  ret
  10010bd88  mov     x22, x0
  10010bd8c  b       loc_10010bdb0
  10010bd90  mov     x1, x22
  10010bd94  mov     x22, x0
  10010bd98  mov     x0, x1
  10010bd9c  b       loc_10010bda8
  10010bda0  mov     x22, x0
  10010bda4  mov     x0, x21
loc_10010bda8:
  10010bda8  bl      _objc_release
  10010bdac  mov     x21, x20
loc_10010bdb0:
  10010bdb0  mov     x0, x19
  10010bdb4  bl      _objc_release
  10010bdb8  mov     x0, x21
  10010bdbc  bl      _objc_release
  10010bdc0  mov     x0, x22
  10010bdc4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[S3DRepo repoForBundlePath:]
; address 0x10010bdc8  size 272  kind objc
; ======================================================================
  10010bdc8  stp     x22, x21, [sp, #-0x30]!
  10010bdcc  stp     x20, x19, [sp, #0x10]
  10010bdd0  stp     x29, x30, [sp, #0x20]
  10010bdd4  add     x29, sp, #0x20
  10010bdd8  mov     x0, x2
  10010bddc  bl      _objc_retain
  10010bde0  mov     x19, x0
  10010bde4  adrp    x21, #0x10042d000
  10010bde8  ldr     x0, [x21, #0xc00]                        ; load g_10042dc00
  10010bdec  cbnz    x0, loc_10010be28                        ; if (g_10042dc00 != 0)
  10010bdf0  adrp    x8, #0x10041d000
  10010bdf4  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10010bdf8  adrp    x8, #0x10041b000
  10010bdfc  nop
  10010be00  ldr     x1, [x8, #0x828]
  10010be04  mov     w2, #3
  10010be08  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:3]
  10010be0c  mov     x29, x29
  10010be10  bl      _objc_retainAutoreleasedReturnValue
  10010be14  ldr     x8, [x21, #0xc00]                        ; load g_10042dc00
  10010be18  str     x0, [x21, #0xc00]                        ; store g_10042dc00 = [NSMutableDictionary dictionaryWithCapacity:3]
  10010be1c  mov     x0, x8
  10010be20  bl      _objc_release
  10010be24  ldr     x0, [x21, #0xc00]                        ; load g_10042dc00
loc_10010be28:
  10010be28  adrp    x8, #0x100417000
  10010be2c  nop
  10010be30  ldr     x1, [x8, #0x40]
  10010be34  mov     x2, x19
  10010be38  bl      _objc_msgSend                            ; [g_10042dc00 objectForKey:arg1]
  10010be3c  mov     x29, x29
  10010be40  bl      _objc_retainAutoreleasedReturnValue
  10010be44  mov     x20, x0
  10010be48  cbnz    x20, loc_10010be98                       ; if ([g_10042dc00 objectForKey:arg1] != 0)
  10010be4c  adrp    x8, #0x10041e000
  10010be50  ldr     x0, [x8, #0x4e8]                         ; class S3DRepo
  10010be54  adrp    x8, #0x100416000
  10010be58  nop
  10010be5c  ldr     x1, [x8, #0xac8]
  10010be60  bl      _objc_msgSend                            ; [S3DRepo alloc]
  10010be64  adrp    x8, #0x10041b000
  10010be68  nop
  10010be6c  ldr     x1, [x8, #0x8a8]
  10010be70  mov     x2, x19
  10010be74  bl      _objc_msgSend                            ; [[S3DRepo alloc] initWithBundlePath:arg1]
  10010be78  mov     x2, x0
  10010be7c  mov     x20, x2
  10010be80  ldr     x0, [x21, #0xc00]                        ; load g_10042dc00
  10010be84  adrp    x8, #0x100416000
  10010be88  nop
  10010be8c  ldr     x1, [x8, #0xdc8]
  10010be90  mov     x3, x19
  10010be94  bl      _objc_msgSend                            ; [g_10042dc00 setObject:[[S3DRepo alloc] initWithBundlePath:arg1] forKey:arg1]
loc_10010be98:
  10010be98  mov     x0, x19
  10010be9c  bl      _objc_release
  10010bea0  mov     x0, x20
  10010bea4  ldp     x29, x30, [sp, #0x20]
  10010bea8  ldp     x20, x19, [sp, #0x10]
  10010beac  ldp     x22, x21, [sp], #0x30
  10010beb0  b       _objc_autoreleaseReturnValue
  10010beb4  mov     x21, x0
  10010beb8  b       loc_10010bec8
  10010bebc  mov     x21, x0
  10010bec0  mov     x0, x20
  10010bec4  bl      _objc_release
loc_10010bec8:
  10010bec8  mov     x0, x19
  10010becc  bl      _objc_release
  10010bed0  mov     x0, x21
  10010bed4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DRepo each:block:]
; address 0x10010bed8  size 1384  kind objc
; ======================================================================
  10010bed8  stp     x28, x27, [sp, #-0x60]!
  10010bedc  stp     x26, x25, [sp, #0x10]
  10010bee0  stp     x24, x23, [sp, #0x20]
  10010bee4  stp     x22, x21, [sp, #0x30]
  10010bee8  stp     x20, x19, [sp, #0x40]
  10010beec  stp     x29, x30, [sp, #0x50]
  10010bef0  add     x29, sp, #0x50
  10010bef4  sub     sp, sp, #0x120
  10010bef8  mov     x23, x2
  10010befc  mov     x21, x0
  10010bf00  adrp    x8, #0x1003b0000
  10010bf04  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10010bf08  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10010bf0c  stur    x8, [x29, #-0x58]
  10010bf10  mov     x0, x3
  10010bf14  bl      _objc_retain
  10010bf18  mov     x19, x0
  10010bf1c  adrp    x8, #0x10041e000
  10010bf20  ldr     x0, [x8, #0x4f0]                         ; class NSFileManager
  10010bf24  adrp    x8, #0x10041b000
  10010bf28  nop
  10010bf2c  ldr     x1, [x8, #0x8b0]
  10010bf30  bl      _objc_msgSend                            ; [NSFileManager defaultManager]
  10010bf34  mov     x29, x29
  10010bf38  bl      _objc_retainAutoreleasedReturnValue
  10010bf3c  mov     x26, x0
  10010bf40  adrp    x8, #0x10041d000
  10010bf44  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10010bf48  adrp    x8, #0x100416000
  10010bf4c  nop
  10010bf50  ldr     x1, [x8, #0xb58]
  10010bf54  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10010bf58  mov     x29, x29
  10010bf5c  bl      _objc_retainAutoreleasedReturnValue
  10010bf60  mov     x22, x0
  10010bf64  adrp    x8, #0x10041b000
  10010bf68  nop
  10010bf6c  ldr     x1, [x8, #0x8b8]
  10010bf70  bl      _objc_msgSend                            ; [[NSBundle mainBundle] bundlePath]
  10010bf74  mov     x29, x29
  10010bf78  bl      _objc_retainAutoreleasedReturnValue
  10010bf7c  mov     x24, x0
  10010bf80  mov     x0, x22
  10010bf84  bl      _objc_release
  10010bf88  adrp    x20, #0x10041d000
  10010bf8c  ldr     x0, [x20, #0xf78]                        ; class NSString
  10010bf90  adrp    x8, #0x100420000
  10010bf94  ldrsw   x8, [x8, #0x72c]                         ; ivar offset S3DRepo.bundlePath (+0x8)
  10010bf98  ldr     x8, [x21, x8]                            ; x8 = self->bundlePath
  10010bf9c  adrp    x9, #0x100416000
  10010bfa0  nop
  10010bfa4  ldr     x21, [x9, #0xee8]
  10010bfa8  stp     x24, x8, [sp]
  10010bfac  adrp    x2, #0x1003c3000
  10010bfb0  add     x2, x2, #0xdb0                           ; @"%@/%@"
  10010bfb4  mov     x1, x21
  10010bfb8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] bundlePath], self->bundlePath]
  10010bfbc  mov     x29, x29
  10010bfc0  bl      _objc_retainAutoreleasedReturnValue
  10010bfc4  mov     x22, x0
  10010bfc8  mov     x0, x23
  10010bfcc  bl      _NSStringFromClass                       ; NSStringFromClass(arg1)
  10010bfd0  mov     x29, x29
  10010bfd4  bl      _objc_retainAutoreleasedReturnValue
  10010bfd8  mov     x23, x0
  10010bfdc  ldr     x0, [x20, #0xf78]                        ; class NSString
  10010bfe0  stp     x22, x23, [sp]
  10010bfe4  adrp    x2, #0x1003c1000
  10010bfe8  add     x2, x2, #0x90                            ; @"%@/%@/"
  10010bfec  mov     x1, x21
  10010bff0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@/%@/", [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] bundlePath], self->b…, NSStringFromClass(arg1)]
  10010bff4  stp     x22, x24, [sp, #0x30]
  10010bff8  mov     x29, x29
  10010bffc  bl      _objc_retainAutoreleasedReturnValue
  10010c000  mov     x20, x0
  10010c004  strb    wzr, [sp, #0x97]
  10010c008  adrp    x8, #0x10041b000
  10010c00c  nop
  10010c010  ldr     x1, [x8, #0x8c0]
  10010c014  mov     x27, #0
  10010c018  add     x3, sp, #0x97
  10010c01c  mov     x0, x26
  10010c020  mov     x2, x20
  10010c024  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithFormat:@"%@/%@/", [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] bundlePath], self->b…, NSStringFromClass(arg1)] isDirectory:&sp[0x97]]
  10010c028  tbnz    w0, #0, loc_10010c0f4                    ; if (([[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithFormat:@"%@/%@/", [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] bundlePath], self->b…, NSStringFromClass(arg1)] isDirectory:&sp[0x97]] & 1))
  10010c02c  str     xzr, [sp, #0x88]
  10010c030  adrp    x8, #0x10041b000
  10010c034  nop
  10010c038  ldr     x1, [x8, #0x8c8]
  10010c03c  mov     x27, #0
  10010c040  mov     w3, #1
  10010c044  add     x5, sp, #0x88
  10010c048  mov     x0, x26
  10010c04c  mov     x2, x20
  10010c050  mov     x4, #0
  10010c054  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] createDirectoryAtPath:[NSString stringWithFormat:@"%@/%@/", [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] bundlePath], self->b…, NSStringFromClass(arg1)] withIntermediateDirectories:1 attributes:0 error:&sp[0x88]]
  10010c058  ldr     x0, [sp, #0x88]
  10010c05c  bl      _objc_retain
  10010c060  mov     x27, x0
  10010c064  cbz     x27, loc_10010c0f4                       ; if (0 == 0)
  10010c068  adrp    x8, #0x10041d000
  10010c06c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10010c070  adrp    x8, #0x100416000
  10010c074  nop
  10010c078  ldr     x1, [x8, #0xac8]
  10010c07c  bl      _objc_msgSend                            ; [NSException alloc]
  10010c080  mov     x22, x0
  10010c084  adrp    x8, #0x100418000
  10010c088  nop
  10010c08c  ldr     x1, [x8, #0x648]
  10010c090  mov     x0, x27
  10010c094  bl      _objc_msgSend                            ; [0 description]
  10010c098  mov     x29, x29
  10010c09c  bl      _objc_retainAutoreleasedReturnValue
  10010c0a0  mov     x21, x0
  10010c0a4  adrp    x8, #0x10041b000
  10010c0a8  nop
  10010c0ac  ldr     x1, [x8, #0x8d0]
  10010c0b0  mov     x4, #0
  10010c0b4  adrp    x2, #0x1003c3000
  10010c0b8  add     x2, x2, #0xdd0                           ; @"File System Error"
  10010c0bc  mov     x0, x22
  10010c0c0  mov     x3, x21
  10010c0c4  bl      _objc_msgSend                            ; [[NSException alloc] initWithName:@"File System Error" reason:[0 description] userInfo:0]
  10010c0c8  mov     x22, x0
  10010c0cc  adrp    x8, #0x10041b000
  10010c0d0  nop
  10010c0d4  ldr     x1, [x8, #0x388]
  10010c0d8  mov     x0, x22
  10010c0dc  bl      _objc_msgSend                            ; [[[NSException alloc] initWithName:@"File System Error" reason:[0 description] userInfo:0] raise]
  10010c0e0  mov     x0, x22
  10010c0e4  bl      _objc_release
  10010c0e8  mov     x0, x21
  10010c0ec  bl      _objc_release
  10010c0f0  b       loc_10010c0f8
loc_10010c0f4:
  10010c0f4  mov     x27, #0
loc_10010c0f8:
  10010c0f8  str     x27, [sp, #0x80]
  10010c0fc  adrp    x8, #0x10041b000
  10010c100  nop
  10010c104  ldr     x1, [x8, #0x8d8]
  10010c108  add     x3, sp, #0x80
  10010c10c  mov     x0, x26
  10010c110  mov     x2, x20
  10010c114  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] contentsOfDirectoryAtPath:[NSString stringWithFormat:@"%@/%@/", [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] bundlePath], self->b…, NSStringFromClass(arg1)] error:&sp[0x80]]
  10010c118  stp     x20, x26, [sp, #0x20]
  10010c11c  mov     x29, x29
  10010c120  bl      _objc_retainAutoreleasedReturnValue
  10010c124  mov     x20, x0
  10010c128  ldr     x0, [sp, #0x80]
  10010c12c  bl      _objc_retain
  10010c130  mov     x25, x0
  10010c134  mov     x0, x27
  10010c138  bl      _objc_release
  10010c13c  cbz     x25, loc_10010c1c8                       ; if (0 == 0)
  10010c140  adrp    x8, #0x10041d000
  10010c144  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10010c148  adrp    x8, #0x100416000
  10010c14c  nop
  10010c150  ldr     x1, [x8, #0xac8]
  10010c154  bl      _objc_msgSend                            ; [NSException alloc]
  10010c158  mov     x22, x0
  10010c15c  adrp    x8, #0x100418000
  10010c160  nop
  10010c164  ldr     x1, [x8, #0x648]
  10010c168  mov     x0, x25
  10010c16c  bl      _objc_msgSend                            ; [0 description]
  10010c170  mov     x29, x29
  10010c174  bl      _objc_retainAutoreleasedReturnValue
  10010c178  mov     x21, x0
  10010c17c  adrp    x8, #0x10041b000
  10010c180  nop
  10010c184  ldr     x1, [x8, #0x8d0]
  10010c188  mov     x4, #0
  10010c18c  adrp    x2, #0x1003c3000
  10010c190  add     x2, x2, #0xdd0                           ; @"File System Error"
  10010c194  mov     x0, x22
  10010c198  mov     x3, x21
  10010c19c  bl      _objc_msgSend                            ; [[NSException alloc] initWithName:@"File System Error" reason:[0 description] userInfo:0]
  10010c1a0  mov     x22, x0
  10010c1a4  adrp    x8, #0x10041b000
  10010c1a8  nop
  10010c1ac  ldr     x1, [x8, #0x388]
  10010c1b0  mov     x0, x22
  10010c1b4  bl      _objc_msgSend                            ; [[[NSException alloc] initWithName:@"File System Error" reason:[0 description] userInfo:0] raise]
  10010c1b8  mov     x0, x22
  10010c1bc  bl      _objc_release
  10010c1c0  mov     x0, x21
  10010c1c4  bl      _objc_release
loc_10010c1c8:
  10010c1c8  mov     x24, x23
  10010c1cc  stp     xzr, xzr, [sp, #0x70]
  10010c1d0  stp     xzr, xzr, [sp, #0x60]
  10010c1d4  stp     xzr, xzr, [sp, #0x50]
  10010c1d8  stp     xzr, xzr, [sp, #0x40]
  10010c1dc  mov     x0, x20
  10010c1e0  str     x20, [sp, #0x18]
  10010c1e4  bl      _objc_retain
  10010c1e8  mov     x27, x0
  10010c1ec  adrp    x8, #0x100416000
  10010c1f0  nop
  10010c1f4  ldr     x28, [x8, #0xe00]
  10010c1f8  add     x2, sp, #0x40
  10010c1fc  add     x3, sp, #0x98
  10010c200  mov     w4, #0x10
  10010c204  mov     x1, x28
  10010c208  bl      _objc_msgSend                            ; [[[NSFileManager defaultManager] contentsOfDirectoryAtPath:[NSString stringWithFormat:@"%@/%@/", [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] bundlePath], self->b…, NSStringFromClass(arg1)] error:&sp[0x80]] countByEnumeratingWithState:&sp[0x40] objects:&sp[0x98] count:16]
  10010c20c  mov     x21, x0
  10010c210  cbz     x21, loc_10010c2a4                       ; if ([[[NSFileManager defaultManager] contentsOfDirectoryAtPath:[NSString stringWithFormat:@"%@/%@/", [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] bundlePath], self->b…, NSStringFromClass(arg1)] error:&sp[0x80]] countByEnumeratingWithState:&sp[0x40] objects:&sp[0x98] count:16] == 0)
  10010c214  ldr     x8, [sp, #0x50]
  10010c218  ldr     x20, [x8]
  10010c21c  adrp    x8, #0x10041b000
  10010c220  add     x8, x8, #0x8e0                           ; &@selector(stringByDeletingPathExtension)
  10010c224  ldr     x22, [x8]
loc_10010c228:
  10010c228  mov     x26, #0
loc_10010c22c:
  10010c22c  ldr     x8, [sp, #0x50]
  10010c230  ldr     x8, [x8]
  10010c234  cmp     x8, x20
  10010c238  b.eq    loc_10010c244                            ; if (x8 == x20)
  10010c23c  mov     x0, x27
  10010c240  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[NSFileManager defaultManager] contentsOfDirectoryAtPath:[NSString stringWithFormat:@"%@/%@/", [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] bundlePath], self->b…, NSStringFromClass(arg1)] error:&sp[0x80]])
loc_10010c244:
  10010c244  ldr     x8, [sp, #0x48]
  10010c248  ldr     x0, [x8, x26, lsl #3]
  10010c24c  mov     x1, x22
  10010c250  bl      _objc_msgSend                            ; [x0 stringByDeletingPathExtension]
  10010c254  mov     x29, x29
  10010c258  bl      _objc_retainAutoreleasedReturnValue
  10010c25c  mov     x23, x0
  10010c260  ldr     x8, [x19, #0x10]                         ; x8 = arg2[+0x10]
  10010c264  mov     x0, x19
  10010c268  mov     x1, x23
  10010c26c  blr     x8                                       ; call arg2[+0x10]
  10010c270  mov     x0, x23
  10010c274  bl      _objc_release
  10010c278  add     x26, x26, #1
  10010c27c  cmp     x26, x21
  10010c280  b.lo    loc_10010c22c                            ; if ((x26 + 1) <u [[[NSFileManager defaultManager] contentsOfDirectoryAtPath:[NSString stringWithFormat:@"%@/%@/", [NSString stringWithFor…)
  10010c284  add     x2, sp, #0x40
  10010c288  add     x3, sp, #0x98
  10010c28c  mov     w4, #0x10
  10010c290  mov     x0, x27
  10010c294  mov     x1, x28
  10010c298  bl      _objc_msgSend                            ; [[[NSFileManager defaultManager] contentsOfDirectoryAtPath:[NSString stringWithFormat:@"%@/%@/", [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] bundlePath], self->b…, NSStringFromClass(arg1)] error:&sp[0x80]] countByEnumeratingWithState:&sp[0x40] objects:&sp[0x98] count:16]
  10010c29c  mov     x21, x0
  10010c2a0  cbnz    x21, loc_10010c228                       ; if ([[[NSFileManager defaultManager] contentsOfDirectoryAtPath:[NSString stringWithFormat:@"%@/%@/", [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] bundlePath], self->b…, NSStringFromClass(arg1)] error:&sp[0x80]] countByEnumeratingWithState:&sp[0x40] objects:&sp[0x98] count:16] != 0)
loc_10010c2a4:
  10010c2a4  mov     x0, x27
  10010c2a8  bl      _objc_release
  10010c2ac  mov     x0, x27
  10010c2b0  bl      _objc_release
  10010c2b4  mov     x0, x25
  10010c2b8  bl      _objc_release
  10010c2bc  ldr     x0, [sp, #0x20]
  10010c2c0  bl      _objc_release
  10010c2c4  mov     x0, x24
  10010c2c8  bl      _objc_release
  10010c2cc  ldr     x0, [sp, #0x30]
  10010c2d0  bl      _objc_release
  10010c2d4  ldr     x0, [sp, #0x38]
  10010c2d8  bl      _objc_release
  10010c2dc  ldr     x0, [sp, #0x28]
  10010c2e0  bl      _objc_release
  10010c2e4  mov     x0, x19
  10010c2e8  bl      _objc_release
  10010c2ec  ldur    x8, [x29, #-0x58]
  10010c2f0  adrp    x9, #0x1003b0000
  10010c2f4  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10010c2f8  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10010c2fc  sub     x8, x9, x8
  10010c300  cbnz    x8, loc_10010c324                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10010c304  sub     sp, x29, #0x50
  10010c308  ldp     x29, x30, [sp, #0x50]
  10010c30c  ldp     x20, x19, [sp, #0x40]
  10010c310  ldp     x22, x21, [sp, #0x30]
  10010c314  ldp     x24, x23, [sp, #0x20]
  10010c318  ldp     x26, x25, [sp, #0x10]
  10010c31c  ldp     x28, x27, [sp], #0x60
  10010c320  ret
loc_10010c324:
  10010c324  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10010c328:
  10010c328  mov     x28, x0
  10010c32c  ldp     x20, x26, [sp, #0x20]
  10010c330  mov     x23, x24
  10010c334  b       loc_10010c34c
  10010c338  mov     x28, x0
  10010c33c  mov     x0, x23
  10010c340  bl      _objc_release
  10010c344  ldp     x20, x26, [sp, #0x20]
  10010c348  mov     x23, x24
loc_10010c34c:
  10010c34c  mov     x0, x27
  10010c350  bl      _objc_release
loc_10010c354:
  10010c354  ldr     x0, [sp, #0x18]
  10010c358  bl      _objc_release
  10010c35c  mov     x27, x25
loc_10010c360:
  10010c360  mov     x0, x27
  10010c364  bl      _objc_release
  10010c368  mov     x0, x20
  10010c36c  bl      _objc_release
  10010c370  ldp     x22, x24, [sp, #0x30]
loc_10010c374:
  10010c374  mov     x0, x23
  10010c378  bl      _objc_release
loc_10010c37c:
  10010c37c  mov     x0, x22
  10010c380  bl      _objc_release
loc_10010c384:
  10010c384  mov     x0, x24
loc_10010c388:
  10010c388  bl      _objc_release
loc_10010c38c:
  10010c38c  mov     x0, x26
  10010c390  bl      _objc_release
loc_10010c394:
  10010c394  mov     x0, x19
  10010c398  bl      _objc_release
  10010c39c  mov     x0, x28
  10010c3a0  bl      __Unwind_Resume                          ; Unwind_Resume()
  10010c3a4  b       loc_10010c328
  10010c3a8  mov     x28, x0
  10010c3ac  b       loc_10010c360
  10010c3b0  str     x20, [sp, #0x18]
  10010c3b4  mov     x28, x0
  10010c3b8  b       loc_10010c418
  10010c3bc  mov     x28, x0
  10010c3c0  b       loc_10010c394
  10010c3c4  mov     x28, x0
  10010c3c8  b       loc_10010c38c
  10010c3cc  mov     x28, x0
  10010c3d0  mov     x0, x22
  10010c3d4  b       loc_10010c388
  10010c3d8  mov     x28, x0
  10010c3dc  b       loc_10010c384
  10010c3e0  mov     x28, x0
  10010c3e4  b       loc_10010c37c
  10010c3e8  mov     x28, x0
  10010c3ec  b       loc_10010c374
  10010c3f0  b       loc_10010c328
  10010c3f4  str     x20, [sp, #0x18]
  10010c3f8  mov     x28, x0
  10010c3fc  b       loc_10010c410
  10010c400  str     x20, [sp, #0x18]
  10010c404  mov     x28, x0
  10010c408  mov     x0, x22
  10010c40c  bl      _objc_release
loc_10010c410:
  10010c410  mov     x0, x21
  10010c414  bl      _objc_release
loc_10010c418:
  10010c418  ldp     x20, x26, [sp, #0x20]
  10010c41c  b       loc_10010c354
  10010c420  mov     x28, x0
  10010c424  b       loc_10010c434
  10010c428  mov     x28, x0
  10010c42c  mov     x0, x22
  10010c430  bl      _objc_release
loc_10010c434:
  10010c434  mov     x0, x21
  10010c438  bl      _objc_release
  10010c43c  b       loc_10010c360

; ======================================================================
; -[S3DRepo generateIdForClass:]
; address 0x10010c440  size 448  kind objc
; ======================================================================
  10010c440  stp     x22, x21, [sp, #-0x30]!
  10010c444  stp     x20, x19, [sp, #0x10]
  10010c448  stp     x29, x30, [sp, #0x20]
  10010c44c  add     x29, sp, #0x20
  10010c450  sub     sp, sp, #0x90
  10010c454  mov     x19, x2
  10010c458  stur    xzr, [x29, #-0x40]
  10010c45c  str     xzr, [sp, #0x40]
  10010c460  sub     x8, x29, #0x40
  10010c464  mov     w9, #0x20000000
  10010c468  mov     w10, #0x20
  10010c46c  stur    x8, [x29, #-0x38]
  10010c470  stp     w9, w10, [x29, #-0x30]
  10010c474  mov     x9, #-1
  10010c478  add     x10, sp, #0x40
  10010c47c  stur    x9, [x29, #-0x28]
  10010c480  mov     w9, #0x32000000
  10010c484  str     x10, [sp, #0x48]
  10010c488  str     w9, [sp, #0x50]
  10010c48c  mov     w9, #0x30
  10010c490  str     w9, [sp, #0x54]
  10010c494  adr     x9, #0x10010c600                         ; &-[S3DRepo generateIdForClass:]_block_invoke
  10010c498  nop
  10010c49c  str     x9, [sp, #0x58]
  10010c4a0  adr     x9, #0x10010c610                         ; &-[S3DRepo generateIdForClass:]_block_invoke_2
  10010c4a4  nop
  10010c4a8  stp     x9, xzr, [sp, #0x60]
  10010c4ac  adrp    x9, #0x1003b0000
  10010c4b0  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  10010c4b4  str     x9, [sp, #0x10]
  10010c4b8  mov     w9, #-0x3e000000
  10010c4bc  stp     w9, wzr, [sp, #0x18]
  10010c4c0  adr     x9, #0x10010c618                         ; &-[S3DRepo generateIdForClass:]_block_invoke_3
  10010c4c4  nop
  10010c4c8  str     x9, [sp, #0x20]
  10010c4cc  adrp    x9, #0x1003b7000
  10010c4d0  add     x9, x9, #0x8a0                           ; &d_1003b78a0
  10010c4d4  stp     x9, x10, [sp, #0x28]
  10010c4d8  str     x8, [sp, #0x38]
  10010c4dc  adrp    x8, #0x10041b000
  10010c4e0  nop
  10010c4e4  ldr     x1, [x8, #0x8f8]
  10010c4e8  add     x3, sp, #0x10
  10010c4ec  bl      _objc_msgSend                            ; [self each:arg1 block:^{-[S3DRepo generateIdForClass:]_block_invoke_3 captures +0x30=0, +0x40=0x32000000, +0x48=&-[S3DRepo generateIdForClass:]_block_in…, +0x50=&-[S3DRepo generateIdForClass:]_block_in…}]
  10010c4f0  ldr     x8, [sp, #0x48]
  10010c4f4  ldr     x8, [x8, #0x28]
  10010c4f8  adrp    x9, #0x10041d000
  10010c4fc  ldr     x20, [x9, #0xf78]                        ; class NSString
  10010c500  cbz     x8, loc_10010c540                        ; if (x8 == 0)
  10010c504  ldur    x9, [x29, #-0x38]
  10010c508  ldr     x9, [x9, #0x18]
  10010c50c  add     x9, x9, #1
  10010c510  adrp    x10, #0x100416000
  10010c514  nop
  10010c518  ldr     x1, [x10, #0xee8]
  10010c51c  stp     x8, x9, [sp]
  10010c520  adrp    x2, #0x1003c3000
  10010c524  add     x2, x2, #0xe10                           ; @"%@#%d"
  10010c528  mov     x0, x20
  10010c52c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@#%d", sp[0], (x9 + 1)]
  10010c530  mov     x29, x29
  10010c534  bl      _objc_retainAutoreleasedReturnValue
  10010c538  mov     x19, x0
  10010c53c  b       loc_10010c588
loc_10010c540:
  10010c540  mov     x0, x19
  10010c544  bl      _NSStringFromClass                       ; NSStringFromClass(arg1)
  10010c548  mov     x29, x29
  10010c54c  bl      _objc_retainAutoreleasedReturnValue
  10010c550  mov     x21, x0
  10010c554  adrp    x8, #0x100416000
  10010c558  nop
  10010c55c  ldr     x1, [x8, #0xee8]
  10010c560  str     x21, [sp]
  10010c564  adrp    x2, #0x1003c3000
  10010c568  add     x2, x2, #0xdf0                           ; @"%@#0"
  10010c56c  mov     x0, x20
  10010c570  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@#0", NSStringFromClass(arg1)]
  10010c574  mov     x29, x29
  10010c578  bl      _objc_retainAutoreleasedReturnValue
  10010c57c  mov     x19, x0
  10010c580  mov     x0, x21
  10010c584  bl      _objc_release
loc_10010c588:
  10010c588  add     x0, sp, #0x40
  10010c58c  mov     w1, #8
  10010c590  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x40], 8)
  10010c594  ldr     x0, [sp, #0x68]
  10010c598  bl      _objc_release
  10010c59c  sub     x0, x29, #0x40
  10010c5a0  mov     w1, #8
  10010c5a4  bl      __Block_object_dispose                   ; Block_object_dispose(&x29[-0x40], 8)
  10010c5a8  mov     x0, x19
  10010c5ac  sub     sp, x29, #0x20
  10010c5b0  ldp     x29, x30, [sp, #0x20]
  10010c5b4  ldp     x20, x19, [sp, #0x10]
  10010c5b8  ldp     x22, x21, [sp], #0x30
  10010c5bc  b       _objc_autoreleaseReturnValue
  10010c5c0  mov     x19, x0
loc_10010c5c4:
  10010c5c4  add     x0, sp, #0x40
  10010c5c8  mov     w1, #8
  10010c5cc  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x40], 8)
  10010c5d0  ldr     x0, [sp, #0x68]
  10010c5d4  bl      _objc_release
  10010c5d8  sub     x0, x29, #0x40
  10010c5dc  mov     w1, #8
  10010c5e0  bl      __Block_object_dispose                   ; Block_object_dispose(&x29[-0x40], 8)
  10010c5e4  mov     x0, x19
  10010c5e8  bl      __Unwind_Resume                          ; Unwind_Resume()
  10010c5ec  mov     x8, x21
  10010c5f0  mov     x19, x0
  10010c5f4  mov     x0, x8
  10010c5f8  bl      _objc_release
  10010c5fc  b       loc_10010c5c4

; ======================================================================
; -[S3DRepo generateIdForClass:]_block_invoke
; address 0x10010c600  size 16  kind block
; ======================================================================
  10010c600  ldr     x8, [x1, #0x28]                          ; x8 = blockarg1[+0x28]
  10010c604  str     x8, [x0, #0x28]                          ; block[+0x28] = blockarg1[+0x28]
  10010c608  str     xzr, [x1, #0x28]                         ; blockarg1[+0x28] = 0
  10010c60c  ret

; ======================================================================
; -[S3DRepo generateIdForClass:]_block_invoke_2
; address 0x10010c610  size 8  kind block
; ======================================================================
  10010c610  ldr     x0, [x0, #0x28]                          ; x0 = block[+0x28]
  10010c614  b       _objc_release

; ======================================================================
; -[S3DRepo generateIdForClass:]_block_invoke_3
; address 0x10010c618  size 192  kind block
; ======================================================================
  10010c618  stp     x22, x21, [sp, #-0x30]!
  10010c61c  stp     x20, x19, [sp, #0x10]
  10010c620  stp     x29, x30, [sp, #0x20]
  10010c624  add     x29, sp, #0x20
  10010c628  mov     x20, x0
  10010c62c  mov     x0, x1
  10010c630  bl      _objc_retain
  10010c634  mov     x19, x0
  10010c638  adrp    x8, #0x10041b000
  10010c63c  nop
  10010c640  ldr     x1, [x8, #0x8e8]
  10010c644  bl      _objc_msgSend                            ; [blockarg1 anchorValue]
  10010c648  mov     x21, x0
  10010c64c  tbnz    w21, 0x1f, loc_10010c6b0                 ; if ([blockarg1 anchorValue] < 0)
  10010c650  ldr     x8, [x20, #0x20]                         ; x8 = block[+0x20]
  10010c654  ldr     x8, [x8, #8]                             ; x8 = block[+0x20][+0x8]
  10010c658  ldr     x8, [x8, #0x28]                          ; x8 = block[+0x20][+0x8][+0x28]
  10010c65c  cbnz    x8, loc_10010c694                        ; if (block[+0x20][+0x8][+0x28] != 0)
  10010c660  adrp    x8, #0x10041b000
  10010c664  nop
  10010c668  ldr     x1, [x8, #0x8f0]
  10010c66c  mov     x0, x19
  10010c670  bl      _objc_msgSend                            ; [blockarg1 anchorKey]
  10010c674  mov     x29, x29
  10010c678  bl      _objc_retainAutoreleasedReturnValue
  10010c67c  ldr     x8, [x20, #0x20]                         ; x8 = block[+0x20]
  10010c680  ldr     x9, [x8, #8]                             ; x9 = block[+0x20][+0x8]
  10010c684  ldr     x8, [x9, #0x28]                          ; x8 = block[+0x20][+0x8][+0x28]
  10010c688  str     x0, [x9, #0x28]                          ; block[+0x20][+0x8][+0x28] = [blockarg1 anchorKey]
  10010c68c  mov     x0, x8
  10010c690  bl      _objc_release
loc_10010c694:
  10010c694  ldr     x8, [x20, #0x28]                         ; x8 = block[+0x28]
  10010c698  ldr     x8, [x8, #8]                             ; x8 = block[+0x28][+0x8]
  10010c69c  ldr     x9, [x8, #0x18]                          ; x9 = block[+0x28][+0x8][+0x18]
  10010c6a0  cmp     x9, w21, sxtw
  10010c6a4  b.ge    loc_10010c6b0                            ; if (block[+0x28][+0x8][+0x18] >= [blockarg1 anchorValue])
  10010c6a8  sxtw    x9, w21
  10010c6ac  str     x9, [x8, #0x18]                          ; block[+0x28][+0x8][+0x18] = [blockarg1 anchorValue]
loc_10010c6b0:
  10010c6b0  mov     x0, x19
  10010c6b4  ldp     x29, x30, [sp, #0x20]
  10010c6b8  ldp     x20, x19, [sp, #0x10]
  10010c6bc  ldp     x22, x21, [sp], #0x30
  10010c6c0  b       _objc_release
  10010c6c4  mov     x20, x0
  10010c6c8  mov     x0, x19
  10010c6cc  bl      _objc_release
  10010c6d0  mov     x0, x20
  10010c6d4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10010c6d8
; address 0x10010c6d8  size 60  kind sub
; ======================================================================
  10010c6d8  stp     x20, x19, [sp, #-0x20]!
  10010c6dc  stp     x29, x30, [sp, #0x10]
  10010c6e0  add     x29, sp, #0x10
  10010c6e4  mov     x19, x1
  10010c6e8  mov     x20, x0
  10010c6ec  add     x0, x20, #0x20
  10010c6f0  ldr     x1, [x19, #0x20]                         ; x1 = a1[+0x20]
  10010c6f4  mov     w2, #8
  10010c6f8  bl      __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 8, a3)
  10010c6fc  add     x0, x20, #0x28
  10010c700  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  10010c704  mov     w2, #8
  10010c708  ldp     x29, x30, [sp, #0x10]
  10010c70c  ldp     x20, x19, [sp], #0x20
  10010c710  b       __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 8)

; ======================================================================
; sub_10010c714
; address 0x10010c714  size 48  kind sub
; ======================================================================
  10010c714  stp     x20, x19, [sp, #-0x20]!
  10010c718  stp     x29, x30, [sp, #0x10]
  10010c71c  add     x29, sp, #0x10
  10010c720  mov     x19, x0
  10010c724  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10010c728  mov     w1, #8
  10010c72c  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 8, a2, a3)
  10010c730  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10010c734  mov     w1, #8
  10010c738  ldp     x29, x30, [sp, #0x10]
  10010c73c  ldp     x20, x19, [sp], #0x20
  10010c740  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x28], 8)

; ======================================================================
; -[S3DRepo extractClassName:]
; address 0x10010c744  size 296  kind objc
; ======================================================================
  10010c744  stp     x22, x21, [sp, #-0x30]!
  10010c748  stp     x20, x19, [sp, #0x10]
  10010c74c  stp     x29, x30, [sp, #0x20]
  10010c750  add     x29, sp, #0x20
  10010c754  mov     x0, x2
  10010c758  bl      _objc_retain
  10010c75c  mov     x19, x0
  10010c760  adrp    x8, #0x100419000
  10010c764  nop
  10010c768  ldr     x1, [x8, #0x188]
  10010c76c  adrp    x2, #0x1003be000
  10010c770  add     x2, x2, #0x9f0                           ; @"."
  10010c774  bl      _objc_msgSend                            ; [arg1 componentsSeparatedByString:@"."]
  10010c778  mov     x29, x29
  10010c77c  bl      _objc_retainAutoreleasedReturnValue
  10010c780  mov     x20, x0
  10010c784  cbz     x20, loc_10010c7f0                       ; if ([arg1 componentsSeparatedByString:@"."] == 0)
  10010c788  adrp    x8, #0x100416000
  10010c78c  nop
  10010c790  ldr     x1, [x8, #0xe30]
  10010c794  mov     x0, x20
  10010c798  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@"."] count]
  10010c79c  cmp     x0, #2
  10010c7a0  b.ne    loc_10010c7f0                            ; if ([[arg1 componentsSeparatedByString:@"."] count] != 2)
  10010c7a4  adrp    x8, #0x100416000
  10010c7a8  nop
  10010c7ac  ldr     x1, [x8, #0xc30]
  10010c7b0  mov     w2, #1
  10010c7b4  mov     x0, x20
  10010c7b8  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@"."] objectAtIndex:1]
  10010c7bc  mov     x29, x29
  10010c7c0  bl      _objc_retainAutoreleasedReturnValue
  10010c7c4  mov     x21, x0
  10010c7c8  adrp    x8, #0x10041b000
  10010c7cc  nop
  10010c7d0  ldr     x1, [x8, #0x8f0]
  10010c7d4  bl      _objc_msgSend                            ; [[[arg1 componentsSeparatedByString:@"."] objectAtIndex:1] anchorKey]
  10010c7d8  mov     x29, x29
  10010c7dc  bl      _objc_retainAutoreleasedReturnValue
  10010c7e0  mov     x22, x0
  10010c7e4  mov     x0, x21
  10010c7e8  bl      _objc_release
  10010c7ec  b       loc_10010c810
loc_10010c7f0:
  10010c7f0  adrp    x8, #0x10041b000
  10010c7f4  nop
  10010c7f8  ldr     x1, [x8, #0x8f0]
  10010c7fc  mov     x0, x19
  10010c800  bl      _objc_msgSend                            ; [arg1 anchorKey]
  10010c804  mov     x29, x29
  10010c808  bl      _objc_retainAutoreleasedReturnValue
  10010c80c  mov     x22, x0
loc_10010c810:
  10010c810  mov     x0, x20
  10010c814  bl      _objc_release
  10010c818  mov     x0, x19
  10010c81c  bl      _objc_release
  10010c820  mov     x0, x22
  10010c824  ldp     x29, x30, [sp, #0x20]
  10010c828  ldp     x20, x19, [sp, #0x10]
  10010c82c  ldp     x22, x21, [sp], #0x30
  10010c830  b       _objc_autoreleaseReturnValue
  10010c834  mov     x21, x0
  10010c838  b       loc_10010c854
  10010c83c  mov     x21, x0
  10010c840  b       loc_10010c85c
  10010c844  mov     x1, x21
  10010c848  mov     x21, x0
  10010c84c  mov     x0, x1
  10010c850  bl      _objc_release
loc_10010c854:
  10010c854  mov     x0, x20
  10010c858  bl      _objc_release
loc_10010c85c:
  10010c85c  mov     x0, x19
  10010c860  bl      _objc_release
  10010c864  mov     x0, x21
  10010c868  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DRepo instancePath:]
; address 0x10010c86c  size 396  kind objc
; ======================================================================
  10010c86c  stp     x24, x23, [sp, #-0x40]!
  10010c870  stp     x22, x21, [sp, #0x10]
  10010c874  stp     x20, x19, [sp, #0x20]
  10010c878  stp     x29, x30, [sp, #0x30]
  10010c87c  add     x29, sp, #0x30
  10010c880  sub     sp, sp, #0x20
  10010c884  mov     x21, x0
  10010c888  mov     x0, x2
  10010c88c  bl      _objc_retain
  10010c890  mov     x19, x0
  10010c894  adrp    x8, #0x10041d000
  10010c898  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10010c89c  adrp    x8, #0x100416000
  10010c8a0  nop
  10010c8a4  ldr     x1, [x8, #0xb58]
  10010c8a8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10010c8ac  mov     x29, x29
  10010c8b0  bl      _objc_retainAutoreleasedReturnValue
  10010c8b4  mov     x22, x0
  10010c8b8  adrp    x8, #0x10041b000
  10010c8bc  nop
  10010c8c0  ldr     x1, [x8, #0x8b8]
  10010c8c4  bl      _objc_msgSend                            ; [[NSBundle mainBundle] bundlePath]
  10010c8c8  mov     x29, x29
  10010c8cc  bl      _objc_retainAutoreleasedReturnValue
  10010c8d0  mov     x20, x0
  10010c8d4  mov     x0, x22
  10010c8d8  bl      _objc_release
  10010c8dc  adrp    x24, #0x10041d000
  10010c8e0  ldr     x0, [x24, #0xf78]                        ; class NSString
  10010c8e4  adrp    x8, #0x100420000
  10010c8e8  ldrsw   x8, [x8, #0x72c]                         ; ivar offset S3DRepo.bundlePath (+0x8)
  10010c8ec  ldr     x8, [x21, x8]                            ; x8 = self->bundlePath
  10010c8f0  adrp    x9, #0x100416000
  10010c8f4  nop
  10010c8f8  ldr     x23, [x9, #0xee8]
  10010c8fc  stp     x20, x8, [sp]
  10010c900  adrp    x2, #0x1003c3000
  10010c904  add     x2, x2, #0xdb0                           ; @"%@/%@"
  10010c908  mov     x1, x23
  10010c90c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] bundlePath], self->bundlePath]
  10010c910  mov     x29, x29
  10010c914  bl      _objc_retainAutoreleasedReturnValue
  10010c918  mov     x22, x0
  10010c91c  adrp    x8, #0x10041b000
  10010c920  nop
  10010c924  ldr     x1, [x8, #0x900]
  10010c928  mov     x0, x21
  10010c92c  mov     x2, x19
  10010c930  bl      _objc_msgSend                            ; [self extractClassName:arg1]
  10010c934  mov     x29, x29
  10010c938  bl      _objc_retainAutoreleasedReturnValue
  10010c93c  mov     x21, x0
  10010c940  ldr     x0, [x24, #0xf78]                        ; class NSString
  10010c944  stp     x21, x19, [sp, #8]
  10010c948  str     x22, [sp]
  10010c94c  adrp    x2, #0x1003c3000
  10010c950  add     x2, x2, #0xe30                           ; @"%@/%@/%@.sexp"
  10010c954  mov     x1, x23
  10010c958  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@/%@/%@.sexp", [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] bundlePath], self->b…, [self extractClassName:arg1], arg1]
  10010c95c  mov     x29, x29
  10010c960  bl      _objc_retainAutoreleasedReturnValue
  10010c964  mov     x23, x0
  10010c968  mov     x0, x21
  10010c96c  bl      _objc_release
  10010c970  mov     x0, x22
  10010c974  bl      _objc_release
  10010c978  mov     x0, x20
  10010c97c  bl      _objc_release
  10010c980  mov     x0, x19
  10010c984  bl      _objc_release
  10010c988  mov     x0, x23
  10010c98c  sub     sp, x29, #0x30
  10010c990  ldp     x29, x30, [sp, #0x30]
  10010c994  ldp     x20, x19, [sp, #0x20]
  10010c998  ldp     x22, x21, [sp, #0x10]
  10010c99c  ldp     x24, x23, [sp], #0x40
  10010c9a0  b       _objc_autoreleaseReturnValue
  10010c9a4  mov     x21, x0
  10010c9a8  b       loc_10010c9e8
  10010c9ac  mov     x21, x0
  10010c9b0  mov     x0, x22
  10010c9b4  b       loc_10010c9e4
  10010c9b8  mov     x21, x0
  10010c9bc  b       loc_10010c9e0
  10010c9c0  mov     x21, x0
  10010c9c4  b       loc_10010c9d8
  10010c9c8  mov     x8, x21
  10010c9cc  mov     x21, x0
  10010c9d0  mov     x0, x8
  10010c9d4  bl      _objc_release
loc_10010c9d8:
  10010c9d8  mov     x0, x22
  10010c9dc  bl      _objc_release
loc_10010c9e0:
  10010c9e0  mov     x0, x20
loc_10010c9e4:
  10010c9e4  bl      _objc_release
loc_10010c9e8:
  10010c9e8  mov     x0, x19
  10010c9ec  bl      _objc_release
  10010c9f0  mov     x0, x21
  10010c9f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DRepo read:]
; address 0x10010c9f8  size 324  kind objc
; ======================================================================
  10010c9f8  stp     x22, x21, [sp, #-0x30]!
  10010c9fc  stp     x20, x19, [sp, #0x10]
  10010ca00  stp     x29, x30, [sp, #0x20]
  10010ca04  add     x29, sp, #0x20
  10010ca08  sub     sp, sp, #0x10
  10010ca0c  mov     x21, x0
  10010ca10  mov     x0, x2
  10010ca14  bl      _objc_retain
  10010ca18  mov     x19, x0
  10010ca1c  adrp    x8, #0x10041e000
  10010ca20  ldr     x0, [x8, #0x4f0]                         ; class NSFileManager
  10010ca24  adrp    x8, #0x10041b000
  10010ca28  nop
  10010ca2c  ldr     x1, [x8, #0x8b0]
  10010ca30  bl      _objc_msgSend                            ; [NSFileManager defaultManager]
  10010ca34  mov     x29, x29
  10010ca38  bl      _objc_retainAutoreleasedReturnValue
  10010ca3c  mov     x20, x0
  10010ca40  adrp    x8, #0x10041b000
  10010ca44  nop
  10010ca48  ldr     x1, [x8, #0x908]
  10010ca4c  mov     x0, x21
  10010ca50  mov     x2, x19
  10010ca54  bl      _objc_msgSend                            ; [self instancePath:arg1]
  10010ca58  mov     x29, x29
  10010ca5c  bl      _objc_retainAutoreleasedReturnValue
  10010ca60  mov     x21, x0
  10010ca64  strb    wzr, [sp, #0xf]
  10010ca68  adrp    x8, #0x10041b000
  10010ca6c  nop
  10010ca70  ldr     x1, [x8, #0x8c0]
  10010ca74  add     x3, sp, #0xf
  10010ca78  mov     x0, x20
  10010ca7c  mov     x2, x21
  10010ca80  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] fileExistsAtPath:[self instancePath:arg1] isDirectory:&sp[0xf]]
  10010ca84  ldrb    w8, [sp, #0xf]
  10010ca88  cmp     w8, #0
  10010ca8c  cset    w8, eq
  10010ca90  and     w8, w0, w8                               ; t1 = ([[NSFileManager defaultManager] fileExistsAtPath:[self instancePath:arg1] isDirectory:&sp[0xf]] & (0 == 0))
  10010ca94  cmp     w8, #1
  10010ca98  b.ne    loc_10010cac4                            ; if (t1 != 1)
  10010ca9c  adrp    x8, #0x10041b000
  10010caa0  nop
  10010caa4  ldr     x1, [x8, #0x910]
  10010caa8  mov     x0, x20
  10010caac  mov     x2, x21
  10010cab0  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] contentsAtPath:[self instancePath:arg1]]
  10010cab4  mov     x29, x29
  10010cab8  bl      _objc_retainAutoreleasedReturnValue
  10010cabc  mov     x22, x0
  10010cac0  b       loc_10010cad8
loc_10010cac4:
  10010cac4  str     x21, [sp]
  10010cac8  adrp    x0, #0x1003c3000
  10010cacc  add     x0, x0, #0xe50                           ; @"### File not found: %@"
  10010cad0  bl      _NSLog                                   ; NSLog(@"### File not found: %@", [self instancePath:arg1])
  10010cad4  mov     x22, #0
loc_10010cad8:
  10010cad8  mov     x0, x21
  10010cadc  bl      _objc_release
  10010cae0  mov     x0, x20
  10010cae4  bl      _objc_release
  10010cae8  mov     x0, x19
  10010caec  bl      _objc_release
  10010caf0  mov     x0, x22
  10010caf4  sub     sp, x29, #0x20
  10010caf8  ldp     x29, x30, [sp, #0x20]
  10010cafc  ldp     x20, x19, [sp, #0x10]
  10010cb00  ldp     x22, x21, [sp], #0x30
  10010cb04  b       _objc_autoreleaseReturnValue
  10010cb08  mov     x22, x0
  10010cb0c  mov     x0, x21
  10010cb10  bl      _objc_release
  10010cb14  b       loc_10010cb24
  10010cb18  mov     x22, x0
  10010cb1c  b       loc_10010cb2c
  10010cb20  mov     x22, x0
loc_10010cb24:
  10010cb24  mov     x0, x20
  10010cb28  bl      _objc_release
loc_10010cb2c:
  10010cb2c  mov     x0, x19
  10010cb30  bl      _objc_release
  10010cb34  mov     x0, x22
  10010cb38  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DRepo write:data:]
; address 0x10010cb3c  size 260  kind objc
; ======================================================================
  10010cb3c  stp     x22, x21, [sp, #-0x30]!
  10010cb40  stp     x20, x19, [sp, #0x10]
  10010cb44  stp     x29, x30, [sp, #0x20]
  10010cb48  add     x29, sp, #0x20
  10010cb4c  mov     x20, x3
  10010cb50  mov     x22, x0
  10010cb54  mov     x0, x2
  10010cb58  bl      _objc_retain
  10010cb5c  mov     x19, x0
  10010cb60  mov     x0, x20
  10010cb64  bl      _objc_retain
  10010cb68  mov     x20, x0
  10010cb6c  adrp    x8, #0x10041e000
  10010cb70  ldr     x0, [x8, #0x4f0]                         ; class NSFileManager
  10010cb74  adrp    x8, #0x10041b000
  10010cb78  nop
  10010cb7c  ldr     x1, [x8, #0x8b0]
  10010cb80  bl      _objc_msgSend                            ; [NSFileManager defaultManager]
  10010cb84  mov     x29, x29
  10010cb88  bl      _objc_retainAutoreleasedReturnValue
  10010cb8c  mov     x21, x0
  10010cb90  adrp    x8, #0x10041b000
  10010cb94  nop
  10010cb98  ldr     x1, [x8, #0x908]
  10010cb9c  mov     x0, x22
  10010cba0  mov     x2, x19
  10010cba4  bl      _objc_msgSend                            ; [self instancePath:arg1]
  10010cba8  mov     x29, x29
  10010cbac  bl      _objc_retainAutoreleasedReturnValue
  10010cbb0  mov     x22, x0
  10010cbb4  adrp    x8, #0x10041b000
  10010cbb8  nop
  10010cbbc  ldr     x1, [x8, #0x918]
  10010cbc0  mov     x4, #0
  10010cbc4  mov     x0, x21
  10010cbc8  mov     x2, x22
  10010cbcc  mov     x3, x20
  10010cbd0  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] createFileAtPath:[self instancePath:arg1] contents:arg2 attributes:0]
  10010cbd4  mov     x0, x22
  10010cbd8  bl      _objc_release
  10010cbdc  mov     x0, x21
  10010cbe0  bl      _objc_release
  10010cbe4  mov     x0, x20
  10010cbe8  bl      _objc_release
  10010cbec  mov     x0, x19
  10010cbf0  ldp     x29, x30, [sp, #0x20]
  10010cbf4  ldp     x20, x19, [sp, #0x10]
  10010cbf8  ldp     x22, x21, [sp], #0x30
  10010cbfc  b       _objc_release
  10010cc00  mov     x22, x0
  10010cc04  b       loc_10010cc28
  10010cc08  mov     x22, x0
  10010cc0c  b       loc_10010cc20
  10010cc10  mov     x1, x22
  10010cc14  mov     x22, x0
  10010cc18  mov     x0, x1
  10010cc1c  bl      _objc_release
loc_10010cc20:
  10010cc20  mov     x0, x21
  10010cc24  bl      _objc_release
loc_10010cc28:
  10010cc28  mov     x0, x20
  10010cc2c  bl      _objc_release
  10010cc30  mov     x0, x19
  10010cc34  bl      _objc_release
  10010cc38  mov     x0, x22
  10010cc3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DRepo load:]
; address 0x10010cc40  size 660  kind objc
; ======================================================================
  10010cc40  stp     x26, x25, [sp, #-0x50]!
  10010cc44  stp     x24, x23, [sp, #0x10]
  10010cc48  stp     x22, x21, [sp, #0x20]
  10010cc4c  stp     x20, x19, [sp, #0x30]
  10010cc50  stp     x29, x30, [sp, #0x40]
  10010cc54  add     x29, sp, #0x40
  10010cc58  sub     sp, sp, #0x10
  10010cc5c  mov     x21, x0
  10010cc60  mov     x0, x2
  10010cc64  bl      _objc_retain
  10010cc68  mov     x19, x0
  10010cc6c  adrp    x8, #0x10041b000
  10010cc70  nop
  10010cc74  ldr     x22, [x8, #0x888]
  10010cc78  mov     x0, x21
  10010cc7c  mov     x1, x22
  10010cc80  bl      _objc_msgSend                            ; [self cache]
  10010cc84  mov     x29, x29
  10010cc88  bl      _objc_retainAutoreleasedReturnValue
  10010cc8c  mov     x20, x0
  10010cc90  adrp    x8, #0x100417000
  10010cc94  nop
  10010cc98  ldr     x1, [x8, #0x40]
  10010cc9c  mov     x2, x19
  10010cca0  bl      _objc_msgSend                            ; [[self cache] objectForKey:arg1]
  10010cca4  mov     x29, x29
  10010cca8  bl      _objc_retainAutoreleasedReturnValue
  10010ccac  mov     x24, x0
  10010ccb0  mov     x0, x20
  10010ccb4  bl      _objc_release
  10010ccb8  cbnz    x24, loc_10010ce38                       ; if ([[self cache] objectForKey:arg1] != 0)
  10010ccbc  adrp    x8, #0x10041b000
  10010ccc0  nop
  10010ccc4  ldr     x1, [x8, #0x900]
  10010ccc8  mov     x0, x21
  10010cccc  mov     x2, x19
  10010ccd0  bl      _objc_msgSend                            ; [self extractClassName:arg1]
  10010ccd4  mov     x29, x29
  10010ccd8  bl      _objc_retainAutoreleasedReturnValue
  10010ccdc  mov     x20, x0
  10010cce0  bl      _NSClassFromString                       ; NSClassFromString([self extractClassName:arg1])
  10010cce4  mov     x24, x0
  10010cce8  adrp    x8, #0x10041d000
  10010ccec  nop
  10010ccf0  ldr     x2, [x8, #0xec0]                         ; [0x10041dec0] -> &d_100429208
  10010ccf4  adrp    x8, #0x10041b000
  10010ccf8  nop
  10010ccfc  ldr     x1, [x8, #0x920]
  10010cd00  mov     x0, x24
  10010cd04  bl      _objc_msgSend                            ; [NSClassFromString([self extractClassName:arg1]) conformsToProtocol:&d_100429208]
  10010cd08  cbz     w0, loc_10010cdec                        ; if ([NSClassFromString([self extractClassName:arg1]) conformsToProtocol:&d_100429208] == 0)
  10010cd0c  adrp    x8, #0x10041e000
  10010cd10  ldr     x23, [x8, #0x490]                        ; class SExpIO
  10010cd14  adrp    x8, #0x10041b000
  10010cd18  nop
  10010cd1c  ldr     x1, [x8, #0x320]
  10010cd20  mov     x0, x21
  10010cd24  mov     x2, x19
  10010cd28  bl      _objc_msgSend                            ; [self read:arg1]
  10010cd2c  mov     x29, x29
  10010cd30  bl      _objc_retainAutoreleasedReturnValue
  10010cd34  mov     x26, x0
  10010cd38  adrp    x8, #0x10041b000
  10010cd3c  nop
  10010cd40  ldr     x25, [x8, #0x928]
  10010cd44  mov     x0, x23
  10010cd48  mov     x1, x25
  10010cd4c  mov     x2, x26
  10010cd50  bl      _objc_msgSend                            ; [SExpIO decode:[self read:arg1]]
  10010cd54  mov     x29, x29
  10010cd58  bl      _objc_retainAutoreleasedReturnValue
  10010cd5c  mov     x23, x0
  10010cd60  mov     x0, x26
  10010cd64  bl      _objc_release
  10010cd68  cbz     x23, loc_10010cdfc                       ; if ([SExpIO decode:[self read:arg1]] == 0)
  10010cd6c  mov     x0, x24
  10010cd70  mov     x1, x25
  10010cd74  mov     x2, x23
  10010cd78  bl      _objc_msgSend                            ; [NSClassFromString([self extractClassName:arg1]) decode:[SExpIO decode:[self read:arg1]]]
  10010cd7c  mov     x29, x29
  10010cd80  bl      _objc_retainAutoreleasedReturnValue
  10010cd84  bl      _objc_retain
  10010cd88  mov     x24, x0
  10010cd8c  adrp    x8, #0x10041b000
  10010cd90  nop
  10010cd94  ldr     x1, [x8, #0x930]
  10010cd98  mov     x2, x19
  10010cd9c  bl      _objc_msgSend                            ; [[NSClassFromString([self extractClassName:arg1]) decode:[SExpIO decode:[self read:arg1]]] setXId:arg1]
  10010cda0  mov     x0, x21
  10010cda4  mov     x1, x22
  10010cda8  bl      _objc_msgSend                            ; [self cache]
  10010cdac  mov     x29, x29
  10010cdb0  bl      _objc_retainAutoreleasedReturnValue
  10010cdb4  mov     x22, x0
  10010cdb8  adrp    x8, #0x100416000
  10010cdbc  nop
  10010cdc0  ldr     x1, [x8, #0xdc8]
  10010cdc4  mov     x2, x24
  10010cdc8  mov     x3, x19
  10010cdcc  bl      _objc_msgSend                            ; [[self cache] setObject:[NSClassFromString([self extractClassName:arg1]) decode:[SExpIO decode:[self read:arg1]]] forKey:arg1]
  10010cdd0  mov     x0, x22
  10010cdd4  bl      _objc_release
  10010cdd8  mov     x0, x24
  10010cddc  bl      _objc_release
  10010cde0  mov     x0, x23
  10010cde4  bl      _objc_release
  10010cde8  b       loc_10010cdf0
loc_10010cdec:
  10010cdec  mov     x24, #0
loc_10010cdf0:
  10010cdf0  mov     x0, x20
  10010cdf4  bl      _objc_release
  10010cdf8  b       loc_10010ce38
loc_10010cdfc:
  10010cdfc  mov     x0, x19
  10010ce00  bl      _objc_retainAutorelease
  10010ce04  adrp    x8, #0x10041a000
  10010ce08  nop
  10010ce0c  ldr     x1, [x8, #0x18]
  10010ce10  bl      _objc_msgSend                            ; [arg1 UTF8String]
  10010ce14  str     x0, [sp]
  10010ce18  adrp    x0, #0x1003c3000
  10010ce1c  add     x0, x0, #0xe70                           ; @"### Failed to parse sexp - invalid format %s"
  10010ce20  bl      _NSLog                                   ; NSLog(@"### Failed to parse sexp - invalid format %s", [arg1 UTF8String])
  10010ce24  mov     x0, x23
  10010ce28  bl      _objc_release
  10010ce2c  mov     x0, x20
  10010ce30  bl      _objc_release
  10010ce34  mov     x24, #0
loc_10010ce38:
  10010ce38  mov     x0, x19
  10010ce3c  bl      _objc_release
  10010ce40  mov     x0, x24
  10010ce44  sub     sp, x29, #0x40
  10010ce48  ldp     x29, x30, [sp, #0x40]
  10010ce4c  ldp     x20, x19, [sp, #0x30]
  10010ce50  ldp     x22, x21, [sp, #0x20]
  10010ce54  ldp     x24, x23, [sp, #0x10]
  10010ce58  ldp     x26, x25, [sp], #0x50
  10010ce5c  b       _objc_autoreleaseReturnValue
  10010ce60  b       loc_10010ce70
  10010ce64  b       loc_10010ce68
loc_10010ce68:
  10010ce68  mov     x21, x0
  10010ce6c  b       loc_10010cebc
loc_10010ce70:
  10010ce70  mov     x21, x0
  10010ce74  b       loc_10010cec4
  10010ce78  mov     x21, x0
  10010ce7c  b       loc_10010ceb4
  10010ce80  mov     x21, x0
  10010ce84  b       loc_10010cea4
  10010ce88  mov     x21, x0
  10010ce8c  mov     x0, x26
  10010ce90  bl      _objc_release
  10010ce94  b       loc_10010cebc
  10010ce98  mov     x21, x0
  10010ce9c  mov     x0, x22
  10010cea0  bl      _objc_release
loc_10010cea4:
  10010cea4  mov     x0, x24
  10010cea8  bl      _objc_release
  10010ceac  mov     x0, x24
  10010ceb0  bl      _objc_release
loc_10010ceb4:
  10010ceb4  mov     x0, x23
  10010ceb8  bl      _objc_release
loc_10010cebc:
  10010cebc  mov     x0, x20
  10010cec0  bl      _objc_release
loc_10010cec4:
  10010cec4  mov     x0, x19
  10010cec8  bl      _objc_release
  10010cecc  mov     x0, x21
  10010ced0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DRepo store:]
; address 0x10010ced4  size 536  kind objc
; ======================================================================
  10010ced4  stp     x24, x23, [sp, #-0x40]!
  10010ced8  stp     x22, x21, [sp, #0x10]
  10010cedc  stp     x20, x19, [sp, #0x20]
  10010cee0  stp     x29, x30, [sp, #0x30]
  10010cee4  add     x29, sp, #0x30
  10010cee8  mov     x20, x0
  10010ceec  mov     x0, x2
  10010cef0  bl      _objc_retain
  10010cef4  mov     x19, x0
  10010cef8  adrp    x8, #0x10041b000
  10010cefc  nop
  10010cf00  ldr     x1, [x8, #0x7f8]
  10010cf04  bl      _objc_msgSend                            ; [arg1 xId]
  10010cf08  mov     x29, x29
  10010cf0c  bl      _objc_retainAutoreleasedReturnValue
  10010cf10  mov     x21, x0
  10010cf14  adrp    x8, #0x100417000
  10010cf18  nop
  10010cf1c  ldr     x1, [x8, #0x2e0]
  10010cf20  mov     x0, x19
  10010cf24  bl      _objc_msgSend                            ; [arg1 class]
  10010cf28  mov     x22, x0
  10010cf2c  cbz     x21, loc_10010cf48                       ; if ([arg1 xId] == 0)
  10010cf30  adrp    x8, #0x100417000
  10010cf34  nop
  10010cf38  ldr     x1, [x8, #0xc58]
  10010cf3c  mov     x0, x21
  10010cf40  bl      _objc_msgSend                            ; [[arg1 xId] length]
  10010cf44  cbnz    x0, loc_10010cfd8                        ; if ([[arg1 xId] length] != 0)
loc_10010cf48:
  10010cf48  adrp    x8, #0x10041b000
  10010cf4c  nop
  10010cf50  ldr     x1, [x8, #0x938]
  10010cf54  mov     x0, x20
  10010cf58  mov     x2, x22
  10010cf5c  bl      _objc_msgSend                            ; [self generateIdForClass:[arg1 class]]
  10010cf60  mov     x29, x29
  10010cf64  bl      _objc_retainAutoreleasedReturnValue
  10010cf68  mov     x23, x0
  10010cf6c  mov     x0, x21
  10010cf70  bl      _objc_release
  10010cf74  adrp    x8, #0x10041b000
  10010cf78  nop
  10010cf7c  ldr     x1, [x8, #0x930]
  10010cf80  mov     x21, x23
  10010cf84  mov     x0, x19
  10010cf88  mov     x2, x23
  10010cf8c  bl      _objc_msgSend                            ; [arg1 setXId:[self generateIdForClass:[arg1 class]]]
  10010cf90  adrp    x8, #0x10041b000
  10010cf94  nop
  10010cf98  ldr     x1, [x8, #0x888]
  10010cf9c  mov     x21, x23
  10010cfa0  mov     x0, x20
  10010cfa4  bl      _objc_msgSend                            ; [self cache]
  10010cfa8  mov     x29, x29
  10010cfac  bl      _objc_retainAutoreleasedReturnValue
  10010cfb0  mov     x21, x0
  10010cfb4  adrp    x8, #0x100416000
  10010cfb8  nop
  10010cfbc  ldr     x1, [x8, #0xdc8]
  10010cfc0  mov     x2, x19
  10010cfc4  mov     x3, x23
  10010cfc8  bl      _objc_msgSend                            ; [[self cache] setObject:arg1 forKey:[self generateIdForClass:[arg1 class]]]
  10010cfcc  mov     x0, x21
  10010cfd0  bl      _objc_release
  10010cfd4  mov     x21, x23
loc_10010cfd8:
  10010cfd8  adrp    x8, #0x10041d000
  10010cfdc  nop
  10010cfe0  ldr     x2, [x8, #0xec0]                         ; [0x10041dec0] -> &d_100429208
  10010cfe4  adrp    x8, #0x10041b000
  10010cfe8  nop
  10010cfec  ldr     x1, [x8, #0x920]
  10010cff0  mov     x0, x22
  10010cff4  bl      _objc_msgSend                            ; [[arg1 class] conformsToProtocol:&d_100429208]
  10010cff8  cbz     w0, loc_10010d074                        ; if ([[arg1 class] conformsToProtocol:&d_100429208] == 0)
  10010cffc  adrp    x8, #0x10041e000
  10010d000  ldr     x23, [x8, #0x490]                        ; class SExpIO
  10010d004  adrp    x8, #0x10041b000
  10010d008  nop
  10010d00c  ldr     x1, [x8, #0x940]
  10010d010  mov     x0, x19
  10010d014  bl      _objc_msgSend                            ; [arg1 encode]
  10010d018  mov     x29, x29
  10010d01c  bl      _objc_retainAutoreleasedReturnValue
  10010d020  mov     x22, x0
  10010d024  adrp    x8, #0x10041b000
  10010d028  nop
  10010d02c  ldr     x1, [x8, #0x2c8]
  10010d030  mov     x0, x23
  10010d034  mov     x2, x22
  10010d038  bl      _objc_msgSend                            ; [SExpIO encode:[arg1 encode]]
  10010d03c  mov     x29, x29
  10010d040  bl      _objc_retainAutoreleasedReturnValue
  10010d044  mov     x23, x0
  10010d048  adrp    x8, #0x10041b000
  10010d04c  nop
  10010d050  ldr     x1, [x8, #0x948]
  10010d054  mov     x0, x20
  10010d058  mov     x2, x21
  10010d05c  mov     x3, x23
  10010d060  bl      _objc_msgSend                            ; [self write:x2 data:[SExpIO encode:[arg1 encode]]]
  10010d064  mov     x0, x23
  10010d068  bl      _objc_release
  10010d06c  mov     x0, x22
  10010d070  bl      _objc_release
loc_10010d074:
  10010d074  mov     x0, x19
  10010d078  bl      _objc_release
  10010d07c  mov     x0, x21
  10010d080  ldp     x29, x30, [sp, #0x30]
  10010d084  ldp     x20, x19, [sp, #0x20]
  10010d088  ldp     x22, x21, [sp, #0x10]
  10010d08c  ldp     x24, x23, [sp], #0x40
  10010d090  b       _objc_autoreleaseReturnValue
  10010d094  mov     x20, x0
  10010d098  b       loc_10010d0d4
  10010d09c  mov     x20, x0
  10010d0a0  b       loc_10010d0dc
  10010d0a4  mov     x20, x0
  10010d0a8  mov     x0, x21
  10010d0ac  bl      _objc_release
  10010d0b0  mov     x21, x23
  10010d0b4  b       loc_10010d0d4
  10010d0b8  mov     x20, x0
  10010d0bc  b       loc_10010d0cc
  10010d0c0  mov     x20, x0
  10010d0c4  mov     x0, x23
  10010d0c8  bl      _objc_release
loc_10010d0cc:
  10010d0cc  mov     x0, x22
  10010d0d0  bl      _objc_release
loc_10010d0d4:
  10010d0d4  mov     x0, x21
  10010d0d8  bl      _objc_release
loc_10010d0dc:
  10010d0dc  mov     x0, x19
  10010d0e0  bl      _objc_release
  10010d0e4  mov     x0, x20
  10010d0e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DRepo bundlePath]
; address 0x10010d0ec  size 16  kind objc
; ======================================================================
  10010d0ec  adrp    x8, #0x100420000
  10010d0f0  ldrsw   x8, [x8, #0x72c]                         ; ivar offset S3DRepo.bundlePath (+0x8)
  10010d0f4  ldr     x0, [x0, x8]                             ; x0 = self->bundlePath
  10010d0f8  ret

; ======================================================================
; -[S3DRepo setBundlePath:]
; address 0x10010d0fc  size 56  kind objc
; ======================================================================
  10010d0fc  stp     x20, x19, [sp, #-0x20]!
  10010d100  stp     x29, x30, [sp, #0x10]
  10010d104  add     x29, sp, #0x10
  10010d108  mov     x19, x0
  10010d10c  adrp    x8, #0x100420000
  10010d110  ldrsw   x20, [x8, #0x72c]                        ; ivar offset S3DRepo.bundlePath (+0x8)
  10010d114  mov     x0, x2
  10010d118  bl      _objc_retain
  10010d11c  ldr     x8, [x19, x20]                           ; x8 = self->bundlePath
  10010d120  str     x0, [x19, x20]                           ; self->bundlePath = arg1
  10010d124  mov     x0, x8
  10010d128  ldp     x29, x30, [sp, #0x10]
  10010d12c  ldp     x20, x19, [sp], #0x20
  10010d130  b       _objc_release

; ======================================================================
; -[S3DRepo cache]
; address 0x10010d134  size 16  kind objc
; ======================================================================
  10010d134  adrp    x8, #0x100420000
  10010d138  ldrsw   x8, [x8, #0x730]                         ; ivar offset S3DRepo.cache (+0x10)
  10010d13c  ldr     x0, [x0, x8]                             ; x0 = self->cache
  10010d140  ret

; ======================================================================
; -[S3DRepo setCache:]
; address 0x10010d144  size 56  kind objc
; ======================================================================
  10010d144  stp     x20, x19, [sp, #-0x20]!
  10010d148  stp     x29, x30, [sp, #0x10]
  10010d14c  add     x29, sp, #0x10
  10010d150  mov     x19, x0
  10010d154  adrp    x8, #0x100420000
  10010d158  ldrsw   x20, [x8, #0x730]                        ; ivar offset S3DRepo.cache (+0x10)
  10010d15c  mov     x0, x2
  10010d160  bl      _objc_retain
  10010d164  ldr     x8, [x19, x20]                           ; x8 = self->cache
  10010d168  str     x0, [x19, x20]                           ; self->cache = arg1
  10010d16c  mov     x0, x8
  10010d170  ldp     x29, x30, [sp, #0x10]
  10010d174  ldp     x20, x19, [sp], #0x20
  10010d178  b       _objc_release

; ======================================================================
; -[S3DRepo .cxx_destruct]
; address 0x10010d17c  size 64  kind objc
; ======================================================================
  10010d17c  stp     x20, x19, [sp, #-0x20]!
  10010d180  stp     x29, x30, [sp, #0x10]
  10010d184  add     x29, sp, #0x10
  10010d188  mov     x19, x0
  10010d18c  adrp    x8, #0x100420000
  10010d190  ldrsw   x8, [x8, #0x730]                         ; ivar offset S3DRepo.cache (+0x10)
  10010d194  add     x0, x19, x8
  10010d198  mov     x1, #0
  10010d19c  bl      _objc_storeStrong
  10010d1a0  mov     x1, #0
  10010d1a4  adrp    x8, #0x100420000
  10010d1a8  ldrsw   x8, [x8, #0x72c]                         ; ivar offset S3DRepo.bundlePath (+0x8)
  10010d1ac  add     x0, x19, x8
  10010d1b0  ldp     x29, x30, [sp, #0x10]
  10010d1b4  ldp     x20, x19, [sp], #0x20
  10010d1b8  b       _objc_storeStrong
