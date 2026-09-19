// unit S3DPlayList — 101 functions
//   0x1000fceac      16  -[S3DPlayList isActive]
//   0x1000fcebc     264  -[S3DPlayList name]
//   0x1000fcfc4      20  -[S3DPlayList range]
//   0x1000fcfd8     372  -[S3DPlayList subPlayListWithRange:]
//   0x1000fd14c     336  -[S3DPlayList init]
//   0x1000fd29c     168  -[S3DPlayList playListRepeatPolicy]
//   0x1000fd344     176  -[S3DPlayList setPlayListRepeatPolicy:]
//   0x1000fd3f4     544  -[S3DPlayList anySoundMatchingPredicate:]
//   0x1000fd614     212  -[S3DPlayList anySoundMatchingPredicate:]_block_invoke
//   0x1000fd6e8      68  sub_1000fd6e8
//   0x1000fd72c      52  sub_1000fd72c
//   0x1000fd760     464  -[S3DPlayList soundsMatchingPredicate:]
//   0x1000fd930     212  -[S3DPlayList soundsMatchingPredicate:]_block_invoke
//   0x1000fda04      68  sub_1000fda04
//   0x1000fda48      52  sub_1000fda48
//   0x1000fda7c      24  -[S3DPlayList anySound]
//   0x1000fda94       8  -[S3DPlayList anySound]_block_invoke
//   0x1000fda9c     192  -[S3DPlayList anySoundWihPrefix:]
//   0x1000fdb5c      44  -[S3DPlayList anySoundWihPrefix:]_block_invoke
//   0x1000fdb88       8  sub_1000fdb88
//   0x1000fdb90       8  sub_1000fdb90
//   0x1000fdb98     192  -[S3DPlayList anySoundWihSuffix:]
//   0x1000fdc58      44  -[S3DPlayList anySoundWihSuffix:]_block_invoke
//   0x1000fdc84       8  sub_1000fdc84
//   0x1000fdc8c       8  sub_1000fdc8c
//   0x1000fdc94     192  -[S3DPlayList anySoundContaining:]
//   0x1000fdd54      56  -[S3DPlayList anySoundContaining:]_block_invoke
//   0x1000fdd8c       8  sub_1000fdd8c
//   0x1000fdd94       8  sub_1000fdd94
//   0x1000fdd9c     424  -[S3DPlayList cycleSound]
//   0x1000fdf44      16  -[S3DPlayList cycleSound]_block_invoke
//   0x1000fdf54       8  -[S3DPlayList cycleSound]_block_invoke_2
//   0x1000fdf5c     164  -[S3DPlayList cycleSound]_block_invoke_3
//   0x1000fe000      60  sub_1000fe000
//   0x1000fe03c      48  sub_1000fe03c
//   0x1000fe06c     164  -[S3DPlayList deactivate]
//   0x1000fe110      20  -[S3DPlayList deactivate]_block_invoke
//   0x1000fe124      16  sub_1000fe124
//   0x1000fe134      12  sub_1000fe134
//   0x1000fe140     440  -[S3DPlayList deactivate:]
//   0x1000fe2f8     188  -[S3DPlayList deactivate:]_block_invoke
//   0x1000fe3b4      28  -[S3DPlayList deactivate:]_block_invoke_2
//   0x1000fe3d0      52  sub_1000fe3d0
//   0x1000fe404      40  sub_1000fe404
//   0x1000fe42c      36  -[S3DPlayList transferActivationTo:]
//   0x1000fe450     908  -[S3DPlayList transferActivationTo:completion:]
//   0x1000fe7dc     120  -[S3DPlayList transferActivationTo:completion:]_block_invoke
//   0x1000fe854       8  sub_1000fe854
//   0x1000fe85c       8  sub_1000fe85c
//   0x1000fe864     120  -[S3DPlayList transferActivationTo:completion:]_block_invoke_2
//   0x1000fe8dc       8  sub_1000fe8dc
//   0x1000fe8e4       8  sub_1000fe8e4
//   0x1000fe8ec     164  -[S3DPlayList activate]
//   0x1000fe990      20  -[S3DPlayList activate]_block_invoke
//   0x1000fe9a4      16  sub_1000fe9a4
//   0x1000fe9b4      12  sub_1000fe9b4
//   0x1000fe9c0     896  -[S3DPlayList activate:]
//   0x1000fed40    1364  -[S3DPlayList activate:]_block_invoke
//   0x1000ff294     192  -[S3DPlayList activate:]_block_invoke_block_invoke
//   0x1000ff354      56  sub_1000ff354
//   0x1000ff38c      40  sub_1000ff38c
//   0x1000ff3b4     132  -[S3DPlayList activate:]_block_invoke_block_invoke_2
//   0x1000ff438      16  sub_1000ff438
//   0x1000ff448      12  sub_1000ff448
//   0x1000ff454     172  -[S3DPlayList activate:]_block_invoke_block_invoke_3
//   0x1000ff500      52  sub_1000ff500
//   0x1000ff534      40  sub_1000ff534
//   0x1000ff55c      64  sub_1000ff55c
//   0x1000ff59c      48  sub_1000ff59c
//   0x1000ff5cc     156  -[S3DPlayList logit:]
//   0x1000ff668    1384  -[S3DPlayList applyRepeatPolicyTo:]
//   0x1000ffbd0     212  -[S3DPlayList applyRepeatPolicyTo:]_block_invoke
//   0x1000ffca4     116  sub_1000ffca4
//   0x1000ffd18      92  sub_1000ffd18
//   0x1000ffd74     324  -[S3DPlayList keyFromDict:]
//   0x1000ffeb8    1100  -[S3DPlayList each:]
//   0x100100304     676  -[S3DPlayList S3DSound:]
//   0x1001005a8       4  -[S3DPlayList S3DSound:]_block_invoke
//   0x1001005ac      32  -[S3DPlayList prime:]
//   0x1001005cc      24  -[S3DPlayList stopAll]
//   0x1001005e4     108  -[S3DPlayList stopAll]_block_invoke
//   0x100100650      28  -[S3DPlayList description]
//   0x10010066c      16  -[S3DPlayList model]
//   0x10010067c      56  -[S3DPlayList setModel:]
//   0x1001006b4      56  -[S3DPlayList setName:]
//   0x1001006ec      16  -[S3DPlayList active]
//   0x1001006fc      16  -[S3DPlayList setActive:]
//   0x10010070c      16  -[S3DPlayList agentCache]
//   0x10010071c      56  -[S3DPlayList setAgentCache:]
//   0x100100754      16  -[S3DPlayList firstHasPlayed]
//   0x100100764      16  -[S3DPlayList setFirstHasPlayed:]
//   0x100100774      16  -[S3DPlayList primed]
//   0x100100784      56  -[S3DPlayList setPrimed:]
//   0x1001007bc      16  -[S3DPlayList cycleIndex]
//   0x1001007cc      16  -[S3DPlayList setCycleIndex:]
//   0x1001007dc      16  -[S3DPlayList activating]
//   0x1001007ec      16  -[S3DPlayList setActivating:]
//   0x1001007fc      16  -[S3DPlayList deactivating]
//   0x10010080c      16  -[S3DPlayList setDeactivating:]
//   0x10010081c     104  -[S3DPlayList .cxx_destruct]
//   0x100100884       4  -[S3DPlayList .cxx_construct]

; ======================================================================
; -[S3DPlayList isActive]
; address 0x1000fceac  size 16  kind objc
; ======================================================================
  1000fceac  adrp    x8, #0x100420000
  1000fceb0  ldrsw   x8, [x8, #0x61c]                         ; ivar offset S3DPlayList.active (+0x8)
  1000fceb4  ldrb    w0, [x0, x8]                             ; w0 = self->active
  1000fceb8  ret

; ======================================================================
; -[S3DPlayList name]
; address 0x1000fcebc  size 264  kind objc
; ======================================================================
  1000fcebc  stp     x22, x21, [sp, #-0x30]!
  1000fcec0  stp     x20, x19, [sp, #0x10]
  1000fcec4  stp     x29, x30, [sp, #0x20]
  1000fcec8  add     x29, sp, #0x20
  1000fcecc  mov     x21, x0
  1000fced0  adrp    x8, #0x100420000
  1000fced4  ldrsw   x22, [x8, #0x620]                        ; ivar offset S3DPlayList.model (+0x18)
  1000fced8  ldr     x0, [x21, x22]                           ; x0 = self->model
  1000fcedc  adrp    x8, #0x10041b000
  1000fcee0  nop
  1000fcee4  ldr     x1, [x8, #0x7f8]
  1000fcee8  bl      _objc_msgSend                            ; [self->model xId]
  1000fceec  mov     x29, x29
  1000fcef0  bl      _objc_retainAutoreleasedReturnValue
  1000fcef4  mov     x19, x0
  1000fcef8  adrp    x8, #0x100419000
  1000fcefc  nop
  1000fcf00  ldr     x1, [x8, #0x188]
  1000fcf04  adrp    x2, #0x1003be000
  1000fcf08  add     x2, x2, #0x9f0                           ; @"."
  1000fcf0c  bl      _objc_msgSend                            ; [[self->model xId] componentsSeparatedByString:@"."]
  1000fcf10  mov     x29, x29
  1000fcf14  bl      _objc_retainAutoreleasedReturnValue
  1000fcf18  mov     x20, x0
  1000fcf1c  cbz     x20, loc_1000fcf5c                       ; if ([[self->model xId] componentsSeparatedByString:@"."] == 0)
  1000fcf20  adrp    x8, #0x100416000
  1000fcf24  nop
  1000fcf28  ldr     x1, [x8, #0xe30]
  1000fcf2c  mov     x0, x20
  1000fcf30  bl      _objc_msgSend                            ; [[[self->model xId] componentsSeparatedByString:@"."] count]
  1000fcf34  cmp     x0, #2
  1000fcf38  b.lo    loc_1000fcf5c                            ; if ([[[self->model xId] componentsSeparatedByString:@"."] count] <u 2)
  1000fcf3c  adrp    x8, #0x100416000
  1000fcf40  nop
  1000fcf44  ldr     x1, [x8, #0xc30]
  1000fcf48  mov     x2, #0
  1000fcf4c  mov     x0, x20
  1000fcf50  bl      _objc_msgSend                            ; [[[self->model xId] componentsSeparatedByString:@"."] objectAtIndex:0]
  1000fcf54  mov     x29, x29
  1000fcf58  b       loc_1000fcf74
loc_1000fcf5c:
  1000fcf5c  ldr     x0, [x21, x22]                           ; x0 = self->model
  1000fcf60  adrp    x8, #0x100417000
  1000fcf64  nop
  1000fcf68  ldr     x1, [x8, #0x450]
  1000fcf6c  bl      _objc_msgSend                            ; [self->model name]
  1000fcf70  mov     x29, x29
loc_1000fcf74:
  1000fcf74  bl      _objc_retainAutoreleasedReturnValue
  1000fcf78  mov     x21, x0
  1000fcf7c  mov     x0, x20
  1000fcf80  bl      _objc_release
  1000fcf84  mov     x0, x19
  1000fcf88  bl      _objc_release
  1000fcf8c  mov     x0, x21
  1000fcf90  ldp     x29, x30, [sp, #0x20]
  1000fcf94  ldp     x20, x19, [sp, #0x10]
  1000fcf98  ldp     x22, x21, [sp], #0x30
  1000fcf9c  b       _objc_autoreleaseReturnValue
  1000fcfa0  mov     x21, x0
  1000fcfa4  mov     x0, x20
  1000fcfa8  bl      _objc_release
  1000fcfac  b       loc_1000fcfb4
  1000fcfb0  mov     x21, x0
loc_1000fcfb4:
  1000fcfb4  mov     x0, x19
  1000fcfb8  bl      _objc_release
  1000fcfbc  mov     x0, x21
  1000fcfc0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList range]
; address 0x1000fcfc4  size 20  kind objc
; ======================================================================
  1000fcfc4  adrp    x8, #0x100420000
  1000fcfc8  ldrsw   x8, [x8, #0x624]                         ; ivar offset S3DPlayList.range (+0x38)
  1000fcfcc  add     x8, x0, x8
  1000fcfd0  ldp     x0, x1, [x8]
  1000fcfd4  ret

; ======================================================================
; -[S3DPlayList subPlayListWithRange:]
; address 0x1000fcfd8  size 372  kind objc
; ======================================================================
  1000fcfd8  stp     x24, x23, [sp, #-0x40]!
  1000fcfdc  stp     x22, x21, [sp, #0x10]
  1000fcfe0  stp     x20, x19, [sp, #0x20]
  1000fcfe4  stp     x29, x30, [sp, #0x30]
  1000fcfe8  add     x29, sp, #0x30
  1000fcfec  mov     x19, x3
  1000fcff0  mov     x21, x2
  1000fcff4  mov     x20, x0
  1000fcff8  adrp    x8, #0x100419000
  1000fcffc  nop
  1000fd000  ldr     x22, [x8, #0x380]
  1000fd004  mov     x1, x22
  1000fd008  bl      _objc_msgSend                            ; [self range]
  1000fd00c  mov     x23, x0
  1000fd010  mov     x0, x20
  1000fd014  mov     x1, x22
  1000fd018  bl      _objc_msgSend                            ; [self range]
  1000fd01c  add     x8, x1, x23
  1000fd020  add     x9, x21, x19
  1000fd024  cmp     x9, x8
  1000fd028  csel    x24, x8, x9, hi
  1000fd02c  cmp     x21, x23
  1000fd030  csel    x22, x23, x21, lo
  1000fd034  adrp    x8, #0x10041e000
  1000fd038  ldr     x0, [x8, #0x4b0]                         ; class S3DPlayList
  1000fd03c  adrp    x8, #0x100416000
  1000fd040  nop
  1000fd044  ldr     x1, [x8, #0xac8]
  1000fd048  bl      _objc_msgSend                            ; [S3DPlayList alloc]
  1000fd04c  adrp    x8, #0x100416000
  1000fd050  nop
  1000fd054  ldr     x1, [x8, #0xab8]
  1000fd058  bl      _objc_msgSend                            ; [[S3DPlayList alloc] init]
  1000fd05c  mov     x19, x0
  1000fd060  adrp    x8, #0x10041b000
  1000fd064  nop
  1000fd068  ldr     x1, [x8, #0x4c0]
  1000fd06c  mov     x0, x20
  1000fd070  bl      _objc_msgSend                            ; [self agentCache]
  1000fd074  mov     x29, x29
  1000fd078  bl      _objc_retainAutoreleasedReturnValue
  1000fd07c  mov     x21, x0
  1000fd080  adrp    x8, #0x10041b000
  1000fd084  nop
  1000fd088  ldr     x1, [x8, #0x4c8]
  1000fd08c  mov     x0, x19
  1000fd090  mov     x2, x21
  1000fd094  bl      _objc_msgSend                            ; [[[S3DPlayList alloc] init] setAgentCache:[self agentCache]]
  1000fd098  mov     x0, x21
  1000fd09c  bl      _objc_release
  1000fd0a0  adrp    x8, #0x100418000
  1000fd0a4  nop
  1000fd0a8  ldr     x1, [x8, #0x9e8]
  1000fd0ac  mov     x0, x20
  1000fd0b0  bl      _objc_msgSend                            ; [self model]
  1000fd0b4  mov     x29, x29
  1000fd0b8  bl      _objc_retainAutoreleasedReturnValue
  1000fd0bc  mov     x21, x0
  1000fd0c0  adrp    x8, #0x10041b000
  1000fd0c4  nop
  1000fd0c8  ldr     x1, [x8, #0x478]
  1000fd0cc  mov     x0, x19
  1000fd0d0  mov     x2, x21
  1000fd0d4  bl      _objc_msgSend                            ; [[[S3DPlayList alloc] init] setModel:[self model]]
  1000fd0d8  mov     x0, x21
  1000fd0dc  bl      _objc_release
  1000fd0e0  adrp    x8, #0x10041b000
  1000fd0e4  nop
  1000fd0e8  ldr     x1, [x8, #0x4d0]
  1000fd0ec  mov     w2, #0
  1000fd0f0  mov     x0, x19
  1000fd0f4  bl      _objc_msgSend                            ; [[[S3DPlayList alloc] init] setFirstHasPlayed:0]
  1000fd0f8  sub     x8, x24, x22
  1000fd0fc  adrp    x9, #0x100420000
  1000fd100  ldrsw   x9, [x9, #0x624]                         ; ivar offset S3DPlayList.range (+0x38)
  1000fd104  add     x9, x19, x9
  1000fd108  stp     x22, x8, [x9]
  1000fd10c  mov     x0, x19
  1000fd110  ldp     x29, x30, [sp, #0x30]
  1000fd114  ldp     x20, x19, [sp, #0x20]
  1000fd118  ldp     x22, x21, [sp, #0x10]
  1000fd11c  ldp     x24, x23, [sp], #0x40
  1000fd120  b       _objc_autoreleaseReturnValue
  1000fd124  mov     x20, x0
  1000fd128  b       loc_1000fd13c
  1000fd12c  b       loc_1000fd130
loc_1000fd130:
  1000fd130  mov     x20, x0
  1000fd134  mov     x0, x21
  1000fd138  bl      _objc_release
loc_1000fd13c:
  1000fd13c  mov     x0, x19
  1000fd140  bl      _objc_release
  1000fd144  mov     x0, x20
  1000fd148  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList init]
; address 0x1000fd14c  size 336  kind objc
; ======================================================================
  1000fd14c  stp     x22, x21, [sp, #-0x30]!
  1000fd150  stp     x20, x19, [sp, #0x10]
  1000fd154  stp     x29, x30, [sp, #0x20]
  1000fd158  add     x29, sp, #0x20
  1000fd15c  sub     sp, sp, #0x10
  1000fd160  str     x0, [sp]
  1000fd164  adrp    x8, #0x10041f000
  1000fd168  ldr     x8, [x8, #0x60]
  1000fd16c  str     x8, [sp, #8]
  1000fd170  adrp    x8, #0x100416000
  1000fd174  nop
  1000fd178  ldr     x1, [x8, #0xab8]
  1000fd17c  mov     x20, #0
  1000fd180  mov     x0, sp
  1000fd184  bl      _objc_msgSendSuper2                      ; [super init]
  1000fd188  mov     x19, x0
  1000fd18c  cbz     x19, loc_1000fd25c                       ; if (self == 0)
  1000fd190  mov     x20, x19
  1000fd194  adrp    x8, #0x10041b000
  1000fd198  nop
  1000fd19c  ldr     x1, [x8, #0x4d8]
  1000fd1a0  mov     x2, #0
  1000fd1a4  mov     x0, x19
  1000fd1a8  bl      _objc_msgSend                            ; [self setPrimed:0]
  1000fd1ac  mov     x20, x19
  1000fd1b0  adrp    x8, #0x100419000
  1000fd1b4  nop
  1000fd1b8  ldr     x1, [x8, #0xa00]
  1000fd1bc  mov     w2, #0
  1000fd1c0  mov     x0, x19
  1000fd1c4  bl      _objc_msgSend                            ; [self setPlayListRepeatPolicy:0]
  1000fd1c8  mov     x20, x19
  1000fd1cc  adrp    x8, #0x10041d000
  1000fd1d0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000fd1d4  adrp    x8, #0x10041b000
  1000fd1d8  nop
  1000fd1dc  ldr     x1, [x8, #0x828]
  1000fd1e0  mov     w2, #5
  1000fd1e4  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:5]
  1000fd1e8  mov     x29, x29
  1000fd1ec  bl      _objc_retainAutoreleasedReturnValue
  1000fd1f0  mov     x21, x0
  1000fd1f4  adrp    x8, #0x10041b000
  1000fd1f8  nop
  1000fd1fc  ldr     x1, [x8, #0x4c8]
  1000fd200  mov     x0, x19
  1000fd204  mov     x2, x21
  1000fd208  bl      _objc_msgSend                            ; [self setAgentCache:[NSMutableDictionary dictionaryWithCapacity:5]]
  1000fd20c  mov     x20, x19
  1000fd210  mov     x0, x21
  1000fd214  bl      _objc_release
  1000fd218  adrp    x8, #0x10041b000
  1000fd21c  nop
  1000fd220  ldr     x1, [x8, #0x4d0]
  1000fd224  mov     w2, #0
  1000fd228  mov     x0, x19
  1000fd22c  bl      _objc_msgSend                            ; [self setFirstHasPlayed:0]
  1000fd230  adrp    x8, #0x100420000
  1000fd234  mov     x9, #0x7fffffffffffffff
  1000fd238  adrp    x10, #0x100420000
  1000fd23c  ldrsw   x8, [x8, #0x624]                         ; ivar offset S3DPlayList.range (+0x38)
  1000fd240  ldrsw   x10, [x10, #0x61c]                       ; ivar offset S3DPlayList.active (+0x8)
  1000fd244  add     x8, x19, x8
  1000fd248  stp     xzr, x9, [x8]
  1000fd24c  strb    wzr, [x19, x10]                          ; self->active = 0
  1000fd250  adrp    x8, #0x100420000
  1000fd254  ldrsw   x8, [x8, #0x628]                         ; ivar offset S3DPlayList.cycleIndex (+0x10)
  1000fd258  str     wzr, [x19, x8]                           ; self->cycleIndex = 0
loc_1000fd25c:
  1000fd25c  mov     x0, x19
  1000fd260  sub     sp, x29, #0x20
  1000fd264  ldp     x29, x30, [sp, #0x20]
  1000fd268  ldp     x20, x19, [sp, #0x10]
  1000fd26c  ldp     x22, x21, [sp], #0x30
  1000fd270  ret
  1000fd274  mov     x22, x0
  1000fd278  b       loc_1000fd28c
  1000fd27c  mov     x22, x0
  1000fd280  mov     x0, x21
  1000fd284  bl      _objc_release
  1000fd288  mov     x20, x19
loc_1000fd28c:
  1000fd28c  mov     x0, x20
  1000fd290  bl      _objc_release
  1000fd294  mov     x0, x22
  1000fd298  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList playListRepeatPolicy]
; address 0x1000fd29c  size 168  kind objc
; ======================================================================
  1000fd29c  stp     x22, x21, [sp, #-0x30]!
  1000fd2a0  stp     x20, x19, [sp, #0x10]
  1000fd2a4  stp     x29, x30, [sp, #0x20]
  1000fd2a8  add     x29, sp, #0x20
  1000fd2ac  mov     x19, x0
  1000fd2b0  adrp    x8, #0x100418000
  1000fd2b4  nop
  1000fd2b8  ldr     x20, [x8, #0x9e8]
  1000fd2bc  mov     x1, x20
  1000fd2c0  bl      _objc_msgSend                            ; [self model]
  1000fd2c4  mov     x29, x29
  1000fd2c8  bl      _objc_retainAutoreleasedReturnValue
  1000fd2cc  mov     x21, x0
  1000fd2d0  bl      _objc_release
  1000fd2d4  cbz     x21, loc_1000fd310                       ; if ([self model] == 0)
  1000fd2d8  mov     x0, x19
  1000fd2dc  mov     x1, x20
  1000fd2e0  bl      _objc_msgSend                            ; [self model]
  1000fd2e4  mov     x29, x29
  1000fd2e8  bl      _objc_retainAutoreleasedReturnValue
  1000fd2ec  mov     x19, x0
  1000fd2f0  adrp    x8, #0x10041b000
  1000fd2f4  nop
  1000fd2f8  ldr     x1, [x8, #0x850]
  1000fd2fc  bl      _objc_msgSend                            ; [[self model] playListRepeatPolicy]
  1000fd300  mov     x20, x0
  1000fd304  mov     x0, x19
  1000fd308  bl      _objc_release
  1000fd30c  b       loc_1000fd31c
loc_1000fd310:
  1000fd310  adrp    x8, #0x100420000
  1000fd314  ldrsw   x8, [x8, #0x62c]                         ; ivar offset S3DPlayList.playListRepeatPolicy (+0xc)
  1000fd318  ldr     w20, [x19, x8]                           ; w20 = self->playListRepeatPolicy
loc_1000fd31c:
  1000fd31c  mov     x0, x20
  1000fd320  ldp     x29, x30, [sp, #0x20]
  1000fd324  ldp     x20, x19, [sp, #0x10]
  1000fd328  ldp     x22, x21, [sp], #0x30
  1000fd32c  ret
  1000fd330  mov     x20, x0
  1000fd334  mov     x0, x19
  1000fd338  bl      _objc_release
  1000fd33c  mov     x0, x20
  1000fd340  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList setPlayListRepeatPolicy:]
; address 0x1000fd344  size 176  kind objc
; ======================================================================
  1000fd344  stp     x22, x21, [sp, #-0x30]!
  1000fd348  stp     x20, x19, [sp, #0x10]
  1000fd34c  stp     x29, x30, [sp, #0x20]
  1000fd350  add     x29, sp, #0x20
  1000fd354  mov     x19, x2
  1000fd358  mov     x20, x0
  1000fd35c  adrp    x8, #0x100420000
  1000fd360  ldrsw   x8, [x8, #0x62c]                         ; ivar offset S3DPlayList.playListRepeatPolicy (+0xc)
  1000fd364  str     w19, [x20, x8]                           ; self->playListRepeatPolicy = arg1
  1000fd368  adrp    x8, #0x100418000
  1000fd36c  nop
  1000fd370  ldr     x21, [x8, #0x9e8]
  1000fd374  mov     x1, x21
  1000fd378  bl      _objc_msgSend                            ; [self model]
  1000fd37c  mov     x29, x29
  1000fd380  bl      _objc_retainAutoreleasedReturnValue
  1000fd384  mov     x22, x0
  1000fd388  bl      _objc_release
  1000fd38c  cbz     x22, loc_1000fd3d0                       ; if ([self model] == 0)
  1000fd390  mov     x0, x20
  1000fd394  mov     x1, x21
  1000fd398  bl      _objc_msgSend                            ; [self model]
  1000fd39c  mov     x29, x29
  1000fd3a0  bl      _objc_retainAutoreleasedReturnValue
  1000fd3a4  mov     x20, x0
  1000fd3a8  adrp    x8, #0x100419000
  1000fd3ac  nop
  1000fd3b0  ldr     x1, [x8, #0xa00]
  1000fd3b4  mov     x2, x19
  1000fd3b8  bl      _objc_msgSend                            ; [[self model] setPlayListRepeatPolicy:arg1]
  1000fd3bc  mov     x0, x20
  1000fd3c0  ldp     x29, x30, [sp, #0x20]
  1000fd3c4  ldp     x20, x19, [sp, #0x10]
  1000fd3c8  ldp     x22, x21, [sp], #0x30
  1000fd3cc  b       _objc_release
loc_1000fd3d0:
  1000fd3d0  ldp     x29, x30, [sp, #0x20]
  1000fd3d4  ldp     x20, x19, [sp, #0x10]
  1000fd3d8  ldp     x22, x21, [sp], #0x30
  1000fd3dc  ret
  1000fd3e0  mov     x19, x0
  1000fd3e4  mov     x0, x20
  1000fd3e8  bl      _objc_release
  1000fd3ec  mov     x0, x19
  1000fd3f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList anySoundMatchingPredicate:]
; address 0x1000fd3f4  size 544  kind objc
; ======================================================================
  1000fd3f4  stp     x26, x25, [sp, #-0x50]!
  1000fd3f8  stp     x24, x23, [sp, #0x10]
  1000fd3fc  stp     x22, x21, [sp, #0x20]
  1000fd400  stp     x20, x19, [sp, #0x30]
  1000fd404  stp     x29, x30, [sp, #0x40]
  1000fd408  add     x29, sp, #0x40
  1000fd40c  sub     sp, sp, #0x70
  1000fd410  mov     x20, x0
  1000fd414  mov     x0, x2
  1000fd418  bl      _objc_retain
  1000fd41c  mov     x19, x0
  1000fd420  adrp    x8, #0x100419000
  1000fd424  nop
  1000fd428  ldr     x22, [x8, #0x380]
  1000fd42c  mov     x0, x20
  1000fd430  mov     x1, x22
  1000fd434  bl      _objc_msgSend                            ; [self range]
  1000fd438  mov     x21, x0
  1000fd43c  mov     x0, x20
  1000fd440  mov     x1, x22
  1000fd444  bl      _objc_msgSend                            ; [self range]
  1000fd448  mov     x23, x0
  1000fd44c  mov     x0, x20
  1000fd450  mov     x1, x22
  1000fd454  bl      _objc_msgSend                            ; [self range]
  1000fd458  mov     x24, x1
  1000fd45c  adrp    x8, #0x10041d000
  1000fd460  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000fd464  adrp    x8, #0x10041b000
  1000fd468  nop
  1000fd46c  ldr     x1, [x8, #0x280]
  1000fd470  mov     w2, #5
  1000fd474  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:5]
  1000fd478  add     x23, x24, x23
  1000fd47c  bl      _objc_retain
  1000fd480  mov     x24, x0
  1000fd484  str     xzr, [sp, #0x50]
  1000fd488  add     x8, sp, #0x50
  1000fd48c  mov     w9, #0x20000000
  1000fd490  str     x8, [sp, #0x58]
  1000fd494  str     w9, [sp, #0x60]
  1000fd498  mov     w9, #0x20
  1000fd49c  str     w9, [sp, #0x64]
  1000fd4a0  mov     w9, #-1
  1000fd4a4  str     w9, [sp, #0x68]
  1000fd4a8  adrp    x9, #0x1003b0000
  1000fd4ac  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  1000fd4b0  str     x9, [sp, #8]
  1000fd4b4  mov     w9, #-0x3e000000
  1000fd4b8  stp     w9, wzr, [sp, #0x10]
  1000fd4bc  adr     x9, #0x1000fd614                         ; &-[S3DPlayList anySoundMatchingPredicate:]_block_invoke
  1000fd4c0  nop
  1000fd4c4  str     x9, [sp, #0x18]
  1000fd4c8  adrp    x9, #0x1003b6000
  1000fd4cc  add     x9, x9, #0xec0                           ; &d_1003b6ec0
  1000fd4d0  str     x9, [sp, #0x20]
  1000fd4d4  stp     x8, x23, [sp, #0x38]
  1000fd4d8  str     x21, [sp, #0x48]
  1000fd4dc  mov     x0, x19
  1000fd4e0  bl      _objc_retain
  1000fd4e4  mov     x23, x0
  1000fd4e8  str     x23, [sp, #0x28]
  1000fd4ec  mov     x0, x24
  1000fd4f0  bl      _objc_retain
  1000fd4f4  mov     x21, x0
  1000fd4f8  str     x21, [sp, #0x30]
  1000fd4fc  adrp    x8, #0x10041b000
  1000fd500  nop
  1000fd504  ldr     x1, [x8, #0x7d8]
  1000fd508  add     x2, sp, #8
  1000fd50c  mov     x0, x20
  1000fd510  bl      _objc_msgSend                            ; [self each:^{-[S3DPlayList anySoundMatchingPredicate:]_block_invoke captures +0x20=arg1, +0x28=[NSMutableArray arrayWithCapacity:5], +0x38=(x24 + x23), +0x48=0, +0x58=0x20000000, +0x60=0xffffffff}]
  1000fd514  adrp    x8, #0x100416000
  1000fd518  nop
  1000fd51c  ldr     x1, [x8, #0xe30]
  1000fd520  mov     x0, x21
  1000fd524  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:5] count]
  1000fd528  mov     x24, x0
  1000fd52c  cbz     x24, loc_1000fd584                       ; if ([[NSMutableArray arrayWithCapacity:5] count] == 0)
  1000fd530  bl      _arc4random                              ; arc4random()
  1000fd534  mov     x25, x0
  1000fd538  mov     x0, x20
  1000fd53c  mov     x1, x22
  1000fd540  bl      _objc_msgSend                            ; [self range]
  1000fd544  ubfx    x8, x25, #0, #0x20
  1000fd548  udiv    x9, x8, x1
  1000fd54c  msub    x2, x9, x1, x8
  1000fd550  cmp     x2, x24
  1000fd554  b.lo    loc_1000fd560                            ; if ((x8 - (x8 / x1) * x1) <u [[NSMutableArray arrayWithCapacity:5] count])
  1000fd558  udiv    x8, x2, x24
  1000fd55c  msub    x2, x8, x24, x2                          ; t1 = ((x8 - (x8 / x1) * x1) - ((x8 - (x8 / x1) * x1) / [[NSMutableArray arrayWithCapacity:5] count]) * [[NSMutableArray arrayWithCapacity:5] count])
loc_1000fd560:
  1000fd560  adrp    x8, #0x100416000
  1000fd564  nop
  1000fd568  ldr     x1, [x8, #0xc30]
  1000fd56c  mov     x0, x21
  1000fd570  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:5] objectAtIndex:x2]
  1000fd574  mov     x29, x29
  1000fd578  bl      _objc_retainAutoreleasedReturnValue
  1000fd57c  mov     x19, x0
  1000fd580  b       loc_1000fd588
loc_1000fd584:
  1000fd584  mov     x19, #0
loc_1000fd588:
  1000fd588  ldr     x0, [sp, #0x30]
  1000fd58c  bl      _objc_release
  1000fd590  ldr     x0, [sp, #0x28]
  1000fd594  bl      _objc_release
  1000fd598  add     x0, sp, #0x50
  1000fd59c  mov     w1, #8
  1000fd5a0  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x50], 8)
  1000fd5a4  mov     x0, x21
  1000fd5a8  bl      _objc_release
  1000fd5ac  mov     x0, x23
  1000fd5b0  bl      _objc_release
  1000fd5b4  mov     x0, x19
  1000fd5b8  sub     sp, x29, #0x40
  1000fd5bc  ldp     x29, x30, [sp, #0x40]
  1000fd5c0  ldp     x20, x19, [sp, #0x30]
  1000fd5c4  ldp     x22, x21, [sp, #0x20]
  1000fd5c8  ldp     x24, x23, [sp, #0x10]
  1000fd5cc  ldp     x26, x25, [sp], #0x50
  1000fd5d0  b       _objc_autoreleaseReturnValue
  1000fd5d4  mov     x20, x0
  1000fd5d8  b       loc_1000fd604
  1000fd5dc  mov     x20, x0
  1000fd5e0  ldr     x0, [sp, #0x30]
  1000fd5e4  bl      _objc_release
  1000fd5e8  ldr     x0, [sp, #0x28]
  1000fd5ec  bl      _objc_release
  1000fd5f0  add     x0, sp, #0x50
  1000fd5f4  mov     w1, #8
  1000fd5f8  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x50], 8)
  1000fd5fc  mov     x0, x21
  1000fd600  bl      _objc_release
loc_1000fd604:
  1000fd604  mov     x0, x19
  1000fd608  bl      _objc_release
  1000fd60c  mov     x0, x20
  1000fd610  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList anySoundMatchingPredicate:]_block_invoke
; address 0x1000fd614  size 212  kind block
; ======================================================================
  1000fd614  stp     x22, x21, [sp, #-0x30]!
  1000fd618  stp     x20, x19, [sp, #0x10]
  1000fd61c  stp     x29, x30, [sp, #0x20]
  1000fd620  add     x29, sp, #0x20
  1000fd624  mov     x21, x2
  1000fd628  mov     x20, x0
  1000fd62c  mov     x0, x1
  1000fd630  bl      _objc_retain
  1000fd634  mov     x19, x0
  1000fd638  ldr     x8, [x20, #0x30]                         ; x8 = block[+0x30]
  1000fd63c  ldr     x8, [x8, #8]                             ; x8 = block[+0x30][+0x8]
  1000fd640  ldr     w9, [x8, #0x18]                          ; w9 = block[+0x30][+0x8][+0x18]
  1000fd644  add     w9, w9, #1
  1000fd648  str     w9, [x8, #0x18]                          ; block[+0x30][+0x8][+0x18] = (block[+0x30][+0x8][+0x18] + 1)
  1000fd64c  ldp     x8, x9, [x20, #0x30]
  1000fd650  ldr     x8, [x8, #8]
  1000fd654  ldrsw   x8, [x8, #0x18]
  1000fd658  cmp     x8, x9
  1000fd65c  b.hs    loc_1000fd6b8                            ; if (x8 >=u x9)
  1000fd660  ldr     x9, [x20, #0x40]                         ; x9 = block[+0x40]
  1000fd664  cmp     x8, x9
  1000fd668  b.lo    loc_1000fd6c0                            ; if (x8 <u block[+0x40])
  1000fd66c  ldr     x21, [x20, #0x20]                        ; x21 = captured arg1
  1000fd670  adrp    x8, #0x100419000
  1000fd674  nop
  1000fd678  ldr     x1, [x8, #0x3e8]
  1000fd67c  mov     x0, x19
  1000fd680  bl      _objc_msgSend                            ; [blockarg1 key]
  1000fd684  mov     x1, x0
  1000fd688  ldr     x8, [x21, #0x10]                         ; x8 = arg1[+0x10]
  1000fd68c  mov     x0, x21
  1000fd690  blr     x8                                       ; call arg1[+0x10]
  1000fd694  cbz     w0, loc_1000fd6c0                        ; if (arg1[+0x10](…) == 0)
  1000fd698  ldr     x0, [x20, #0x28]                         ; x0 = captured [NSMutableArray arrayWithCapacity:5]
  1000fd69c  adrp    x8, #0x100416000
  1000fd6a0  nop
  1000fd6a4  ldr     x1, [x8, #0xd90]
  1000fd6a8  mov     x2, x19
  1000fd6ac  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:5] addObject:blockarg1]
  1000fd6b0  b       loc_1000fd6c0
  1000fd6b4  b       loc_1000fd6d4
loc_1000fd6b8:
  1000fd6b8  mov     w8, #1
  1000fd6bc  strb    w8, [x21]                                ; blockarg2[+0x0] = 1
loc_1000fd6c0:
  1000fd6c0  mov     x0, x19
  1000fd6c4  ldp     x29, x30, [sp, #0x20]
  1000fd6c8  ldp     x20, x19, [sp, #0x10]
  1000fd6cc  ldp     x22, x21, [sp], #0x30
  1000fd6d0  b       _objc_release
loc_1000fd6d4:
  1000fd6d4  mov     x20, x0
  1000fd6d8  mov     x0, x19
  1000fd6dc  bl      _objc_release
  1000fd6e0  mov     x0, x20
  1000fd6e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000fd6e8
; address 0x1000fd6e8  size 68  kind sub
; ======================================================================
  1000fd6e8  stp     x20, x19, [sp, #-0x20]!
  1000fd6ec  stp     x29, x30, [sp, #0x10]
  1000fd6f0  add     x29, sp, #0x10
  1000fd6f4  mov     x19, x1
  1000fd6f8  mov     x20, x0
  1000fd6fc  add     x0, x20, #0x30
  1000fd700  ldr     x1, [x19, #0x30]                         ; x1 = a1[+0x30]
  1000fd704  mov     w2, #8
  1000fd708  bl      __Block_object_assign                    ; Block_object_assign((a0 + 48), a1[+0x30], 8, a3)
  1000fd70c  add     x0, x20, #0x20
  1000fd710  ldr     x1, [x19, #0x20]                         ; x1 = a1[+0x20]
  1000fd714  mov     w2, #7
  1000fd718  bl      __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 7)
  1000fd71c  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  1000fd720  ldp     x29, x30, [sp, #0x10]
  1000fd724  ldp     x20, x19, [sp], #0x20
  1000fd728  b       _objc_retain

; ======================================================================
; sub_1000fd72c
; address 0x1000fd72c  size 52  kind sub
; ======================================================================
  1000fd72c  stp     x20, x19, [sp, #-0x20]!
  1000fd730  stp     x29, x30, [sp, #0x10]
  1000fd734  add     x29, sp, #0x10
  1000fd738  mov     x19, x0
  1000fd73c  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  1000fd740  mov     w1, #8
  1000fd744  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x30], 8, a2, a3)
  1000fd748  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000fd74c  bl      _objc_release
  1000fd750  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000fd754  ldp     x29, x30, [sp, #0x10]
  1000fd758  ldp     x20, x19, [sp], #0x20
  1000fd75c  b       _objc_release

; ======================================================================
; -[S3DPlayList soundsMatchingPredicate:]
; address 0x1000fd760  size 464  kind objc
; ======================================================================
  1000fd760  stp     x24, x23, [sp, #-0x40]!
  1000fd764  stp     x22, x21, [sp, #0x10]
  1000fd768  stp     x20, x19, [sp, #0x20]
  1000fd76c  stp     x29, x30, [sp, #0x30]
  1000fd770  add     x29, sp, #0x30
  1000fd774  sub     sp, sp, #0x70
  1000fd778  mov     x20, x0
  1000fd77c  mov     x0, x2
  1000fd780  bl      _objc_retain
  1000fd784  mov     x19, x0
  1000fd788  adrp    x8, #0x100419000
  1000fd78c  nop
  1000fd790  ldr     x23, [x8, #0x380]
  1000fd794  mov     x0, x20
  1000fd798  mov     x1, x23
  1000fd79c  bl      _objc_msgSend                            ; [self range]
  1000fd7a0  mov     x21, x0
  1000fd7a4  mov     x0, x20
  1000fd7a8  mov     x1, x23
  1000fd7ac  bl      _objc_msgSend                            ; [self range]
  1000fd7b0  mov     x22, x0
  1000fd7b4  mov     x0, x20
  1000fd7b8  mov     x1, x23
  1000fd7bc  bl      _objc_msgSend                            ; [self range]
  1000fd7c0  mov     x23, x1
  1000fd7c4  adrp    x8, #0x10041d000
  1000fd7c8  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000fd7cc  adrp    x8, #0x10041b000
  1000fd7d0  nop
  1000fd7d4  ldr     x1, [x8, #0x280]
  1000fd7d8  mov     w2, #5
  1000fd7dc  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:5]
  1000fd7e0  add     x22, x23, x22
  1000fd7e4  bl      _objc_retain
  1000fd7e8  mov     x23, x0
  1000fd7ec  str     xzr, [sp, #0x50]
  1000fd7f0  add     x8, sp, #0x50
  1000fd7f4  mov     w9, #0x20000000
  1000fd7f8  str     x8, [sp, #0x58]
  1000fd7fc  str     w9, [sp, #0x60]
  1000fd800  mov     w9, #0x20
  1000fd804  str     w9, [sp, #0x64]
  1000fd808  mov     w9, #-1
  1000fd80c  str     w9, [sp, #0x68]
  1000fd810  adrp    x9, #0x1003b0000
  1000fd814  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  1000fd818  str     x9, [sp, #8]
  1000fd81c  mov     w9, #-0x3e000000
  1000fd820  stp     w9, wzr, [sp, #0x10]
  1000fd824  adr     x9, #0x1000fd930                         ; &-[S3DPlayList soundsMatchingPredicate:]_block_invoke
  1000fd828  nop
  1000fd82c  str     x9, [sp, #0x18]
  1000fd830  adrp    x9, #0x1003b6000
  1000fd834  add     x9, x9, #0xef0                           ; &d_1003b6ef0
  1000fd838  str     x9, [sp, #0x20]
  1000fd83c  stp     x8, x22, [sp, #0x38]
  1000fd840  str     x21, [sp, #0x48]
  1000fd844  mov     x0, x19
  1000fd848  bl      _objc_retain
  1000fd84c  mov     x22, x0
  1000fd850  str     x22, [sp, #0x28]
  1000fd854  mov     x0, x23
  1000fd858  bl      _objc_retain
  1000fd85c  mov     x21, x0
  1000fd860  str     x21, [sp, #0x30]
  1000fd864  adrp    x8, #0x10041b000
  1000fd868  nop
  1000fd86c  ldr     x1, [x8, #0x7d8]
  1000fd870  add     x2, sp, #8
  1000fd874  mov     x0, x20
  1000fd878  bl      _objc_msgSend                            ; [self each:^{-[S3DPlayList soundsMatchingPredicate:]_block_invoke captures +0x20=arg1, +0x28=[NSMutableArray arrayWithCapacity:5], +0x38=(x23 + x22), +0x48=0, +0x58=0x20000000, +0x60=0xffffffff}]
  1000fd87c  adrp    x8, #0x100416000
  1000fd880  nop
  1000fd884  ldr     x1, [x8, #0xe30]
  1000fd888  mov     x0, x21
  1000fd88c  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:5] count]
  1000fd890  cbz     x0, loc_1000fd8a4                        ; if ([[NSMutableArray arrayWithCapacity:5] count] == 0)
  1000fd894  mov     x0, x21
  1000fd898  bl      _objc_retain
  1000fd89c  mov     x19, x0
  1000fd8a0  b       loc_1000fd8a8
loc_1000fd8a4:
  1000fd8a4  mov     x19, #0
loc_1000fd8a8:
  1000fd8a8  ldr     x0, [sp, #0x30]
  1000fd8ac  bl      _objc_release
  1000fd8b0  ldr     x0, [sp, #0x28]
  1000fd8b4  bl      _objc_release
  1000fd8b8  add     x0, sp, #0x50
  1000fd8bc  mov     w1, #8
  1000fd8c0  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x50], 8)
  1000fd8c4  mov     x0, x21
  1000fd8c8  bl      _objc_release
  1000fd8cc  mov     x0, x22
  1000fd8d0  bl      _objc_release
  1000fd8d4  mov     x0, x19
  1000fd8d8  sub     sp, x29, #0x30
  1000fd8dc  ldp     x29, x30, [sp, #0x30]
  1000fd8e0  ldp     x20, x19, [sp, #0x20]
  1000fd8e4  ldp     x22, x21, [sp, #0x10]
  1000fd8e8  ldp     x24, x23, [sp], #0x40
  1000fd8ec  b       _objc_autoreleaseReturnValue
  1000fd8f0  mov     x20, x0
  1000fd8f4  b       loc_1000fd920
  1000fd8f8  mov     x20, x0
  1000fd8fc  ldr     x0, [sp, #0x30]
  1000fd900  bl      _objc_release
  1000fd904  ldr     x0, [sp, #0x28]
  1000fd908  bl      _objc_release
  1000fd90c  add     x0, sp, #0x50
  1000fd910  mov     w1, #8
  1000fd914  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x50], 8)
  1000fd918  mov     x0, x21
  1000fd91c  bl      _objc_release
loc_1000fd920:
  1000fd920  mov     x0, x19
  1000fd924  bl      _objc_release
  1000fd928  mov     x0, x20
  1000fd92c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList soundsMatchingPredicate:]_block_invoke
; address 0x1000fd930  size 212  kind block
; ======================================================================
  1000fd930  stp     x22, x21, [sp, #-0x30]!
  1000fd934  stp     x20, x19, [sp, #0x10]
  1000fd938  stp     x29, x30, [sp, #0x20]
  1000fd93c  add     x29, sp, #0x20
  1000fd940  mov     x21, x2
  1000fd944  mov     x20, x0
  1000fd948  mov     x0, x1
  1000fd94c  bl      _objc_retain
  1000fd950  mov     x19, x0
  1000fd954  ldr     x8, [x20, #0x30]                         ; x8 = block[+0x30]
  1000fd958  ldr     x8, [x8, #8]                             ; x8 = block[+0x30][+0x8]
  1000fd95c  ldr     w9, [x8, #0x18]                          ; w9 = block[+0x30][+0x8][+0x18]
  1000fd960  add     w9, w9, #1
  1000fd964  str     w9, [x8, #0x18]                          ; block[+0x30][+0x8][+0x18] = (block[+0x30][+0x8][+0x18] + 1)
  1000fd968  ldp     x8, x9, [x20, #0x30]
  1000fd96c  ldr     x8, [x8, #8]
  1000fd970  ldrsw   x8, [x8, #0x18]
  1000fd974  cmp     x8, x9
  1000fd978  b.hs    loc_1000fd9d4                            ; if (x8 >=u x9)
  1000fd97c  ldr     x9, [x20, #0x40]                         ; x9 = block[+0x40]
  1000fd980  cmp     x8, x9
  1000fd984  b.lo    loc_1000fd9dc                            ; if (x8 <u block[+0x40])
  1000fd988  ldr     x21, [x20, #0x20]                        ; x21 = captured arg1
  1000fd98c  adrp    x8, #0x100419000
  1000fd990  nop
  1000fd994  ldr     x1, [x8, #0x3e8]
  1000fd998  mov     x0, x19
  1000fd99c  bl      _objc_msgSend                            ; [blockarg1 key]
  1000fd9a0  mov     x1, x0
  1000fd9a4  ldr     x8, [x21, #0x10]                         ; x8 = arg1[+0x10]
  1000fd9a8  mov     x0, x21
  1000fd9ac  blr     x8                                       ; call arg1[+0x10]
  1000fd9b0  cbz     w0, loc_1000fd9dc                        ; if (arg1[+0x10](…) == 0)
  1000fd9b4  ldr     x0, [x20, #0x28]                         ; x0 = captured [NSMutableArray arrayWithCapacity:5]
  1000fd9b8  adrp    x8, #0x100416000
  1000fd9bc  nop
  1000fd9c0  ldr     x1, [x8, #0xd90]
  1000fd9c4  mov     x2, x19
  1000fd9c8  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:5] addObject:blockarg1]
  1000fd9cc  b       loc_1000fd9dc
  1000fd9d0  b       loc_1000fd9f0
loc_1000fd9d4:
  1000fd9d4  mov     w8, #1
  1000fd9d8  strb    w8, [x21]                                ; blockarg2[+0x0] = 1
loc_1000fd9dc:
  1000fd9dc  mov     x0, x19
  1000fd9e0  ldp     x29, x30, [sp, #0x20]
  1000fd9e4  ldp     x20, x19, [sp, #0x10]
  1000fd9e8  ldp     x22, x21, [sp], #0x30
  1000fd9ec  b       _objc_release
loc_1000fd9f0:
  1000fd9f0  mov     x20, x0
  1000fd9f4  mov     x0, x19
  1000fd9f8  bl      _objc_release
  1000fd9fc  mov     x0, x20
  1000fda00  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000fda04
; address 0x1000fda04  size 68  kind sub
; ======================================================================
  1000fda04  stp     x20, x19, [sp, #-0x20]!
  1000fda08  stp     x29, x30, [sp, #0x10]
  1000fda0c  add     x29, sp, #0x10
  1000fda10  mov     x19, x1
  1000fda14  mov     x20, x0
  1000fda18  add     x0, x20, #0x30
  1000fda1c  ldr     x1, [x19, #0x30]                         ; x1 = a1[+0x30]
  1000fda20  mov     w2, #8
  1000fda24  bl      __Block_object_assign                    ; Block_object_assign((a0 + 48), a1[+0x30], 8, a3)
  1000fda28  add     x0, x20, #0x20
  1000fda2c  ldr     x1, [x19, #0x20]                         ; x1 = a1[+0x20]
  1000fda30  mov     w2, #7
  1000fda34  bl      __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 7)
  1000fda38  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  1000fda3c  ldp     x29, x30, [sp, #0x10]
  1000fda40  ldp     x20, x19, [sp], #0x20
  1000fda44  b       _objc_retain

; ======================================================================
; sub_1000fda48
; address 0x1000fda48  size 52  kind sub
; ======================================================================
  1000fda48  stp     x20, x19, [sp, #-0x20]!
  1000fda4c  stp     x29, x30, [sp, #0x10]
  1000fda50  add     x29, sp, #0x10
  1000fda54  mov     x19, x0
  1000fda58  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  1000fda5c  mov     w1, #8
  1000fda60  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x30], 8, a2, a3)
  1000fda64  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000fda68  bl      _objc_release
  1000fda6c  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000fda70  ldp     x29, x30, [sp, #0x10]
  1000fda74  ldp     x20, x19, [sp], #0x20
  1000fda78  b       _objc_release

; ======================================================================
; -[S3DPlayList anySound]
; address 0x1000fda7c  size 24  kind objc
; ======================================================================
  1000fda7c  adrp    x8, #0x10041b000
  1000fda80  nop
  1000fda84  ldr     x1, [x8, #0x4e0]
  1000fda88  adrp    x2, #0x1003b6000
  1000fda8c  add     x2, x2, #0xf40                           ; ^{-[S3DPlayList anySound]_block_invoke}
  1000fda90  b       _objc_msgSend                            ; [self anySoundMatchingPredicate:^{-[S3DPlayList anySound]_block_invoke}]

; ======================================================================
; -[S3DPlayList anySound]_block_invoke
; address 0x1000fda94  size 8  kind block
; ======================================================================
  1000fda94  mov     w0, #1
  1000fda98  ret

; ======================================================================
; -[S3DPlayList anySoundWihPrefix:]
; address 0x1000fda9c  size 192  kind objc
; ======================================================================
  1000fda9c  stp     x22, x21, [sp, #-0x30]!
  1000fdaa0  stp     x20, x19, [sp, #0x10]
  1000fdaa4  stp     x29, x30, [sp, #0x20]
  1000fdaa8  add     x29, sp, #0x20
  1000fdaac  sub     sp, sp, #0x30
  1000fdab0  mov     x20, x0
  1000fdab4  mov     x0, x2
  1000fdab8  bl      _objc_retain
  1000fdabc  adrp    x8, #0x1003b0000
  1000fdac0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000fdac4  adr     x9, #0x1000fdb5c                         ; &-[S3DPlayList anySoundWihPrefix:]_block_invoke
  1000fdac8  nop
  1000fdacc  mov     w10, #-0x3e000000
  1000fdad0  adrp    x11, #0x1003b6000
  1000fdad4  add     x11, x11, #0xf60                         ; &d_1003b6f60
  1000fdad8  str     x8, [sp, #8]
  1000fdadc  stp     w10, wzr, [sp, #0x10]
  1000fdae0  stp     x9, x11, [sp, #0x18]
  1000fdae4  str     x0, [sp, #0x28]
  1000fdae8  adrp    x8, #0x10041b000
  1000fdaec  nop
  1000fdaf0  ldr     x21, [x8, #0x4e0]
  1000fdaf4  bl      _objc_retain
  1000fdaf8  mov     x19, x0
  1000fdafc  add     x2, sp, #8
  1000fdb00  mov     x0, x20
  1000fdb04  mov     x1, x21
  1000fdb08  bl      _objc_msgSend                            ; [self anySoundMatchingPredicate:^{-[S3DPlayList anySoundWihPrefix:]_block_invoke captures +0x20=arg1}]
  1000fdb0c  mov     x29, x29
  1000fdb10  bl      _objc_retainAutoreleasedReturnValue
  1000fdb14  mov     x20, x0
  1000fdb18  ldr     x0, [sp, #0x28]
  1000fdb1c  bl      _objc_release
  1000fdb20  mov     x0, x19
  1000fdb24  bl      _objc_release
  1000fdb28  mov     x0, x20
  1000fdb2c  sub     sp, x29, #0x20
  1000fdb30  ldp     x29, x30, [sp, #0x20]
  1000fdb34  ldp     x20, x19, [sp, #0x10]
  1000fdb38  ldp     x22, x21, [sp], #0x30
  1000fdb3c  b       _objc_autoreleaseReturnValue
  1000fdb40  mov     x20, x0
  1000fdb44  ldr     x0, [sp, #0x28]
  1000fdb48  bl      _objc_release
  1000fdb4c  mov     x0, x19
  1000fdb50  bl      _objc_release
  1000fdb54  mov     x0, x20
  1000fdb58  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList anySoundWihPrefix:]_block_invoke
; address 0x1000fdb5c  size 44  kind block
; ======================================================================
  1000fdb5c  stp     x29, x30, [sp, #-0x10]!
  1000fdb60  mov     x29, sp
  1000fdb64  ldr     x2, [x0, #0x20]                          ; x2 = captured arg1
  1000fdb68  adrp    x8, #0x10041a000
  1000fdb6c  nop
  1000fdb70  ldr     x8, [x8, #0x2d0]
  1000fdb74  mov     x0, x1
  1000fdb78  mov     x1, x8
  1000fdb7c  bl      _objc_msgSend                            ; [blockarg1 hasPrefix:arg1]
  1000fdb80  ldp     x29, x30, [sp], #0x10
  1000fdb84  ret

; ======================================================================
; sub_1000fdb88
; address 0x1000fdb88  size 8  kind sub
; ======================================================================
  1000fdb88  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000fdb8c  b       _objc_retain

; ======================================================================
; sub_1000fdb90
; address 0x1000fdb90  size 8  kind sub
; ======================================================================
  1000fdb90  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000fdb94  b       _objc_release

; ======================================================================
; -[S3DPlayList anySoundWihSuffix:]
; address 0x1000fdb98  size 192  kind objc
; ======================================================================
  1000fdb98  stp     x22, x21, [sp, #-0x30]!
  1000fdb9c  stp     x20, x19, [sp, #0x10]
  1000fdba0  stp     x29, x30, [sp, #0x20]
  1000fdba4  add     x29, sp, #0x20
  1000fdba8  sub     sp, sp, #0x30
  1000fdbac  mov     x20, x0
  1000fdbb0  mov     x0, x2
  1000fdbb4  bl      _objc_retain
  1000fdbb8  adrp    x8, #0x1003b0000
  1000fdbbc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000fdbc0  adr     x9, #0x1000fdc58                         ; &-[S3DPlayList anySoundWihSuffix:]_block_invoke
  1000fdbc4  nop
  1000fdbc8  mov     w10, #-0x3e000000
  1000fdbcc  adrp    x11, #0x1003b6000
  1000fdbd0  add     x11, x11, #0xf90                         ; &d_1003b6f90
  1000fdbd4  str     x8, [sp, #8]
  1000fdbd8  stp     w10, wzr, [sp, #0x10]
  1000fdbdc  stp     x9, x11, [sp, #0x18]
  1000fdbe0  str     x0, [sp, #0x28]
  1000fdbe4  adrp    x8, #0x10041b000
  1000fdbe8  nop
  1000fdbec  ldr     x21, [x8, #0x4e0]
  1000fdbf0  bl      _objc_retain
  1000fdbf4  mov     x19, x0
  1000fdbf8  add     x2, sp, #8
  1000fdbfc  mov     x0, x20
  1000fdc00  mov     x1, x21
  1000fdc04  bl      _objc_msgSend                            ; [self anySoundMatchingPredicate:^{-[S3DPlayList anySoundWihSuffix:]_block_invoke captures +0x20=arg1}]
  1000fdc08  mov     x29, x29
  1000fdc0c  bl      _objc_retainAutoreleasedReturnValue
  1000fdc10  mov     x20, x0
  1000fdc14  ldr     x0, [sp, #0x28]
  1000fdc18  bl      _objc_release
  1000fdc1c  mov     x0, x19
  1000fdc20  bl      _objc_release
  1000fdc24  mov     x0, x20
  1000fdc28  sub     sp, x29, #0x20
  1000fdc2c  ldp     x29, x30, [sp, #0x20]
  1000fdc30  ldp     x20, x19, [sp, #0x10]
  1000fdc34  ldp     x22, x21, [sp], #0x30
  1000fdc38  b       _objc_autoreleaseReturnValue
  1000fdc3c  mov     x20, x0
  1000fdc40  ldr     x0, [sp, #0x28]
  1000fdc44  bl      _objc_release
  1000fdc48  mov     x0, x19
  1000fdc4c  bl      _objc_release
  1000fdc50  mov     x0, x20
  1000fdc54  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList anySoundWihSuffix:]_block_invoke
; address 0x1000fdc58  size 44  kind block
; ======================================================================
  1000fdc58  stp     x29, x30, [sp, #-0x10]!
  1000fdc5c  mov     x29, sp
  1000fdc60  ldr     x2, [x0, #0x20]                          ; x2 = captured arg1
  1000fdc64  adrp    x8, #0x10041b000
  1000fdc68  nop
  1000fdc6c  ldr     x8, [x8, #0x4e8]
  1000fdc70  mov     x0, x1
  1000fdc74  mov     x1, x8
  1000fdc78  bl      _objc_msgSend                            ; [blockarg1 hasSuffix:arg1]
  1000fdc7c  ldp     x29, x30, [sp], #0x10
  1000fdc80  ret

; ======================================================================
; sub_1000fdc84
; address 0x1000fdc84  size 8  kind sub
; ======================================================================
  1000fdc84  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000fdc88  b       _objc_retain

; ======================================================================
; sub_1000fdc8c
; address 0x1000fdc8c  size 8  kind sub
; ======================================================================
  1000fdc8c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000fdc90  b       _objc_release

; ======================================================================
; -[S3DPlayList anySoundContaining:]
; address 0x1000fdc94  size 192  kind objc
; ======================================================================
  1000fdc94  stp     x22, x21, [sp, #-0x30]!
  1000fdc98  stp     x20, x19, [sp, #0x10]
  1000fdc9c  stp     x29, x30, [sp, #0x20]
  1000fdca0  add     x29, sp, #0x20
  1000fdca4  sub     sp, sp, #0x30
  1000fdca8  mov     x20, x0
  1000fdcac  mov     x0, x2
  1000fdcb0  bl      _objc_retain
  1000fdcb4  adrp    x8, #0x1003b0000
  1000fdcb8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000fdcbc  adr     x9, #0x1000fdd54                         ; &-[S3DPlayList anySoundContaining:]_block_invoke
  1000fdcc0  nop
  1000fdcc4  mov     w10, #-0x3e000000
  1000fdcc8  adrp    x11, #0x1003b6000
  1000fdccc  add     x11, x11, #0xfc0                         ; &d_1003b6fc0
  1000fdcd0  str     x8, [sp, #8]
  1000fdcd4  stp     w10, wzr, [sp, #0x10]
  1000fdcd8  stp     x9, x11, [sp, #0x18]
  1000fdcdc  str     x0, [sp, #0x28]
  1000fdce0  adrp    x8, #0x10041b000
  1000fdce4  nop
  1000fdce8  ldr     x21, [x8, #0x4e0]
  1000fdcec  bl      _objc_retain
  1000fdcf0  mov     x19, x0
  1000fdcf4  add     x2, sp, #8
  1000fdcf8  mov     x0, x20
  1000fdcfc  mov     x1, x21
  1000fdd00  bl      _objc_msgSend                            ; [self anySoundMatchingPredicate:^{-[S3DPlayList anySoundContaining:]_block_invoke captures +0x20=arg1}]
  1000fdd04  mov     x29, x29
  1000fdd08  bl      _objc_retainAutoreleasedReturnValue
  1000fdd0c  mov     x20, x0
  1000fdd10  ldr     x0, [sp, #0x28]
  1000fdd14  bl      _objc_release
  1000fdd18  mov     x0, x19
  1000fdd1c  bl      _objc_release
  1000fdd20  mov     x0, x20
  1000fdd24  sub     sp, x29, #0x20
  1000fdd28  ldp     x29, x30, [sp, #0x20]
  1000fdd2c  ldp     x20, x19, [sp, #0x10]
  1000fdd30  ldp     x22, x21, [sp], #0x30
  1000fdd34  b       _objc_autoreleaseReturnValue
  1000fdd38  mov     x20, x0
  1000fdd3c  ldr     x0, [sp, #0x28]
  1000fdd40  bl      _objc_release
  1000fdd44  mov     x0, x19
  1000fdd48  bl      _objc_release
  1000fdd4c  mov     x0, x20
  1000fdd50  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList anySoundContaining:]_block_invoke
; address 0x1000fdd54  size 56  kind block
; ======================================================================
  1000fdd54  stp     x29, x30, [sp, #-0x10]!
  1000fdd58  mov     x29, sp
  1000fdd5c  ldr     x2, [x0, #0x20]                          ; x2 = captured arg1
  1000fdd60  adrp    x8, #0x100417000
  1000fdd64  nop
  1000fdd68  ldr     x8, [x8, #0x58]
  1000fdd6c  mov     x0, x1
  1000fdd70  mov     x1, x8
  1000fdd74  bl      _objc_msgSend                            ; [blockarg1 rangeOfString:arg1]
  1000fdd78  mov     x8, #0x7fffffffffffffff
  1000fdd7c  cmp     x0, x8
  1000fdd80  cset    w0, ne
  1000fdd84  ldp     x29, x30, [sp], #0x10
  1000fdd88  ret

; ======================================================================
; sub_1000fdd8c
; address 0x1000fdd8c  size 8  kind sub
; ======================================================================
  1000fdd8c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000fdd90  b       _objc_retain

; ======================================================================
; sub_1000fdd94
; address 0x1000fdd94  size 8  kind sub
; ======================================================================
  1000fdd94  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000fdd98  b       _objc_release

; ======================================================================
; -[S3DPlayList cycleSound]
; address 0x1000fdd9c  size 424  kind objc
; ======================================================================
  1000fdd9c  stp     x24, x23, [sp, #-0x40]!
  1000fdda0  stp     x22, x21, [sp, #0x10]
  1000fdda4  stp     x20, x19, [sp, #0x20]
  1000fdda8  stp     x29, x30, [sp, #0x30]
  1000fddac  add     x29, sp, #0x30
  1000fddb0  sub     sp, sp, #0xa0
  1000fddb4  mov     x19, x0
  1000fddb8  adrp    x8, #0x100420000
  1000fddbc  ldrsw   x8, [x8, #0x628]                         ; ivar offset S3DPlayList.cycleIndex (+0x10)
  1000fddc0  ldr     w23, [x19, x8]                           ; w23 = self->cycleIndex
  1000fddc4  add     w9, w23, #1
  1000fddc8  str     w9, [x19, x8]                            ; self->cycleIndex = (self->cycleIndex + 1)
  1000fddcc  adrp    x10, #0x100420000
  1000fddd0  ldrsw   x10, [x10, #0x624]                       ; ivar offset S3DPlayList.range (+0x38)
  1000fddd4  add     x10, x10, x19
  1000fddd8  ldr     x10, [x10, #8]                           ; x10 = self->range[+0x8]
  1000fdddc  sxtw    x9, w9
  1000fdde0  udiv    x11, x9, x10
  1000fdde4  mul     w10, w11, w10
  1000fdde8  sub     x9, x9, w10, uxtw                        ; t1 = ((self->cycleIndex + 1) - (((self->cycleIndex + 1) / self->range[+0x8]) * self->range[+0x8]))
  1000fddec  str     w9, [x19, x8]                            ; self->cycleIndex = t1
  1000fddf0  adrp    x8, #0x100419000
  1000fddf4  nop
  1000fddf8  ldr     x20, [x8, #0x380]
  1000fddfc  mov     x1, x20
  1000fde00  bl      _objc_msgSend                            ; [self range]
  1000fde04  mov     x21, x0
  1000fde08  mov     x0, x19
  1000fde0c  mov     x1, x20
  1000fde10  bl      _objc_msgSend                            ; [self range]
  1000fde14  mov     x22, x0
  1000fde18  mov     x0, x19
  1000fde1c  mov     x1, x20
  1000fde20  bl      _objc_msgSend                            ; [self range]
  1000fde24  sub     x8, x29, #0x60
  1000fde28  mov     w9, #0x32000000
  1000fde2c  stp     xzr, x8, [x29, #-0x60]
  1000fde30  add     x10, x1, x22
  1000fde34  mov     w11, #0x30
  1000fde38  stp     w9, w11, [x29, #-0x50]
  1000fde3c  adr     x9, #0x1000fdf44                         ; &-[S3DPlayList cycleSound]_block_invoke
  1000fde40  nop
  1000fde44  adr     x11, #0x1000fdf54                        ; &-[S3DPlayList cycleSound]_block_invoke_2
  1000fde48  nop
  1000fde4c  str     xzr, [sp, #0x50]
  1000fde50  stp     x9, x11, [x29, #-0x48]
  1000fde54  add     x9, sp, #0x50
  1000fde58  stur    xzr, [x29, #-0x38]
  1000fde5c  str     x9, [sp, #0x58]
  1000fde60  mov     w11, #0x20000000
  1000fde64  str     w11, [sp, #0x60]
  1000fde68  mov     w11, #0x20
  1000fde6c  str     w11, [sp, #0x64]
  1000fde70  mov     w11, #-1
  1000fde74  str     w11, [sp, #0x68]
  1000fde78  add     w11, w21, w23
  1000fde7c  adrp    x12, #0x1003b0000
  1000fde80  ldr     x12, [x12, #0x118]                       ; __NSConcreteStackBlock
  1000fde84  str     x12, [sp, #8]
  1000fde88  mov     w12, #-0x3e000000
  1000fde8c  stp     w12, wzr, [sp, #0x10]
  1000fde90  adr     x12, #0x1000fdf5c                        ; &-[S3DPlayList cycleSound]_block_invoke_3
  1000fde94  nop
  1000fde98  str     x12, [sp, #0x18]
  1000fde9c  adrp    x12, #0x1003b6000
  1000fdea0  add     x12, x12, #0xff0                         ; &d_1003b6ff0
  1000fdea4  stp     x12, x9, [sp, #0x20]
  1000fdea8  stp     x10, x21, [sp, #0x38]
  1000fdeac  str     w11, [sp, #0x48]
  1000fdeb0  str     x8, [sp, #0x30]
  1000fdeb4  adrp    x8, #0x10041b000
  1000fdeb8  nop
  1000fdebc  ldr     x1, [x8, #0x7d8]
  1000fdec0  add     x2, sp, #8
  1000fdec4  mov     x0, x19
  1000fdec8  bl      _objc_msgSend                            ; [self each:^{-[S3DPlayList cycleSound]_block_invoke_3 captures +0x30=(x1 + x22), +0x40=(w21 + self->cycleIndex), +0x48=0, +0x58=0x20000000, +0x60=0xffffffff}]
  1000fdecc  ldur    x8, [x29, #-0x58]
  1000fded0  ldr     x0, [x8, #0x28]
  1000fded4  bl      _objc_retain
  1000fded8  mov     x19, x0
  1000fdedc  add     x0, sp, #0x50
  1000fdee0  mov     w1, #8
  1000fdee4  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x50], 8)
  1000fdee8  sub     x0, x29, #0x60
  1000fdeec  mov     w1, #8
  1000fdef0  bl      __Block_object_dispose                   ; Block_object_dispose(&x29[-0x60], 8)
  1000fdef4  ldur    x0, [x29, #-0x38]
  1000fdef8  bl      _objc_release
  1000fdefc  mov     x0, x19
  1000fdf00  sub     sp, x29, #0x30
  1000fdf04  ldp     x29, x30, [sp, #0x30]
  1000fdf08  ldp     x20, x19, [sp, #0x20]
  1000fdf0c  ldp     x22, x21, [sp, #0x10]
  1000fdf10  ldp     x24, x23, [sp], #0x40
  1000fdf14  b       _objc_autoreleaseReturnValue
  1000fdf18  mov     x19, x0
  1000fdf1c  add     x0, sp, #0x50
  1000fdf20  mov     w1, #8
  1000fdf24  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x50], 8)
  1000fdf28  sub     x0, x29, #0x60
  1000fdf2c  mov     w1, #8
  1000fdf30  bl      __Block_object_dispose                   ; Block_object_dispose(&x29[-0x60], 8)
  1000fdf34  ldur    x0, [x29, #-0x38]
  1000fdf38  bl      _objc_release
  1000fdf3c  mov     x0, x19
  1000fdf40  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList cycleSound]_block_invoke
; address 0x1000fdf44  size 16  kind block
; ======================================================================
  1000fdf44  ldr     x8, [x1, #0x28]                          ; x8 = blockarg1[+0x28]
  1000fdf48  str     x8, [x0, #0x28]                          ; block[+0x28] = blockarg1[+0x28]
  1000fdf4c  str     xzr, [x1, #0x28]                         ; blockarg1[+0x28] = 0
  1000fdf50  ret

; ======================================================================
; -[S3DPlayList cycleSound]_block_invoke_2
; address 0x1000fdf54  size 8  kind block
; ======================================================================
  1000fdf54  ldr     x0, [x0, #0x28]                          ; x0 = block[+0x28]
  1000fdf58  b       _objc_release

; ======================================================================
; -[S3DPlayList cycleSound]_block_invoke_3
; address 0x1000fdf5c  size 164  kind block
; ======================================================================
  1000fdf5c  stp     x22, x21, [sp, #-0x30]!
  1000fdf60  stp     x20, x19, [sp, #0x10]
  1000fdf64  stp     x29, x30, [sp, #0x20]
  1000fdf68  add     x29, sp, #0x20
  1000fdf6c  mov     x19, x2
  1000fdf70  mov     x21, x0
  1000fdf74  mov     x0, x1
  1000fdf78  bl      _objc_retain
  1000fdf7c  mov     x20, x0
  1000fdf80  ldr     x8, [x21, #0x20]                         ; x8 = block[+0x20]
  1000fdf84  ldr     x8, [x8, #8]                             ; x8 = block[+0x20][+0x8]
  1000fdf88  ldr     w9, [x8, #0x18]                          ; w9 = block[+0x20][+0x8][+0x18]
  1000fdf8c  add     w9, w9, #1
  1000fdf90  str     w9, [x8, #0x18]                          ; block[+0x20][+0x8][+0x18] = (block[+0x20][+0x8][+0x18] + 1)
  1000fdf94  ldr     x8, [x21, #0x20]                         ; x8 = block[+0x20]
  1000fdf98  ldr     x8, [x8, #8]                             ; x8 = block[+0x20][+0x8]
  1000fdf9c  ldrsw   x8, [x8, #0x18]                          ; x8 = block[+0x20][+0x8][+0x18]
  1000fdfa0  ldr     x9, [x21, #0x30]                         ; x9 = captured (x1 + x22)
  1000fdfa4  cmp     x8, x9
  1000fdfa8  b.hs    loc_1000fdfe4                            ; if (block[+0x20][+0x8][+0x18] >=u (x1 + x22))
  1000fdfac  ldr     x9, [x21, #0x38]                         ; x9 = block[+0x38]
  1000fdfb0  cmp     x8, x9
  1000fdfb4  b.lo    loc_1000fdfec                            ; if (block[+0x20][+0x8][+0x18] <u block[+0x38])
  1000fdfb8  ldr     w9, [x21, #0x40]                         ; w9 = captured (w21 + self->cycleIndex)
  1000fdfbc  cmp     w8, w9
  1000fdfc0  b.ne    loc_1000fdfec                            ; if (block[+0x20][+0x8][+0x18] != (w21 + self->cycleIndex))
  1000fdfc4  ldr     x8, [x21, #0x28]                         ; x8 = block[+0x28]
  1000fdfc8  ldr     x21, [x8, #8]                            ; x21 = block[+0x28][+0x8]
  1000fdfcc  mov     x0, x20
  1000fdfd0  bl      _objc_retain
  1000fdfd4  ldr     x8, [x21, #0x28]                         ; x8 = block[+0x28][+0x8][+0x28]
  1000fdfd8  str     x0, [x21, #0x28]                         ; block[+0x28][+0x8][+0x28] = blockarg1
  1000fdfdc  mov     x0, x8
  1000fdfe0  bl      _objc_release
loc_1000fdfe4:
  1000fdfe4  mov     w8, #1
  1000fdfe8  strb    w8, [x19]                                ; blockarg2[+0x0] = 1
loc_1000fdfec:
  1000fdfec  mov     x0, x20
  1000fdff0  ldp     x29, x30, [sp, #0x20]
  1000fdff4  ldp     x20, x19, [sp, #0x10]
  1000fdff8  ldp     x22, x21, [sp], #0x30
  1000fdffc  b       _objc_release

; ======================================================================
; sub_1000fe000
; address 0x1000fe000  size 60  kind sub
; ======================================================================
  1000fe000  stp     x20, x19, [sp, #-0x20]!
  1000fe004  stp     x29, x30, [sp, #0x10]
  1000fe008  add     x29, sp, #0x10
  1000fe00c  mov     x19, x1
  1000fe010  mov     x20, x0
  1000fe014  add     x0, x20, #0x20
  1000fe018  ldr     x1, [x19, #0x20]                         ; x1 = a1[+0x20]
  1000fe01c  mov     w2, #8
  1000fe020  bl      __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 8, a3)
  1000fe024  add     x0, x20, #0x28
  1000fe028  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  1000fe02c  mov     w2, #8
  1000fe030  ldp     x29, x30, [sp, #0x10]
  1000fe034  ldp     x20, x19, [sp], #0x20
  1000fe038  b       __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 8)

; ======================================================================
; sub_1000fe03c
; address 0x1000fe03c  size 48  kind sub
; ======================================================================
  1000fe03c  stp     x20, x19, [sp, #-0x20]!
  1000fe040  stp     x29, x30, [sp, #0x10]
  1000fe044  add     x29, sp, #0x10
  1000fe048  mov     x19, x0
  1000fe04c  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000fe050  mov     w1, #8
  1000fe054  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 8, a2, a3)
  1000fe058  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000fe05c  mov     w1, #8
  1000fe060  ldp     x29, x30, [sp, #0x10]
  1000fe064  ldp     x20, x19, [sp], #0x20
  1000fe068  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x28], 8)

; ======================================================================
; -[S3DPlayList deactivate]
; address 0x1000fe06c  size 164  kind objc
; ======================================================================
  1000fe06c  stp     x20, x19, [sp, #-0x20]!
  1000fe070  stp     x29, x30, [sp, #0x10]
  1000fe074  add     x29, sp, #0x10
  1000fe078  sub     sp, sp, #0x50
  1000fe07c  str     xzr, [sp, #0x30]
  1000fe080  add     x8, sp, #0x30
  1000fe084  mov     w9, #0x20000000
  1000fe088  str     x8, [sp, #0x38]
  1000fe08c  str     w9, [sp, #0x40]
  1000fe090  mov     w9, #0x20
  1000fe094  str     w9, [sp, #0x44]
  1000fe098  adrp    x9, #0x1003b0000
  1000fe09c  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  1000fe0a0  str     x9, [sp, #8]
  1000fe0a4  mov     w9, #-0x3e000000
  1000fe0a8  stp     w9, wzr, [sp, #0x10]
  1000fe0ac  adr     x9, #0x1000fe110                         ; &-[S3DPlayList deactivate]_block_invoke
  1000fe0b0  nop
  1000fe0b4  str     x9, [sp, #0x18]
  1000fe0b8  adrp    x9, #0x1003b7000
  1000fe0bc  add     x9, x9, #0x20                            ; &d_1003b7020
  1000fe0c0  strb    wzr, [sp, #0x48]
  1000fe0c4  stp     x9, x8, [sp, #0x20]
  1000fe0c8  adrp    x8, #0x10041a000
  1000fe0cc  nop
  1000fe0d0  ldr     x1, [x8, #0x2d8]
  1000fe0d4  add     x2, sp, #8
  1000fe0d8  bl      _objc_msgSend                            ; [self deactivate:^{-[S3DPlayList deactivate]_block_invoke captures +0x28=0, +0x38=0x20000000, +0x40=0}]
  1000fe0dc  add     x0, sp, #0x30
  1000fe0e0  mov     w1, #8
  1000fe0e4  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x30], 8)
  1000fe0e8  sub     sp, x29, #0x10
  1000fe0ec  ldp     x29, x30, [sp, #0x10]
  1000fe0f0  ldp     x20, x19, [sp], #0x20
  1000fe0f4  ret
  1000fe0f8  mov     x19, x0
  1000fe0fc  add     x0, sp, #0x30
  1000fe100  mov     w1, #8
  1000fe104  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x30], 8)
  1000fe108  mov     x0, x19
  1000fe10c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList deactivate]_block_invoke
; address 0x1000fe110  size 20  kind block
; ======================================================================
  1000fe110  ldr     x8, [x0, #0x20]                          ; x8 = block[+0x20]
  1000fe114  ldr     x8, [x8, #8]                             ; x8 = block[+0x20][+0x8]
  1000fe118  mov     w9, #1
  1000fe11c  strb    w9, [x8, #0x18]                          ; block[+0x20][+0x8][+0x18] = 1
  1000fe120  ret

; ======================================================================
; sub_1000fe124
; address 0x1000fe124  size 16  kind sub
; ======================================================================
  1000fe124  add     x0, x0, #0x20
  1000fe128  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  1000fe12c  mov     w2, #8
  1000fe130  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 8, a3)

; ======================================================================
; sub_1000fe134
; address 0x1000fe134  size 12  kind sub
; ======================================================================
  1000fe134  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000fe138  mov     w1, #8
  1000fe13c  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 8, a2, a3)

; ======================================================================
; -[S3DPlayList deactivate:]
; address 0x1000fe140  size 440  kind objc
; ======================================================================
  1000fe140  stp     x24, x23, [sp, #-0x40]!
  1000fe144  stp     x22, x21, [sp, #0x10]
  1000fe148  stp     x20, x19, [sp, #0x20]
  1000fe14c  stp     x29, x30, [sp, #0x30]
  1000fe150  add     x29, sp, #0x30
  1000fe154  sub     sp, sp, #0x40
  1000fe158  mov     x20, x0
  1000fe15c  mov     x0, x2
  1000fe160  bl      _objc_retain
  1000fe164  mov     x19, x0
  1000fe168  adrp    x8, #0x10041b000
  1000fe16c  nop
  1000fe170  ldr     x1, [x8, #0x718]
  1000fe174  mov     x0, x20
  1000fe178  bl      _objc_msgSend                            ; [self active]
  1000fe17c  tbz     w0, #0, loc_1000fe290                    ; if (!([self active] & 1))
  1000fe180  adrp    x8, #0x10041b000
  1000fe184  nop
  1000fe188  ldr     x1, [x8, #0x638]
  1000fe18c  mov     w2, #0
  1000fe190  mov     x0, x20
  1000fe194  bl      _objc_msgSend                            ; [self setActive:0]
  1000fe198  adrp    x23, #0x10041d000
  1000fe19c  ldr     x0, [x23, #0xff8]                        ; class S3DEngine
  1000fe1a0  adrp    x8, #0x100417000
  1000fe1a4  nop
  1000fe1a8  ldr     x21, [x8, #0x4f0]
  1000fe1ac  mov     x1, x21
  1000fe1b0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000fe1b4  mov     x29, x29
  1000fe1b8  bl      _objc_retainAutoreleasedReturnValue
  1000fe1bc  mov     x22, x0
  1000fe1c0  adrp    x8, #0x10041b000
  1000fe1c4  nop
  1000fe1c8  ldr     x1, [x8, #0x800]
  1000fe1cc  str     x20, [sp]
  1000fe1d0  adrp    x3, #0x1003c2000
  1000fe1d4  add     x3, x3, #0xf30                           ; @"### S3DPlayList: %@ -- deactivate"
  1000fe1d8  mov     w2, #2
  1000fe1dc  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:2 format:@"### S3DPlayList: %@ -- deactivate"]
  1000fe1e0  mov     x0, x22
  1000fe1e4  bl      _objc_release
  1000fe1e8  adrp    x8, #0x10041b000
  1000fe1ec  nop
  1000fe1f0  ldr     x1, [x8, #0x7d8]
  1000fe1f4  adrp    x2, #0x1003b7000
  1000fe1f8  add     x2, x2, #0x70                            ; ^{-[S3DPlayList deactivate:]_block_invoke}
  1000fe1fc  mov     x0, x20
  1000fe200  bl      _objc_msgSend                            ; [self each:^{-[S3DPlayList deactivate:]_block_invoke}]
  1000fe204  ldr     x0, [x23, #0xff8]                        ; class S3DEngine
  1000fe208  mov     x1, x21
  1000fe20c  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000fe210  mov     x29, x29
  1000fe214  bl      _objc_retainAutoreleasedReturnValue
  1000fe218  mov     x21, x0
  1000fe21c  adrp    x8, #0x1003b0000
  1000fe220  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000fe224  mov     w9, #-0x3e000000
  1000fe228  str     x8, [sp, #0x10]
  1000fe22c  stp     w9, wzr, [sp, #0x18]
  1000fe230  adr     x8, #0x1000fe3b4                         ; &-[S3DPlayList deactivate:]_block_invoke_2
  1000fe234  nop
  1000fe238  str     x8, [sp, #0x20]
  1000fe23c  adrp    x8, #0x1003b7000
  1000fe240  add     x8, x8, #0x90                            ; &d_1003b7090
  1000fe244  str     x8, [sp, #0x28]
  1000fe248  mov     x0, x20
  1000fe24c  bl      _objc_retain
  1000fe250  str     x0, [sp, #0x30]
  1000fe254  mov     x0, x19
  1000fe258  bl      _objc_retain
  1000fe25c  str     x0, [sp, #0x38]
  1000fe260  adrp    x8, #0x10041b000
  1000fe264  nop
  1000fe268  ldr     x1, [x8, #0x5b8]
  1000fe26c  add     x2, sp, #0x10
  1000fe270  mov     x0, x21
  1000fe274  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DPlayList deactivate:]_block_invoke_2 captures +0x20=self, +0x28=arg1}]
  1000fe278  mov     x0, x21
  1000fe27c  bl      _objc_release
  1000fe280  ldr     x0, [sp, #0x38]
  1000fe284  bl      _objc_release
  1000fe288  ldr     x0, [sp, #0x30]
  1000fe28c  bl      _objc_release
loc_1000fe290:
  1000fe290  mov     x0, x19
  1000fe294  bl      _objc_release
  1000fe298  sub     sp, x29, #0x30
  1000fe29c  ldp     x29, x30, [sp, #0x30]
  1000fe2a0  ldp     x20, x19, [sp, #0x20]
  1000fe2a4  ldp     x22, x21, [sp, #0x10]
  1000fe2a8  ldp     x24, x23, [sp], #0x40
  1000fe2ac  ret
  1000fe2b0  mov     x20, x0
  1000fe2b4  b       loc_1000fe2e8
  1000fe2b8  mov     x20, x0
  1000fe2bc  mov     x0, x22
  1000fe2c0  b       loc_1000fe2e4
  1000fe2c4  mov     x20, x0
  1000fe2c8  b       loc_1000fe2e8
  1000fe2cc  mov     x20, x0
  1000fe2d0  mov     x0, x21
  1000fe2d4  bl      _objc_release
  1000fe2d8  ldr     x0, [sp, #0x38]
  1000fe2dc  bl      _objc_release
  1000fe2e0  ldr     x0, [sp, #0x30]
loc_1000fe2e4:
  1000fe2e4  bl      _objc_release
loc_1000fe2e8:
  1000fe2e8  mov     x0, x19
  1000fe2ec  bl      _objc_release
  1000fe2f0  mov     x0, x20
  1000fe2f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList deactivate:]_block_invoke
; address 0x1000fe2f8  size 188  kind block
; ======================================================================
  1000fe2f8  stp     x22, x21, [sp, #-0x30]!
  1000fe2fc  stp     x20, x19, [sp, #0x10]
  1000fe300  stp     x29, x30, [sp, #0x20]
  1000fe304  add     x29, sp, #0x20
  1000fe308  sub     sp, sp, #0x10
  1000fe30c  mov     x0, x1
  1000fe310  bl      _objc_retain
  1000fe314  mov     x19, x0
  1000fe318  adrp    x8, #0x10041d000
  1000fe31c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000fe320  adrp    x8, #0x100417000
  1000fe324  nop
  1000fe328  ldr     x1, [x8, #0x4f0]
  1000fe32c  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000fe330  mov     x29, x29
  1000fe334  bl      _objc_retainAutoreleasedReturnValue
  1000fe338  mov     x20, x0
  1000fe33c  adrp    x8, #0x10041b000
  1000fe340  nop
  1000fe344  ldr     x1, [x8, #0x800]
  1000fe348  str     x19, [sp]
  1000fe34c  adrp    x3, #0x1003c2000
  1000fe350  add     x3, x3, #0xf50                           ; @"Playlist is deactivating sound %@\n"
  1000fe354  mov     w2, #2
  1000fe358  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:2 format:@"Playlist is deactivating sound %@\n"]
  1000fe35c  mov     x0, x20
  1000fe360  bl      _objc_release
  1000fe364  adrp    x8, #0x100417000
  1000fe368  nop
  1000fe36c  ldr     x1, [x8, #0x618]
  1000fe370  mov     x0, x19
  1000fe374  bl      _objc_msgSend                            ; [blockarg1 deactivate]
  1000fe378  mov     x0, x19
  1000fe37c  sub     sp, x29, #0x20
  1000fe380  ldp     x29, x30, [sp, #0x20]
  1000fe384  ldp     x20, x19, [sp, #0x10]
  1000fe388  ldp     x22, x21, [sp], #0x30
  1000fe38c  b       _objc_release
  1000fe390  mov     x21, x0
  1000fe394  b       loc_1000fe3a4
  1000fe398  mov     x21, x0
  1000fe39c  mov     x0, x20
  1000fe3a0  bl      _objc_release
loc_1000fe3a4:
  1000fe3a4  mov     x0, x19
  1000fe3a8  bl      _objc_release
  1000fe3ac  mov     x0, x21
  1000fe3b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList deactivate:]_block_invoke_2
; address 0x1000fe3b4  size 28  kind block
; ======================================================================
  1000fe3b4  mov     x8, x0
  1000fe3b8  ldr     x0, [x8, #0x28]                          ; x0 = captured arg1
  1000fe3bc  cbz     x0, loc_1000fe3cc                        ; if (arg1 == 0)
  1000fe3c0  ldr     x1, [x8, #0x20]                          ; x1 = captured self
  1000fe3c4  ldr     x2, [x0, #0x10]                          ; x2 = arg1[+0x10]
  1000fe3c8  br      x2
loc_1000fe3cc:
  1000fe3cc  ret

; ======================================================================
; sub_1000fe3d0
; address 0x1000fe3d0  size 52  kind sub
; ======================================================================
  1000fe3d0  stp     x20, x19, [sp, #-0x20]!
  1000fe3d4  stp     x29, x30, [sp, #0x10]
  1000fe3d8  add     x29, sp, #0x10
  1000fe3dc  mov     x19, x1
  1000fe3e0  mov     x20, x0
  1000fe3e4  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  1000fe3e8  bl      _objc_retain
  1000fe3ec  add     x0, x20, #0x28
  1000fe3f0  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  1000fe3f4  mov     w2, #7
  1000fe3f8  ldp     x29, x30, [sp, #0x10]
  1000fe3fc  ldp     x20, x19, [sp], #0x20
  1000fe400  b       __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 7)

; ======================================================================
; sub_1000fe404
; address 0x1000fe404  size 40  kind sub
; ======================================================================
  1000fe404  stp     x20, x19, [sp, #-0x20]!
  1000fe408  stp     x29, x30, [sp, #0x10]
  1000fe40c  add     x29, sp, #0x10
  1000fe410  mov     x19, x0
  1000fe414  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000fe418  bl      _objc_release
  1000fe41c  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000fe420  ldp     x29, x30, [sp, #0x10]
  1000fe424  ldp     x20, x19, [sp], #0x20
  1000fe428  b       _objc_release

; ======================================================================
; -[S3DPlayList transferActivationTo:]
; address 0x1000fe42c  size 36  kind objc
; ======================================================================
  1000fe42c  stp     x29, x30, [sp, #-0x10]!
  1000fe430  mov     x29, sp
  1000fe434  adrp    x8, #0x10041b000
  1000fe438  nop
  1000fe43c  ldr     x1, [x8, #0x4f0]
  1000fe440  mov     x3, #0
  1000fe444  bl      _objc_msgSend                            ; [self transferActivationTo:arg1 completion:0]
  1000fe448  ldp     x29, x30, [sp], #0x10
  1000fe44c  ret

; ======================================================================
; -[S3DPlayList transferActivationTo:completion:]
; address 0x1000fe450  size 908  kind objc
; ======================================================================
  1000fe450  stp     x28, x27, [sp, #-0x60]!
  1000fe454  stp     x26, x25, [sp, #0x10]
  1000fe458  stp     x24, x23, [sp, #0x20]
  1000fe45c  stp     x22, x21, [sp, #0x30]
  1000fe460  stp     x20, x19, [sp, #0x40]
  1000fe464  stp     x29, x30, [sp, #0x50]
  1000fe468  add     x29, sp, #0x50
  1000fe46c  sub     sp, sp, #0x140
  1000fe470  mov     x20, x3
  1000fe474  mov     x22, x0
  1000fe478  adrp    x23, #0x1003b0000
  1000fe47c  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  1000fe480  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  1000fe484  stur    x23, [x29, #-0x58]
  1000fe488  mov     x0, x2
  1000fe48c  bl      _objc_retain
  1000fe490  mov     x19, x0
  1000fe494  mov     x0, x20
  1000fe498  bl      _objc_retain
  1000fe49c  mov     x25, x0
  1000fe4a0  cbz     x19, loc_1000fe6c8                       ; if (arg1 == 0)
  1000fe4a4  adrp    x8, #0x10041e000
  1000fe4a8  ldr     x0, [x8, #0x388]                         ; class NSMutableSet
  1000fe4ac  adrp    x8, #0x10041b000
  1000fe4b0  nop
  1000fe4b4  ldr     x1, [x8, #0x760]
  1000fe4b8  mov     w2, #0xa
  1000fe4bc  bl      _objc_msgSend                            ; [NSMutableSet setWithCapacity:10]
  1000fe4c0  mov     w20, #-0x3e000000
  1000fe4c4  mov     x29, x29
  1000fe4c8  bl      _objc_retainAutoreleasedReturnValue
  1000fe4cc  adrp    x21, #0x1003b0000
  1000fe4d0  ldr     x21, [x21, #0x118]                       ; __NSConcreteStackBlock
  1000fe4d4  str     x21, [sp, #0x90]
  1000fe4d8  stp     w20, wzr, [sp, #0x98]
  1000fe4dc  adr     x8, #0x1000fe7dc                         ; &-[S3DPlayList transferActivationTo:completion:]_block_invoke
  1000fe4e0  nop
  1000fe4e4  str     x8, [sp, #0xa0]
  1000fe4e8  adrp    x8, #0x1003b7000
  1000fe4ec  add     x8, x8, #0xc0                            ; &d_1003b70c0
  1000fe4f0  str     x8, [sp, #0xa8]
  1000fe4f4  bl      _objc_retain
  1000fe4f8  mov     x26, x0
  1000fe4fc  str     x26, [sp, #0xb0]
  1000fe500  adrp    x8, #0x10041b000
  1000fe504  nop
  1000fe508  ldr     x23, [x8, #0x7d8]
  1000fe50c  add     x2, sp, #0x90
  1000fe510  mov     x0, x22
  1000fe514  mov     x1, x23
  1000fe518  bl      _objc_msgSend                            ; [self each:^{-[S3DPlayList transferActivationTo:completion:]_block_invoke captures +0x20=[NSMutableSet setWithCapacity:10]}]
  1000fe51c  str     x21, [sp, #0x68]
  1000fe520  stp     w20, wzr, [sp, #0x70]
  1000fe524  adr     x8, #0x1000fe864                         ; &-[S3DPlayList transferActivationTo:completion:]_block_invoke_2
  1000fe528  nop
  1000fe52c  str     x8, [sp, #0x78]
  1000fe530  adrp    x8, #0x1003b7000
  1000fe534  add     x8, x8, #0xf0                            ; &d_1003b70f0
  1000fe538  str     x8, [sp, #0x80]
  1000fe53c  mov     x0, x26
  1000fe540  bl      _objc_retain
  1000fe544  mov     x24, x0
  1000fe548  str     x26, [sp, #0x88]
  1000fe54c  add     x2, sp, #0x68
  1000fe550  mov     x0, x19
  1000fe554  mov     x1, x23
  1000fe558  bl      _objc_msgSend                            ; [arg1 each:^{-[S3DPlayList transferActivationTo:completion:]_block_invoke_2 captures +0x20=[NSMutableSet setWithCapacity:10], +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[S3DPlayList transferActivationTo:comp…, +0x40=&d_1003b70c0, +0x48=[NSMutableSet setWithCapacity:10]}]
  1000fe55c  stp     x26, x25, [sp, #0x18]
  1000fe560  stp     xzr, xzr, [sp, #0x58]
  1000fe564  stp     xzr, xzr, [sp, #0x48]
  1000fe568  stp     xzr, xzr, [sp, #0x38]
  1000fe56c  stp     xzr, xzr, [sp, #0x28]
  1000fe570  mov     x0, x24
  1000fe574  bl      _objc_retain
  1000fe578  mov     x23, x0
  1000fe57c  adrp    x8, #0x100416000
  1000fe580  nop
  1000fe584  ldr     x24, [x8, #0xe00]
  1000fe588  add     x2, sp, #0x28
  1000fe58c  add     x3, sp, #0xb8
  1000fe590  mov     w4, #0x10
  1000fe594  mov     x1, x24
  1000fe598  bl      _objc_msgSend                            ; [[NSMutableSet setWithCapacity:10] countByEnumeratingWithState:&sp[0x28] objects:&sp[0xb8] count:16]
  1000fe59c  mov     x25, x0
  1000fe5a0  cbz     x25, loc_1000fe63c                       ; if ([[NSMutableSet setWithCapacity:10] countByEnumeratingWithState:&sp[0x28] objects:&sp[0xb8] count:16] == 0)
  1000fe5a4  ldr     x8, [sp, #0x38]
  1000fe5a8  ldr     x20, [x8]
  1000fe5ac  adrp    x8, #0x100417000
  1000fe5b0  nop
  1000fe5b4  ldr     x26, [x8, #0x990]
  1000fe5b8  adrp    x8, #0x100417000
  1000fe5bc  add     x8, x8, #0x618                           ; &@selector(deactivate)
  1000fe5c0  ldr     x27, [x8]
loc_1000fe5c4:
  1000fe5c4  mov     x21, #0
loc_1000fe5c8:
  1000fe5c8  ldr     x8, [sp, #0x38]
  1000fe5cc  ldr     x8, [x8]
  1000fe5d0  cmp     x8, x20
  1000fe5d4  b.eq    loc_1000fe5e0                            ; if (x8 == x20)
  1000fe5d8  mov     x0, x23
  1000fe5dc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([NSMutableSet setWithCapacity:10])
loc_1000fe5e0:
  1000fe5e0  ldr     x8, [sp, #0x30]
  1000fe5e4  ldr     x2, [x8, x21, lsl #3]
  1000fe5e8  mov     x0, x22
  1000fe5ec  mov     x1, x26
  1000fe5f0  bl      _objc_msgSend                            ; [self S3DSound:x2]
  1000fe5f4  mov     x29, x29
  1000fe5f8  bl      _objc_retainAutoreleasedReturnValue
  1000fe5fc  mov     x28, x0
  1000fe600  mov     x1, x27
  1000fe604  bl      _objc_msgSend                            ; [[self S3DSound:x2] deactivate]
  1000fe608  mov     x0, x28
  1000fe60c  bl      _objc_release
  1000fe610  add     x21, x21, #1
  1000fe614  cmp     x21, x25
  1000fe618  b.lo    loc_1000fe5c8                            ; if ((x21 + 1) <u [[NSMutableSet setWithCapacity:10] countByEnumeratingWithState:&sp[0x28] objects:&sp[0xb8] count:16])
  1000fe61c  add     x2, sp, #0x28
  1000fe620  add     x3, sp, #0xb8
  1000fe624  mov     w4, #0x10
  1000fe628  mov     x0, x23
  1000fe62c  mov     x1, x24
  1000fe630  bl      _objc_msgSend                            ; [[NSMutableSet setWithCapacity:10] countByEnumeratingWithState:&sp[0x28] objects:&sp[0xb8] count:16]
  1000fe634  mov     x25, x0
  1000fe638  cbnz    x25, loc_1000fe5c4                       ; if ([[NSMutableSet setWithCapacity:10] countByEnumeratingWithState:&sp[0x28] objects:&sp[0xb8] count:16] != 0)
loc_1000fe63c:
  1000fe63c  mov     x0, x23
  1000fe640  bl      _objc_release
  1000fe644  adrp    x8, #0x10041e000
  1000fe648  ldr     x0, [x8, #0x4b8]                         ; class S3DEngineDispatcher
  1000fe64c  adrp    x8, #0x10041b000
  1000fe650  nop
  1000fe654  ldr     x1, [x8, #0x5d0]
  1000fe658  ldp     x26, x25, [sp, #0x18]
  1000fe65c  bl      _objc_msgSend                            ; [S3DEngineDispatcher dispatcher]
  1000fe660  mov     x29, x29
  1000fe664  bl      _objc_retainAutoreleasedReturnValue
  1000fe668  mov     x24, x0
  1000fe66c  adrp    x8, #0x10041b000
  1000fe670  nop
  1000fe674  ldr     x1, [x8, #0x4f8]
  1000fe678  mov     x2, x22
  1000fe67c  bl      _objc_msgSend                            ; [[S3DEngineDispatcher dispatcher] stopTrackingPlayList:self]
  1000fe680  mov     x0, x24
  1000fe684  bl      _objc_release
  1000fe688  adrp    x8, #0x100419000
  1000fe68c  nop
  1000fe690  ldr     x1, [x8, #0x408]
  1000fe694  mov     x0, x19
  1000fe698  mov     x2, x25
  1000fe69c  bl      _objc_msgSend                            ; [arg1 activate:arg2]
  1000fe6a0  ldr     x0, [sp, #0x88]
  1000fe6a4  bl      _objc_release
  1000fe6a8  ldr     x0, [sp, #0xb0]
  1000fe6ac  bl      _objc_release
  1000fe6b0  mov     x0, x23
  1000fe6b4  bl      _objc_release
  1000fe6b8  adrp    x23, #0x1003b0000
  1000fe6bc  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  1000fe6c0  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  1000fe6c4  b       loc_1000fe714
loc_1000fe6c8:
  1000fe6c8  adrp    x8, #0x10041d000
  1000fe6cc  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000fe6d0  adrp    x8, #0x100417000
  1000fe6d4  nop
  1000fe6d8  ldr     x1, [x8, #0x4f0]
  1000fe6dc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000fe6e0  mov     x29, x29
  1000fe6e4  bl      _objc_retainAutoreleasedReturnValue
  1000fe6e8  mov     x21, x0
  1000fe6ec  adrp    x8, #0x10041b000
  1000fe6f0  nop
  1000fe6f4  ldr     x1, [x8, #0x800]
  1000fe6f8  str     x22, [sp]
  1000fe6fc  adrp    x3, #0x1003c2000
  1000fe700  add     x3, x3, #0xf70                           ; @"### attempting to transfer to a nil playlist from: %@... aborting transfer."
  1000fe704  mov     w2, #1
  1000fe708  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:1 format:@"### attempting to transfer to a nil playlist from: %@... aborting transfer."]
  1000fe70c  mov     x0, x21
  1000fe710  bl      _objc_release
loc_1000fe714:
  1000fe714  mov     x0, x25
  1000fe718  bl      _objc_release
  1000fe71c  mov     x0, x19
  1000fe720  bl      _objc_release
  1000fe724  ldur    x8, [x29, #-0x58]
  1000fe728  sub     x8, x23, x8
  1000fe72c  cbnz    x8, loc_1000fe750                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000fe730  sub     sp, x29, #0x50
  1000fe734  ldp     x29, x30, [sp, #0x50]
  1000fe738  ldp     x20, x19, [sp, #0x40]
  1000fe73c  ldp     x22, x21, [sp, #0x30]
  1000fe740  ldp     x24, x23, [sp, #0x20]
  1000fe744  ldp     x26, x25, [sp, #0x10]
  1000fe748  ldp     x28, x27, [sp], #0x60
  1000fe74c  ret
loc_1000fe750:
  1000fe750  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000fe754:
  1000fe754  mov     x22, x0
  1000fe758  b       loc_1000fe768
  1000fe75c  mov     x22, x0
  1000fe760  mov     x0, x28
  1000fe764  bl      _objc_release
loc_1000fe768:
  1000fe768  ldp     x26, x25, [sp, #0x18]
  1000fe76c  mov     x0, x23
loc_1000fe770:
  1000fe770  bl      _objc_release
loc_1000fe774:
  1000fe774  ldr     x0, [sp, #0x88]
  1000fe778  bl      _objc_release
loc_1000fe77c:
  1000fe77c  ldr     x0, [sp, #0xb0]
  1000fe780  bl      _objc_release
  1000fe784  mov     x0, x26
loc_1000fe788:
  1000fe788  bl      _objc_release
loc_1000fe78c:
  1000fe78c  mov     x0, x25
  1000fe790  bl      _objc_release
  1000fe794  mov     x0, x19
  1000fe798  bl      _objc_release
  1000fe79c  mov     x0, x22
  1000fe7a0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000fe7a4  b       loc_1000fe754
  1000fe7a8  mov     x22, x0
  1000fe7ac  b       loc_1000fe774
  1000fe7b0  mov     x22, x0
  1000fe7b4  b       loc_1000fe78c
  1000fe7b8  mov     x22, x0
  1000fe7bc  b       loc_1000fe77c
  1000fe7c0  b       loc_1000fe754
  1000fe7c4  mov     x22, x0
  1000fe7c8  mov     x0, x24
  1000fe7cc  b       loc_1000fe770
  1000fe7d0  mov     x22, x0
  1000fe7d4  mov     x0, x21
  1000fe7d8  b       loc_1000fe788

; ======================================================================
; -[S3DPlayList transferActivationTo:completion:]_block_invoke
; address 0x1000fe7dc  size 120  kind block
; ======================================================================
  1000fe7dc  stp     x20, x19, [sp, #-0x20]!
  1000fe7e0  stp     x29, x30, [sp, #0x10]
  1000fe7e4  add     x29, sp, #0x10
  1000fe7e8  ldr     x19, [x0, #0x20]                         ; x19 = captured [NSMutableSet setWithCapacity:10]
  1000fe7ec  adrp    x8, #0x100419000
  1000fe7f0  nop
  1000fe7f4  ldr     x8, [x8, #0x3e8]
  1000fe7f8  mov     x0, x1
  1000fe7fc  mov     x1, x8
  1000fe800  bl      _objc_msgSend                            ; [blockarg1 key]
  1000fe804  mov     x29, x29
  1000fe808  bl      _objc_retainAutoreleasedReturnValue
  1000fe80c  mov     x20, x0
  1000fe810  adrp    x8, #0x100416000
  1000fe814  nop
  1000fe818  ldr     x1, [x8, #0xd90]
  1000fe81c  mov     x0, x19
  1000fe820  mov     x2, x20
  1000fe824  bl      _objc_msgSend                            ; [[NSMutableSet setWithCapacity:10] addObject:[blockarg1 key]]
  1000fe828  mov     x0, x20
  1000fe82c  ldp     x29, x30, [sp, #0x10]
  1000fe830  ldp     x20, x19, [sp], #0x20
  1000fe834  b       _objc_release
  1000fe838  mov     x19, x0
  1000fe83c  b       loc_1000fe84c
  1000fe840  mov     x19, x0
  1000fe844  mov     x0, x20
  1000fe848  bl      _objc_release
loc_1000fe84c:
  1000fe84c  mov     x0, x19
  1000fe850  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000fe854
; address 0x1000fe854  size 8  kind sub
; ======================================================================
  1000fe854  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000fe858  b       _objc_retain

; ======================================================================
; sub_1000fe85c
; address 0x1000fe85c  size 8  kind sub
; ======================================================================
  1000fe85c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000fe860  b       _objc_release

; ======================================================================
; -[S3DPlayList transferActivationTo:completion:]_block_invoke_2
; address 0x1000fe864  size 120  kind block
; ======================================================================
  1000fe864  stp     x20, x19, [sp, #-0x20]!
  1000fe868  stp     x29, x30, [sp, #0x10]
  1000fe86c  add     x29, sp, #0x10
  1000fe870  ldr     x19, [x0, #0x20]                         ; x19 = captured [NSMutableSet setWithCapacity:10]
  1000fe874  adrp    x8, #0x100419000
  1000fe878  nop
  1000fe87c  ldr     x8, [x8, #0x3e8]
  1000fe880  mov     x0, x1
  1000fe884  mov     x1, x8
  1000fe888  bl      _objc_msgSend                            ; [blockarg1 key]
  1000fe88c  mov     x29, x29
  1000fe890  bl      _objc_retainAutoreleasedReturnValue
  1000fe894  mov     x20, x0
  1000fe898  adrp    x8, #0x100416000
  1000fe89c  nop
  1000fe8a0  ldr     x1, [x8, #0xe20]
  1000fe8a4  mov     x0, x19
  1000fe8a8  mov     x2, x20
  1000fe8ac  bl      _objc_msgSend                            ; [[NSMutableSet setWithCapacity:10] removeObject:[blockarg1 key]]
  1000fe8b0  mov     x0, x20
  1000fe8b4  ldp     x29, x30, [sp, #0x10]
  1000fe8b8  ldp     x20, x19, [sp], #0x20
  1000fe8bc  b       _objc_release
  1000fe8c0  mov     x19, x0
  1000fe8c4  b       loc_1000fe8d4
  1000fe8c8  mov     x19, x0
  1000fe8cc  mov     x0, x20
  1000fe8d0  bl      _objc_release
loc_1000fe8d4:
  1000fe8d4  mov     x0, x19
  1000fe8d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000fe8dc
; address 0x1000fe8dc  size 8  kind sub
; ======================================================================
  1000fe8dc  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000fe8e0  b       _objc_retain

; ======================================================================
; sub_1000fe8e4
; address 0x1000fe8e4  size 8  kind sub
; ======================================================================
  1000fe8e4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000fe8e8  b       _objc_release

; ======================================================================
; -[S3DPlayList activate]
; address 0x1000fe8ec  size 164  kind objc
; ======================================================================
  1000fe8ec  stp     x20, x19, [sp, #-0x20]!
  1000fe8f0  stp     x29, x30, [sp, #0x10]
  1000fe8f4  add     x29, sp, #0x10
  1000fe8f8  sub     sp, sp, #0x50
  1000fe8fc  str     xzr, [sp, #0x30]
  1000fe900  add     x8, sp, #0x30
  1000fe904  mov     w9, #0x20000000
  1000fe908  str     x8, [sp, #0x38]
  1000fe90c  str     w9, [sp, #0x40]
  1000fe910  mov     w9, #0x20
  1000fe914  str     w9, [sp, #0x44]
  1000fe918  adrp    x9, #0x1003b0000
  1000fe91c  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  1000fe920  str     x9, [sp, #8]
  1000fe924  mov     w9, #-0x3e000000
  1000fe928  stp     w9, wzr, [sp, #0x10]
  1000fe92c  adr     x9, #0x1000fe990                         ; &-[S3DPlayList activate]_block_invoke
  1000fe930  nop
  1000fe934  str     x9, [sp, #0x18]
  1000fe938  adrp    x9, #0x1003b7000
  1000fe93c  add     x9, x9, #0x120                           ; &d_1003b7120
  1000fe940  strb    wzr, [sp, #0x48]
  1000fe944  stp     x9, x8, [sp, #0x20]
  1000fe948  adrp    x8, #0x100419000
  1000fe94c  nop
  1000fe950  ldr     x1, [x8, #0x408]
  1000fe954  add     x2, sp, #8
  1000fe958  bl      _objc_msgSend                            ; [self activate:^{-[S3DPlayList activate]_block_invoke captures +0x28=0, +0x38=0x20000000, +0x40=0}]
  1000fe95c  add     x0, sp, #0x30
  1000fe960  mov     w1, #8
  1000fe964  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x30], 8)
  1000fe968  sub     sp, x29, #0x10
  1000fe96c  ldp     x29, x30, [sp, #0x10]
  1000fe970  ldp     x20, x19, [sp], #0x20
  1000fe974  ret
  1000fe978  mov     x19, x0
  1000fe97c  add     x0, sp, #0x30
  1000fe980  mov     w1, #8
  1000fe984  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x30], 8)
  1000fe988  mov     x0, x19
  1000fe98c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList activate]_block_invoke
; address 0x1000fe990  size 20  kind block
; ======================================================================
  1000fe990  ldr     x8, [x0, #0x20]                          ; x8 = block[+0x20]
  1000fe994  ldr     x8, [x8, #8]                             ; x8 = block[+0x20][+0x8]
  1000fe998  mov     w9, #1
  1000fe99c  strb    w9, [x8, #0x18]                          ; block[+0x20][+0x8][+0x18] = 1
  1000fe9a0  ret

; ======================================================================
; sub_1000fe9a4
; address 0x1000fe9a4  size 16  kind sub
; ======================================================================
  1000fe9a4  add     x0, x0, #0x20
  1000fe9a8  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  1000fe9ac  mov     w2, #8
  1000fe9b0  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 8, a3)

; ======================================================================
; sub_1000fe9b4
; address 0x1000fe9b4  size 12  kind sub
; ======================================================================
  1000fe9b4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000fe9b8  mov     w1, #8
  1000fe9bc  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 8, a2, a3)

; ======================================================================
; -[S3DPlayList activate:]
; address 0x1000fe9c0  size 896  kind objc
; ======================================================================
  1000fe9c0  stp     x28, x27, [sp, #-0x60]!
  1000fe9c4  stp     x26, x25, [sp, #0x10]
  1000fe9c8  stp     x24, x23, [sp, #0x20]
  1000fe9cc  stp     x22, x21, [sp, #0x30]
  1000fe9d0  stp     x20, x19, [sp, #0x40]
  1000fe9d4  stp     x29, x30, [sp, #0x50]
  1000fe9d8  add     x29, sp, #0x50
  1000fe9dc  sub     sp, sp, #0x130
  1000fe9e0  mov     x21, x0
  1000fe9e4  adrp    x25, #0x1003b0000
  1000fe9e8  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1000fe9ec  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  1000fe9f0  stur    x25, [x29, #-0x58]
  1000fe9f4  mov     x0, x2
  1000fe9f8  bl      _objc_retain
  1000fe9fc  mov     x19, x0
  1000fea00  cbz     x21, loc_1000feb00                       ; if (self == 0)
  1000fea04  adrp    x8, #0x100420000
  1000fea08  ldrsw   x8, [x8, #0x630]                         ; ivar offset S3DPlayList.activating (+0xa)
  1000fea0c  ldrb    w9, [x21, x8]                            ; w9 = self->activating
  1000fea10  cbnz    w9, loc_1000fec74                        ; if (self->activating != 0)
  1000fea14  mov     w9, #1
  1000fea18  strb    w9, [x21, x8]                            ; self->activating = 1
  1000fea1c  add     x0, sp, #0x60
  1000fea20  mov     x1, x21
  1000fea24  bl      _objc_initWeak                           ; objc_initWeak(&sp[0x60], self)
  1000fea28  adrp    x8, #0x10041d000
  1000fea2c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000fea30  adrp    x8, #0x100417000
  1000fea34  nop
  1000fea38  ldr     x1, [x8, #0x4f0]
  1000fea3c  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000fea40  mov     x22, x0
  1000fea44  adrp    x8, #0x1003b0000
  1000fea48  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000fea4c  add     x9, sp, #0x28
  1000fea50  mov     w10, #-0x3e000000
  1000fea54  add     x20, x9, #0x30
  1000fea58  str     x8, [sp, #0x28]
  1000fea5c  stp     w10, wzr, [sp, #0x30]
  1000fea60  adr     x8, #0x1000fed40                         ; &-[S3DPlayList activate:]_block_invoke
  1000fea64  nop
  1000fea68  str     x8, [sp, #0x38]
  1000fea6c  adrp    x8, #0x1003b7000
  1000fea70  add     x8, x8, #0x1e0                           ; &d_1003b71e0
  1000fea74  str     x8, [sp, #0x40]
  1000fea78  mov     x0, x22
  1000fea7c  bl      _objc_retain
  1000fea80  mov     x23, x0
  1000fea84  add     x0, sp, #0x60
  1000fea88  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(&sp[0x60])
  1000fea8c  mov     x24, x0
  1000fea90  mov     x0, x20
  1000fea94  mov     x1, x24
  1000fea98  bl      _objc_initWeak                           ; objc_initWeak((&sp[0x28] + 48), objc_loadWeakRetained(&sp[0x60]))
  1000fea9c  mov     x0, x24
  1000feaa0  bl      _objc_release
  1000feaa4  mov     x0, x19
  1000feaa8  bl      _objc_retain
  1000feaac  str     x0, [sp, #0x48]
  1000feab0  mov     x0, x21
  1000feab4  bl      _objc_retain
  1000feab8  str     x0, [sp, #0x50]
  1000feabc  adrp    x8, #0x10041b000
  1000feac0  nop
  1000feac4  ldr     x1, [x8, #0x5b8]
  1000feac8  add     x2, sp, #0x28
  1000feacc  mov     x0, x22
  1000fead0  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DPlayList activate:]_block_invoke captures +0x20=arg1, +0x28=self}]
  1000fead4  mov     x0, x23
  1000fead8  bl      _objc_release
  1000feadc  ldr     x0, [sp, #0x50]
  1000feae0  bl      _objc_release
  1000feae4  ldr     x0, [sp, #0x48]
  1000feae8  bl      _objc_release
  1000feaec  mov     x0, x20
  1000feaf0  bl      _objc_destroyWeak
  1000feaf4  add     x0, sp, #0x60
  1000feaf8  bl      _objc_destroyWeak
  1000feafc  b       loc_1000fec74
loc_1000feb00:
  1000feb00  adrp    x8, #0x10041e000
  1000feb04  ldr     x0, [x8, #0x108]                         ; class NSThread
  1000feb08  adrp    x8, #0x10041b000
  1000feb0c  nop
  1000feb10  ldr     x1, [x8, #0x500]
  1000feb14  bl      _objc_msgSend                            ; [NSThread callStackSymbols]
  1000feb18  mov     x29, x29
  1000feb1c  bl      _objc_retainAutoreleasedReturnValue
  1000feb20  mov     x24, x0
  1000feb24  adrp    x20, #0x10041d000
  1000feb28  ldr     x0, [x20, #0xff8]                        ; class S3DEngine
  1000feb2c  adrp    x8, #0x100417000
  1000feb30  nop
  1000feb34  ldr     x21, [x8, #0x4f0]
  1000feb38  mov     x1, x21
  1000feb3c  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000feb40  mov     x29, x29
  1000feb44  bl      _objc_retainAutoreleasedReturnValue
  1000feb48  mov     x22, x0
  1000feb4c  adrp    x8, #0x10041b000
  1000feb50  nop
  1000feb54  ldr     x23, [x8, #0x800]
  1000feb58  adrp    x3, #0x1003c2000
  1000feb5c  add     x3, x3, #0xf90                           ; @"### attempting to activate a nil playlist."
  1000feb60  mov     w2, #1
  1000feb64  mov     x1, x23
  1000feb68  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:1 format:@"### attempting to activate a nil playlist."]
  1000feb6c  str     x19, [sp, #0x18]
  1000feb70  mov     x0, x22
  1000feb74  bl      _objc_release
  1000feb78  stp     xzr, xzr, [sp, #0x98]
  1000feb7c  stp     xzr, xzr, [sp, #0x88]
  1000feb80  stp     xzr, xzr, [sp, #0x78]
  1000feb84  stp     xzr, xzr, [sp, #0x68]
  1000feb88  mov     x0, x24
  1000feb8c  str     x24, [sp, #0x10]
  1000feb90  bl      _objc_retain
  1000feb94  mov     x22, x0
  1000feb98  adrp    x8, #0x100416000
  1000feb9c  nop
  1000feba0  ldr     x1, [x8, #0xe00]
  1000feba4  str     x1, [sp, #0x20]
  1000feba8  add     x2, sp, #0x68
  1000febac  add     x3, sp, #0xa8
  1000febb0  mov     w4, #0x10
  1000febb4  bl      _objc_msgSend                            ; [[NSThread callStackSymbols] countByEnumeratingWithState:&sp[0x68] objects:&sp[0xa8] count:16]
  1000febb8  mov     x25, x0
  1000febbc  cbz     x25, loc_1000fec54                       ; if ([[NSThread callStackSymbols] countByEnumeratingWithState:&sp[0x68] objects:&sp[0xa8] count:16] == 0)
  1000febc0  ldr     x8, [sp, #0x78]
  1000febc4  ldr     x28, [x8]
  1000febc8  adrp    x26, #0x1003c2000
  1000febcc  add     x26, x26, #0xfb0                         ; @"### @:%@"
loc_1000febd0:
  1000febd0  mov     x19, #0
loc_1000febd4:
  1000febd4  ldr     x8, [sp, #0x78]
  1000febd8  ldr     x8, [x8]
  1000febdc  cmp     x8, x28
  1000febe0  b.eq    loc_1000febec                            ; if (x8 == x28)
  1000febe4  mov     x0, x22
  1000febe8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([NSThread callStackSymbols])
loc_1000febec:
  1000febec  ldr     x8, [sp, #0x70]
  1000febf0  ldr     x24, [x8, x19, lsl #3]
  1000febf4  ldr     x0, [x20, #0xff8]                        ; class S3DEngine
  1000febf8  mov     x1, x21
  1000febfc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000fec00  mov     x29, x29
  1000fec04  bl      _objc_retainAutoreleasedReturnValue
  1000fec08  mov     x27, x0
  1000fec0c  str     x24, [sp]
  1000fec10  mov     w2, #1
  1000fec14  mov     x1, x23
  1000fec18  mov     x3, x26
  1000fec1c  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:1 format:@"### @:%@"]
  1000fec20  mov     x0, x27
  1000fec24  bl      _objc_release
  1000fec28  add     x19, x19, #1
  1000fec2c  cmp     x19, x25
  1000fec30  b.lo    loc_1000febd4                            ; if ((x19 + 1) <u [[NSThread callStackSymbols] countByEnumeratingWithState:&sp[0x68] objects:&sp[0xa8] count:16])
  1000fec34  add     x2, sp, #0x68
  1000fec38  add     x3, sp, #0xa8
  1000fec3c  mov     w4, #0x10
  1000fec40  mov     x0, x22
  1000fec44  ldr     x1, [sp, #0x20]
  1000fec48  bl      _objc_msgSend                            ; [[NSThread callStackSymbols] countByEnumeratingWithState:&sp[0x68] objects:&sp[0xa8] count:16]
  1000fec4c  mov     x25, x0
  1000fec50  cbnz    x25, loc_1000febd0                       ; if ([[NSThread callStackSymbols] countByEnumeratingWithState:&sp[0x68] objects:&sp[0xa8] count:16] != 0)
loc_1000fec54:
  1000fec54  mov     x0, x22
  1000fec58  bl      _objc_release
  1000fec5c  mov     x0, x22
  1000fec60  bl      _objc_release
  1000fec64  ldr     x19, [sp, #0x18]
  1000fec68  adrp    x25, #0x1003b0000
  1000fec6c  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1000fec70  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
loc_1000fec74:
  1000fec74  mov     x0, x19
  1000fec78  bl      _objc_release
  1000fec7c  ldur    x8, [x29, #-0x58]
  1000fec80  sub     x8, x25, x8
  1000fec84  cbnz    x8, loc_1000feca8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000fec88  sub     sp, x29, #0x50
  1000fec8c  ldp     x29, x30, [sp, #0x50]
  1000fec90  ldp     x20, x19, [sp, #0x40]
  1000fec94  ldp     x22, x21, [sp, #0x30]
  1000fec98  ldp     x24, x23, [sp, #0x20]
  1000fec9c  ldp     x26, x25, [sp, #0x10]
  1000feca0  ldp     x28, x27, [sp], #0x60
  1000feca4  ret
loc_1000feca8:
  1000feca8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000fecac:
  1000fecac  mov     x21, x0
  1000fecb0  ldp     x24, x19, [sp, #0x10]
  1000fecb4  b       loc_1000fecc8
  1000fecb8  mov     x21, x0
  1000fecbc  mov     x0, x27
  1000fecc0  bl      _objc_release
  1000fecc4  ldp     x24, x19, [sp, #0x10]
loc_1000fecc8:
  1000fecc8  mov     x0, x22
  1000feccc  bl      _objc_release
loc_1000fecd0:
  1000fecd0  mov     x0, x24
  1000fecd4  bl      _objc_release
loc_1000fecd8:
  1000fecd8  mov     x0, x19
  1000fecdc  bl      _objc_release
  1000fece0  mov     x0, x21
  1000fece4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000fece8  b       loc_1000fecac
  1000fecec  mov     x21, x0
  1000fecf0  b       loc_1000fecd8
  1000fecf4  mov     x21, x0
  1000fecf8  b       loc_1000fecd0
  1000fecfc  mov     x21, x0
  1000fed00  b       loc_1000fecc8
  1000fed04  b       loc_1000fecac
  1000fed08  mov     x21, x0
  1000fed0c  b       loc_1000fed34
  1000fed10  mov     x21, x0
  1000fed14  mov     x0, x23
  1000fed18  bl      _objc_release
  1000fed1c  ldr     x0, [sp, #0x50]
  1000fed20  bl      _objc_release
  1000fed24  ldr     x0, [sp, #0x48]
  1000fed28  bl      _objc_release
  1000fed2c  mov     x0, x20
  1000fed30  bl      _objc_destroyWeak
loc_1000fed34:
  1000fed34  add     x0, sp, #0x60
  1000fed38  bl      _objc_destroyWeak
  1000fed3c  b       loc_1000fecd8

; ======================================================================
; -[S3DPlayList activate:]_block_invoke
; address 0x1000fed40  size 1364  kind block
; ======================================================================
  1000fed40  stp     x28, x27, [sp, #-0x60]!
  1000fed44  stp     x26, x25, [sp, #0x10]
  1000fed48  stp     x24, x23, [sp, #0x20]
  1000fed4c  stp     x22, x21, [sp, #0x30]
  1000fed50  stp     x20, x19, [sp, #0x40]
  1000fed54  stp     x29, x30, [sp, #0x50]
  1000fed58  add     x29, sp, #0x50
  1000fed5c  sub     sp, sp, #0xd0
  1000fed60  mov     x20, x0
  1000fed64  mov     w25, #-0x3e000000
  1000fed68  add     x21, x20, #0x30
  1000fed6c  mov     x0, x21
  1000fed70  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3)
  1000fed74  mov     x19, x0
  1000fed78  cbz     x19, loc_1000feeb0                       ; if (objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3) == 0)
  1000fed7c  adrp    x8, #0x10041b000
  1000fed80  nop
  1000fed84  ldr     x1, [x8, #0x718]
  1000fed88  mov     x0, x19
  1000fed8c  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3) active]
  1000fed90  cbz     w0, loc_1000feeb0                        ; if ([objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3) active] == 0)
  1000fed94  adrp    x26, #0x10041d000
  1000fed98  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  1000fed9c  adrp    x8, #0x100417000
  1000feda0  nop
  1000feda4  ldr     x22, [x8, #0x4f0]
  1000feda8  mov     x1, x22
  1000fedac  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000fedb0  mov     x29, x29
  1000fedb4  bl      _objc_retainAutoreleasedReturnValue
  1000fedb8  mov     x23, x0
  1000fedbc  mov     x0, x21
  1000fedc0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block + 48))
  1000fedc4  mov     x24, x0
  1000fedc8  adrp    x8, #0x10041b000
  1000fedcc  nop
  1000fedd0  ldr     x1, [x8, #0x800]
  1000fedd4  str     x24, [sp]
  1000fedd8  adrp    x3, #0x1003c2000
  1000feddc  add     x3, x3, #0xfd0                           ; @"### S3DPlayList: %@ -- ALREADY active, skipping ..."
  1000fede0  mov     w2, #2
  1000fede4  mov     x0, x23
  1000fede8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:2 format:@"### S3DPlayList: %@ -- ALREADY active, skipping ..."]
  1000fedec  mov     x0, x24
  1000fedf0  bl      _objc_release
  1000fedf4  mov     x0, x23
  1000fedf8  bl      _objc_release
  1000fedfc  ldr     x8, [x20, #0x20]                         ; x8 = captured arg1
  1000fee00  cbz     x8, loc_1000ff1c0                        ; if (arg1 == 0)
  1000fee04  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  1000fee08  mov     x1, x22
  1000fee0c  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000fee10  mov     x23, x0
  1000fee14  adrp    x8, #0x1003b0000
  1000fee18  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000fee1c  sub     x9, x29, #0x80
  1000fee20  add     x22, x9, #0x28
  1000fee24  stur    x8, [x29, #-0x80]
  1000fee28  stp     w25, wzr, [x29, #-0x78]
  1000fee2c  adr     x8, #0x1000ff294                         ; &-[S3DPlayList activate:]_block_invoke_block_invoke
  1000fee30  nop
  1000fee34  stur    x8, [x29, #-0x70]
  1000fee38  adrp    x8, #0x1003b7000
  1000fee3c  add     x8, x8, #0x150                           ; &d_1003b7150
  1000fee40  stur    x8, [x29, #-0x68]
  1000fee44  mov     x0, x23
  1000fee48  bl      _objc_retain
  1000fee4c  mov     x24, x0
  1000fee50  mov     x0, x21
  1000fee54  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block + 48))
  1000fee58  mov     x21, x0
  1000fee5c  mov     x0, x22
  1000fee60  mov     x1, x21
  1000fee64  bl      _objc_initWeak                           ; objc_initWeak((&x29[-0x80] + 40), objc_loadWeakRetained((block + 48)))
  1000fee68  mov     x0, x21
  1000fee6c  bl      _objc_release
  1000fee70  ldr     x0, [x20, #0x20]                         ; x0 = captured arg1
  1000fee74  bl      _objc_retain
  1000fee78  stur    x0, [x29, #-0x60]
  1000fee7c  adrp    x8, #0x10041b000
  1000fee80  nop
  1000fee84  ldr     x1, [x8, #0x5b8]
  1000fee88  sub     x2, x29, #0x80
  1000fee8c  mov     x0, x23
  1000fee90  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DPlayList activate:]_block_invoke_block_invoke captures +0x20=arg1}]
  1000fee94  mov     x0, x24
  1000fee98  bl      _objc_release
  1000fee9c  ldur    x0, [x29, #-0x60]
  1000feea0  bl      _objc_release
  1000feea4  mov     x0, x22
  1000feea8  bl      _objc_destroyWeak
  1000feeac  b       loc_1000ff198
loc_1000feeb0:
  1000feeb0  adrp    x8, #0x10041b000
  1000feeb4  nop
  1000feeb8  ldr     x1, [x8, #0x638]
  1000feebc  mov     w2, #1
  1000feec0  mov     x0, x19
  1000feec4  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3) setActive:1]
  1000feec8  adrp    x26, #0x10041d000
  1000feecc  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  1000feed0  adrp    x8, #0x100417000
  1000feed4  nop
  1000feed8  ldr     x21, [x8, #0x4f0]
  1000feedc  mov     x1, x21
  1000feee0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000feee4  mov     x29, x29
  1000feee8  bl      _objc_retainAutoreleasedReturnValue
  1000feeec  mov     x23, x0
  1000feef0  adrp    x8, #0x10041b000
  1000feef4  nop
  1000feef8  ldr     x22, [x8, #0x800]
  1000feefc  str     x19, [sp]
  1000fef00  adrp    x3, #0x1003c3000
  1000fef04  add     x3, x3, #0x10                            ; @"### S3DPlayList: %@ -- activated"
  1000fef08  mov     w2, #2
  1000fef0c  mov     x1, x22
  1000fef10  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:2 format:@"### S3DPlayList: %@ -- activated"]
  1000fef14  mov     x0, x23
  1000fef18  bl      _objc_release
  1000fef1c  adrp    x8, #0x10041e000
  1000fef20  ldr     x0, [x8, #0x4b8]                         ; class S3DEngineDispatcher
  1000fef24  adrp    x8, #0x10041b000
  1000fef28  nop
  1000fef2c  ldr     x1, [x8, #0x5d0]
  1000fef30  bl      _objc_msgSend                            ; [S3DEngineDispatcher dispatcher]
  1000fef34  mov     x29, x29
  1000fef38  bl      _objc_retainAutoreleasedReturnValue
  1000fef3c  mov     x23, x0
  1000fef40  ldr     x2, [x20, #0x28]                         ; x2 = captured self
  1000fef44  adrp    x8, #0x10041b000
  1000fef48  nop
  1000fef4c  ldr     x1, [x8, #0x508]
  1000fef50  bl      _objc_msgSend                            ; [[S3DEngineDispatcher dispatcher] startTrackingPlayList:self]
  1000fef54  mov     x0, x23
  1000fef58  bl      _objc_release
  1000fef5c  str     xzr, [sp, #0x70]
  1000fef60  add     x8, sp, #0x70
  1000fef64  mov     w9, #0x32000000
  1000fef68  mov     w10, #0x30
  1000fef6c  str     x8, [sp, #0x78]
  1000fef70  stp     w9, w10, [sp, #0x80]
  1000fef74  adr     x9, #0x1000fdf44                         ; &-[S3DPlayList cycleSound]_block_invoke
  1000fef78  nop
  1000fef7c  adr     x10, #0x1000fdf54                        ; &-[S3DPlayList cycleSound]_block_invoke_2
  1000fef80  nop
  1000fef84  str     x9, [sp, #0x88]
  1000fef88  adrp    x27, #0x1003b0000
  1000fef8c  ldr     x27, [x27, #0x118]                       ; __NSConcreteStackBlock
  1000fef90  str     x10, [sp, #0x90]
  1000fef94  adr     x9, #0x1000ff3b4                         ; &-[S3DPlayList activate:]_block_invoke_block_invoke_2
  1000fef98  nop
  1000fef9c  str     x27, [sp, #0x48]
  1000fefa0  stp     w25, wzr, [sp, #0x50]
  1000fefa4  str     x9, [sp, #0x58]
  1000fefa8  adrp    x9, #0x1003b7000
  1000fefac  add     x9, x9, #0x180                           ; &d_1003b7180
  1000fefb0  str     xzr, [sp, #0x98]
  1000fefb4  stp     x9, x8, [sp, #0x60]
  1000fefb8  adrp    x8, #0x10041b000
  1000fefbc  nop
  1000fefc0  ldr     x1, [x8, #0x7d8]
  1000fefc4  add     x2, sp, #0x48
  1000fefc8  mov     x0, x19
  1000fefcc  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3) each:^{-[S3DPlayList activate:]_block_invoke_block_invoke_2 captures +0x28=0, +0x38=0x32000000, +0x40=&-[S3DPlayList cycleSound]_block_invoke, +0x48=&-[S3DPlayList cycleSound]_block_invoke_…, +0x50=0}]
  1000fefd0  adrp    x8, #0x10041b000
  1000fefd4  nop
  1000fefd8  ldr     x1, [x8, #0x4d0]
  1000fefdc  mov     w2, #0
  1000fefe0  mov     x0, x19
  1000fefe4  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3) setFirstHasPlayed:0]
  1000fefe8  adrp    x8, #0x10041b000
  1000fefec  nop
  1000feff0  ldr     x23, [x8, #0x510]
  1000feff4  mov     x0, x19
  1000feff8  mov     x1, x23
  1000feffc  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3) primed]
  1000ff000  mov     x29, x29
  1000ff004  bl      _objc_retainAutoreleasedReturnValue
  1000ff008  mov     x24, x0
  1000ff00c  bl      _objc_release
  1000ff010  cbz     x24, loc_1000ff044                       ; if ([objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3) primed] == 0)
  1000ff014  mov     x0, x19
  1000ff018  mov     x1, x23
  1000ff01c  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3) primed]
  1000ff020  mov     x29, x29
  1000ff024  bl      _objc_retainAutoreleasedReturnValue
  1000ff028  mov     x23, x0
  1000ff02c  adrp    x8, #0x100417000
  1000ff030  nop
  1000ff034  ldr     x1, [x8, #0x508]
  1000ff038  bl      _objc_msgSend                            ; [[objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3) primed] activate]
  1000ff03c  mov     x0, x23
  1000ff040  bl      _objc_release
loc_1000ff044:
  1000ff044  ldr     x8, [sp, #0x78]
  1000ff048  ldr     x8, [x8, #0x28]
  1000ff04c  cbz     x8, loc_1000ff0ec                        ; if (x8 == 0)
  1000ff050  ldr     x0, [x20, #0x28]                         ; x0 = captured self
  1000ff054  adrp    x8, #0x10041b000
  1000ff058  nop
  1000ff05c  ldr     x1, [x8, #0x850]
  1000ff060  bl      _objc_msgSend                            ; [self playListRepeatPolicy]
  1000ff064  cbz     w0, loc_1000ff0ec                        ; if ([self playListRepeatPolicy] == 0)
  1000ff068  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  1000ff06c  mov     x1, x21
  1000ff070  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000ff074  mov     x29, x29
  1000ff078  bl      _objc_retainAutoreleasedReturnValue
  1000ff07c  mov     x23, x0
  1000ff080  ldr     x8, [sp, #0x78]
  1000ff084  ldr     x0, [x8, #0x28]
  1000ff088  adrp    x8, #0x100419000
  1000ff08c  nop
  1000ff090  ldr     x1, [x8, #0x3e8]
  1000ff094  bl      _objc_msgSend                            ; [x0 key]
  1000ff098  mov     x29, x29
  1000ff09c  bl      _objc_retainAutoreleasedReturnValue
  1000ff0a0  mov     x24, x0
  1000ff0a4  stp     x19, x24, [sp]
  1000ff0a8  adrp    x3, #0x1003c3000
  1000ff0ac  add     x3, x3, #0x30                            ; @"### S3DPlayList: %@ playing first sound: %@"
  1000ff0b0  mov     w2, #3
  1000ff0b4  mov     x0, x23
  1000ff0b8  mov     x1, x22
  1000ff0bc  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"### S3DPlayList: %@ playing first sound: %@"]
  1000ff0c0  mov     x0, x24
  1000ff0c4  bl      _objc_release
  1000ff0c8  mov     x0, x23
  1000ff0cc  bl      _objc_release
  1000ff0d0  ldr     x8, [sp, #0x78]
  1000ff0d4  ldr     x0, [x8, #0x28]
  1000ff0d8  adrp    x8, #0x100416000
  1000ff0dc  nop
  1000ff0e0  ldr     x1, [x8, #0xcb8]
  1000ff0e4  mov     w2, #0
  1000ff0e8  bl      _objc_msgSend                            ; [x0 play:0]
loc_1000ff0ec:
  1000ff0ec  ldr     x8, [x20, #0x20]                         ; x8 = captured arg1
  1000ff0f0  cbz     x8, loc_1000ff178                        ; if (arg1 == 0)
  1000ff0f4  ldr     x0, [x26, #0xff8]                        ; class S3DEngine
  1000ff0f8  mov     x1, x21
  1000ff0fc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000ff100  mov     x29, x29
  1000ff104  bl      _objc_retainAutoreleasedReturnValue
  1000ff108  mov     x21, x0
  1000ff10c  str     x27, [sp, #0x18]
  1000ff110  stp     w25, wzr, [sp, #0x20]
  1000ff114  adr     x8, #0x1000ff454                         ; &-[S3DPlayList activate:]_block_invoke_block_invoke_3
  1000ff118  nop
  1000ff11c  str     x8, [sp, #0x28]
  1000ff120  adrp    x8, #0x1003b7000
  1000ff124  add     x8, x8, #0x1b0                           ; &d_1003b71b0
  1000ff128  str     x8, [sp, #0x30]
  1000ff12c  mov     x0, x19
  1000ff130  bl      _objc_retain
  1000ff134  str     x0, [sp, #0x38]
  1000ff138  ldr     x0, [x20, #0x20]                         ; x0 = captured arg1
  1000ff13c  bl      _objc_retain
  1000ff140  str     x0, [sp, #0x40]
  1000ff144  adrp    x8, #0x10041b000
  1000ff148  nop
  1000ff14c  ldr     x1, [x8, #0x5b8]
  1000ff150  add     x2, sp, #0x18
  1000ff154  mov     x0, x21
  1000ff158  bl      _objc_msgSend                            ; [[S3DEngine engine] dispatch:^{-[S3DPlayList activate:]_block_invoke_block_invoke_3 captures +0x20=objc_loadWeakRetained((block + 48), bloc…, +0x28=arg1, +0x30=__NSConcreteStackBlock, +0x38=0xc2000000, +0x40=&-[S3DPlayList activate:]_block_invoke_b…, +0x48=&d_1003b7180, +0x58=0, +0x68=0x32000000, +0x70=&-[S3DPlayList cycleSound]_block_invoke, +0x78=&-[S3DPlayList cycleSound]_block_invoke_…}]
  1000ff15c  mov     x0, x21
  1000ff160  bl      _objc_release
  1000ff164  ldr     x0, [sp, #0x40]
  1000ff168  bl      _objc_release
  1000ff16c  ldr     x0, [sp, #0x38]
  1000ff170  bl      _objc_release
  1000ff174  b       loc_1000ff184
loc_1000ff178:
  1000ff178  adrp    x8, #0x100420000
  1000ff17c  ldrsw   x8, [x8, #0x630]                         ; ivar offset S3DPlayList.activating (+0xa)
  1000ff180  strb    wzr, [x19, x8]                           ; objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3)->activating = 0
loc_1000ff184:
  1000ff184  add     x0, sp, #0x70
  1000ff188  mov     w1, #8
  1000ff18c  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x70], 8)
  1000ff190  ldr     x0, [sp, #0x98]
  1000ff194  bl      _objc_release
loc_1000ff198:
  1000ff198  mov     x0, x19
  1000ff19c  bl      _objc_release
  1000ff1a0  sub     sp, x29, #0x50
  1000ff1a4  ldp     x29, x30, [sp, #0x50]
  1000ff1a8  ldp     x20, x19, [sp, #0x40]
  1000ff1ac  ldp     x22, x21, [sp, #0x30]
  1000ff1b0  ldp     x24, x23, [sp, #0x20]
  1000ff1b4  ldp     x26, x25, [sp, #0x10]
  1000ff1b8  ldp     x28, x27, [sp], #0x60
  1000ff1bc  ret
loc_1000ff1c0:
  1000ff1c0  adrp    x8, #0x100420000
  1000ff1c4  ldrsw   x8, [x8, #0x630]                         ; ivar offset S3DPlayList.activating (+0xa)
  1000ff1c8  strb    wzr, [x19, x8]                           ; objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3)->activating = 0
  1000ff1cc  b       loc_1000ff198
loc_1000ff1d0:
  1000ff1d0  mov     x20, x0
  1000ff1d4  b       loc_1000ff248
  1000ff1d8  mov     x20, x0
  1000ff1dc  b       loc_1000ff25c
  1000ff1e0  b       loc_1000ff1e4
loc_1000ff1e4:
  1000ff1e4  mov     x20, x0
  1000ff1e8  b       loc_1000ff224
  1000ff1ec  mov     x20, x0
  1000ff1f0  b       loc_1000ff240
  1000ff1f4  b       loc_1000ff1d0
  1000ff1f8  mov     x20, x0
  1000ff1fc  mov     x0, x21
  1000ff200  bl      _objc_release
  1000ff204  ldr     x0, [sp, #0x40]
  1000ff208  bl      _objc_release
  1000ff20c  ldr     x0, [sp, #0x38]
  1000ff210  bl      _objc_release
  1000ff214  b       loc_1000ff248
  1000ff218  mov     x20, x0
  1000ff21c  mov     x0, x24
  1000ff220  bl      _objc_release
loc_1000ff224:
  1000ff224  mov     x0, x23
  1000ff228  b       loc_1000ff258
  1000ff22c  mov     x20, x0
  1000ff230  b       loc_1000ff240
  1000ff234  mov     x20, x0
  1000ff238  mov     x0, x24
  1000ff23c  bl      _objc_release
loc_1000ff240:
  1000ff240  mov     x0, x23
  1000ff244  bl      _objc_release
loc_1000ff248:
  1000ff248  add     x0, sp, #0x70
  1000ff24c  mov     w1, #8
  1000ff250  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x70], 8)
  1000ff254  ldr     x0, [sp, #0x98]
loc_1000ff258:
  1000ff258  bl      _objc_release
loc_1000ff25c:
  1000ff25c  mov     x0, x19
  1000ff260  bl      _objc_release
  1000ff264  mov     x0, x20
  1000ff268  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ff26c  mov     x20, x0
  1000ff270  b       loc_1000ff25c
  1000ff274  mov     x20, x0
  1000ff278  mov     x0, x24
  1000ff27c  bl      _objc_release
  1000ff280  ldur    x0, [x29, #-0x60]
  1000ff284  bl      _objc_release
  1000ff288  mov     x0, x22
  1000ff28c  bl      _objc_destroyWeak
  1000ff290  b       loc_1000ff25c

; ======================================================================
; -[S3DPlayList activate:]_block_invoke_block_invoke
; address 0x1000ff294  size 192  kind block
; ======================================================================
  1000ff294  stp     x22, x21, [sp, #-0x30]!
  1000ff298  stp     x20, x19, [sp, #0x10]
  1000ff29c  stp     x29, x30, [sp, #0x20]
  1000ff2a0  add     x29, sp, #0x20
  1000ff2a4  sub     sp, sp, #0x10
  1000ff2a8  mov     x20, x0
  1000ff2ac  add     x0, x20, #0x28
  1000ff2b0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block + 40), blockarg1, blockarg2, blockarg3)
  1000ff2b4  mov     x19, x0
  1000ff2b8  adrp    x8, #0x10041d000
  1000ff2bc  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000ff2c0  adrp    x8, #0x100417000
  1000ff2c4  nop
  1000ff2c8  ldr     x1, [x8, #0x4f0]
  1000ff2cc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000ff2d0  mov     x29, x29
  1000ff2d4  bl      _objc_retainAutoreleasedReturnValue
  1000ff2d8  mov     x21, x0
  1000ff2dc  adrp    x8, #0x10041b000
  1000ff2e0  nop
  1000ff2e4  ldr     x1, [x8, #0x800]
  1000ff2e8  str     x19, [sp]
  1000ff2ec  adrp    x3, #0x1003c2000
  1000ff2f0  add     x3, x3, #0xff0                           ; @"### S3DPlayList: calling completion block for: %@"
  1000ff2f4  mov     w2, #3
  1000ff2f8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"### S3DPlayList: calling completion block for: %@"]
  1000ff2fc  mov     x0, x21
  1000ff300  bl      _objc_release
  1000ff304  cbz     x19, loc_1000ff318                       ; if (objc_loadWeakRetained((block + 40), blockarg1, blockarg2, blockarg3) == 0)
  1000ff308  ldr     x0, [x20, #0x20]                         ; x0 = captured arg1
  1000ff30c  ldr     x8, [x0, #0x10]                          ; x8 = arg1[+0x10]
  1000ff310  mov     x1, x19
  1000ff314  blr     x8                                       ; call arg1[+0x10]
loc_1000ff318:
  1000ff318  mov     x0, x19
  1000ff31c  sub     sp, x29, #0x20
  1000ff320  ldp     x29, x30, [sp, #0x20]
  1000ff324  ldp     x20, x19, [sp, #0x10]
  1000ff328  ldp     x22, x21, [sp], #0x30
  1000ff32c  b       _objc_release
  1000ff330  mov     x20, x0
  1000ff334  b       loc_1000ff344
  1000ff338  mov     x20, x0
  1000ff33c  mov     x0, x21
  1000ff340  bl      _objc_release
loc_1000ff344:
  1000ff344  mov     x0, x19
  1000ff348  bl      _objc_release
  1000ff34c  mov     x0, x20
  1000ff350  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000ff354
; address 0x1000ff354  size 56  kind sub
; ======================================================================
  1000ff354  stp     x20, x19, [sp, #-0x20]!
  1000ff358  stp     x29, x30, [sp, #0x10]
  1000ff35c  add     x29, sp, #0x10
  1000ff360  mov     x19, x1
  1000ff364  mov     x20, x0
  1000ff368  add     x1, x19, #0x28
  1000ff36c  add     x0, x20, #0x28
  1000ff370  bl      _objc_copyWeak                           ; objc_copyWeak((a0 + 40), (a1 + 40), a2, a3)
  1000ff374  add     x0, x20, #0x20
  1000ff378  ldr     x1, [x19, #0x20]                         ; x1 = a1[+0x20]
  1000ff37c  mov     w2, #7
  1000ff380  ldp     x29, x30, [sp, #0x10]
  1000ff384  ldp     x20, x19, [sp], #0x20
  1000ff388  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 7)

; ======================================================================
; sub_1000ff38c
; address 0x1000ff38c  size 40  kind sub
; ======================================================================
  1000ff38c  stp     x20, x19, [sp, #-0x20]!
  1000ff390  stp     x29, x30, [sp, #0x10]
  1000ff394  add     x29, sp, #0x10
  1000ff398  mov     x19, x0
  1000ff39c  add     x0, x19, #0x28
  1000ff3a0  bl      _objc_destroyWeak
  1000ff3a4  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000ff3a8  ldp     x29, x30, [sp, #0x10]
  1000ff3ac  ldp     x20, x19, [sp], #0x20
  1000ff3b0  b       _objc_release

; ======================================================================
; -[S3DPlayList activate:]_block_invoke_block_invoke_2
; address 0x1000ff3b4  size 132  kind block
; ======================================================================
  1000ff3b4  stp     x20, x19, [sp, #-0x20]!
  1000ff3b8  stp     x29, x30, [sp, #0x10]
  1000ff3bc  add     x29, sp, #0x10
  1000ff3c0  mov     x20, x0
  1000ff3c4  mov     x0, x1
  1000ff3c8  bl      _objc_retain
  1000ff3cc  mov     x19, x0
  1000ff3d0  adrp    x8, #0x10041a000
  1000ff3d4  nop
  1000ff3d8  ldr     x1, [x8, #0x458]
  1000ff3dc  bl      _objc_msgSend                            ; [blockarg1 preload]
  1000ff3e0  cbz     w0, loc_1000ff3f8                        ; if ([blockarg1 preload] == 0)
  1000ff3e4  adrp    x8, #0x100417000
  1000ff3e8  nop
  1000ff3ec  ldr     x1, [x8, #0x508]
  1000ff3f0  mov     x0, x19
  1000ff3f4  bl      _objc_msgSend                            ; [blockarg1 activate]
loc_1000ff3f8:
  1000ff3f8  ldr     x8, [x20, #0x20]                         ; x8 = block[+0x20]
  1000ff3fc  ldr     x20, [x8, #8]                            ; x20 = block[+0x20][+0x8]
  1000ff400  ldr     x8, [x20, #0x28]                         ; x8 = block[+0x20][+0x8][+0x28]
  1000ff404  cbnz    x8, loc_1000ff414                        ; if (block[+0x20][+0x8][+0x28] != 0)
  1000ff408  mov     x0, x19
  1000ff40c  bl      _objc_retain
  1000ff410  str     x0, [x20, #0x28]                         ; block[+0x20][+0x8][+0x28] = blockarg1
loc_1000ff414:
  1000ff414  mov     x0, x19
  1000ff418  ldp     x29, x30, [sp, #0x10]
  1000ff41c  ldp     x20, x19, [sp], #0x20
  1000ff420  b       _objc_release
  1000ff424  mov     x20, x0
  1000ff428  mov     x0, x19
  1000ff42c  bl      _objc_release
  1000ff430  mov     x0, x20
  1000ff434  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000ff438
; address 0x1000ff438  size 16  kind sub
; ======================================================================
  1000ff438  add     x0, x0, #0x20
  1000ff43c  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  1000ff440  mov     w2, #8
  1000ff444  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 8, a3)

; ======================================================================
; sub_1000ff448
; address 0x1000ff448  size 12  kind sub
; ======================================================================
  1000ff448  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000ff44c  mov     w1, #8
  1000ff450  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 8, a2, a3)

; ======================================================================
; -[S3DPlayList activate:]_block_invoke_block_invoke_3
; address 0x1000ff454  size 172  kind block
; ======================================================================
  1000ff454  stp     x20, x19, [sp, #-0x20]!
  1000ff458  stp     x29, x30, [sp, #0x10]
  1000ff45c  add     x29, sp, #0x10
  1000ff460  sub     sp, sp, #0x10
  1000ff464  mov     x19, x0
  1000ff468  adrp    x8, #0x10041d000
  1000ff46c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000ff470  adrp    x8, #0x100417000
  1000ff474  nop
  1000ff478  ldr     x1, [x8, #0x4f0]
  1000ff47c  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000ff480  mov     x29, x29
  1000ff484  bl      _objc_retainAutoreleasedReturnValue
  1000ff488  mov     x20, x0
  1000ff48c  ldr     x8, [x19, #0x20]                         ; x8 = captured objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3)
  1000ff490  adrp    x9, #0x10041b000
  1000ff494  nop
  1000ff498  ldr     x1, [x9, #0x800]
  1000ff49c  str     x8, [sp]
  1000ff4a0  adrp    x3, #0x1003c2000
  1000ff4a4  add     x3, x3, #0xff0                           ; @"### S3DPlayList: calling completion block for: %@"
  1000ff4a8  mov     w2, #3
  1000ff4ac  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:3 format:@"### S3DPlayList: calling completion block for: %@"]
  1000ff4b0  mov     x0, x20
  1000ff4b4  bl      _objc_release
  1000ff4b8  ldr     x1, [x19, #0x20]                         ; x1 = captured objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3)
  1000ff4bc  cbz     x1, loc_1000ff4dc                        ; if (objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3) == 0)
  1000ff4c0  ldr     x0, [x19, #0x28]                         ; x0 = captured arg1
  1000ff4c4  ldr     x8, [x0, #0x10]                          ; x8 = arg1[+0x10]
  1000ff4c8  blr     x8                                       ; call arg1[+0x10]
  1000ff4cc  ldr     x8, [x19, #0x20]                         ; x8 = captured objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3)
  1000ff4d0  adrp    x9, #0x100420000
  1000ff4d4  ldrsw   x9, [x9, #0x630]                         ; ivar offset S3DPlayList.activating (+0xa)
  1000ff4d8  strb    wzr, [x8, x9]                            ; objc_loadWeakRetained((block + 48), blockarg1, blockarg2, blockarg3)->activating = 0
loc_1000ff4dc:
  1000ff4dc  sub     sp, x29, #0x10
  1000ff4e0  ldp     x29, x30, [sp, #0x10]
  1000ff4e4  ldp     x20, x19, [sp], #0x20
  1000ff4e8  ret
  1000ff4ec  mov     x19, x0
  1000ff4f0  mov     x0, x20
  1000ff4f4  bl      _objc_release
  1000ff4f8  mov     x0, x19
  1000ff4fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000ff500
; address 0x1000ff500  size 52  kind sub
; ======================================================================
  1000ff500  stp     x20, x19, [sp, #-0x20]!
  1000ff504  stp     x29, x30, [sp, #0x10]
  1000ff508  add     x29, sp, #0x10
  1000ff50c  mov     x19, x1
  1000ff510  mov     x20, x0
  1000ff514  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  1000ff518  bl      _objc_retain
  1000ff51c  add     x0, x20, #0x28
  1000ff520  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  1000ff524  mov     w2, #7
  1000ff528  ldp     x29, x30, [sp, #0x10]
  1000ff52c  ldp     x20, x19, [sp], #0x20
  1000ff530  b       __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 7)

; ======================================================================
; sub_1000ff534
; address 0x1000ff534  size 40  kind sub
; ======================================================================
  1000ff534  stp     x20, x19, [sp, #-0x20]!
  1000ff538  stp     x29, x30, [sp, #0x10]
  1000ff53c  add     x29, sp, #0x10
  1000ff540  mov     x19, x0
  1000ff544  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000ff548  bl      _objc_release
  1000ff54c  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000ff550  ldp     x29, x30, [sp, #0x10]
  1000ff554  ldp     x20, x19, [sp], #0x20
  1000ff558  b       _objc_release

; ======================================================================
; sub_1000ff55c
; address 0x1000ff55c  size 64  kind sub
; ======================================================================
  1000ff55c  stp     x20, x19, [sp, #-0x20]!
  1000ff560  stp     x29, x30, [sp, #0x10]
  1000ff564  add     x29, sp, #0x10
  1000ff568  mov     x19, x1
  1000ff56c  mov     x20, x0
  1000ff570  add     x1, x19, #0x30
  1000ff574  add     x0, x20, #0x30
  1000ff578  bl      _objc_copyWeak                           ; objc_copyWeak((a0 + 48), (a1 + 48), a2, a3)
  1000ff57c  add     x0, x20, #0x20
  1000ff580  ldr     x1, [x19, #0x20]                         ; x1 = a1[+0x20]
  1000ff584  mov     w2, #7
  1000ff588  bl      __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 7)
  1000ff58c  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  1000ff590  ldp     x29, x30, [sp, #0x10]
  1000ff594  ldp     x20, x19, [sp], #0x20
  1000ff598  b       _objc_retain

; ======================================================================
; sub_1000ff59c
; address 0x1000ff59c  size 48  kind sub
; ======================================================================
  1000ff59c  stp     x20, x19, [sp, #-0x20]!
  1000ff5a0  stp     x29, x30, [sp, #0x10]
  1000ff5a4  add     x29, sp, #0x10
  1000ff5a8  mov     x19, x0
  1000ff5ac  add     x0, x19, #0x30
  1000ff5b0  bl      _objc_destroyWeak
  1000ff5b4  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000ff5b8  bl      _objc_release
  1000ff5bc  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000ff5c0  ldp     x29, x30, [sp, #0x10]
  1000ff5c4  ldp     x20, x19, [sp], #0x20
  1000ff5c8  b       _objc_release

; ======================================================================
; -[S3DPlayList logit:]
; address 0x1000ff5cc  size 156  kind objc
; ======================================================================
  1000ff5cc  stp     x22, x21, [sp, #-0x30]!
  1000ff5d0  stp     x20, x19, [sp, #0x10]
  1000ff5d4  stp     x29, x30, [sp, #0x20]
  1000ff5d8  add     x29, sp, #0x20
  1000ff5dc  mov     x0, x2
  1000ff5e0  bl      _objc_retain
  1000ff5e4  mov     x19, x0
  1000ff5e8  adrp    x8, #0x10041d000
  1000ff5ec  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  1000ff5f0  adrp    x8, #0x100416000
  1000ff5f4  nop
  1000ff5f8  ldr     x1, [x8, #0xe88]
  1000ff5fc  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  1000ff600  mov     x29, x29
  1000ff604  bl      _objc_retainAutoreleasedReturnValue
  1000ff608  mov     x20, x0
  1000ff60c  adrp    x8, #0x10041a000
  1000ff610  nop
  1000ff614  ldr     x1, [x8, #0x40]
  1000ff618  adrp    x2, #0x1003c3000
  1000ff61c  add     x2, x2, #0x50                            ; @"cout.log"
  1000ff620  mov     x3, x19
  1000ff624  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:@"cout.log" object:arg1]
  1000ff628  mov     x0, x20
  1000ff62c  bl      _objc_release
  1000ff630  mov     x0, x19
  1000ff634  ldp     x29, x30, [sp, #0x20]
  1000ff638  ldp     x20, x19, [sp, #0x10]
  1000ff63c  ldp     x22, x21, [sp], #0x30
  1000ff640  b       _objc_release
  1000ff644  mov     x21, x0
  1000ff648  b       loc_1000ff658
  1000ff64c  mov     x21, x0
  1000ff650  mov     x0, x20
  1000ff654  bl      _objc_release
loc_1000ff658:
  1000ff658  mov     x0, x19
  1000ff65c  bl      _objc_release
  1000ff660  mov     x0, x21
  1000ff664  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList applyRepeatPolicyTo:]
; address 0x1000ff668  size 1384  kind objc
; ======================================================================
  1000ff668  stp     x26, x25, [sp, #-0x50]!
  1000ff66c  stp     x24, x23, [sp, #0x10]
  1000ff670  stp     x22, x21, [sp, #0x20]
  1000ff674  stp     x20, x19, [sp, #0x30]
  1000ff678  stp     x29, x30, [sp, #0x40]
  1000ff67c  add     x29, sp, #0x40
  1000ff680  sub     sp, sp, #0x130
  1000ff684  mov     x20, x0
  1000ff688  mov     x0, x2
  1000ff68c  bl      _objc_retain
  1000ff690  stur    xzr, [x29, #-0x60]
  1000ff694  sub     x21, x29, #0x60
  1000ff698  mov     w8, #0x20000000
  1000ff69c  stur    x21, [x29, #-0x58]
  1000ff6a0  mov     w9, #0x20
  1000ff6a4  stp     w8, w9, [x29, #-0x50]
  1000ff6a8  sturb   wzr, [x29, #-0x48]
  1000ff6ac  sub     x10, x29, #0x90
  1000ff6b0  stp     xzr, x10, [x29, #-0x90]
  1000ff6b4  mov     w11, #0x32000000
  1000ff6b8  mov     w12, #0x30
  1000ff6bc  stp     w11, w12, [x29, #-0x80]
  1000ff6c0  adr     x13, #0x1000fdf44                        ; &-[S3DPlayList cycleSound]_block_invoke
  1000ff6c4  nop
  1000ff6c8  adr     x14, #0x1000fdf54                        ; &-[S3DPlayList cycleSound]_block_invoke_2
  1000ff6cc  nop
  1000ff6d0  stp     x13, x14, [x29, #-0x78]
  1000ff6d4  stur    xzr, [x29, #-0x68]
  1000ff6d8  add     x22, sp, #0xb0
  1000ff6dc  stp     xzr, x22, [sp, #0xb0]
  1000ff6e0  stp     w11, w12, [sp, #0xc0]
  1000ff6e4  stp     x13, x14, [sp, #0xc8]
  1000ff6e8  str     xzr, [sp, #0xd8]
  1000ff6ec  add     x23, sp, #0x80
  1000ff6f0  stp     xzr, x23, [sp, #0x80]
  1000ff6f4  stp     w11, w12, [sp, #0x90]
  1000ff6f8  stp     x13, x14, [sp, #0x98]
  1000ff6fc  str     xzr, [sp, #0xa8]
  1000ff700  add     x11, sp, #0x60
  1000ff704  stp     xzr, x11, [sp, #0x60]
  1000ff708  stp     w8, w9, [sp, #0x70]
  1000ff70c  mov     w8, #-1
  1000ff710  str     w8, [sp, #0x78]
  1000ff714  adrp    x8, #0x1003b0000
  1000ff718  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000ff71c  str     x8, [sp, #0x10]
  1000ff720  mov     w8, #-0x3e000000
  1000ff724  stp     w8, wzr, [sp, #0x18]
  1000ff728  adr     x8, #0x1000ffbd0                         ; &-[S3DPlayList applyRepeatPolicyTo:]_block_invoke
  1000ff72c  nop
  1000ff730  str     x8, [sp, #0x20]
  1000ff734  adrp    x8, #0x1003b7000
  1000ff738  add     x8, x8, #0x210                           ; &d_1003b7210
  1000ff73c  str     x8, [sp, #0x28]
  1000ff740  stp     x11, x10, [sp, #0x38]
  1000ff744  bl      _objc_retain
  1000ff748  mov     x19, x0
  1000ff74c  str     x19, [sp, #0x30]
  1000ff750  stp     x21, x22, [sp, #0x48]
  1000ff754  str     x23, [sp, #0x58]
  1000ff758  adrp    x8, #0x10041b000
  1000ff75c  nop
  1000ff760  ldr     x1, [x8, #0x7d8]
  1000ff764  add     x2, sp, #0x10
  1000ff768  mov     x0, x20
  1000ff76c  bl      _objc_msgSend                            ; [self each:^{-[S3DPlayList applyRepeatPolicyTo:]_block_invoke captures +0x20=arg1, +0x60=0x20000000, +0x68=0xffffffff}]
  1000ff770  ldr     x8, [sp, #0xb8]
  1000ff774  ldr     x24, [x8, #0x28]
  1000ff778  adrp    x8, #0x10041b000
  1000ff77c  nop
  1000ff780  ldr     x1, [x8, #0x850]
  1000ff784  mov     x0, x20
  1000ff788  bl      _objc_msgSend                            ; [self playListRepeatPolicy]
  1000ff78c  cmp     w0, #1
  1000ff790  b.ne    loc_1000ff858                            ; if ([self playListRepeatPolicy] != 1)
  1000ff794  adrp    x25, #0x10041d000
  1000ff798  ldr     x0, [x25, #0xf78]                        ; class NSString
  1000ff79c  adrp    x8, #0x100416000
  1000ff7a0  nop
  1000ff7a4  ldr     x22, [x8, #0xee8]
  1000ff7a8  str     x20, [sp]
  1000ff7ac  adrp    x2, #0x1003c3000
  1000ff7b0  add     x2, x2, #0x110                           ; @"PlayList %@ in repeat last mode"
  1000ff7b4  mov     x1, x22
  1000ff7b8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"PlayList %@ in repeat last mode", self]
  1000ff7bc  mov     x29, x29
  1000ff7c0  bl      _objc_retainAutoreleasedReturnValue
  1000ff7c4  mov     x23, x0
  1000ff7c8  adrp    x8, #0x10041b000
  1000ff7cc  nop
  1000ff7d0  ldr     x21, [x8, #0x518]
  1000ff7d4  mov     x0, x20
  1000ff7d8  mov     x1, x21
  1000ff7dc  mov     x2, x23
  1000ff7e0  bl      _objc_msgSend                            ; [self logit:[NSString stringWithFormat:@"PlayList %@ in repeat last mode", self]]
  1000ff7e4  mov     x0, x23
  1000ff7e8  bl      _objc_release
  1000ff7ec  cmp     x24, x19
  1000ff7f0  b.eq    loc_1000ff978                            ; if (x24 == arg1)
  1000ff7f4  ldr     x8, [sp, #0x88]
  1000ff7f8  ldr     x8, [x8, #0x28]
  1000ff7fc  ldr     x0, [x25, #0xf78]                        ; class NSString
  1000ff800  cbz     x8, loc_1000ff9d0                        ; if (x8 == 0)
  1000ff804  str     x20, [sp]
  1000ff808  adrp    x2, #0x1003c3000
  1000ff80c  add     x2, x2, #0xd0                            ; @"PlayList %@ : next"
  1000ff810  mov     x1, x22
  1000ff814  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"PlayList %@ : next", self]
  1000ff818  mov     x29, x29
  1000ff81c  bl      _objc_retainAutoreleasedReturnValue
  1000ff820  mov     x22, x0
  1000ff824  mov     x0, x20
  1000ff828  mov     x1, x21
  1000ff82c  mov     x2, x22
  1000ff830  bl      _objc_msgSend                            ; [self logit:[NSString stringWithFormat:@"PlayList %@ : next", self]]
  1000ff834  mov     x0, x22
  1000ff838  bl      _objc_release
  1000ff83c  ldr     x8, [sp, #0x88]
  1000ff840  ldr     x0, [x8, #0x28]
  1000ff844  adrp    x8, #0x100417000
  1000ff848  nop
  1000ff84c  ldr     x1, [x8, #0x600]
  1000ff850  bl      _objc_msgSend                            ; [x0 play]
  1000ff854  b       loc_1000ffa9c
loc_1000ff858:
  1000ff858  cmp     w0, #2
  1000ff85c  b.ne    loc_1000ff924                            ; if ([self playListRepeatPolicy] != 2)
  1000ff860  adrp    x25, #0x10041d000
  1000ff864  ldr     x0, [x25, #0xf78]                        ; class NSString
  1000ff868  adrp    x8, #0x100416000
  1000ff86c  nop
  1000ff870  ldr     x22, [x8, #0xee8]
  1000ff874  str     x20, [sp]
  1000ff878  adrp    x2, #0x1003c3000
  1000ff87c  add     x2, x2, #0x90                            ; @"PlayList %@ in repeat start mode"
  1000ff880  mov     x1, x22
  1000ff884  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"PlayList %@ in repeat start mode", self]
  1000ff888  mov     x29, x29
  1000ff88c  bl      _objc_retainAutoreleasedReturnValue
  1000ff890  mov     x23, x0
  1000ff894  adrp    x8, #0x10041b000
  1000ff898  nop
  1000ff89c  ldr     x21, [x8, #0x518]
  1000ff8a0  mov     x0, x20
  1000ff8a4  mov     x1, x21
  1000ff8a8  mov     x2, x23
  1000ff8ac  bl      _objc_msgSend                            ; [self logit:[NSString stringWithFormat:@"PlayList %@ in repeat start mode", self]]
  1000ff8b0  mov     x0, x23
  1000ff8b4  bl      _objc_release
  1000ff8b8  cmp     x24, x19
  1000ff8bc  b.eq    loc_1000ffa08                            ; if (x24 == arg1)
  1000ff8c0  ldr     x8, [sp, #0x88]
  1000ff8c4  ldr     x8, [x8, #0x28]
  1000ff8c8  ldr     x0, [x25, #0xf78]                        ; class NSString
  1000ff8cc  cbz     x8, loc_1000ffa64                        ; if (x8 == 0)
  1000ff8d0  str     x20, [sp]
  1000ff8d4  adrp    x2, #0x1003c3000
  1000ff8d8  add     x2, x2, #0xd0                            ; @"PlayList %@ : next"
  1000ff8dc  mov     x1, x22
  1000ff8e0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"PlayList %@ : next", self]
  1000ff8e4  mov     x29, x29
  1000ff8e8  bl      _objc_retainAutoreleasedReturnValue
  1000ff8ec  mov     x22, x0
  1000ff8f0  mov     x0, x20
  1000ff8f4  mov     x1, x21
  1000ff8f8  mov     x2, x22
  1000ff8fc  bl      _objc_msgSend                            ; [self logit:[NSString stringWithFormat:@"PlayList %@ : next", self]]
  1000ff900  mov     x0, x22
  1000ff904  bl      _objc_release
  1000ff908  ldr     x8, [sp, #0x88]
  1000ff90c  ldr     x0, [x8, #0x28]
  1000ff910  adrp    x8, #0x100417000
  1000ff914  nop
  1000ff918  ldr     x1, [x8, #0x600]
  1000ff91c  bl      _objc_msgSend                            ; [x0 play]
  1000ff920  b       loc_1000ffa9c
loc_1000ff924:
  1000ff924  adrp    x8, #0x10041d000
  1000ff928  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000ff92c  adrp    x8, #0x100416000
  1000ff930  nop
  1000ff934  ldr     x1, [x8, #0xee8]
  1000ff938  stp     x20, x19, [sp]
  1000ff93c  adrp    x2, #0x1003c3000
  1000ff940  add     x2, x2, #0x70                            ; @"PlayList %@ in no repeat mode %@"
  1000ff944  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"PlayList %@ in no repeat mode %@", self, arg1]
  1000ff948  mov     x29, x29
  1000ff94c  bl      _objc_retainAutoreleasedReturnValue
  1000ff950  mov     x21, x0
  1000ff954  adrp    x8, #0x10041b000
  1000ff958  nop
  1000ff95c  ldr     x1, [x8, #0x518]
  1000ff960  mov     x0, x20
  1000ff964  mov     x2, x21
  1000ff968  bl      _objc_msgSend                            ; [self logit:[NSString stringWithFormat:@"PlayList %@ in no repeat mode %@", self, arg1]]
  1000ff96c  mov     x0, x21
  1000ff970  bl      _objc_release
  1000ff974  b       loc_1000ffa9c
loc_1000ff978:
  1000ff978  ldr     x0, [x25, #0xf78]                        ; class NSString
  1000ff97c  str     x20, [sp]
  1000ff980  adrp    x2, #0x1003c3000
  1000ff984  add     x2, x2, #0xb0                            ; @"PlayList %@ : last"
  1000ff988  mov     x1, x22
  1000ff98c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"PlayList %@ : last", self]
  1000ff990  mov     x29, x29
  1000ff994  bl      _objc_retainAutoreleasedReturnValue
  1000ff998  mov     x22, x0
  1000ff99c  mov     x0, x20
  1000ff9a0  mov     x1, x21
  1000ff9a4  mov     x2, x22
  1000ff9a8  bl      _objc_msgSend                            ; [self logit:[NSString stringWithFormat:@"PlayList %@ : last", self]]
  1000ff9ac  mov     x0, x22
  1000ff9b0  bl      _objc_release
  1000ff9b4  adrp    x8, #0x100416000
  1000ff9b8  nop
  1000ff9bc  ldr     x1, [x8, #0xcb8]
  1000ff9c0  mov     w2, #1
  1000ff9c4  mov     x0, x19
  1000ff9c8  bl      _objc_msgSend                            ; [arg1 play:1]
  1000ff9cc  b       loc_1000ffa9c
loc_1000ff9d0:
  1000ff9d0  str     x20, [sp]
  1000ff9d4  adrp    x2, #0x1003c3000
  1000ff9d8  add     x2, x2, #0xf0                            ; @"PlayList %@ : no next/no last"
  1000ff9dc  mov     x1, x22
  1000ff9e0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"PlayList %@ : no next/no last", self]
  1000ff9e4  mov     x29, x29
  1000ff9e8  bl      _objc_retainAutoreleasedReturnValue
  1000ff9ec  mov     x22, x0
  1000ff9f0  mov     x0, x20
  1000ff9f4  mov     x1, x21
  1000ff9f8  mov     x2, x22
  1000ff9fc  bl      _objc_msgSend                            ; [self logit:[NSString stringWithFormat:@"PlayList %@ : no next/no last", self]]
  1000ffa00  b       loc_1000ffa94
  1000ffa04  b       loc_1000ffbc0
loc_1000ffa08:
  1000ffa08  ldr     x0, [x25, #0xf78]                        ; class NSString
  1000ffa0c  str     x20, [sp]
  1000ffa10  adrp    x2, #0x1003c3000
  1000ffa14  add     x2, x2, #0xb0                            ; @"PlayList %@ : last"
  1000ffa18  mov     x1, x22
  1000ffa1c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"PlayList %@ : last", self]
  1000ffa20  mov     x29, x29
  1000ffa24  bl      _objc_retainAutoreleasedReturnValue
  1000ffa28  mov     x22, x0
  1000ffa2c  mov     x0, x20
  1000ffa30  mov     x1, x21
  1000ffa34  mov     x2, x22
  1000ffa38  bl      _objc_msgSend                            ; [self logit:[NSString stringWithFormat:@"PlayList %@ : last", self]]
  1000ffa3c  mov     x0, x22
  1000ffa40  bl      _objc_release
  1000ffa44  ldur    x8, [x29, #-0x88]
  1000ffa48  ldr     x0, [x8, #0x28]
  1000ffa4c  adrp    x8, #0x100416000
  1000ffa50  nop
  1000ffa54  ldr     x1, [x8, #0xcb8]
  1000ffa58  mov     w2, #0
  1000ffa5c  bl      _objc_msgSend                            ; [x0 play:0]
  1000ffa60  b       loc_1000ffa9c
loc_1000ffa64:
  1000ffa64  str     x20, [sp]
  1000ffa68  adrp    x2, #0x1003c3000
  1000ffa6c  add     x2, x2, #0xf0                            ; @"PlayList %@ : no next/no last"
  1000ffa70  mov     x1, x22
  1000ffa74  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"PlayList %@ : no next/no last", self]
  1000ffa78  mov     x29, x29
  1000ffa7c  bl      _objc_retainAutoreleasedReturnValue
  1000ffa80  mov     x22, x0
  1000ffa84  mov     x0, x20
  1000ffa88  mov     x1, x21
  1000ffa8c  mov     x2, x22
  1000ffa90  bl      _objc_msgSend                            ; [self logit:[NSString stringWithFormat:@"PlayList %@ : no next/no last", self]]
loc_1000ffa94:
  1000ffa94  mov     x0, x22
  1000ffa98  bl      _objc_release
loc_1000ffa9c:
  1000ffa9c  ldr     x0, [sp, #0x30]
  1000ffaa0  bl      _objc_release
  1000ffaa4  add     x0, sp, #0x60
  1000ffaa8  mov     w1, #8
  1000ffaac  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x60], 8)
  1000ffab0  add     x0, sp, #0x80
  1000ffab4  mov     w1, #8
  1000ffab8  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x80], 8)
  1000ffabc  ldr     x0, [sp, #0xa8]
  1000ffac0  bl      _objc_release
  1000ffac4  add     x0, sp, #0xb0
  1000ffac8  mov     w1, #8
  1000ffacc  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0xb0], 8)
  1000ffad0  ldr     x0, [sp, #0xd8]
  1000ffad4  bl      _objc_release
  1000ffad8  sub     x0, x29, #0x90
  1000ffadc  mov     w1, #8
  1000ffae0  bl      __Block_object_dispose                   ; Block_object_dispose(&x29[-0x90], 8)
  1000ffae4  ldur    x0, [x29, #-0x68]
  1000ffae8  bl      _objc_release
  1000ffaec  sub     x0, x29, #0x60
  1000ffaf0  mov     w1, #8
  1000ffaf4  bl      __Block_object_dispose                   ; Block_object_dispose(&x29[-0x60], 8)
  1000ffaf8  mov     x0, x19
  1000ffafc  bl      _objc_release
  1000ffb00  sub     sp, x29, #0x40
  1000ffb04  ldp     x29, x30, [sp, #0x40]
  1000ffb08  ldp     x20, x19, [sp, #0x30]
  1000ffb0c  ldp     x22, x21, [sp, #0x20]
  1000ffb10  ldp     x24, x23, [sp, #0x10]
  1000ffb14  ldp     x26, x25, [sp], #0x50
  1000ffb18  ret
  1000ffb1c  mov     x20, x0
loc_1000ffb20:
  1000ffb20  ldr     x0, [sp, #0x30]
  1000ffb24  bl      _objc_release
  1000ffb28  add     x0, sp, #0x60
  1000ffb2c  mov     w1, #8
  1000ffb30  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x60], 8)
  1000ffb34  add     x0, sp, #0x80
  1000ffb38  mov     w1, #8
  1000ffb3c  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x80], 8)
  1000ffb40  ldr     x0, [sp, #0xa8]
  1000ffb44  bl      _objc_release
  1000ffb48  add     x0, sp, #0xb0
  1000ffb4c  mov     w1, #8
  1000ffb50  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0xb0], 8)
  1000ffb54  ldr     x0, [sp, #0xd8]
  1000ffb58  bl      _objc_release
  1000ffb5c  sub     x0, x29, #0x90
  1000ffb60  mov     w1, #8
  1000ffb64  bl      __Block_object_dispose                   ; Block_object_dispose(&x29[-0x90], 8)
  1000ffb68  ldur    x0, [x29, #-0x68]
  1000ffb6c  bl      _objc_release
  1000ffb70  sub     x0, x29, #0x60
  1000ffb74  mov     w1, #8
  1000ffb78  bl      __Block_object_dispose                   ; Block_object_dispose(&x29[-0x60], 8)
  1000ffb7c  mov     x0, x19
  1000ffb80  bl      _objc_release
  1000ffb84  mov     x0, x20
  1000ffb88  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ffb8c  b       loc_1000ffb90
loc_1000ffb90:
  1000ffb90  mov     x20, x0
  1000ffb94  mov     x0, x23
  1000ffb98  bl      _objc_release
  1000ffb9c  b       loc_1000ffb20
  1000ffba0  mov     x20, x0
  1000ffba4  mov     x0, x21
  1000ffba8  bl      _objc_release
  1000ffbac  b       loc_1000ffb20
  1000ffbb0  b       loc_1000ffbc0
  1000ffbb4  b       loc_1000ffbc0
  1000ffbb8  b       loc_1000ffbc0
  1000ffbbc  b       loc_1000ffbc0
loc_1000ffbc0:
  1000ffbc0  mov     x20, x0
  1000ffbc4  mov     x0, x22
  1000ffbc8  bl      _objc_release
  1000ffbcc  b       loc_1000ffb20

; ======================================================================
; -[S3DPlayList applyRepeatPolicyTo:]_block_invoke
; address 0x1000ffbd0  size 212  kind block
; ======================================================================
  1000ffbd0  stp     x22, x21, [sp, #-0x30]!
  1000ffbd4  stp     x20, x19, [sp, #0x10]
  1000ffbd8  stp     x29, x30, [sp, #0x20]
  1000ffbdc  add     x29, sp, #0x20
  1000ffbe0  mov     x19, x0
  1000ffbe4  mov     x0, x1
  1000ffbe8  bl      _objc_retain
  1000ffbec  mov     x20, x0
  1000ffbf0  ldr     x8, [x19, #0x28]                         ; x8 = block[+0x28]
  1000ffbf4  ldr     x8, [x8, #8]                             ; x8 = block[+0x28][+0x8]
  1000ffbf8  ldr     w9, [x8, #0x18]                          ; w9 = block[+0x28][+0x8][+0x18]
  1000ffbfc  add     w9, w9, #1
  1000ffc00  str     w9, [x8, #0x18]                          ; block[+0x28][+0x8][+0x18] = (block[+0x28][+0x8][+0x18] + 1)
  1000ffc04  ldr     x8, [x19, #0x30]                         ; x8 = block[+0x30]
  1000ffc08  ldr     x21, [x8, #8]                            ; x21 = block[+0x30][+0x8]
  1000ffc0c  ldr     x8, [x21, #0x28]                         ; x8 = block[+0x30][+0x8][+0x28]
  1000ffc10  cbnz    x8, loc_1000ffc20                        ; if (block[+0x30][+0x8][+0x28] != 0)
  1000ffc14  mov     x0, x20
  1000ffc18  bl      _objc_retain
  1000ffc1c  str     x0, [x21, #0x28]                         ; block[+0x30][+0x8][+0x28] = blockarg1
loc_1000ffc20:
  1000ffc20  ldr     x8, [x19, #0x20]                         ; x8 = captured arg1
  1000ffc24  cmp     x8, x20
  1000ffc28  b.eq    loc_1000ffc64                            ; if (arg1 == blockarg1)
  1000ffc2c  ldr     x9, [x19, #0x40]                         ; x9 = block[+0x40]
  1000ffc30  ldr     x9, [x9, #8]                             ; x9 = block[+0x40][+0x8]
  1000ffc34  ldr     x9, [x9, #0x28]                          ; x9 = block[+0x40][+0x8][+0x28]
  1000ffc38  cmp     x8, x9
  1000ffc3c  b.ne    loc_1000ffc84                            ; if (arg1 != block[+0x40][+0x8][+0x28])
  1000ffc40  ldr     x8, [x19, #0x48]                         ; x8 = block[+0x48]
  1000ffc44  ldr     x21, [x8, #8]                            ; x21 = block[+0x48][+0x8]
  1000ffc48  mov     x0, x20
  1000ffc4c  bl      _objc_retain
  1000ffc50  ldr     x8, [x21, #0x28]                         ; x8 = block[+0x48][+0x8][+0x28]
  1000ffc54  str     x0, [x21, #0x28]                         ; block[+0x48][+0x8][+0x28] = blockarg1
  1000ffc58  mov     x0, x8
  1000ffc5c  bl      _objc_release
  1000ffc60  b       loc_1000ffc84
loc_1000ffc64:
  1000ffc64  ldr     x8, [x19, #0x28]                         ; x8 = block[+0x28]
  1000ffc68  ldr     x8, [x8, #8]                             ; x8 = block[+0x28][+0x8]
  1000ffc6c  ldr     w8, [x8, #0x18]                          ; w8 = block[+0x28][+0x8][+0x18]
  1000ffc70  cbnz    w8, loc_1000ffc84                        ; if (block[+0x28][+0x8][+0x18] != 0)
  1000ffc74  ldr     x8, [x19, #0x38]                         ; x8 = block[+0x38]
  1000ffc78  ldr     x8, [x8, #8]                             ; x8 = block[+0x38][+0x8]
  1000ffc7c  mov     w9, #1
  1000ffc80  strb    w9, [x8, #0x18]                          ; block[+0x38][+0x8][+0x18] = 1
loc_1000ffc84:
  1000ffc84  ldr     x8, [x19, #0x40]                         ; x8 = block[+0x40]
  1000ffc88  ldr     x8, [x8, #8]                             ; x8 = block[+0x40][+0x8]
  1000ffc8c  ldr     x0, [x8, #0x28]                          ; x0 = block[+0x40][+0x8][+0x28]
  1000ffc90  str     x20, [x8, #0x28]                         ; block[+0x40][+0x8][+0x28] = blockarg1
  1000ffc94  ldp     x29, x30, [sp, #0x20]
  1000ffc98  ldp     x20, x19, [sp, #0x10]
  1000ffc9c  ldp     x22, x21, [sp], #0x30
  1000ffca0  b       _objc_release

; ======================================================================
; sub_1000ffca4
; address 0x1000ffca4  size 116  kind sub
; ======================================================================
  1000ffca4  stp     x20, x19, [sp, #-0x20]!
  1000ffca8  stp     x29, x30, [sp, #0x10]
  1000ffcac  add     x29, sp, #0x10
  1000ffcb0  mov     x19, x1
  1000ffcb4  mov     x20, x0
  1000ffcb8  add     x0, x20, #0x28
  1000ffcbc  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  1000ffcc0  mov     w2, #8
  1000ffcc4  bl      __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 8, a3)
  1000ffcc8  add     x0, x20, #0x30
  1000ffccc  ldr     x1, [x19, #0x30]                         ; x1 = a1[+0x30]
  1000ffcd0  mov     w2, #8
  1000ffcd4  bl      __Block_object_assign                    ; Block_object_assign((a0 + 48), a1[+0x30], 8)
  1000ffcd8  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  1000ffcdc  bl      _objc_retain
  1000ffce0  add     x0, x20, #0x38
  1000ffce4  ldr     x1, [x19, #0x38]                         ; x1 = a1[+0x38]
  1000ffce8  mov     w2, #8
  1000ffcec  bl      __Block_object_assign                    ; Block_object_assign((a0 + 56), a1[+0x38], 8)
  1000ffcf0  add     x0, x20, #0x40
  1000ffcf4  ldr     x1, [x19, #0x40]                         ; x1 = a1[+0x40]
  1000ffcf8  mov     w2, #8
  1000ffcfc  bl      __Block_object_assign                    ; Block_object_assign((a0 + 64), a1[+0x40], 8)
  1000ffd00  add     x0, x20, #0x48
  1000ffd04  ldr     x1, [x19, #0x48]                         ; x1 = a1[+0x48]
  1000ffd08  mov     w2, #8
  1000ffd0c  ldp     x29, x30, [sp, #0x10]
  1000ffd10  ldp     x20, x19, [sp], #0x20
  1000ffd14  b       __Block_object_assign                    ; Block_object_assign((a0 + 72), a1[+0x48], 8)

; ======================================================================
; sub_1000ffd18
; address 0x1000ffd18  size 92  kind sub
; ======================================================================
  1000ffd18  stp     x20, x19, [sp, #-0x20]!
  1000ffd1c  stp     x29, x30, [sp, #0x10]
  1000ffd20  add     x29, sp, #0x10
  1000ffd24  mov     x19, x0
  1000ffd28  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000ffd2c  mov     w1, #8
  1000ffd30  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x28], 8, a2, a3)
  1000ffd34  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  1000ffd38  mov     w1, #8
  1000ffd3c  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x30], 8)
  1000ffd40  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000ffd44  bl      _objc_release
  1000ffd48  ldr     x0, [x19, #0x38]                         ; x0 = a0[+0x38]
  1000ffd4c  mov     w1, #8
  1000ffd50  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x38], 8)
  1000ffd54  ldr     x0, [x19, #0x40]                         ; x0 = a0[+0x40]
  1000ffd58  mov     w1, #8
  1000ffd5c  bl      __Block_object_dispose                   ; Block_object_dispose(a0[+0x40], 8)
  1000ffd60  ldr     x0, [x19, #0x48]                         ; x0 = a0[+0x48]
  1000ffd64  mov     w1, #8
  1000ffd68  ldp     x29, x30, [sp, #0x10]
  1000ffd6c  ldp     x20, x19, [sp], #0x20
  1000ffd70  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x48], 8)

; ======================================================================
; -[S3DPlayList keyFromDict:]
; address 0x1000ffd74  size 324  kind objc
; ======================================================================
  1000ffd74  stp     x24, x23, [sp, #-0x40]!
  1000ffd78  stp     x22, x21, [sp, #0x10]
  1000ffd7c  stp     x20, x19, [sp, #0x20]
  1000ffd80  stp     x29, x30, [sp, #0x30]
  1000ffd84  add     x29, sp, #0x30
  1000ffd88  sub     sp, sp, #0x20
  1000ffd8c  mov     x0, x2
  1000ffd90  bl      _objc_retain
  1000ffd94  mov     x19, x0
  1000ffd98  adrp    x8, #0x10041d000
  1000ffd9c  ldr     x21, [x8, #0xf78]                        ; class NSString
  1000ffda0  adrp    x8, #0x100417000
  1000ffda4  nop
  1000ffda8  ldr     x23, [x8, #0x40]
  1000ffdac  adrp    x2, #0x1003c3000
  1000ffdb0  add     x2, x2, #0xd30                           ; @"path"
  1000ffdb4  mov     x1, x23
  1000ffdb8  bl      _objc_msgSend                            ; [arg1 objectForKey:@"path"]
  1000ffdbc  mov     x29, x29
  1000ffdc0  bl      _objc_retainAutoreleasedReturnValue
  1000ffdc4  mov     x20, x0
  1000ffdc8  adrp    x2, #0x1003b9000
  1000ffdcc  add     x2, x2, #0xdb0                           ; @"name"
  1000ffdd0  mov     x0, x19
  1000ffdd4  mov     x1, x23
  1000ffdd8  bl      _objc_msgSend                            ; [arg1 objectForKey:@"name"]
  1000ffddc  mov     x29, x29
  1000ffde0  bl      _objc_retainAutoreleasedReturnValue
  1000ffde4  mov     x22, x0
  1000ffde8  adrp    x2, #0x1003c3000
  1000ffdec  add     x2, x2, #0xd50                           ; @"extension"
  1000ffdf0  mov     x0, x19
  1000ffdf4  mov     x1, x23
  1000ffdf8  bl      _objc_msgSend                            ; [arg1 objectForKey:@"extension"]
  1000ffdfc  mov     x29, x29
  1000ffe00  bl      _objc_retainAutoreleasedReturnValue
  1000ffe04  mov     x23, x0
  1000ffe08  adrp    x8, #0x100416000
  1000ffe0c  nop
  1000ffe10  ldr     x1, [x8, #0xee8]
  1000ffe14  stp     x22, x23, [sp, #8]
  1000ffe18  str     x20, [sp]
  1000ffe1c  adrp    x2, #0x1003c3000
  1000ffe20  add     x2, x2, #0x130                           ; @"%@/%@.%@"
  1000ffe24  mov     x0, x21
  1000ffe28  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@/%@.%@", [arg1 objectForKey:@"path"], [arg1 objectForKey:@"name"], [arg1 objectForKey:@"extension"]]
  1000ffe2c  mov     x29, x29
  1000ffe30  bl      _objc_retainAutoreleasedReturnValue
  1000ffe34  mov     x21, x0
  1000ffe38  mov     x0, x23
  1000ffe3c  bl      _objc_release
  1000ffe40  mov     x0, x22
  1000ffe44  bl      _objc_release
  1000ffe48  mov     x0, x20
  1000ffe4c  bl      _objc_release
  1000ffe50  mov     x0, x19
  1000ffe54  bl      _objc_release
  1000ffe58  mov     x0, x21
  1000ffe5c  sub     sp, x29, #0x30
  1000ffe60  ldp     x29, x30, [sp, #0x30]
  1000ffe64  ldp     x20, x19, [sp, #0x20]
  1000ffe68  ldp     x22, x21, [sp, #0x10]
  1000ffe6c  ldp     x24, x23, [sp], #0x40
  1000ffe70  b       _objc_autoreleaseReturnValue
  1000ffe74  mov     x21, x0
  1000ffe78  b       loc_1000ffea8
  1000ffe7c  mov     x21, x0
  1000ffe80  b       loc_1000ffea0
  1000ffe84  mov     x21, x0
  1000ffe88  b       loc_1000ffe98
  1000ffe8c  mov     x21, x0
  1000ffe90  mov     x0, x23
  1000ffe94  bl      _objc_release
loc_1000ffe98:
  1000ffe98  mov     x0, x22
  1000ffe9c  bl      _objc_release
loc_1000ffea0:
  1000ffea0  mov     x0, x20
  1000ffea4  bl      _objc_release
loc_1000ffea8:
  1000ffea8  mov     x0, x19
  1000ffeac  bl      _objc_release
  1000ffeb0  mov     x0, x21
  1000ffeb4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList each:]
; address 0x1000ffeb8  size 1100  kind objc
; ======================================================================
  1000ffeb8  stp     x28, x27, [sp, #-0x60]!
  1000ffebc  stp     x26, x25, [sp, #0x10]
  1000ffec0  stp     x24, x23, [sp, #0x20]
  1000ffec4  stp     x22, x21, [sp, #0x30]
  1000ffec8  stp     x20, x19, [sp, #0x40]
  1000ffecc  stp     x29, x30, [sp, #0x50]
  1000ffed0  add     x29, sp, #0x50
  1000ffed4  sub     sp, sp, #0x130
  1000ffed8  mov     x20, x0
  1000ffedc  add     x9, sp, #0x58
  1000ffee0  adrp    x8, #0x1003b0000
  1000ffee4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000ffee8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000ffeec  str     x8, [x9]
  1000ffef0  mov     x0, x2
  1000ffef4  bl      _objc_retain
  1000ffef8  str     x0, [sp, #0x30]
  1000ffefc  adrp    x8, #0x100419000
  1000fff00  nop
  1000fff04  ldr     x21, [x8, #0x380]
  1000fff08  mov     x0, x20
  1000fff0c  mov     x1, x21
  1000fff10  bl      _objc_msgSend                            ; [self range]
  1000fff14  eor     x8, x1, #0x7fffffffffffffff
  1000fff18  cbnz    x8, loc_1000fff98                        ; if ((x1 ^ 0x7fffffffffffffff) != 0)
  1000fff1c  mov     x0, x20
  1000fff20  mov     x1, x21
  1000fff24  bl      _objc_msgSend                            ; [self range]
  1000fff28  mov     x23, x0
  1000fff2c  adrp    x8, #0x100418000
  1000fff30  nop
  1000fff34  ldr     x1, [x8, #0x9e8]
  1000fff38  mov     x0, x20
  1000fff3c  bl      _objc_msgSend                            ; [self model]
  1000fff40  mov     x29, x29
  1000fff44  bl      _objc_retainAutoreleasedReturnValue
  1000fff48  mov     x22, x0
  1000fff4c  adrp    x8, #0x10041b000
  1000fff50  nop
  1000fff54  ldr     x1, [x8, #0x860]
  1000fff58  bl      _objc_msgSend                            ; [[self model] playList]
  1000fff5c  mov     x29, x29
  1000fff60  bl      _objc_retainAutoreleasedReturnValue
  1000fff64  mov     x24, x0
  1000fff68  adrp    x8, #0x100416000
  1000fff6c  nop
  1000fff70  ldr     x1, [x8, #0xe30]
  1000fff74  bl      _objc_msgSend                            ; [[[self model] playList] count]
  1000fff78  adrp    x8, #0x100420000
  1000fff7c  ldrsw   x8, [x8, #0x624]                         ; ivar offset S3DPlayList.range (+0x38)
  1000fff80  add     x8, x20, x8
  1000fff84  stp     x23, x0, [x8]
  1000fff88  mov     x0, x24
  1000fff8c  bl      _objc_release
  1000fff90  mov     x0, x22
  1000fff94  bl      _objc_release
loc_1000fff98:
  1000fff98  stp     xzr, xzr, [sp, #0x98]
  1000fff9c  stp     xzr, xzr, [sp, #0x88]
  1000fffa0  stp     xzr, xzr, [sp, #0x78]
  1000fffa4  stp     xzr, xzr, [sp, #0x68]
  1000fffa8  adrp    x8, #0x100418000
  1000fffac  nop
  1000fffb0  ldr     x1, [x8, #0x9e8]
  1000fffb4  mov     x0, x20
  1000fffb8  bl      _objc_msgSend                            ; [self model]
  1000fffbc  mov     x29, x29
  1000fffc0  bl      _objc_retainAutoreleasedReturnValue
  1000fffc4  mov     x22, x0
  1000fffc8  adrp    x8, #0x10041b000
  1000fffcc  nop
  1000fffd0  ldr     x1, [x8, #0x860]
  1000fffd4  bl      _objc_msgSend                            ; [[self model] playList]
  1000fffd8  mov     x29, x29
  1000fffdc  bl      _objc_retainAutoreleasedReturnValue
  1000fffe0  mov     x19, x0
  1000fffe4  str     x19, [sp, #0x38]
  1000fffe8  mov     x0, x22
  1000fffec  bl      _objc_release
  1000ffff0  adrp    x8, #0x100416000
  1000ffff4  nop
  1000ffff8  ldr     x1, [x8, #0xe00]
  1000ffffc  str     x1, [sp, #0x10]
  100100000  add     x2, sp, #0x68
  100100004  add     x3, sp, #0xa8
  100100008  mov     w4, #0x10
  10010000c  mov     x0, x19
  100100010  bl      _objc_msgSend                            ; [[[self model] playList] countByEnumeratingWithState:&sp[0x68] objects:&sp[0xa8] count:16]
  100100014  mov     x24, x0
  100100018  cbz     x24, loc_100100228                       ; if ([[[self model] playList] countByEnumeratingWithState:&sp[0x68] objects:&sp[0xa8] count:16] == 0)
  10010001c  ldr     x8, [sp, #0x78]
  100100020  ldr     x8, [x8]
  100100024  str     x8, [sp, #0x50]
  100100028  adrp    x8, #0x10041b000
  10010002c  nop
  100100030  ldr     x8, [x8, #0x520]
  100100034  str     x8, [sp, #0x48]
  100100038  adrp    x8, #0x10041b000
  10010003c  nop
  100100040  ldr     x26, [x8, #0x4c0]
  100100044  adrp    x8, #0x100417000
  100100048  nop
  10010004c  ldr     x8, [x8, #0x40]
  100100050  str     x8, [sp, #0x40]
  100100054  adrp    x8, #0x10041b000
  100100058  nop
  10010005c  ldr     x8, [x8, #0x528]
  100100060  str     x8, [sp, #0x28]
  100100064  adrp    x8, #0x100416000
  100100068  nop
  10010006c  ldr     x8, [x8, #0xdc8]
  100100070  str     x8, [sp, #0x20]
  100100074  mov     x8, #-1
  100100078  str     x8, [sp, #0x18]
loc_10010007c:
  10010007c  mov     x25, #0
  100100080  ldr     x8, [sp, #0x18]
  100100084  sxtw    x27, w8
loc_100100088:
  100100088  ldr     x8, [sp, #0x78]
  10010008c  ldr     x8, [x8]
  100100090  ldr     x9, [sp, #0x50]
  100100094  cmp     x8, x9
  100100098  b.eq    loc_1001000a4                            ; if (x8 == x9)
  10010009c  ldr     x0, [sp, #0x38]
  1001000a0  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self model] playList])
loc_1001000a4:
  1001000a4  ldr     x8, [sp, #0x70]
  1001000a8  ldr     x22, [x8, x25, lsl #3]
  1001000ac  mov     x0, x20
  1001000b0  ldr     x1, [sp, #0x48]
  1001000b4  mov     x2, x22
  1001000b8  bl      _objc_msgSend                            ; [self keyFromDict:x2]
  1001000bc  mov     x29, x29
  1001000c0  bl      _objc_retainAutoreleasedReturnValue
  1001000c4  mov     x28, x0
  1001000c8  mov     x0, x20
  1001000cc  mov     x1, x26
  1001000d0  bl      _objc_msgSend                            ; [self agentCache]
  1001000d4  mov     x29, x29
  1001000d8  bl      _objc_retainAutoreleasedReturnValue
  1001000dc  mov     x19, x0
  1001000e0  ldr     x1, [sp, #0x40]
  1001000e4  mov     x2, x28
  1001000e8  bl      _objc_msgSend                            ; [[self agentCache] objectForKey:[self keyFromDict:x2]]
  1001000ec  mov     x29, x29
  1001000f0  bl      _objc_retainAutoreleasedReturnValue
  1001000f4  mov     x23, x0
  1001000f8  mov     x0, x19
  1001000fc  bl      _objc_release
  100100100  cbnz    x23, loc_100100154                       ; if ([[self agentCache] objectForKey:[self keyFromDict:x2]] != 0)
  100100104  adrp    x8, #0x10041e000
  100100108  ldr     x0, [x8, #0x4c0]                         ; class S3DSound
  10010010c  ldr     x1, [sp, #0x28]
  100100110  mov     x2, x22
  100100114  bl      _objc_msgSend                            ; [S3DSound agentWithDictionary:x2]
  100100118  mov     x29, x29
  10010011c  bl      _objc_retainAutoreleasedReturnValue
  100100120  mov     x23, x0
  100100124  mov     x0, x20
  100100128  mov     x1, x26
  10010012c  bl      _objc_msgSend                            ; [self agentCache]
  100100130  mov     x29, x29
  100100134  bl      _objc_retainAutoreleasedReturnValue
  100100138  mov     x19, x0
  10010013c  ldr     x1, [sp, #0x20]
  100100140  mov     x2, x23
  100100144  mov     x3, x28
  100100148  bl      _objc_msgSend                            ; [[self agentCache] setObject:[S3DSound agentWithDictionary:x2] forKey:[self keyFromDict:x2]]
  10010014c  mov     x0, x19
  100100150  bl      _objc_release
loc_100100154:
  100100154  mov     x0, x20
  100100158  mov     x1, x21
  10010015c  bl      _objc_msgSend                            ; [self range]
  100100160  add     x8, x27, x25
  100100164  add     x22, x8, #1
  100100168  cmp     x22, x0
  10010016c  b.hs    loc_100100184                            ; if (((x27 + x25) + 1) >=u x0)
  100100170  mov     x0, x23
  100100174  bl      _objc_release
  100100178  mov     x0, x28
  10010017c  bl      _objc_release
  100100180  b       loc_1001001dc
loc_100100184:
  100100184  mov     x0, x20
  100100188  mov     x1, x21
  10010018c  bl      _objc_msgSend                            ; [self range]
  100100190  mov     x19, x0
  100100194  mov     x0, x20
  100100198  mov     x1, x21
  10010019c  bl      _objc_msgSend                            ; [self range]
  1001001a0  add     x8, x1, x19
  1001001a4  cmp     x22, x8
  1001001a8  b.hs    loc_100100218                            ; if (((x27 + x25) + 1) >=u (x1 + x19))
  1001001ac  strb    wzr, [sp, #0x67]
  1001001b0  ldr     x0, [sp, #0x30]
  1001001b4  ldr     x8, [x0, #0x10]                          ; x8 = arg1[+0x10]
  1001001b8  add     x2, sp, #0x67
  1001001bc  mov     x1, x23
  1001001c0  blr     x8                                       ; call arg1[+0x10]
  1001001c4  ldrb    w19, [sp, #0x67]
  1001001c8  mov     x0, x23
  1001001cc  bl      _objc_release
  1001001d0  mov     x0, x28
  1001001d4  bl      _objc_release
  1001001d8  cbnz    w19, loc_100100228                       ; if (0 != 0)
loc_1001001dc:
  1001001dc  add     x25, x25, #1
  1001001e0  cmp     x25, x24
  1001001e4  b.lo    loc_100100088                            ; if ((x25 + 1) <u [[[self model] playList] countByEnumeratingWithState:&sp[0x68] objects:&sp[0xa8] count:16])
  1001001e8  add     x2, sp, #0x68
  1001001ec  add     x3, sp, #0xa8
  1001001f0  mov     w4, #0x10
  1001001f4  ldr     x0, [sp, #0x38]
  1001001f8  ldr     x1, [sp, #0x10]
  1001001fc  bl      _objc_msgSend                            ; [[[self model] playList] countByEnumeratingWithState:&sp[0x68] objects:&sp[0xa8] count:16]
  100100200  mov     x24, x0
  100100204  ldr     x8, [sp, #0x18]
  100100208  add     x8, x25, w8, sxtw
  10010020c  str     x8, [sp, #0x18]
  100100210  cbnz    x24, loc_10010007c                       ; if ([[[self model] playList] countByEnumeratingWithState:&sp[0x68] objects:&sp[0xa8] count:16] != 0)
  100100214  b       loc_100100228
loc_100100218:
  100100218  mov     x0, x23
  10010021c  bl      _objc_release
  100100220  mov     x0, x28
  100100224  bl      _objc_release
loc_100100228:
  100100228  ldr     x0, [sp, #0x38]
  10010022c  bl      _objc_release
  100100230  ldr     x0, [sp, #0x30]
  100100234  bl      _objc_release
  100100238  add     x8, sp, #0x58
  10010023c  ldr     x8, [x8]
  100100240  adrp    x9, #0x1003b0000
  100100244  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100100248  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10010024c  sub     x8, x9, x8
  100100250  cbnz    x8, loc_100100274                        ; if ((___stack_chk_guard[+0x0] - x8) != 0)
  100100254  sub     sp, x29, #0x50
  100100258  ldp     x29, x30, [sp, #0x50]
  10010025c  ldp     x20, x19, [sp, #0x40]
  100100260  ldp     x22, x21, [sp, #0x30]
  100100264  ldp     x24, x23, [sp, #0x20]
  100100268  ldp     x26, x25, [sp, #0x10]
  10010026c  ldp     x28, x27, [sp], #0x60
  100100270  ret
loc_100100274:
  100100274  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100100278  mov     x20, x0
loc_10010027c:
  10010027c  mov     x0, x23
  100100280  b       loc_10010029c
loc_100100284:
  100100284  mov     x20, x0
  100100288  b       loc_1001002a8
  10010028c  mov     x20, x0
  100100290  b       loc_1001002a0
  100100294  mov     x20, x0
  100100298  mov     x0, x19
loc_10010029c:
  10010029c  bl      _objc_release
loc_1001002a0:
  1001002a0  mov     x0, x28
  1001002a4  bl      _objc_release
loc_1001002a8:
  1001002a8  ldr     x0, [sp, #0x38]
loc_1001002ac:
  1001002ac  bl      _objc_release
loc_1001002b0:
  1001002b0  ldr     x0, [sp, #0x30]
  1001002b4  bl      _objc_release
  1001002b8  mov     x0, x20
  1001002bc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1001002c0  mov     x20, x0
  1001002c4  mov     x0, x19
  1001002c8  bl      _objc_release
  1001002cc  b       loc_10010027c
  1001002d0  mov     x20, x0
  1001002d4  b       loc_1001002b0
  1001002d8  mov     x20, x0
  1001002dc  b       loc_1001002fc
  1001002e0  b       loc_100100284
  1001002e4  b       loc_100100284
  1001002e8  mov     x20, x0
  1001002ec  b       loc_1001002fc
  1001002f0  mov     x20, x0
  1001002f4  mov     x0, x24
  1001002f8  bl      _objc_release
loc_1001002fc:
  1001002fc  mov     x0, x22
  100100300  b       loc_1001002ac

; ======================================================================
; -[S3DPlayList S3DSound:]
; address 0x100100304  size 676  kind objc
; ======================================================================
  100100304  stp     x28, x27, [sp, #-0x60]!
  100100308  stp     x26, x25, [sp, #0x10]
  10010030c  stp     x24, x23, [sp, #0x20]
  100100310  stp     x22, x21, [sp, #0x30]
  100100314  stp     x20, x19, [sp, #0x40]
  100100318  stp     x29, x30, [sp, #0x50]
  10010031c  add     x29, sp, #0x50
  100100320  sub     sp, sp, #0xf0
  100100324  mov     x20, x0
  100100328  adrp    x8, #0x1003b0000
  10010032c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100100330  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100100334  stur    x8, [x29, #-0x58]
  100100338  mov     x0, x2
  10010033c  bl      _objc_retain
  100100340  mov     x19, x0
  100100344  adrp    x8, #0x10041b000
  100100348  nop
  10010034c  ldr     x1, [x8, #0x7d8]
  100100350  adrp    x2, #0x1003b7000
  100100354  add     x2, x2, #0x260                           ; ^{-[S3DPlayList S3DSound:]_block_invoke}
  100100358  mov     x0, x20
  10010035c  bl      _objc_msgSend                            ; [self each:^{-[S3DPlayList S3DSound:]_block_invoke}]
  100100360  stp     xzr, xzr, [sp, #0x58]
  100100364  stp     xzr, xzr, [sp, #0x48]
  100100368  stp     xzr, xzr, [sp, #0x38]
  10010036c  stp     xzr, xzr, [sp, #0x28]
  100100370  adrp    x8, #0x10041b000
  100100374  nop
  100100378  ldr     x1, [x8, #0x4c0]
  10010037c  mov     x0, x20
  100100380  bl      _objc_msgSend                            ; [self agentCache]
  100100384  mov     x29, x29
  100100388  bl      _objc_retainAutoreleasedReturnValue
  10010038c  mov     x22, x0
  100100390  adrp    x8, #0x10041b000
  100100394  nop
  100100398  ldr     x1, [x8, #0x488]
  10010039c  bl      _objc_msgSend                            ; [[self agentCache] allValues]
  1001003a0  mov     x29, x29
  1001003a4  bl      _objc_retainAutoreleasedReturnValue
  1001003a8  mov     x20, x0
  1001003ac  mov     x0, x22
  1001003b0  bl      _objc_release
  1001003b4  adrp    x8, #0x100416000
  1001003b8  nop
  1001003bc  ldr     x1, [x8, #0xe00]
  1001003c0  str     x1, [sp, #0x20]
  1001003c4  add     x2, sp, #0x28
  1001003c8  add     x3, sp, #0x68
  1001003cc  mov     w4, #0x10
  1001003d0  mov     x0, x20
  1001003d4  bl      _objc_msgSend                            ; [[[self agentCache] allValues] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  1001003d8  mov     x22, x0
  1001003dc  cbz     x22, loc_100100484                       ; if ([[[self agentCache] allValues] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] == 0)
  1001003e0  ldr     x8, [sp, #0x38]
  1001003e4  ldr     x28, [x8]
  1001003e8  adrp    x8, #0x100419000
  1001003ec  nop
  1001003f0  ldr     x23, [x8, #0x3e8]
  1001003f4  adrp    x8, #0x100419000
  1001003f8  add     x8, x8, #0x4e8                           ; &@selector(compare:)
  1001003fc  ldr     x24, [x8]
loc_100100400:
  100100400  mov     x21, #0
loc_100100404:
  100100404  ldr     x8, [sp, #0x38]
  100100408  ldr     x8, [x8]
  10010040c  cmp     x8, x28
  100100410  b.eq    loc_10010041c                            ; if (x8 == x28)
  100100414  mov     x0, x20
  100100418  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self agentCache] allValues])
loc_10010041c:
  10010041c  ldr     x8, [sp, #0x30]
  100100420  ldr     x25, [x8, x21, lsl #3]
  100100424  mov     x0, x25
  100100428  mov     x1, x23
  10010042c  bl      _objc_msgSend                            ; [x0 key]
  100100430  mov     x29, x29
  100100434  bl      _objc_retainAutoreleasedReturnValue
  100100438  mov     x26, x0
  10010043c  mov     x1, x24
  100100440  mov     x2, x19
  100100444  bl      _objc_msgSend                            ; [[x0 key] compare:arg1]
  100100448  mov     x27, x0
  10010044c  mov     x0, x26
  100100450  bl      _objc_release
  100100454  cbz     x27, loc_1001004fc                       ; if ([[x0 key] compare:arg1] == 0)
  100100458  add     x21, x21, #1
  10010045c  cmp     x21, x22
  100100460  b.lo    loc_100100404                            ; if ((x21 + 1) <u [[[self agentCache] allValues] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16])
  100100464  add     x2, sp, #0x28
  100100468  add     x3, sp, #0x68
  10010046c  mov     w4, #0x10
  100100470  mov     x0, x20
  100100474  ldr     x1, [sp, #0x20]
  100100478  bl      _objc_msgSend                            ; [[[self agentCache] allValues] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  10010047c  mov     x22, x0
  100100480  cbnz    x22, loc_100100400                       ; if ([[[self agentCache] allValues] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] != 0)
loc_100100484:
  100100484  mov     x0, x20
  100100488  bl      _objc_release
  10010048c  adrp    x8, #0x10041d000
  100100490  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100100494  adrp    x8, #0x100417000
  100100498  nop
  10010049c  ldr     x1, [x8, #0x4f0]
  1001004a0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1001004a4  adrp    x22, #0x1003b0000
  1001004a8  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1001004ac  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1001004b0  mov     x29, x29
  1001004b4  bl      _objc_retainAutoreleasedReturnValue
  1001004b8  mov     x20, x0
  1001004bc  adrp    x8, #0x10041b000
  1001004c0  nop
  1001004c4  ldr     x1, [x8, #0x800]
  1001004c8  mov     w8, #0x2c5
  1001004cc  adrp    x9, #0x10038a000
  1001004d0  add     x9, x9, #0xe1e                           ; "/Users/antoinepastor/Documents/Dev_iPhone/Papa Sangre/s3dapi/source/S3D/S3DPlayList.mm"
  1001004d4  stp     x9, x8, [sp, #8]
  1001004d8  str     x19, [sp]
  1001004dc  adrp    x3, #0x1003c3000
  1001004e0  add     x3, x3, #0x150                           ; @"*** [S3DPlayList S3DSound:\"%@\"] sound not found! at %s:%d"
  1001004e4  mov     w2, #0
  1001004e8  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:0 format:@"*** [S3DPlayList S3DSound:\"%@\"] sound not found! at %s:%d"]
  1001004ec  mov     x0, x20
  1001004f0  bl      _objc_release
  1001004f4  mov     x21, #0
  1001004f8  b       loc_10010051c
loc_1001004fc:
  1001004fc  mov     x0, x25
  100100500  bl      _objc_retain
  100100504  mov     x21, x0
  100100508  mov     x0, x20
  10010050c  bl      _objc_release
  100100510  adrp    x22, #0x1003b0000
  100100514  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  100100518  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
loc_10010051c:
  10010051c  mov     x0, x19
  100100520  bl      _objc_release
  100100524  ldur    x8, [x29, #-0x58]
  100100528  sub     x8, x22, x8
  10010052c  cbnz    x8, loc_100100554                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100100530  mov     x0, x21
  100100534  sub     sp, x29, #0x50
  100100538  ldp     x29, x30, [sp, #0x50]
  10010053c  ldp     x20, x19, [sp, #0x40]
  100100540  ldp     x22, x21, [sp, #0x30]
  100100544  ldp     x24, x23, [sp, #0x20]
  100100548  ldp     x26, x25, [sp, #0x10]
  10010054c  ldp     x28, x27, [sp], #0x60
  100100550  b       _objc_autoreleaseReturnValue
loc_100100554:
  100100554  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100100558:
  100100558  mov     x21, x0
  10010055c  b       loc_10010056c
  100100560  mov     x21, x0
  100100564  mov     x0, x26
  100100568  bl      _objc_release
loc_10010056c:
  10010056c  mov     x0, x20
  100100570  bl      _objc_release
loc_100100574:
  100100574  mov     x0, x19
  100100578  bl      _objc_release
  10010057c  mov     x0, x21
  100100580  bl      __Unwind_Resume                          ; Unwind_Resume()
  100100584  mov     x21, x0
  100100588  b       loc_100100574
  10010058c  mov     x21, x0
  100100590  mov     x0, x22
  100100594  bl      _objc_release
  100100598  b       loc_100100574
  10010059c  b       loc_100100558
  1001005a0  b       loc_100100558
  1001005a4  b       loc_100100558

; ======================================================================
; -[S3DPlayList S3DSound:]_block_invoke
; address 0x1001005a8  size 4  kind block
; ======================================================================
  1001005a8  ret

; ======================================================================
; -[S3DPlayList prime:]
; address 0x1001005ac  size 32  kind objc
; ======================================================================
  1001005ac  stp     x29, x30, [sp, #-0x10]!
  1001005b0  mov     x29, sp
  1001005b4  adrp    x8, #0x10041b000
  1001005b8  nop
  1001005bc  ldr     x1, [x8, #0x4d8]
  1001005c0  bl      _objc_msgSend                            ; [self setPrimed:arg1]
  1001005c4  ldp     x29, x30, [sp], #0x10
  1001005c8  ret

; ======================================================================
; -[S3DPlayList stopAll]
; address 0x1001005cc  size 24  kind objc
; ======================================================================
  1001005cc  adrp    x8, #0x10041b000
  1001005d0  nop
  1001005d4  ldr     x1, [x8, #0x7d8]
  1001005d8  adrp    x2, #0x1003b7000
  1001005dc  add     x2, x2, #0x2a0                           ; ^{-[S3DPlayList stopAll]_block_invoke}
  1001005e0  b       _objc_msgSend                            ; [self each:^{-[S3DPlayList stopAll]_block_invoke}]

; ======================================================================
; -[S3DPlayList stopAll]_block_invoke
; address 0x1001005e4  size 108  kind block
; ======================================================================
  1001005e4  stp     x20, x19, [sp, #-0x20]!
  1001005e8  stp     x29, x30, [sp, #0x10]
  1001005ec  add     x29, sp, #0x10
  1001005f0  mov     x0, x1
  1001005f4  bl      _objc_retain
  1001005f8  mov     x19, x0
  1001005fc  cbz     x19, loc_10010062c                       ; if (blockarg1 == 0)
  100100600  adrp    x8, #0x100417000
  100100604  nop
  100100608  ldr     x1, [x8, #0x598]
  10010060c  mov     x0, x19
  100100610  bl      _objc_msgSend                            ; [blockarg1 playing]
  100100614  cbz     w0, loc_10010062c                        ; if ([blockarg1 playing] == 0)
  100100618  adrp    x8, #0x100417000
  10010061c  nop
  100100620  ldr     x1, [x8, #0x568]
  100100624  mov     x0, x19
  100100628  bl      _objc_msgSend                            ; [blockarg1 stop]
loc_10010062c:
  10010062c  mov     x0, x19
  100100630  ldp     x29, x30, [sp, #0x10]
  100100634  ldp     x20, x19, [sp], #0x20
  100100638  b       _objc_release
  10010063c  mov     x20, x0
  100100640  mov     x0, x19
  100100644  bl      _objc_release
  100100648  mov     x0, x20
  10010064c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DPlayList description]
; address 0x100100650  size 28  kind objc
; ======================================================================
  100100650  adrp    x8, #0x100420000
  100100654  ldrsw   x8, [x8, #0x620]                         ; ivar offset S3DPlayList.model (+0x18)
  100100658  ldr     x0, [x0, x8]                             ; x0 = self->model
  10010065c  adrp    x8, #0x100417000
  100100660  nop
  100100664  ldr     x1, [x8, #0x450]
  100100668  b       _objc_msgSend                            ; [self->model name]

; ======================================================================
; -[S3DPlayList model]
; address 0x10010066c  size 16  kind objc
; ======================================================================
  10010066c  adrp    x8, #0x100420000
  100100670  ldrsw   x8, [x8, #0x620]                         ; ivar offset S3DPlayList.model (+0x18)
  100100674  ldr     x0, [x0, x8]                             ; x0 = self->model
  100100678  ret

; ======================================================================
; -[S3DPlayList setModel:]
; address 0x10010067c  size 56  kind objc
; ======================================================================
  10010067c  stp     x20, x19, [sp, #-0x20]!
  100100680  stp     x29, x30, [sp, #0x10]
  100100684  add     x29, sp, #0x10
  100100688  mov     x19, x0
  10010068c  adrp    x8, #0x100420000
  100100690  ldrsw   x20, [x8, #0x620]                        ; ivar offset S3DPlayList.model (+0x18)
  100100694  mov     x0, x2
  100100698  bl      _objc_retain
  10010069c  ldr     x8, [x19, x20]                           ; x8 = self->model
  1001006a0  str     x0, [x19, x20]                           ; self->model = arg1
  1001006a4  mov     x0, x8
  1001006a8  ldp     x29, x30, [sp, #0x10]
  1001006ac  ldp     x20, x19, [sp], #0x20
  1001006b0  b       _objc_release

; ======================================================================
; -[S3DPlayList setName:]
; address 0x1001006b4  size 56  kind objc
; ======================================================================
  1001006b4  stp     x20, x19, [sp, #-0x20]!
  1001006b8  stp     x29, x30, [sp, #0x10]
  1001006bc  add     x29, sp, #0x10
  1001006c0  mov     x19, x0
  1001006c4  adrp    x8, #0x100420000
  1001006c8  ldrsw   x20, [x8, #0x634]                        ; ivar offset S3DPlayList.name (+0x20)
  1001006cc  mov     x0, x2
  1001006d0  bl      _objc_retain
  1001006d4  ldr     x8, [x19, x20]                           ; x8 = self->name
  1001006d8  str     x0, [x19, x20]                           ; self->name = arg1
  1001006dc  mov     x0, x8
  1001006e0  ldp     x29, x30, [sp, #0x10]
  1001006e4  ldp     x20, x19, [sp], #0x20
  1001006e8  b       _objc_release

; ======================================================================
; -[S3DPlayList active]
; address 0x1001006ec  size 16  kind objc
; ======================================================================
  1001006ec  adrp    x8, #0x100420000
  1001006f0  ldrsw   x8, [x8, #0x61c]                         ; ivar offset S3DPlayList.active (+0x8)
  1001006f4  ldrb    w0, [x0, x8]                             ; w0 = self->active
  1001006f8  ret

; ======================================================================
; -[S3DPlayList setActive:]
; address 0x1001006fc  size 16  kind objc
; ======================================================================
  1001006fc  adrp    x8, #0x100420000
  100100700  ldrsw   x8, [x8, #0x61c]                         ; ivar offset S3DPlayList.active (+0x8)
  100100704  strb    w2, [x0, x8]                             ; self->active = arg1
  100100708  ret

; ======================================================================
; -[S3DPlayList agentCache]
; address 0x10010070c  size 16  kind objc
; ======================================================================
  10010070c  adrp    x8, #0x100420000
  100100710  ldrsw   x8, [x8, #0x638]                         ; ivar offset S3DPlayList.agentCache (+0x28)
  100100714  ldr     x0, [x0, x8]                             ; x0 = self->agentCache
  100100718  ret

; ======================================================================
; -[S3DPlayList setAgentCache:]
; address 0x10010071c  size 56  kind objc
; ======================================================================
  10010071c  stp     x20, x19, [sp, #-0x20]!
  100100720  stp     x29, x30, [sp, #0x10]
  100100724  add     x29, sp, #0x10
  100100728  mov     x19, x0
  10010072c  adrp    x8, #0x100420000
  100100730  ldrsw   x20, [x8, #0x638]                        ; ivar offset S3DPlayList.agentCache (+0x28)
  100100734  mov     x0, x2
  100100738  bl      _objc_retain
  10010073c  ldr     x8, [x19, x20]                           ; x8 = self->agentCache
  100100740  str     x0, [x19, x20]                           ; self->agentCache = arg1
  100100744  mov     x0, x8
  100100748  ldp     x29, x30, [sp, #0x10]
  10010074c  ldp     x20, x19, [sp], #0x20
  100100750  b       _objc_release

; ======================================================================
; -[S3DPlayList firstHasPlayed]
; address 0x100100754  size 16  kind objc
; ======================================================================
  100100754  adrp    x8, #0x100420000
  100100758  ldrsw   x8, [x8, #0x63c]                         ; ivar offset S3DPlayList.firstHasPlayed (+0x9)
  10010075c  ldrb    w0, [x0, x8]                             ; w0 = self->firstHasPlayed
  100100760  ret

; ======================================================================
; -[S3DPlayList setFirstHasPlayed:]
; address 0x100100764  size 16  kind objc
; ======================================================================
  100100764  adrp    x8, #0x100420000
  100100768  ldrsw   x8, [x8, #0x63c]                         ; ivar offset S3DPlayList.firstHasPlayed (+0x9)
  10010076c  strb    w2, [x0, x8]                             ; self->firstHasPlayed = arg1
  100100770  ret

; ======================================================================
; -[S3DPlayList primed]
; address 0x100100774  size 16  kind objc
; ======================================================================
  100100774  adrp    x8, #0x100420000
  100100778  ldrsw   x8, [x8, #0x640]                         ; ivar offset S3DPlayList.primed (+0x30)
  10010077c  ldr     x0, [x0, x8]                             ; x0 = self->primed
  100100780  ret

; ======================================================================
; -[S3DPlayList setPrimed:]
; address 0x100100784  size 56  kind objc
; ======================================================================
  100100784  stp     x20, x19, [sp, #-0x20]!
  100100788  stp     x29, x30, [sp, #0x10]
  10010078c  add     x29, sp, #0x10
  100100790  mov     x19, x0
  100100794  adrp    x8, #0x100420000
  100100798  ldrsw   x20, [x8, #0x640]                        ; ivar offset S3DPlayList.primed (+0x30)
  10010079c  mov     x0, x2
  1001007a0  bl      _objc_retain
  1001007a4  ldr     x8, [x19, x20]                           ; x8 = self->primed
  1001007a8  str     x0, [x19, x20]                           ; self->primed = arg1
  1001007ac  mov     x0, x8
  1001007b0  ldp     x29, x30, [sp, #0x10]
  1001007b4  ldp     x20, x19, [sp], #0x20
  1001007b8  b       _objc_release

; ======================================================================
; -[S3DPlayList cycleIndex]
; address 0x1001007bc  size 16  kind objc
; ======================================================================
  1001007bc  adrp    x8, #0x100420000
  1001007c0  ldrsw   x8, [x8, #0x628]                         ; ivar offset S3DPlayList.cycleIndex (+0x10)
  1001007c4  ldr     w0, [x0, x8]                             ; w0 = self->cycleIndex
  1001007c8  ret

; ======================================================================
; -[S3DPlayList setCycleIndex:]
; address 0x1001007cc  size 16  kind objc
; ======================================================================
  1001007cc  adrp    x8, #0x100420000
  1001007d0  ldrsw   x8, [x8, #0x628]                         ; ivar offset S3DPlayList.cycleIndex (+0x10)
  1001007d4  str     w2, [x0, x8]                             ; self->cycleIndex = arg1
  1001007d8  ret

; ======================================================================
; -[S3DPlayList activating]
; address 0x1001007dc  size 16  kind objc
; ======================================================================
  1001007dc  adrp    x8, #0x100420000
  1001007e0  ldrsw   x8, [x8, #0x630]                         ; ivar offset S3DPlayList.activating (+0xa)
  1001007e4  ldrb    w0, [x0, x8]                             ; w0 = self->activating
  1001007e8  ret

; ======================================================================
; -[S3DPlayList setActivating:]
; address 0x1001007ec  size 16  kind objc
; ======================================================================
  1001007ec  adrp    x8, #0x100420000
  1001007f0  ldrsw   x8, [x8, #0x630]                         ; ivar offset S3DPlayList.activating (+0xa)
  1001007f4  strb    w2, [x0, x8]                             ; self->activating = arg1
  1001007f8  ret

; ======================================================================
; -[S3DPlayList deactivating]
; address 0x1001007fc  size 16  kind objc
; ======================================================================
  1001007fc  adrp    x8, #0x100420000
  100100800  ldrsw   x8, [x8, #0x644]                         ; ivar offset S3DPlayList.deactivating (+0xb)
  100100804  ldrb    w0, [x0, x8]                             ; w0 = self->deactivating
  100100808  ret

; ======================================================================
; -[S3DPlayList setDeactivating:]
; address 0x10010080c  size 16  kind objc
; ======================================================================
  10010080c  adrp    x8, #0x100420000
  100100810  ldrsw   x8, [x8, #0x644]                         ; ivar offset S3DPlayList.deactivating (+0xb)
  100100814  strb    w2, [x0, x8]                             ; self->deactivating = arg1
  100100818  ret

; ======================================================================
; -[S3DPlayList .cxx_destruct]
; address 0x10010081c  size 104  kind objc
; ======================================================================
  10010081c  stp     x20, x19, [sp, #-0x20]!
  100100820  stp     x29, x30, [sp, #0x10]
  100100824  add     x29, sp, #0x10
  100100828  mov     x19, x0
  10010082c  adrp    x8, #0x100420000
  100100830  ldrsw   x8, [x8, #0x640]                         ; ivar offset S3DPlayList.primed (+0x30)
  100100834  add     x0, x19, x8
  100100838  mov     x1, #0
  10010083c  bl      _objc_storeStrong
  100100840  adrp    x8, #0x100420000
  100100844  ldrsw   x8, [x8, #0x638]                         ; ivar offset S3DPlayList.agentCache (+0x28)
  100100848  add     x0, x19, x8
  10010084c  mov     x1, #0
  100100850  bl      _objc_storeStrong
  100100854  adrp    x8, #0x100420000
  100100858  ldrsw   x8, [x8, #0x634]                         ; ivar offset S3DPlayList.name (+0x20)
  10010085c  add     x0, x19, x8
  100100860  mov     x1, #0
  100100864  bl      _objc_storeStrong
  100100868  mov     x1, #0
  10010086c  adrp    x8, #0x100420000
  100100870  ldrsw   x8, [x8, #0x620]                         ; ivar offset S3DPlayList.model (+0x18)
  100100874  add     x0, x19, x8
  100100878  ldp     x29, x30, [sp, #0x10]
  10010087c  ldp     x20, x19, [sp], #0x20
  100100880  b       _objc_storeStrong

; ======================================================================
; -[S3DPlayList .cxx_construct]
; address 0x100100884  size 4  kind objc
; ======================================================================
  100100884  ret
