// unit ADMissionForTopbarViewController — 47 functions
//   0x10003bf9c     196  -[ADMissionForTopbarViewController initWithMission:skippable:]
//   0x10003c060      92  -[ADMissionForTopbarViewController viewDidLoad]
//   0x10003c0bc     232  -[ADMissionForTopbarViewController awakeFromNib]
//   0x10003c1a4    2952  -[ADMissionForTopbarViewController refreshAndLoad]
//   0x10003cd2c     552  -[ADMissionForTopbarViewController viewDidAppear:]
//   0x10003cf54     268  -[ADMissionForTopbarViewController disableSkip]
//   0x10003d060     180  -[ADMissionForTopbarViewController getTopViewController]
//   0x10003d114     748  -[ADMissionForTopbarViewController skipButtonTouched:]
//   0x10003d400    1416  -[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]
//   0x10003d988     440  -[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke
//   0x10003db40       8  sub_10003db40
//   0x10003db48       8  sub_10003db48
//   0x10003db50     336  -[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke_2
//   0x10003dca0     452  -[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke_2_block_invoke
//   0x10003de64       8  sub_10003de64
//   0x10003de6c       8  sub_10003de6c
//   0x10003de74     100  -[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke_2_block_invoke_2
//   0x10003ded8       8  sub_10003ded8
//   0x10003dee0       8  sub_10003dee0
//   0x10003dee8      40  sub_10003dee8
//   0x10003df10      40  sub_10003df10
//   0x10003df38      60  -[ADMissionForTopbarViewController didReceiveMemoryWarning]
//   0x10003df74      16  -[ADMissionForTopbarViewController description]
//   0x10003df84      56  -[ADMissionForTopbarViewController setDescription:]
//   0x10003dfbc      16  -[ADMissionForTopbarViewController rewardLabel]
//   0x10003dfcc      56  -[ADMissionForTopbarViewController setRewardLabel:]
//   0x10003e004      16  -[ADMissionForTopbarViewController completion]
//   0x10003e014      56  -[ADMissionForTopbarViewController setCompletion:]
//   0x10003e04c      16  -[ADMissionForTopbarViewController reward]
//   0x10003e05c      56  -[ADMissionForTopbarViewController setReward:]
//   0x10003e094      16  -[ADMissionForTopbarViewController skipButton]
//   0x10003e0a4      56  -[ADMissionForTopbarViewController setSkipButton:]
//   0x10003e0dc      16  -[ADMissionForTopbarViewController skipDiamondsLabel]
//   0x10003e0ec      56  -[ADMissionForTopbarViewController setSkipDiamondsLabel:]
//   0x10003e124      16  -[ADMissionForTopbarViewController mission]
//   0x10003e134      12  -[ADMissionForTopbarViewController setMission:]
//   0x10003e140      16  -[ADMissionForTopbarViewController starImage]
//   0x10003e150      56  -[ADMissionForTopbarViewController setStarImage:]
//   0x10003e188      16  -[ADMissionForTopbarViewController completionBar]
//   0x10003e198      56  -[ADMissionForTopbarViewController setCompletionBar:]
//   0x10003e1d0      16  -[ADMissionForTopbarViewController completionBarBackground]
//   0x10003e1e0      56  -[ADMissionForTopbarViewController setCompletionBarBackground:]
//   0x10003e218      16  -[ADMissionForTopbarViewController missionBarDelegate]
//   0x10003e228      12  -[ADMissionForTopbarViewController setMissionBarDelegate:]
//   0x10003e234      16  -[ADMissionForTopbarViewController placeholderTag]
//   0x10003e244      16  -[ADMissionForTopbarViewController setPlaceholderTag:]
//   0x10003e254     244  -[ADMissionForTopbarViewController .cxx_destruct]

; ======================================================================
; -[ADMissionForTopbarViewController initWithMission:skippable:]
; address 0x10003bf9c  size 196  kind objc
; ======================================================================
  10003bf9c  stp     x22, x21, [sp, #-0x30]!
  10003bfa0  stp     x20, x19, [sp, #0x10]
  10003bfa4  stp     x29, x30, [sp, #0x20]
  10003bfa8  add     x29, sp, #0x20
  10003bfac  sub     sp, sp, #0x10
  10003bfb0  mov     x20, x3
  10003bfb4  mov     x21, x0
  10003bfb8  mov     x0, x2
  10003bfbc  bl      _objc_retain
  10003bfc0  mov     x19, x0
  10003bfc4  str     x21, [sp]
  10003bfc8  adrp    x8, #0x10041e000
  10003bfcc  ldr     x8, [x8, #0xcc0]
  10003bfd0  str     x8, [sp, #8]
  10003bfd4  adrp    x8, #0x100416000
  10003bfd8  nop
  10003bfdc  ldr     x1, [x8, #0xb40]
  10003bfe0  mov     x21, #0
  10003bfe4  mov     x0, sp
  10003bfe8  mov     x2, #0
  10003bfec  mov     x3, #0
  10003bff0  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  10003bff4  mov     x22, x0
  10003bff8  cbz     x22, loc_10003c024                       ; if (self == 0)
  10003bffc  mov     x21, x22
  10003c000  adrp    x8, #0x100418000
  10003c004  nop
  10003c008  ldr     x1, [x8, #0x630]
  10003c00c  mov     x0, x22
  10003c010  mov     x2, x19
  10003c014  bl      _objc_msgSend                            ; [self setMission:arg1]
  10003c018  adrp    x8, #0x10041f000
  10003c01c  ldrsw   x8, [x8, #0x8ac]                         ; ivar offset ADMissionForTopbarViewController.canSkip (+0x140)
  10003c020  strb    w20, [x22, x8]                           ; self->canSkip = arg2
loc_10003c024:
  10003c024  mov     x0, x19
  10003c028  bl      _objc_release
  10003c02c  mov     x0, x22
  10003c030  sub     sp, x29, #0x20
  10003c034  ldp     x29, x30, [sp, #0x20]
  10003c038  ldp     x20, x19, [sp, #0x10]
  10003c03c  ldp     x22, x21, [sp], #0x30
  10003c040  ret
  10003c044  mov     x20, x0
  10003c048  mov     x0, x19
  10003c04c  bl      _objc_release
  10003c050  mov     x0, x21
  10003c054  bl      _objc_release
  10003c058  mov     x0, x20
  10003c05c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionForTopbarViewController viewDidLoad]
; address 0x10003c060  size 92  kind objc
; ======================================================================
  10003c060  stp     x20, x19, [sp, #-0x20]!
  10003c064  stp     x29, x30, [sp, #0x10]
  10003c068  add     x29, sp, #0x10
  10003c06c  sub     sp, sp, #0x10
  10003c070  mov     x19, x0
  10003c074  str     x19, [sp]
  10003c078  adrp    x8, #0x10041e000
  10003c07c  ldr     x8, [x8, #0xcc0]
  10003c080  str     x8, [sp, #8]
  10003c084  adrp    x8, #0x100416000
  10003c088  nop
  10003c08c  ldr     x1, [x8, #0xb48]
  10003c090  mov     x0, sp
  10003c094  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10003c098  adrp    x8, #0x100418000
  10003c09c  nop
  10003c0a0  ldr     x1, [x8, #0x638]
  10003c0a4  mov     x0, x19
  10003c0a8  bl      _objc_msgSend                            ; [self refreshAndLoad]
  10003c0ac  sub     sp, x29, #0x10
  10003c0b0  ldp     x29, x30, [sp, #0x10]
  10003c0b4  ldp     x20, x19, [sp], #0x20
  10003c0b8  ret

; ======================================================================
; -[ADMissionForTopbarViewController awakeFromNib]
; address 0x10003c0bc  size 232  kind objc
; ======================================================================
  10003c0bc  stp     x22, x21, [sp, #-0x30]!
  10003c0c0  stp     x20, x19, [sp, #0x10]
  10003c0c4  stp     x29, x30, [sp, #0x20]
  10003c0c8  add     x29, sp, #0x20
  10003c0cc  sub     sp, sp, #0x10
  10003c0d0  mov     x19, x0
  10003c0d4  adrp    x8, #0x100416000
  10003c0d8  nop
  10003c0dc  ldr     x20, [x8, #0xf18]
  10003c0e0  mov     x1, x20
  10003c0e4  bl      _objc_msgSend                            ; [self view]
  10003c0e8  mov     x29, x29
  10003c0ec  bl      _objc_retainAutoreleasedReturnValue
  10003c0f0  mov     x21, x0
  10003c0f4  adrp    x8, #0x100418000
  10003c0f8  nop
  10003c0fc  ldr     x1, [x8, #0x640]
  10003c100  bl      _objc_msgSend                            ; [[self view] layoutIfNeeded]
  10003c104  mov     x0, x21
  10003c108  bl      _objc_release
  10003c10c  mov     x0, x19
  10003c110  mov     x1, x20
  10003c114  bl      _objc_msgSend                            ; [self view]
  10003c118  mov     x29, x29
  10003c11c  bl      _objc_retainAutoreleasedReturnValue
  10003c120  mov     x19, x0
  10003c124  adrp    x8, #0x100416000
  10003c128  nop
  10003c12c  ldr     x1, [x8, #0xf38]
  10003c130  bl      _objc_msgSend                            ; [[self view] frame]
  10003c134  bl      _NSStringFromCGRect                      ; NSStringFromCGRect()
  10003c138  mov     x29, x29
  10003c13c  bl      _objc_retainAutoreleasedReturnValue
  10003c140  mov     x21, x0
  10003c144  str     x21, [sp]
  10003c148  adrp    x0, #0x1003bc000
  10003c14c  add     x0, x0, #0x810                           ; @"The mission bar frame is : %@"
  10003c150  bl      _NSLog                                   ; NSLog(@"The mission bar frame is : %@", NSStringFromCGRect())
  10003c154  mov     x0, x21
  10003c158  bl      _objc_release
  10003c15c  mov     x0, x19
  10003c160  sub     sp, x29, #0x20
  10003c164  ldp     x29, x30, [sp, #0x20]
  10003c168  ldp     x20, x19, [sp, #0x10]
  10003c16c  ldp     x22, x21, [sp], #0x30
  10003c170  b       _objc_release
  10003c174  mov     x20, x0
  10003c178  b       loc_10003c194
  10003c17c  mov     x20, x0
  10003c180  mov     x0, x21
  10003c184  b       loc_10003c198
  10003c188  mov     x20, x0
  10003c18c  mov     x0, x21
  10003c190  bl      _objc_release
loc_10003c194:
  10003c194  mov     x0, x19
loc_10003c198:
  10003c198  bl      _objc_release
  10003c19c  mov     x0, x20
  10003c1a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionForTopbarViewController refreshAndLoad]
; address 0x10003c1a4  size 2952  kind objc
; ======================================================================
  10003c1a4  stp     d9, d8, [sp, #-0x70]!
  10003c1a8  stp     x28, x27, [sp, #0x10]
  10003c1ac  stp     x26, x25, [sp, #0x20]
  10003c1b0  stp     x24, x23, [sp, #0x30]
  10003c1b4  stp     x22, x21, [sp, #0x40]
  10003c1b8  stp     x20, x19, [sp, #0x50]
  10003c1bc  stp     x29, x30, [sp, #0x60]
  10003c1c0  add     x29, sp, #0x60
  10003c1c4  sub     sp, sp, #0x40
  10003c1c8  mov     x20, x0
  10003c1cc  adrp    x8, #0x100418000
  10003c1d0  nop
  10003c1d4  ldr     x25, [x8, #0x648]
  10003c1d8  mov     x1, x25
  10003c1dc  bl      _objc_msgSend                            ; [self description]
  10003c1e0  mov     x29, x29
  10003c1e4  bl      _objc_retainAutoreleasedReturnValue
  10003c1e8  mov     x21, x0
  10003c1ec  adrp    x8, #0x100417000
  10003c1f0  nop
  10003c1f4  ldr     x27, [x8, #0x860]
  10003c1f8  mov     x0, x20
  10003c1fc  mov     x1, x27
  10003c200  bl      _objc_msgSend                            ; [self mission]
  10003c204  mov     x29, x29
  10003c208  bl      _objc_retainAutoreleasedReturnValue
  10003c20c  mov     x22, x0
  10003c210  mov     x1, x25
  10003c214  bl      _objc_msgSend                            ; [[self mission] description]
  10003c218  mov     x29, x29
  10003c21c  bl      _objc_retainAutoreleasedReturnValue
  10003c220  mov     x24, x0
  10003c224  adrp    x8, #0x100416000
  10003c228  nop
  10003c22c  ldr     x23, [x8, #0xb68]
  10003c230  mov     x0, x21
  10003c234  mov     x1, x23
  10003c238  mov     x2, x24
  10003c23c  bl      _objc_msgSend                            ; [[self description] setText:[[self mission] description]]
  10003c240  mov     x0, x24
  10003c244  bl      _objc_release
  10003c248  mov     x0, x22
  10003c24c  bl      _objc_release
  10003c250  mov     x0, x21
  10003c254  bl      _objc_release
  10003c258  adrp    x8, #0x100418000
  10003c25c  nop
  10003c260  ldr     x28, [x8, #0x650]
  10003c264  mov     x0, x20
  10003c268  mov     x1, x28
  10003c26c  bl      _objc_msgSend                            ; [self reward]
  10003c270  mov     x29, x29
  10003c274  bl      _objc_retainAutoreleasedReturnValue
  10003c278  mov     x24, x0
  10003c27c  adrp    x26, #0x10041d000
  10003c280  ldr     x22, [x26, #0xf78]                       ; class NSString
  10003c284  mov     x0, x20
  10003c288  mov     x1, x27
  10003c28c  bl      _objc_msgSend                            ; [self mission]
  10003c290  mov     x29, x29
  10003c294  bl      _objc_retainAutoreleasedReturnValue
  10003c298  mov     x21, x0
  10003c29c  mov     x1, x28
  10003c2a0  bl      _objc_msgSend                            ; [[self mission] reward]
  10003c2a4  adrp    x8, #0x100416000
  10003c2a8  nop
  10003c2ac  ldr     x19, [x8, #0xee8]
  10003c2b0  str     x0, [sp]
  10003c2b4  adrp    x2, #0x1003ba000
  10003c2b8  add     x2, x2, #0xc50                           ; @"%i"
  10003c2bc  mov     x0, x22
  10003c2c0  mov     x1, x19
  10003c2c4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[self mission] reward]]
  10003c2c8  mov     x29, x29
  10003c2cc  bl      _objc_retainAutoreleasedReturnValue
  10003c2d0  mov     x22, x0
  10003c2d4  mov     x0, x24
  10003c2d8  mov     x1, x23
  10003c2dc  mov     x2, x22
  10003c2e0  bl      _objc_msgSend                            ; [[self reward] setText:[NSString stringWithFormat:@"%i", [[self mission] reward]]]
  10003c2e4  mov     x0, x22
  10003c2e8  bl      _objc_release
  10003c2ec  mov     x0, x21
  10003c2f0  bl      _objc_release
  10003c2f4  mov     x0, x24
  10003c2f8  bl      _objc_release
  10003c2fc  mov     x0, x20
  10003c300  mov     x1, x28
  10003c304  bl      _objc_msgSend                            ; [self reward]
  10003c308  mov     x29, x29
  10003c30c  bl      _objc_retainAutoreleasedReturnValue
  10003c310  mov     x21, x0
  10003c314  mov     x0, x20
  10003c318  mov     x1, x27
  10003c31c  bl      _objc_msgSend                            ; [self mission]
  10003c320  mov     x29, x29
  10003c324  bl      _objc_retainAutoreleasedReturnValue
  10003c328  mov     x22, x0
  10003c32c  mov     x1, x28
  10003c330  bl      _objc_msgSend                            ; [[self mission] reward]
  10003c334  mov     x2, x0
  10003c338  adrp    x8, #0x100418000
  10003c33c  nop
  10003c340  ldr     x1, [x8, #0x658]
  10003c344  mov     x0, x21
  10003c348  bl      _objc_msgSend                            ; [[self reward] setValue:[[self mission] reward]]
  10003c34c  str     x28, [sp, #0x10]
  10003c350  mov     x0, x22
  10003c354  bl      _objc_release
  10003c358  mov     x0, x21
  10003c35c  bl      _objc_release
  10003c360  mov     x0, x20
  10003c364  mov     x1, x27
  10003c368  bl      _objc_msgSend                            ; [self mission]
  10003c36c  mov     x29, x29
  10003c370  bl      _objc_retainAutoreleasedReturnValue
  10003c374  mov     x21, x0
  10003c378  adrp    x8, #0x100418000
  10003c37c  nop
  10003c380  ldr     x1, [x8, #0x660]
  10003c384  bl      _objc_msgSend                            ; [[self mission] completionToString]
  10003c388  mov     x29, x29
  10003c38c  bl      _objc_retainAutoreleasedReturnValue
  10003c390  mov     x22, x0
  10003c394  str     x22, [sp, #0x28]
  10003c398  mov     x0, x21
  10003c39c  bl      _objc_release
  10003c3a0  adrp    x8, #0x100416000
  10003c3a4  nop
  10003c3a8  ldr     x1, [x8, #0xf58]
  10003c3ac  adrp    x2, #0x1003b9000
  10003c3b0  add     x2, x2, #0x870                           ; @""
  10003c3b4  mov     x0, x22
  10003c3b8  bl      _objc_msgSend                            ; [[[self mission] completionToString] isEqualToString:@""]
  10003c3bc  ldr     x8, [sp, #0x28]
  10003c3c0  cmp     x8, #0
  10003c3c4  cset    w8, eq
  10003c3c8  orr     w8, w0, w8                               ; t1 = ([[[self mission] completionToString] isEqualToString:@""] | ([[self mission] completionToString] == 0))
  10003c3cc  adrp    x9, #0x100418000
  10003c3d0  add     x9, x9, #0x668                           ; &@selector(completion)
  10003c3d4  ldr     x1, [x9]
  10003c3d8  cmp     w8, #1
  10003c3dc  b.ne    loc_10003c444                            ; if (t1 != 1)
  10003c3e0  mov     x0, x20
  10003c3e4  str     x1, [sp, #0x18]
  10003c3e8  bl      _objc_msgSend                            ; [self completion]
  10003c3ec  mov     x29, x29
  10003c3f0  bl      _objc_retainAutoreleasedReturnValue
  10003c3f4  mov     x21, x0
  10003c3f8  adrp    x2, #0x1003bc000
  10003c3fc  add     x2, x2, #0x830                           ; @"0/100"
  10003c400  mov     x1, x23
  10003c404  bl      _objc_msgSend                            ; [[self completion] setText:@"0/100"]
  10003c408  mov     x0, x21
  10003c40c  bl      _objc_release
  10003c410  mov     x0, x20
  10003c414  ldr     x1, [sp, #0x18]
  10003c418  bl      _objc_msgSend                            ; [self completion]
  10003c41c  mov     x29, x29
  10003c420  bl      _objc_retainAutoreleasedReturnValue
  10003c424  mov     x21, x0
  10003c428  adrp    x8, #0x100416000
  10003c42c  nop
  10003c430  ldr     x1, [x8, #0xba8]
  10003c434  mov     w2, #1
  10003c438  bl      _objc_msgSend                            ; [[self completion] setHidden:1]
  10003c43c  b       loc_10003c468
  10003c440  b       loc_10003cd10
loc_10003c444:
  10003c444  mov     x0, x20
  10003c448  str     x1, [sp, #0x18]
  10003c44c  bl      _objc_msgSend                            ; [self completion]
  10003c450  mov     x29, x29
  10003c454  bl      _objc_retainAutoreleasedReturnValue
  10003c458  mov     x21, x0
  10003c45c  mov     x1, x23
  10003c460  ldr     x2, [sp, #0x28]
  10003c464  bl      _objc_msgSend                            ; [[self completion] setText:[[self mission] completionToString]]
loc_10003c468:
  10003c468  mov     x0, x21
  10003c46c  bl      _objc_release
  10003c470  adrp    x8, #0x100417000
  10003c474  nop
  10003c478  ldr     x1, [x8, #0xcc0]
  10003c47c  str     x1, [sp, #0x20]
  10003c480  mov     x0, x20
  10003c484  bl      _objc_msgSend                            ; [self skipButton]
  10003c488  mov     x29, x29
  10003c48c  bl      _objc_retainAutoreleasedReturnValue
  10003c490  mov     x23, x0
  10003c494  ldr     x22, [x26, #0xf78]                       ; class NSString
  10003c498  mov     x0, x20
  10003c49c  mov     x21, x27
  10003c4a0  mov     x1, x21
  10003c4a4  bl      _objc_msgSend                            ; [self mission]
  10003c4a8  str     x21, [sp, #8]
  10003c4ac  mov     x29, x29
  10003c4b0  bl      _objc_retainAutoreleasedReturnValue
  10003c4b4  mov     x21, x0
  10003c4b8  adrp    x8, #0x100418000
  10003c4bc  nop
  10003c4c0  ldr     x1, [x8, #0x670]
  10003c4c4  bl      _objc_msgSend                            ; [[self mission] skipCost]
  10003c4c8  str     x0, [sp]
  10003c4cc  adrp    x2, #0x1003ba000
  10003c4d0  add     x2, x2, #0xc50                           ; @"%i"
  10003c4d4  mov     x0, x22
  10003c4d8  mov     x1, x19
  10003c4dc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[self mission] skipCost]]
  10003c4e0  mov     x29, x29
  10003c4e4  bl      _objc_retainAutoreleasedReturnValue
  10003c4e8  mov     x22, x0
  10003c4ec  adrp    x8, #0x100417000
  10003c4f0  nop
  10003c4f4  ldr     x1, [x8, #0x920]
  10003c4f8  mov     x3, #0
  10003c4fc  mov     x0, x23
  10003c500  mov     x2, x22
  10003c504  bl      _objc_msgSend                            ; [[self skipButton] setTitle:[NSString stringWithFormat:@"%i", [[self mission] skipCost]] forState:0]
  10003c508  mov     x0, x22
  10003c50c  bl      _objc_release
  10003c510  mov     x0, x21
  10003c514  bl      _objc_release
  10003c518  mov     x0, x23
  10003c51c  bl      _objc_release
  10003c520  mov     x0, x20
  10003c524  ldr     x1, [sp, #0x20]
  10003c528  bl      _objc_msgSend                            ; [self skipButton]
  10003c52c  mov     x29, x29
  10003c530  bl      _objc_retainAutoreleasedReturnValue
  10003c534  mov     x21, x0
  10003c538  adrp    x8, #0x100417000
  10003c53c  nop
  10003c540  ldr     x1, [x8, #0x98]
  10003c544  mov     w2, #0x14
  10003c548  bl      _objc_msgSend                            ; [[self skipButton] setDiamonds:20]
  10003c54c  mov     x0, x21
  10003c550  bl      _objc_release
  10003c554  mov     x0, x20
  10003c558  mov     x1, x25
  10003c55c  bl      _objc_msgSend                            ; [self description]
  10003c560  mov     x29, x29
  10003c564  bl      _objc_retainAutoreleasedReturnValue
  10003c568  mov     x23, x0
  10003c56c  adrp    x26, #0x10041d000
  10003c570  ldr     x19, [x26, #0xf08]                       ; class UIFont
  10003c574  adrp    x8, #0x10041d000
  10003c578  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10003c57c  adrp    x8, #0x100416000
  10003c580  nop
  10003c584  ldr     x1, [x8, #0xc00]
  10003c588  str     x1, [sp, #0x38]
  10003c58c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10003c590  mov     x29, x29
  10003c594  bl      _objc_retainAutoreleasedReturnValue
  10003c598  mov     x21, x0
  10003c59c  adrp    x8, #0x100416000
  10003c5a0  nop
  10003c5a4  ldr     x1, [x8, #0xd18]
  10003c5a8  str     x1, [sp, #0x30]
  10003c5ac  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10003c5b0  cmp     w0, #0
  10003c5b4  fmov    d8, #15.00000000
  10003c5b8  fmov    d9, #8.00000000
  10003c5bc  fcsel   d0, d9, d8, ne
  10003c5c0  adrp    x8, #0x100416000
  10003c5c4  nop
  10003c5c8  ldr     x28, [x8, #0xd20]
  10003c5cc  adrp    x2, #0x1003bc000
  10003c5d0  add     x2, x2, #0x310                           ; @"chainprinter"
  10003c5d4  mov     x0, x19
  10003c5d8  mov     x1, x28
  10003c5dc  bl      _objc_msgSend                            ; [UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 8 : 15)]
  10003c5e0  mov     x29, x29
  10003c5e4  bl      _objc_retainAutoreleasedReturnValue
  10003c5e8  mov     x22, x0
  10003c5ec  adrp    x8, #0x100416000
  10003c5f0  nop
  10003c5f4  ldr     x19, [x8, #0xd28]
  10003c5f8  mov     x0, x23
  10003c5fc  mov     x1, x19
  10003c600  mov     x2, x22
  10003c604  bl      _objc_msgSend                            ; [[self description] setFont:[UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 8 : 15)]]
  10003c608  mov     x0, x22
  10003c60c  bl      _objc_release
  10003c610  mov     x0, x21
  10003c614  bl      _objc_release
  10003c618  mov     x0, x23
  10003c61c  bl      _objc_release
  10003c620  mov     x0, x20
  10003c624  mov     x1, x25
  10003c628  bl      _objc_msgSend                            ; [self description]
  10003c62c  mov     x29, x29
  10003c630  bl      _objc_retainAutoreleasedReturnValue
  10003c634  mov     x21, x0
  10003c638  adrp    x8, #0x10041d000
  10003c63c  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10003c640  adrp    x8, #0x100417000
  10003c644  nop
  10003c648  ldr     x25, [x8, #0x328]
  10003c64c  mov     x1, x25
  10003c650  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10003c654  mov     x29, x29
  10003c658  bl      _objc_retainAutoreleasedReturnValue
  10003c65c  mov     x22, x0
  10003c660  adrp    x8, #0x100417000
  10003c664  nop
  10003c668  ldr     x23, [x8, #0x330]
  10003c66c  mov     x0, x21
  10003c670  mov     x1, x23
  10003c674  mov     x2, x22
  10003c678  bl      _objc_msgSend                            ; [[self description] setTextColor:[UIColor whiteColor]]
  10003c67c  mov     x0, x22
  10003c680  bl      _objc_release
  10003c684  mov     x0, x21
  10003c688  bl      _objc_release
  10003c68c  adrp    x8, #0x100418000
  10003c690  nop
  10003c694  ldr     x21, [x8, #0x678]
  10003c698  mov     x0, x20
  10003c69c  mov     x1, x21
  10003c6a0  bl      _objc_msgSend                            ; [self rewardLabel]
  10003c6a4  mov     x29, x29
  10003c6a8  bl      _objc_retainAutoreleasedReturnValue
  10003c6ac  mov     x24, x0
  10003c6b0  mov     x8, x26
  10003c6b4  ldr     x26, [x8, #0xf08]                        ; class UIFont
  10003c6b8  mov     x27, x8
  10003c6bc  adrp    x8, #0x10041d000
  10003c6c0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10003c6c4  ldr     x1, [sp, #0x38]
  10003c6c8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10003c6cc  mov     x29, x29
  10003c6d0  bl      _objc_retainAutoreleasedReturnValue
  10003c6d4  mov     x22, x0
  10003c6d8  ldr     x1, [sp, #0x30]
  10003c6dc  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10003c6e0  cmp     w0, #0
  10003c6e4  fcsel   d0, d9, d8, ne
  10003c6e8  adrp    x2, #0x1003bc000
  10003c6ec  add     x2, x2, #0x310                           ; @"chainprinter"
  10003c6f0  mov     x0, x26
  10003c6f4  mov     x1, x28
  10003c6f8  bl      _objc_msgSend                            ; [UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 8 : 15)]
  10003c6fc  mov     x29, x29
  10003c700  bl      _objc_retainAutoreleasedReturnValue
  10003c704  mov     x26, x0
  10003c708  mov     x0, x24
  10003c70c  mov     x1, x19
  10003c710  mov     x2, x26
  10003c714  bl      _objc_msgSend                            ; [[self rewardLabel] setFont:[UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 8 : 15)]]
  10003c718  mov     x0, x26
  10003c71c  bl      _objc_release
  10003c720  mov     x0, x22
  10003c724  bl      _objc_release
  10003c728  mov     x0, x24
  10003c72c  bl      _objc_release
  10003c730  mov     x0, x20
  10003c734  mov     x1, x21
  10003c738  bl      _objc_msgSend                            ; [self rewardLabel]
  10003c73c  mov     x29, x29
  10003c740  bl      _objc_retainAutoreleasedReturnValue
  10003c744  mov     x21, x0
  10003c748  adrp    x8, #0x10041d000
  10003c74c  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10003c750  mov     x1, x25
  10003c754  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10003c758  mov     x29, x29
  10003c75c  bl      _objc_retainAutoreleasedReturnValue
  10003c760  mov     x22, x0
  10003c764  mov     x0, x21
  10003c768  mov     x1, x23
  10003c76c  mov     x2, x22
  10003c770  bl      _objc_msgSend                            ; [[self rewardLabel] setTextColor:[UIColor whiteColor]]
  10003c774  mov     x0, x22
  10003c778  bl      _objc_release
  10003c77c  mov     x0, x21
  10003c780  bl      _objc_release
  10003c784  adrp    x8, #0x100418000
  10003c788  nop
  10003c78c  ldr     x21, [x8, #0x680]
  10003c790  mov     x0, x20
  10003c794  mov     x1, x21
  10003c798  bl      _objc_msgSend                            ; [self skipDiamondsLabel]
  10003c79c  mov     x29, x29
  10003c7a0  bl      _objc_retainAutoreleasedReturnValue
  10003c7a4  mov     x24, x0
  10003c7a8  ldr     x26, [x27, #0xf08]                       ; class UIFont
  10003c7ac  adrp    x8, #0x10041d000
  10003c7b0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10003c7b4  ldr     x1, [sp, #0x38]
  10003c7b8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10003c7bc  mov     x29, x29
  10003c7c0  bl      _objc_retainAutoreleasedReturnValue
  10003c7c4  mov     x22, x0
  10003c7c8  ldr     x1, [sp, #0x30]
  10003c7cc  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10003c7d0  cmp     w0, #0
  10003c7d4  fcsel   d0, d9, d8, ne
  10003c7d8  adrp    x2, #0x1003bc000
  10003c7dc  add     x2, x2, #0x310                           ; @"chainprinter"
  10003c7e0  mov     x0, x26
  10003c7e4  mov     x1, x28
  10003c7e8  bl      _objc_msgSend                            ; [UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 8 : 15)]
  10003c7ec  mov     x29, x29
  10003c7f0  bl      _objc_retainAutoreleasedReturnValue
  10003c7f4  mov     x26, x0
  10003c7f8  mov     x0, x24
  10003c7fc  mov     x1, x19
  10003c800  mov     x2, x26
  10003c804  bl      _objc_msgSend                            ; [[self skipDiamondsLabel] setFont:[UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 8 : 15)]]
  10003c808  mov     x0, x26
  10003c80c  bl      _objc_release
  10003c810  mov     x0, x22
  10003c814  bl      _objc_release
  10003c818  mov     x0, x24
  10003c81c  bl      _objc_release
  10003c820  mov     x0, x20
  10003c824  mov     x1, x21
  10003c828  bl      _objc_msgSend                            ; [self skipDiamondsLabel]
  10003c82c  mov     x26, x27
  10003c830  mov     x29, x29
  10003c834  bl      _objc_retainAutoreleasedReturnValue
  10003c838  mov     x21, x0
  10003c83c  adrp    x8, #0x10041d000
  10003c840  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10003c844  mov     x1, x25
  10003c848  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10003c84c  mov     x29, x29
  10003c850  bl      _objc_retainAutoreleasedReturnValue
  10003c854  mov     x22, x0
  10003c858  mov     x0, x21
  10003c85c  mov     x1, x23
  10003c860  mov     x2, x22
  10003c864  bl      _objc_msgSend                            ; [[self skipDiamondsLabel] setTextColor:[UIColor whiteColor]]
  10003c868  mov     x0, x22
  10003c86c  bl      _objc_release
  10003c870  mov     x0, x21
  10003c874  bl      _objc_release
  10003c878  mov     x0, x20
  10003c87c  ldr     x1, [sp, #0x10]
  10003c880  bl      _objc_msgSend                            ; [self reward]
  10003c884  mov     x29, x29
  10003c888  bl      _objc_retainAutoreleasedReturnValue
  10003c88c  mov     x24, x0
  10003c890  ldr     x22, [x26, #0xf08]                       ; class UIFont
  10003c894  adrp    x8, #0x10041d000
  10003c898  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10003c89c  ldr     x1, [sp, #0x38]
  10003c8a0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10003c8a4  mov     x29, x29
  10003c8a8  bl      _objc_retainAutoreleasedReturnValue
  10003c8ac  mov     x21, x0
  10003c8b0  ldr     x1, [sp, #0x30]
  10003c8b4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10003c8b8  cmp     w0, #0
  10003c8bc  adrp    x8, #0x100181000
  10003c8c0  ldr     d8, [x8, #0x9f8]                         ; d8 = 40.0
  10003c8c4  fmov    d9, #10.00000000
  10003c8c8  fcsel   d0, d9, d8, ne
  10003c8cc  adrp    x2, #0x1003b9000
  10003c8d0  add     x2, x2, #0xf10                           ; @"Monstro"
  10003c8d4  mov     x0, x22
  10003c8d8  mov     x1, x28
  10003c8dc  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 10 : 40)]
  10003c8e0  mov     x29, x29
  10003c8e4  bl      _objc_retainAutoreleasedReturnValue
  10003c8e8  mov     x22, x0
  10003c8ec  mov     x0, x24
  10003c8f0  mov     x1, x19
  10003c8f4  mov     x2, x22
  10003c8f8  bl      _objc_msgSend                            ; [[self reward] setFont:[UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 10 : 40)]]
  10003c8fc  mov     x0, x22
  10003c900  bl      _objc_release
  10003c904  mov     x0, x21
  10003c908  bl      _objc_release
  10003c90c  mov     x0, x24
  10003c910  bl      _objc_release
  10003c914  mov     x0, x20
  10003c918  ldr     x1, [sp, #0x10]
  10003c91c  bl      _objc_msgSend                            ; [self reward]
  10003c920  mov     x29, x29
  10003c924  bl      _objc_retainAutoreleasedReturnValue
  10003c928  mov     x21, x0
  10003c92c  adrp    x8, #0x10041d000
  10003c930  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10003c934  mov     x1, x25
  10003c938  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10003c93c  mov     x29, x29
  10003c940  bl      _objc_retainAutoreleasedReturnValue
  10003c944  mov     x22, x0
  10003c948  mov     x0, x21
  10003c94c  mov     x1, x23
  10003c950  mov     x2, x22
  10003c954  bl      _objc_msgSend                            ; [[self reward] setTextColor:[UIColor whiteColor]]
  10003c958  mov     x0, x22
  10003c95c  bl      _objc_release
  10003c960  mov     x0, x21
  10003c964  bl      _objc_release
  10003c968  mov     x0, x20
  10003c96c  ldr     x1, [sp, #0x18]
  10003c970  bl      _objc_msgSend                            ; [self completion]
  10003c974  mov     x29, x29
  10003c978  bl      _objc_retainAutoreleasedReturnValue
  10003c97c  mov     x22, x0
  10003c980  ldr     x24, [x26, #0xf08]                       ; class UIFont
  10003c984  adrp    x8, #0x10041d000
  10003c988  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10003c98c  ldr     x1, [sp, #0x38]
  10003c990  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10003c994  mov     x29, x29
  10003c998  bl      _objc_retainAutoreleasedReturnValue
  10003c99c  mov     x21, x0
  10003c9a0  ldr     x1, [sp, #0x30]
  10003c9a4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10003c9a8  cmp     w0, #0
  10003c9ac  fcsel   d0, d9, d8, ne
  10003c9b0  adrp    x2, #0x1003b9000
  10003c9b4  add     x2, x2, #0xf10                           ; @"Monstro"
  10003c9b8  mov     x0, x24
  10003c9bc  mov     x1, x28
  10003c9c0  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 10 : 40)]
  10003c9c4  mov     x29, x29
  10003c9c8  bl      _objc_retainAutoreleasedReturnValue
  10003c9cc  mov     x24, x0
  10003c9d0  mov     x0, x22
  10003c9d4  mov     x1, x19
  10003c9d8  mov     x2, x24
  10003c9dc  bl      _objc_msgSend                            ; [[self completion] setFont:[UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 10 : 40)]]
  10003c9e0  mov     x0, x24
  10003c9e4  bl      _objc_release
  10003c9e8  mov     x0, x21
  10003c9ec  bl      _objc_release
  10003c9f0  mov     x0, x22
  10003c9f4  bl      _objc_release
  10003c9f8  mov     x0, x20
  10003c9fc  ldr     x1, [sp, #0x18]
  10003ca00  bl      _objc_msgSend                            ; [self completion]
  10003ca04  mov     x29, x29
  10003ca08  bl      _objc_retainAutoreleasedReturnValue
  10003ca0c  mov     x21, x0
  10003ca10  adrp    x8, #0x10041d000
  10003ca14  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10003ca18  mov     x1, x25
  10003ca1c  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10003ca20  mov     x29, x29
  10003ca24  bl      _objc_retainAutoreleasedReturnValue
  10003ca28  mov     x22, x0
  10003ca2c  mov     x0, x21
  10003ca30  mov     x1, x23
  10003ca34  mov     x2, x22
  10003ca38  bl      _objc_msgSend                            ; [[self completion] setTextColor:[UIColor whiteColor]]
  10003ca3c  mov     x0, x22
  10003ca40  bl      _objc_release
  10003ca44  mov     x0, x21
  10003ca48  bl      _objc_release
  10003ca4c  mov     x0, x20
  10003ca50  ldr     x1, [sp, #0x20]
  10003ca54  bl      _objc_msgSend                            ; [self skipButton]
  10003ca58  mov     x29, x29
  10003ca5c  bl      _objc_retainAutoreleasedReturnValue
  10003ca60  mov     x21, x0
  10003ca64  adrp    x8, #0x100417000
  10003ca68  nop
  10003ca6c  ldr     x1, [x8, #0xa90]
  10003ca70  bl      _objc_msgSend                            ; [[self skipButton] centerButtonTextWithDiamondsImage]
  10003ca74  mov     x0, x21
  10003ca78  bl      _objc_release
  10003ca7c  mov     x0, x20
  10003ca80  ldr     x1, [sp, #8]
  10003ca84  bl      _objc_msgSend                            ; [self mission]
  10003ca88  mov     x29, x29
  10003ca8c  bl      _objc_retainAutoreleasedReturnValue
  10003ca90  mov     x21, x0
  10003ca94  adrp    x8, #0x100416000
  10003ca98  nop
  10003ca9c  ldr     x1, [x8, #0xe08]
  10003caa0  bl      _objc_msgSend                            ; [[self mission] isMissionCompleted]
  10003caa4  mov     x19, x0
  10003caa8  mov     x0, x21
  10003caac  bl      _objc_release
  10003cab0  cbz     w19, loc_10003cb24                       ; if ([[self mission] isMissionCompleted] == 0)
  10003cab4  mov     x0, x20
  10003cab8  ldr     x1, [sp, #0x20]
  10003cabc  bl      _objc_msgSend                            ; [self skipButton]
  10003cac0  mov     x29, x29
  10003cac4  bl      _objc_retainAutoreleasedReturnValue
  10003cac8  mov     x21, x0
  10003cacc  adrp    x8, #0x100416000
  10003cad0  nop
  10003cad4  ldr     x1, [x8, #0xba8]
  10003cad8  mov     w2, #1
  10003cadc  bl      _objc_msgSend                            ; [[self skipButton] setHidden:1]
  10003cae0  mov     x0, x21
  10003cae4  bl      _objc_release
  10003cae8  adrp    x8, #0x100418000
  10003caec  nop
  10003caf0  ldr     x1, [x8, #0x688]
  10003caf4  mov     x0, x20
  10003caf8  bl      _objc_msgSend                            ; [self starImage]
  10003cafc  mov     x29, x29
  10003cb00  bl      _objc_retainAutoreleasedReturnValue
  10003cb04  mov     x21, x0
  10003cb08  adrp    x8, #0x100417000
  10003cb0c  nop
  10003cb10  ldr     x1, [x8, #0x828]
  10003cb14  fmov    d0, #1.00000000
  10003cb18  bl      _objc_msgSend                            ; [[self starImage] setAlpha:1]
  10003cb1c  mov     x0, x21
  10003cb20  bl      _objc_release
loc_10003cb24:
  10003cb24  adrp    x8, #0x10041f000
  10003cb28  ldrsw   x8, [x8, #0x8ac]                         ; ivar offset ADMissionForTopbarViewController.canSkip (+0x140)
  10003cb2c  ldrb    w8, [x20, x8]                            ; w8 = self->canSkip
  10003cb30  cbnz    w8, loc_10003cb48                        ; if (self->canSkip != 0)
  10003cb34  adrp    x8, #0x100418000
  10003cb38  nop
  10003cb3c  ldr     x1, [x8, #0x690]
  10003cb40  mov     x0, x20
  10003cb44  bl      _objc_msgSend                            ; [self disableSkip]
loc_10003cb48:
  10003cb48  ldr     x0, [sp, #0x28]
  10003cb4c  sub     sp, x29, #0x60
  10003cb50  ldp     x29, x30, [sp, #0x60]
  10003cb54  ldp     x20, x19, [sp, #0x50]
  10003cb58  ldp     x22, x21, [sp, #0x40]
  10003cb5c  ldp     x24, x23, [sp, #0x30]
  10003cb60  ldp     x26, x25, [sp, #0x20]
  10003cb64  ldp     x28, x27, [sp, #0x10]
  10003cb68  ldp     d9, d8, [sp], #0x70
  10003cb6c  b       _objc_release
  10003cb70  mov     x19, x0
  10003cb74  b       loc_10003cd1c
  10003cb78  mov     x19, x0
  10003cb7c  b       loc_10003cbf4
  10003cb80  mov     x19, x0
  10003cb84  b       loc_10003cbd4
  10003cb88  mov     x19, x0
  10003cb8c  b       loc_10003cc3c
  10003cb90  mov     x19, x0
  10003cb94  b       loc_10003cc3c
  10003cb98  mov     x19, x0
  10003cb9c  b       loc_10003cc80
  10003cba0  mov     x19, x0
  10003cba4  b       loc_10003cc80
  10003cba8  mov     x19, x0
  10003cbac  b       loc_10003cca4
  10003cbb0  mov     x19, x0
  10003cbb4  b       loc_10003ccd4
  10003cbb8  mov     x19, x0
  10003cbbc  b       loc_10003cc10
  10003cbc0  mov     x19, x0
  10003cbc4  b       loc_10003cbd4
  10003cbc8  mov     x19, x0
  10003cbcc  mov     x0, x24
  10003cbd0  bl      _objc_release
loc_10003cbd4:
  10003cbd4  mov     x0, x22
  10003cbd8  bl      _objc_release
  10003cbdc  b       loc_10003cc10
  10003cbe0  mov     x19, x0
  10003cbe4  b       loc_10003cbfc
  10003cbe8  mov     x19, x0
  10003cbec  mov     x0, x22
  10003cbf0  bl      _objc_release
loc_10003cbf4:
  10003cbf4  mov     x0, x21
  10003cbf8  bl      _objc_release
loc_10003cbfc:
  10003cbfc  mov     x0, x24
  10003cc00  b       loc_10003cd20
  10003cc04  mov     x19, x0
  10003cc08  b       loc_10003cc10
  10003cc0c  mov     x19, x0
loc_10003cc10:
  10003cc10  mov     x0, x21
  10003cc14  b       loc_10003cd20
  10003cc18  mov     x19, x0
  10003cc1c  b       loc_10003cc44
  10003cc20  b       loc_10003cc30
  10003cc24  b       loc_10003cd10
  10003cc28  mov     x19, x0
  10003cc2c  b       loc_10003cc44
loc_10003cc30:
  10003cc30  mov     x19, x0
  10003cc34  mov     x0, x22
  10003cc38  bl      _objc_release
loc_10003cc3c:
  10003cc3c  mov     x0, x21
  10003cc40  bl      _objc_release
loc_10003cc44:
  10003cc44  mov     x0, x23
  10003cc48  bl      _objc_release
  10003cc4c  b       loc_10003cd1c
  10003cc50  b       loc_10003cd10
  10003cc54  b       loc_10003ccec
  10003cc58  mov     x19, x0
  10003cc5c  b       loc_10003ccac
  10003cc60  b       loc_10003cc74
  10003cc64  b       loc_10003cd10
  10003cc68  b       loc_10003ccec
  10003cc6c  mov     x19, x0
  10003cc70  b       loc_10003ccac
loc_10003cc74:
  10003cc74  mov     x19, x0
  10003cc78  mov     x0, x26
  10003cc7c  bl      _objc_release
loc_10003cc80:
  10003cc80  mov     x0, x22
  10003cc84  b       loc_10003cca8
  10003cc88  b       loc_10003cd10
  10003cc8c  b       loc_10003ccec
  10003cc90  mov     x19, x0
  10003cc94  b       loc_10003ccac
  10003cc98  mov     x19, x0
  10003cc9c  mov     x0, x22
  10003cca0  bl      _objc_release
loc_10003cca4:
  10003cca4  mov     x0, x21
loc_10003cca8:
  10003cca8  bl      _objc_release
loc_10003ccac:
  10003ccac  mov     x0, x24
  10003ccb0  bl      _objc_release
  10003ccb4  b       loc_10003cd1c
  10003ccb8  b       loc_10003cd10
  10003ccbc  b       loc_10003ccec
  10003ccc0  mov     x19, x0
  10003ccc4  b       loc_10003ccdc
  10003ccc8  mov     x19, x0
  10003cccc  mov     x0, x24
  10003ccd0  bl      _objc_release
loc_10003ccd4:
  10003ccd4  mov     x0, x21
  10003ccd8  bl      _objc_release
loc_10003ccdc:
  10003ccdc  mov     x0, x22
  10003cce0  bl      _objc_release
  10003cce4  b       loc_10003cd1c
  10003cce8  b       loc_10003cd10
loc_10003ccec:
  10003ccec  mov     x19, x0
  10003ccf0  mov     x0, x22
  10003ccf4  bl      _objc_release
  10003ccf8  b       loc_10003cd14
  10003ccfc  b       loc_10003cd10
  10003cd00  b       loc_10003cd10
  10003cd04  b       loc_10003cd10
  10003cd08  b       loc_10003cd10
  10003cd0c  b       loc_10003cd10
loc_10003cd10:
  10003cd10  mov     x19, x0
loc_10003cd14:
  10003cd14  mov     x0, x21
  10003cd18  bl      _objc_release
loc_10003cd1c:
  10003cd1c  ldr     x0, [sp, #0x28]
loc_10003cd20:
  10003cd20  bl      _objc_release
  10003cd24  mov     x0, x19
  10003cd28  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionForTopbarViewController viewDidAppear:]
; address 0x10003cd2c  size 552  kind objc
; ======================================================================
  10003cd2c  stp     d11, d10, [sp, #-0x70]!
  10003cd30  stp     d9, d8, [sp, #0x10]
  10003cd34  stp     x26, x25, [sp, #0x20]
  10003cd38  stp     x24, x23, [sp, #0x30]
  10003cd3c  stp     x22, x21, [sp, #0x40]
  10003cd40  stp     x20, x19, [sp, #0x50]
  10003cd44  stp     x29, x30, [sp, #0x60]
  10003cd48  add     x29, sp, #0x60
  10003cd4c  sub     sp, sp, #0x10
  10003cd50  mov     x22, x0
  10003cd54  str     x22, [sp]
  10003cd58  adrp    x8, #0x10041e000
  10003cd5c  ldr     x8, [x8, #0xcc0]
  10003cd60  str     x8, [sp, #8]
  10003cd64  adrp    x8, #0x100417000
  10003cd68  nop
  10003cd6c  ldr     x1, [x8, #0x938]
  10003cd70  mov     x0, sp
  10003cd74  bl      _objc_msgSendSuper2                      ; [super viewDidAppear:arg1]
  10003cd78  adrp    x8, #0x100418000
  10003cd7c  nop
  10003cd80  ldr     x1, [x8, #0x698]
  10003cd84  mov     x0, x22
  10003cd88  bl      _objc_msgSend                            ; [self completionBar]
  10003cd8c  mov     x29, x29
  10003cd90  bl      _objc_retainAutoreleasedReturnValue
  10003cd94  mov     x19, x0
  10003cd98  adrp    x8, #0x100418000
  10003cd9c  nop
  10003cda0  ldr     x24, [x8, #0x6a0]
  10003cda4  mov     x0, x22
  10003cda8  mov     x1, x24
  10003cdac  bl      _objc_msgSend                            ; [self completionBarBackground]
  10003cdb0  mov     x29, x29
  10003cdb4  bl      _objc_retainAutoreleasedReturnValue
  10003cdb8  mov     x20, x0
  10003cdbc  adrp    x8, #0x100416000
  10003cdc0  nop
  10003cdc4  ldr     x25, [x8, #0xf38]
  10003cdc8  mov     x1, x25
  10003cdcc  bl      _objc_msgSend                            ; [[self completionBarBackground] frame]
  10003cdd0  mov     v8.16b, v0.16b
  10003cdd4  mov     x0, x22
  10003cdd8  mov     x1, x24
  10003cddc  bl      _objc_msgSend                            ; [self completionBarBackground]
  10003cde0  mov     x29, x29
  10003cde4  bl      _objc_retainAutoreleasedReturnValue
  10003cde8  mov     x21, x0
  10003cdec  mov     x1, x25
  10003cdf0  bl      _objc_msgSend                            ; [[self completionBarBackground] frame]
  10003cdf4  mov     v9.16b, v1.16b
  10003cdf8  mov     x0, x22
  10003cdfc  mov     x1, x24
  10003ce00  bl      _objc_msgSend                            ; [self completionBarBackground]
  10003ce04  mov     x29, x29
  10003ce08  bl      _objc_retainAutoreleasedReturnValue
  10003ce0c  mov     x23, x0
  10003ce10  mov     x1, x25
  10003ce14  bl      _objc_msgSend                            ; [[self completionBarBackground] frame]
  10003ce18  mov     v10.16b, v2.16b
  10003ce1c  adrp    x8, #0x100417000
  10003ce20  nop
  10003ce24  ldr     x1, [x8, #0x860]
  10003ce28  mov     x0, x22
  10003ce2c  bl      _objc_msgSend                            ; [self mission]
  10003ce30  mov     x29, x29
  10003ce34  bl      _objc_retainAutoreleasedReturnValue
  10003ce38  mov     x26, x0
  10003ce3c  adrp    x8, #0x100418000
  10003ce40  nop
  10003ce44  ldr     x1, [x8, #0x6a8]
  10003ce48  bl      _objc_msgSend                            ; [[self mission] completionToFloat]
  10003ce4c  mov     v11.16b, v0.16b
  10003ce50  mov     x0, x22
  10003ce54  mov     x1, x24
  10003ce58  bl      _objc_msgSend                            ; [self completionBarBackground]
  10003ce5c  mov     x29, x29
  10003ce60  bl      _objc_retainAutoreleasedReturnValue
  10003ce64  mov     x24, x0
  10003ce68  mov     x1, x25
  10003ce6c  bl      _objc_msgSend                            ; [[self completionBarBackground] frame]
  10003ce70  fcvt    d0, s11
  10003ce74  fmul    d0, d10, d0
  10003ce78  fcvtzs  w8, d0
  10003ce7c  scvtf   d2, w8                                   ; t1 = (float)(int)([[self completionBarBackground] frame].2 * [[self mission] completionToFloat])
  10003ce80  adrp    x8, #0x100417000
  10003ce84  nop
  10003ce88  ldr     x1, [x8, #0x7b8]
  10003ce8c  mov     x0, x19
  10003ce90  mov     v0.16b, v8.16b
  10003ce94  mov     v1.16b, v9.16b
  10003ce98  bl      _objc_msgSend                            ; [[self completionBar] setFrame:{[[self completionBarBackground] frame].0, [[self completionBarBackground] frame].1, t1, [[self completionBarBackground] frame].3}]
  10003ce9c  mov     x0, x24
  10003cea0  bl      _objc_release
  10003cea4  mov     x0, x26
  10003cea8  bl      _objc_release
  10003ceac  mov     x0, x23
  10003ceb0  bl      _objc_release
  10003ceb4  mov     x0, x21
  10003ceb8  bl      _objc_release
  10003cebc  mov     x0, x20
  10003cec0  bl      _objc_release
  10003cec4  mov     x0, x19
  10003cec8  bl      _objc_release
  10003cecc  sub     sp, x29, #0x60
  10003ced0  ldp     x29, x30, [sp, #0x60]
  10003ced4  ldp     x20, x19, [sp, #0x50]
  10003ced8  ldp     x22, x21, [sp, #0x40]
  10003cedc  ldp     x24, x23, [sp, #0x30]
  10003cee0  ldp     x26, x25, [sp, #0x20]
  10003cee4  ldp     d9, d8, [sp, #0x10]
  10003cee8  ldp     d11, d10, [sp], #0x70
  10003ceec  ret
  10003cef0  mov     x22, x0
  10003cef4  b       loc_10003cf34
  10003cef8  mov     x22, x0
  10003cefc  b       loc_10003cf2c
  10003cf00  mov     x22, x0
  10003cf04  b       loc_10003cf24
  10003cf08  mov     x22, x0
  10003cf0c  b       loc_10003cf1c
  10003cf10  mov     x22, x0
  10003cf14  mov     x0, x24
  10003cf18  bl      _objc_release
loc_10003cf1c:
  10003cf1c  mov     x0, x26
  10003cf20  bl      _objc_release
loc_10003cf24:
  10003cf24  mov     x0, x23
  10003cf28  bl      _objc_release
loc_10003cf2c:
  10003cf2c  mov     x0, x21
  10003cf30  bl      _objc_release
loc_10003cf34:
  10003cf34  mov     x0, x20
  10003cf38  bl      _objc_release
loc_10003cf3c:
  10003cf3c  mov     x0, x19
  10003cf40  bl      _objc_release
  10003cf44  mov     x0, x22
  10003cf48  bl      __Unwind_Resume                          ; Unwind_Resume()
  10003cf4c  mov     x22, x0
  10003cf50  b       loc_10003cf3c

; ======================================================================
; -[ADMissionForTopbarViewController disableSkip]
; address 0x10003cf54  size 268  kind objc
; ======================================================================
  10003cf54  stp     x22, x21, [sp, #-0x30]!
  10003cf58  stp     x20, x19, [sp, #0x10]
  10003cf5c  stp     x29, x30, [sp, #0x20]
  10003cf60  add     x29, sp, #0x20
  10003cf64  mov     x19, x0
  10003cf68  adrp    x8, #0x10041f000
  10003cf6c  ldrsw   x8, [x8, #0x8ac]                         ; ivar offset ADMissionForTopbarViewController.canSkip (+0x140)
  10003cf70  strb    wzr, [x19, x8]                           ; self->canSkip = 0
  10003cf74  adrp    x8, #0x100417000
  10003cf78  nop
  10003cf7c  ldr     x1, [x8, #0xcc0]
  10003cf80  bl      _objc_msgSend                            ; [self skipButton]
  10003cf84  mov     x29, x29
  10003cf88  bl      _objc_retainAutoreleasedReturnValue
  10003cf8c  mov     x20, x0
  10003cf90  adrp    x8, #0x100416000
  10003cf94  nop
  10003cf98  ldr     x1, [x8, #0xba8]
  10003cf9c  mov     w2, #1
  10003cfa0  bl      _objc_msgSend                            ; [[self skipButton] setHidden:1]
  10003cfa4  mov     x0, x20
  10003cfa8  bl      _objc_release
  10003cfac  adrp    x8, #0x100417000
  10003cfb0  nop
  10003cfb4  ldr     x1, [x8, #0x860]
  10003cfb8  mov     x0, x19
  10003cfbc  bl      _objc_msgSend                            ; [self mission]
  10003cfc0  mov     x29, x29
  10003cfc4  bl      _objc_retainAutoreleasedReturnValue
  10003cfc8  mov     x20, x0
  10003cfcc  adrp    x8, #0x100416000
  10003cfd0  nop
  10003cfd4  ldr     x1, [x8, #0xe08]
  10003cfd8  bl      _objc_msgSend                            ; [[self mission] isMissionCompleted]
  10003cfdc  mov     x21, x0
  10003cfe0  mov     x0, x20
  10003cfe4  bl      _objc_release
  10003cfe8  cbz     w21, loc_10003d034                       ; if ([[self mission] isMissionCompleted] == 0)
  10003cfec  adrp    x8, #0x100418000
  10003cff0  nop
  10003cff4  ldr     x1, [x8, #0x688]
  10003cff8  mov     x0, x19
  10003cffc  bl      _objc_msgSend                            ; [self starImage]
  10003d000  mov     x29, x29
  10003d004  bl      _objc_retainAutoreleasedReturnValue
  10003d008  mov     x20, x0
  10003d00c  adrp    x8, #0x100417000
  10003d010  nop
  10003d014  ldr     x1, [x8, #0x828]
  10003d018  fmov    d0, #1.00000000
  10003d01c  bl      _objc_msgSend                            ; [[self starImage] setAlpha:1]
  10003d020  mov     x0, x20
  10003d024  ldp     x29, x30, [sp, #0x20]
  10003d028  ldp     x20, x19, [sp, #0x10]
  10003d02c  ldp     x22, x21, [sp], #0x30
  10003d030  b       _objc_release
loc_10003d034:
  10003d034  ldp     x29, x30, [sp, #0x20]
  10003d038  ldp     x20, x19, [sp, #0x10]
  10003d03c  ldp     x22, x21, [sp], #0x30
  10003d040  ret
  10003d044  b       loc_10003d04c
  10003d048  b       loc_10003d04c
loc_10003d04c:
  10003d04c  mov     x19, x0
  10003d050  mov     x0, x20
  10003d054  bl      _objc_release
  10003d058  mov     x0, x19
  10003d05c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionForTopbarViewController getTopViewController]
; address 0x10003d060  size 180  kind objc
; ======================================================================
  10003d060  stp     x22, x21, [sp, #-0x30]!
  10003d064  stp     x20, x19, [sp, #0x10]
  10003d068  stp     x29, x30, [sp, #0x20]
  10003d06c  add     x29, sp, #0x20
  10003d070  adrp    x8, #0x100417000
  10003d074  nop
  10003d078  ldr     x19, [x8, #0x418]
  10003d07c  mov     x1, x19
  10003d080  bl      _objc_msgSend                            ; [self presentingViewController]
  10003d084  mov     x29, x29
  10003d088  bl      _objc_retainAutoreleasedReturnValue
  10003d08c  mov     x20, x0
  10003d090  cbz     x20, loc_10003d0e8                       ; if ([self presentingViewController] == 0)
  10003d094  adrp    x8, #0x100417000
  10003d098  add     x8, x8, #0x2a8                           ; &@selector(statusBarViewController)
  10003d09c  ldr     x21, [x8]
loc_10003d0a0:
  10003d0a0  mov     x0, x20
  10003d0a4  mov     x1, x21
  10003d0a8  bl      _objc_msgSend                            ; [x0 statusBarViewController]
  10003d0ac  mov     x29, x29
  10003d0b0  bl      _objc_retainAutoreleasedReturnValue
  10003d0b4  mov     x22, x0
  10003d0b8  bl      _objc_release
  10003d0bc  cbnz    x22, loc_10003d0ec                       ; if ([x0 statusBarViewController] != 0)
  10003d0c0  mov     x0, x20
  10003d0c4  mov     x1, x19
  10003d0c8  bl      _objc_msgSend                            ; [x0 presentingViewController]
  10003d0cc  mov     x29, x29
  10003d0d0  bl      _objc_retainAutoreleasedReturnValue
  10003d0d4  mov     x22, x0
  10003d0d8  mov     x0, x20
  10003d0dc  bl      _objc_release
  10003d0e0  mov     x20, x22
  10003d0e4  cbnz    x22, loc_10003d0a0                       ; if ([x0 presentingViewController] != 0)
loc_10003d0e8:
  10003d0e8  mov     x20, #0
loc_10003d0ec:
  10003d0ec  mov     x0, x20
  10003d0f0  ldp     x29, x30, [sp, #0x20]
  10003d0f4  ldp     x20, x19, [sp, #0x10]
  10003d0f8  ldp     x22, x21, [sp], #0x30
  10003d0fc  b       _objc_autoreleaseReturnValue
  10003d100  mov     x19, x0
  10003d104  mov     x0, x20
  10003d108  bl      _objc_release
  10003d10c  mov     x0, x19
  10003d110  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionForTopbarViewController skipButtonTouched:]
; address 0x10003d114  size 748  kind objc
; ======================================================================
  10003d114  stp     x28, x27, [sp, #-0x60]!
  10003d118  stp     x26, x25, [sp, #0x10]
  10003d11c  stp     x24, x23, [sp, #0x20]
  10003d120  stp     x22, x21, [sp, #0x30]
  10003d124  stp     x20, x19, [sp, #0x40]
  10003d128  stp     x29, x30, [sp, #0x50]
  10003d12c  add     x29, sp, #0x50
  10003d130  mov     x19, x0
  10003d134  adrp    x28, #0x10041d000
  10003d138  ldr     x0, [x28, #0xf70]                        ; class ADInventory
  10003d13c  adrp    x8, #0x100416000
  10003d140  nop
  10003d144  ldr     x21, [x8, #0xec8]
  10003d148  mov     x1, x21
  10003d14c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10003d150  mov     x29, x29
  10003d154  bl      _objc_retainAutoreleasedReturnValue
  10003d158  mov     x24, x0
  10003d15c  adrp    x8, #0x100417000
  10003d160  nop
  10003d164  ldr     x20, [x8, #0x960]
  10003d168  mov     x1, x20
  10003d16c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  10003d170  mov     x25, x0
  10003d174  adrp    x8, #0x100417000
  10003d178  nop
  10003d17c  ldr     x22, [x8, #0x860]
  10003d180  mov     x0, x19
  10003d184  mov     x1, x22
  10003d188  bl      _objc_msgSend                            ; [self mission]
  10003d18c  mov     x29, x29
  10003d190  bl      _objc_retainAutoreleasedReturnValue
  10003d194  mov     x26, x0
  10003d198  adrp    x8, #0x100418000
  10003d19c  nop
  10003d1a0  ldr     x23, [x8, #0x670]
  10003d1a4  mov     x1, x23
  10003d1a8  bl      _objc_msgSend                            ; [[self mission] skipCost]
  10003d1ac  mov     x27, x0
  10003d1b0  mov     x0, x26
  10003d1b4  bl      _objc_release
  10003d1b8  mov     x0, x24
  10003d1bc  bl      _objc_release
  10003d1c0  cmp     w25, w27
  10003d1c4  b.ge    loc_10003d1e0                            ; if ([[ADInventory sharedInventory] diamonds] >= [[self mission] skipCost])
  10003d1c8  adrp    x8, #0x100417000
  10003d1cc  nop
  10003d1d0  ldr     x1, [x8, #0xae0]
  10003d1d4  mov     x0, x19
  10003d1d8  bl      _objc_msgSend                            ; [self showNoDiamondsAlert]
  10003d1dc  b       loc_10003d35c
loc_10003d1e0:
  10003d1e0  adrp    x8, #0x10041d000
  10003d1e4  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  10003d1e8  adrp    x8, #0x100416000
  10003d1ec  nop
  10003d1f0  ldr     x1, [x8, #0xe10]
  10003d1f4  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  10003d1f8  mov     x29, x29
  10003d1fc  bl      _objc_retainAutoreleasedReturnValue
  10003d200  mov     x24, x0
  10003d204  adrp    x8, #0x100418000
  10003d208  nop
  10003d20c  ldr     x1, [x8, #0x6b0]
  10003d210  mov     w2, #1
  10003d214  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] updateMissionsSkipped:1]
  10003d218  mov     x0, x24
  10003d21c  bl      _objc_release
  10003d220  adrp    x8, #0x10041d000
  10003d224  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10003d228  adrp    x8, #0x100416000
  10003d22c  nop
  10003d230  ldr     x1, [x8, #0xb28]
  10003d234  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10003d238  mov     x29, x29
  10003d23c  bl      _objc_retainAutoreleasedReturnValue
  10003d240  mov     x24, x0
  10003d244  adrp    x8, #0x100416000
  10003d248  nop
  10003d24c  ldr     x1, [x8, #0xc18]
  10003d250  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10003d254  mov     x29, x29
  10003d258  bl      _objc_retainAutoreleasedReturnValue
  10003d25c  mov     x25, x0
  10003d260  adrp    x8, #0x100417000
  10003d264  nop
  10003d268  ldr     x1, [x8, #0xb08]
  10003d26c  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] statusBar]
  10003d270  mov     x29, x29
  10003d274  bl      _objc_retainAutoreleasedReturnValue
  10003d278  mov     x26, x0
  10003d27c  mov     x0, x19
  10003d280  mov     x1, x22
  10003d284  bl      _objc_msgSend                            ; [self mission]
  10003d288  mov     x29, x29
  10003d28c  bl      _objc_retainAutoreleasedReturnValue
  10003d290  mov     x27, x0
  10003d294  mov     x1, x23
  10003d298  bl      _objc_msgSend                            ; [[self mission] skipCost]
  10003d29c  neg     w2, w0
  10003d2a0  adrp    x8, #0x100418000
  10003d2a4  nop
  10003d2a8  ldr     x1, [x8, #0x6b8]
  10003d2ac  mov     x0, x26
  10003d2b0  bl      _objc_msgSend                            ; [[[[UIApplication sharedApplication] delegate] statusBar] animateDiamonds:-[[self mission] skipCost]]
  10003d2b4  mov     x0, x27
  10003d2b8  bl      _objc_release
  10003d2bc  mov     x0, x26
  10003d2c0  bl      _objc_release
  10003d2c4  mov     x0, x25
  10003d2c8  bl      _objc_release
  10003d2cc  mov     x0, x24
  10003d2d0  bl      _objc_release
  10003d2d4  ldr     x0, [x28, #0xf70]                        ; class ADInventory
  10003d2d8  mov     x1, x21
  10003d2dc  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10003d2e0  mov     x29, x29
  10003d2e4  bl      _objc_retainAutoreleasedReturnValue
  10003d2e8  mov     x21, x0
  10003d2ec  mov     x0, x19
  10003d2f0  mov     x1, x22
  10003d2f4  bl      _objc_msgSend                            ; [self mission]
  10003d2f8  mov     x29, x29
  10003d2fc  bl      _objc_retainAutoreleasedReturnValue
  10003d300  mov     x22, x0
  10003d304  mov     x1, x23
  10003d308  bl      _objc_msgSend                            ; [[self mission] skipCost]
  10003d30c  mov     x23, x0
  10003d310  mov     x0, x21
  10003d314  mov     x1, x20
  10003d318  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  10003d31c  sub     w2, w0, w23
  10003d320  adrp    x8, #0x100417000
  10003d324  nop
  10003d328  ldr     x1, [x8, #0x98]
  10003d32c  mov     x0, x21
  10003d330  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setDiamonds:([[ADInventory sharedInventory] diamonds] - [[self mission] skipCost])]
  10003d334  mov     x0, x22
  10003d338  bl      _objc_release
  10003d33c  mov     x0, x21
  10003d340  bl      _objc_release
  10003d344  adrp    x8, #0x100417000
  10003d348  nop
  10003d34c  ldr     x1, [x8, #0x868]
  10003d350  mov     w2, #0
  10003d354  mov     x0, x19
  10003d358  bl      _objc_msgSend                            ; [self markAsCompletedAndSwapWithReward:0]
loc_10003d35c:
  10003d35c  ldp     x29, x30, [sp, #0x50]
  10003d360  ldp     x20, x19, [sp, #0x40]
  10003d364  ldp     x22, x21, [sp, #0x30]
  10003d368  ldp     x24, x23, [sp, #0x20]
  10003d36c  ldp     x26, x25, [sp, #0x10]
  10003d370  ldp     x28, x27, [sp], #0x60
  10003d374  ret
  10003d378  mov     x19, x0
  10003d37c  b       loc_10003d3f8
  10003d380  mov     x19, x0
  10003d384  b       loc_10003d3e0
  10003d388  mov     x19, x0
  10003d38c  mov     x0, x22
  10003d390  bl      _objc_release
  10003d394  b       loc_10003d3f0
  10003d398  mov     x19, x0
  10003d39c  mov     x0, x26
  10003d3a0  b       loc_10003d3dc
  10003d3a4  mov     x19, x0
  10003d3a8  mov     x0, x27
  10003d3ac  bl      _objc_release
  10003d3b0  b       loc_10003d3d0
  10003d3b4  mov     x19, x0
  10003d3b8  b       loc_10003d3e0
  10003d3bc  mov     x19, x0
  10003d3c0  b       loc_10003d3e0
  10003d3c4  mov     x19, x0
  10003d3c8  b       loc_10003d3d8
  10003d3cc  mov     x19, x0
loc_10003d3d0:
  10003d3d0  mov     x0, x26
  10003d3d4  bl      _objc_release
loc_10003d3d8:
  10003d3d8  mov     x0, x25
loc_10003d3dc:
  10003d3dc  bl      _objc_release
loc_10003d3e0:
  10003d3e0  mov     x0, x24
  10003d3e4  bl      _objc_release
  10003d3e8  b       loc_10003d3f8
  10003d3ec  mov     x19, x0
loc_10003d3f0:
  10003d3f0  mov     x0, x21
  10003d3f4  bl      _objc_release
loc_10003d3f8:
  10003d3f8  mov     x0, x19
  10003d3fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]
; address 0x10003d400  size 1416  kind objc
; ======================================================================
  10003d400  stp     x28, x27, [sp, #-0x60]!
  10003d404  stp     x26, x25, [sp, #0x10]
  10003d408  stp     x24, x23, [sp, #0x20]
  10003d40c  stp     x22, x21, [sp, #0x30]
  10003d410  stp     x20, x19, [sp, #0x40]
  10003d414  stp     x29, x30, [sp, #0x50]
  10003d418  add     x29, sp, #0x50
  10003d41c  sub     sp, sp, #0x60
  10003d420  mov     x23, x2
  10003d424  mov     x21, x0
  10003d428  adrp    x8, #0x10041f000
  10003d42c  ldrsw   x8, [x8, #0x8ac]                         ; ivar offset ADMissionForTopbarViewController.canSkip (+0x140)
  10003d430  ldrb    w8, [x21, x8]                            ; w8 = self->canSkip
  10003d434  cbz     w8, loc_10003d844                        ; if (self->canSkip == 0)
  10003d438  adrp    x8, #0x10041d000
  10003d43c  ldr     x0, [x8, #0xf18]                         ; class ADMissionManager
  10003d440  adrp    x8, #0x100417000
  10003d444  nop
  10003d448  ldr     x1, [x8, #0x848]
  10003d44c  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  10003d450  mov     x29, x29
  10003d454  bl      _objc_retainAutoreleasedReturnValue
  10003d458  mov     x22, x0
  10003d45c  adrp    x8, #0x100417000
  10003d460  nop
  10003d464  ldr     x20, [x8, #0x860]
  10003d468  mov     x0, x21
  10003d46c  mov     x1, x20
  10003d470  bl      _objc_msgSend                            ; [self mission]
  10003d474  mov     x29, x29
  10003d478  bl      _objc_retainAutoreleasedReturnValue
  10003d47c  mov     x24, x0
  10003d480  adrp    x8, #0x100418000
  10003d484  nop
  10003d488  ldr     x1, [x8, #0x6c0]
  10003d48c  mov     x0, x22
  10003d490  mov     x2, x24
  10003d494  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] replaceMission:[self mission]]
  10003d498  mov     x29, x29
  10003d49c  bl      _objc_retainAutoreleasedReturnValue
  10003d4a0  mov     x26, x0
  10003d4a4  mov     x0, x24
  10003d4a8  bl      _objc_release
  10003d4ac  mov     x0, x22
  10003d4b0  bl      _objc_release
  10003d4b4  adrp    x8, #0x100416000
  10003d4b8  nop
  10003d4bc  ldr     x24, [x8, #0xf18]
  10003d4c0  mov     x0, x21
  10003d4c4  mov     x1, x24
  10003d4c8  bl      _objc_msgSend                            ; [self view]
  10003d4cc  mov     x29, x29
  10003d4d0  bl      _objc_retainAutoreleasedReturnValue
  10003d4d4  mov     x22, x0
  10003d4d8  adrp    x8, #0x100416000
  10003d4dc  nop
  10003d4e0  ldr     x1, [x8, #0xba8]
  10003d4e4  mov     w2, #1
  10003d4e8  bl      _objc_msgSend                            ; [[self view] setHidden:1]
  10003d4ec  mov     x0, x22
  10003d4f0  bl      _objc_release
  10003d4f4  adrp    x22, #0x1003b0000
  10003d4f8  ldr     x22, [x22, #0x118]                       ; __NSConcreteStackBlock
  10003d4fc  adrp    x8, #0x10041d000
  10003d500  ldr     x19, [x8, #0xf98]                        ; class UIView
  10003d504  mov     w25, #-0x3e000000
  10003d508  str     x22, [sp, #0x38]
  10003d50c  stp     w25, wzr, [sp, #0x40]
  10003d510  adr     x8, #0x10003d988                         ; &-[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke
  10003d514  nop
  10003d518  str     x8, [sp, #0x48]
  10003d51c  adrp    x8, #0x1003b1000
  10003d520  add     x8, x8, #0x5b0                           ; &d_1003b15b0
  10003d524  str     x8, [sp, #0x50]
  10003d528  mov     x0, x21
  10003d52c  bl      _objc_retain
  10003d530  str     x0, [sp, #0x58]
  10003d534  str     x22, [sp, #8]
  10003d538  stp     w25, wzr, [sp, #0x10]
  10003d53c  adr     x8, #0x10003db50                         ; &-[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke_2
  10003d540  nop
  10003d544  str     x8, [sp, #0x18]
  10003d548  adrp    x8, #0x1003b1000
  10003d54c  add     x8, x8, #0x640                           ; &d_1003b1640
  10003d550  str     x8, [sp, #0x20]
  10003d554  bl      _objc_retain
  10003d558  mov     x22, x0
  10003d55c  str     x22, [sp, #0x28]
  10003d560  mov     x0, x26
  10003d564  str     x26, [sp]
  10003d568  bl      _objc_retain
  10003d56c  mov     x21, x0
  10003d570  str     x21, [sp, #0x30]
  10003d574  adrp    x8, #0x100417000
  10003d578  nop
  10003d57c  ldr     x1, [x8, #0x880]
  10003d580  fmov    d0, #0.25000000
  10003d584  add     x2, sp, #0x38
  10003d588  add     x3, sp, #8
  10003d58c  mov     x0, x19
  10003d590  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.25 animations:^{-[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke captures +0x20=self} completion:^{-[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke_2 captures +0x20=self, +0x28=[[ADMissionManager sharedMissionManager]…, +0x30=__NSConcreteStackBlock, +0x38=0xc2000000, +0x40=&-[ADMissionForTopbarViewController mark…, +0x48=&d_1003b15b0, +0x50=self}]
  10003d594  cbz     w23, loc_10003d824                       ; if (arg1 == 0)
  10003d598  adrp    x8, #0x100418000
  10003d59c  nop
  10003d5a0  ldr     x23, [x8, #0x650]
  10003d5a4  mov     x0, x22
  10003d5a8  mov     x1, x23
  10003d5ac  bl      _objc_msgSend                            ; [self reward]
  10003d5b0  mov     x29, x29
  10003d5b4  bl      _objc_retainAutoreleasedReturnValue
  10003d5b8  mov     x25, x0
  10003d5bc  mov     x0, x22
  10003d5c0  mov     x1, x20
  10003d5c4  bl      _objc_msgSend                            ; [self mission]
  10003d5c8  mov     x29, x29
  10003d5cc  bl      _objc_retainAutoreleasedReturnValue
  10003d5d0  mov     x26, x0
  10003d5d4  mov     x1, x23
  10003d5d8  bl      _objc_msgSend                            ; [[self mission] reward]
  10003d5dc  mov     x2, x0
  10003d5e0  adrp    x8, #0x100418000
  10003d5e4  nop
  10003d5e8  ldr     x1, [x8, #0x658]
  10003d5ec  mov     x0, x25
  10003d5f0  bl      _objc_msgSend                            ; [[self reward] setValue:[[self mission] reward]]
  10003d5f4  mov     x0, x26
  10003d5f8  bl      _objc_release
  10003d5fc  mov     x0, x25
  10003d600  bl      _objc_release
  10003d604  mov     x0, x22
  10003d608  mov     x1, x23
  10003d60c  bl      _objc_msgSend                            ; [self reward]
  10003d610  mov     x29, x29
  10003d614  bl      _objc_retainAutoreleasedReturnValue
  10003d618  mov     x25, x0
  10003d61c  adrp    x8, #0x10041d000
  10003d620  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10003d624  adrp    x8, #0x100416000
  10003d628  nop
  10003d62c  ldr     x1, [x8, #0xb28]
  10003d630  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10003d634  mov     x29, x29
  10003d638  bl      _objc_retainAutoreleasedReturnValue
  10003d63c  mov     x26, x0
  10003d640  adrp    x8, #0x100416000
  10003d644  nop
  10003d648  ldr     x1, [x8, #0xc18]
  10003d64c  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10003d650  mov     x29, x29
  10003d654  bl      _objc_retainAutoreleasedReturnValue
  10003d658  mov     x27, x0
  10003d65c  adrp    x8, #0x100417000
  10003d660  nop
  10003d664  ldr     x1, [x8, #0x6d0]
  10003d668  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] window]
  10003d66c  mov     x29, x29
  10003d670  bl      _objc_retainAutoreleasedReturnValue
  10003d674  mov     x28, x0
  10003d678  adrp    x8, #0x100417000
  10003d67c  nop
  10003d680  ldr     x1, [x8, #0xe30]
  10003d684  bl      _objc_msgSend                            ; [[[[UIApplication sharedApplication] delegate] window] rootViewController]
  10003d688  mov     x29, x29
  10003d68c  bl      _objc_retainAutoreleasedReturnValue
  10003d690  mov     x19, x0
  10003d694  adrp    x8, #0x100417000
  10003d698  nop
  10003d69c  ldr     x1, [x8, #0x7d8]
  10003d6a0  mov     x0, x25
  10003d6a4  mov     x2, x19
  10003d6a8  bl      _objc_msgSend                            ; [[self reward] setDelegate:[[[[UIApplication sharedApplication] delegate] window] rootViewController]]
  10003d6ac  mov     x0, x19
  10003d6b0  bl      _objc_release
  10003d6b4  mov     x0, x28
  10003d6b8  bl      _objc_release
  10003d6bc  mov     x0, x27
  10003d6c0  bl      _objc_release
  10003d6c4  mov     x0, x26
  10003d6c8  bl      _objc_release
  10003d6cc  mov     x0, x25
  10003d6d0  bl      _objc_release
  10003d6d4  mov     x0, x22
  10003d6d8  mov     x1, x23
  10003d6dc  bl      _objc_msgSend                            ; [self reward]
  10003d6e0  mov     x29, x29
  10003d6e4  bl      _objc_retainAutoreleasedReturnValue
  10003d6e8  mov     x25, x0
  10003d6ec  mov     x0, x22
  10003d6f0  mov     x1, x24
  10003d6f4  bl      _objc_msgSend                            ; [self view]
  10003d6f8  mov     x29, x29
  10003d6fc  bl      _objc_retainAutoreleasedReturnValue
  10003d700  mov     x24, x0
  10003d704  adrp    x8, #0x100417000
  10003d708  nop
  10003d70c  ldr     x27, [x8, #0x818]
  10003d710  mov     x1, x27
  10003d714  bl      _objc_msgSend                            ; [[self view] superview]
  10003d718  mov     x29, x29
  10003d71c  bl      _objc_retainAutoreleasedReturnValue
  10003d720  mov     x26, x0
  10003d724  mov     x1, x27
  10003d728  bl      _objc_msgSend                            ; [[[self view] superview] superview]
  10003d72c  mov     x29, x29
  10003d730  bl      _objc_retainAutoreleasedReturnValue
  10003d734  mov     x19, x0
  10003d738  adrp    x8, #0x100418000
  10003d73c  nop
  10003d740  ldr     x1, [x8, #0x6c8]
  10003d744  mov     x0, x25
  10003d748  mov     x2, x19
  10003d74c  bl      _objc_msgSend                            ; [[self reward] setFromView:[[[self view] superview] superview]]
  10003d750  mov     x0, x19
  10003d754  bl      _objc_release
  10003d758  mov     x0, x26
  10003d75c  bl      _objc_release
  10003d760  mov     x0, x24
  10003d764  bl      _objc_release
  10003d768  mov     x0, x25
  10003d76c  bl      _objc_release
  10003d770  mov     x0, x22
  10003d774  mov     x1, x23
  10003d778  bl      _objc_msgSend                            ; [self reward]
  10003d77c  mov     x29, x29
  10003d780  bl      _objc_retainAutoreleasedReturnValue
  10003d784  mov     x19, x0
  10003d788  adrp    x8, #0x100417000
  10003d78c  nop
  10003d790  ldr     x1, [x8, #0x970]
  10003d794  bl      _objc_msgSend                            ; [[self reward] animateCoins]
  10003d798  mov     x0, x19
  10003d79c  bl      _objc_release
  10003d7a0  adrp    x8, #0x10041d000
  10003d7a4  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10003d7a8  adrp    x8, #0x100416000
  10003d7ac  nop
  10003d7b0  ldr     x1, [x8, #0xec8]
  10003d7b4  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10003d7b8  mov     x29, x29
  10003d7bc  bl      _objc_retainAutoreleasedReturnValue
  10003d7c0  mov     x24, x0
  10003d7c4  mov     x0, x22
  10003d7c8  mov     x1, x20
  10003d7cc  bl      _objc_msgSend                            ; [self mission]
  10003d7d0  mov     x29, x29
  10003d7d4  bl      _objc_retainAutoreleasedReturnValue
  10003d7d8  mov     x22, x0
  10003d7dc  mov     x1, x23
  10003d7e0  bl      _objc_msgSend                            ; [[self mission] reward]
  10003d7e4  mov     x19, x0
  10003d7e8  adrp    x8, #0x100417000
  10003d7ec  nop
  10003d7f0  ldr     x1, [x8, #0x958]
  10003d7f4  mov     x0, x24
  10003d7f8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  10003d7fc  add     w2, w0, w19
  10003d800  adrp    x8, #0x100417000
  10003d804  nop
  10003d808  ldr     x1, [x8, #0x90]
  10003d80c  mov     x0, x24
  10003d810  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:([[ADInventory sharedInventory] coins] + [[self mission] reward])]
  10003d814  mov     x0, x22
  10003d818  bl      _objc_release
  10003d81c  mov     x0, x24
  10003d820  bl      _objc_release
loc_10003d824:
  10003d824  ldr     x0, [sp, #0x30]
  10003d828  bl      _objc_release
  10003d82c  ldr     x0, [sp, #0x28]
  10003d830  bl      _objc_release
  10003d834  ldr     x0, [sp, #0x58]
  10003d838  bl      _objc_release
  10003d83c  mov     x0, x21
  10003d840  bl      _objc_release
loc_10003d844:
  10003d844  sub     sp, x29, #0x50
  10003d848  ldp     x29, x30, [sp, #0x50]
  10003d84c  ldp     x20, x19, [sp, #0x40]
  10003d850  ldp     x22, x21, [sp, #0x30]
  10003d854  ldp     x24, x23, [sp, #0x20]
  10003d858  ldp     x26, x25, [sp, #0x10]
  10003d85c  ldp     x28, x27, [sp], #0x60
  10003d860  ret
  10003d864  mov     x20, x0
  10003d868  b       loc_10003d960
  10003d86c  mov     x20, x0
  10003d870  mov     x0, x22
  10003d874  bl      _objc_release
  10003d878  b       loc_10003d958
  10003d87c  mov     x20, x0
  10003d880  b       loc_10003d890
  10003d884  mov     x20, x0
  10003d888  mov     x0, x24
  10003d88c  bl      _objc_release
loc_10003d890:
  10003d890  mov     x0, x22
  10003d894  b       loc_10003d97c
  10003d898  str     x26, [sp]
  10003d89c  mov     x20, x0
  10003d8a0  b       loc_10003d978
  10003d8a4  str     x26, [sp]
  10003d8a8  mov     x20, x0
  10003d8ac  mov     x0, x22
  10003d8b0  b       loc_10003d974
  10003d8b4  b       loc_10003d8c8
  10003d8b8  mov     x20, x0
  10003d8bc  b       loc_10003d938
  10003d8c0  mov     x20, x0
  10003d8c4  b       loc_10003d938
loc_10003d8c8:
  10003d8c8  mov     x20, x0
  10003d8cc  b       loc_10003d8fc
  10003d8d0  mov     x20, x0
  10003d8d4  b       loc_10003d8f4
  10003d8d8  mov     x20, x0
  10003d8dc  b       loc_10003d8ec
  10003d8e0  mov     x20, x0
  10003d8e4  mov     x0, x19
  10003d8e8  bl      _objc_release
loc_10003d8ec:
  10003d8ec  mov     x0, x28
  10003d8f0  bl      _objc_release
loc_10003d8f4:
  10003d8f4  mov     x0, x27
  10003d8f8  bl      _objc_release
loc_10003d8fc:
  10003d8fc  mov     x0, x26
  10003d900  b       loc_10003d934
  10003d904  mov     x20, x0
  10003d908  b       loc_10003d938
  10003d90c  mov     x20, x0
  10003d910  b       loc_10003d930
  10003d914  mov     x20, x0
  10003d918  b       loc_10003d928
  10003d91c  mov     x20, x0
  10003d920  mov     x0, x19
  10003d924  bl      _objc_release
loc_10003d928:
  10003d928  mov     x0, x26
  10003d92c  bl      _objc_release
loc_10003d930:
  10003d930  mov     x0, x24
loc_10003d934:
  10003d934  bl      _objc_release
loc_10003d938:
  10003d938  mov     x0, x25
  10003d93c  bl      _objc_release
  10003d940  b       loc_10003d960
  10003d944  mov     x20, x0
  10003d948  mov     x0, x19
  10003d94c  bl      _objc_release
  10003d950  b       loc_10003d960
  10003d954  mov     x20, x0
loc_10003d958:
  10003d958  mov     x0, x24
  10003d95c  bl      _objc_release
loc_10003d960:
  10003d960  ldr     x0, [sp, #0x30]
  10003d964  bl      _objc_release
  10003d968  ldr     x0, [sp, #0x28]
  10003d96c  bl      _objc_release
  10003d970  ldr     x0, [sp, #0x58]
loc_10003d974:
  10003d974  bl      _objc_release
loc_10003d978:
  10003d978  ldr     x0, [sp]
loc_10003d97c:
  10003d97c  bl      _objc_release
  10003d980  mov     x0, x20
  10003d984  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke
; address 0x10003d988  size 440  kind block
; ======================================================================
  10003d988  stp     x26, x25, [sp, #-0x50]!
  10003d98c  stp     x24, x23, [sp, #0x10]
  10003d990  stp     x22, x21, [sp, #0x20]
  10003d994  stp     x20, x19, [sp, #0x30]
  10003d998  stp     x29, x30, [sp, #0x40]
  10003d99c  add     x29, sp, #0x40
  10003d9a0  sub     sp, sp, #0xd0
  10003d9a4  mov     x20, x0
  10003d9a8  adrp    x23, #0x1003b0000
  10003d9ac  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  10003d9b0  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  10003d9b4  stur    x23, [x29, #-0x48]
  10003d9b8  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10003d9bc  adrp    x8, #0x100416000
  10003d9c0  nop
  10003d9c4  ldr     x21, [x8, #0xf18]
  10003d9c8  mov     x1, x21
  10003d9cc  bl      _objc_msgSend                            ; [self view]
  10003d9d0  mov     x29, x29
  10003d9d4  bl      _objc_retainAutoreleasedReturnValue
  10003d9d8  mov     x22, x0
  10003d9dc  adrp    x8, #0x100417000
  10003d9e0  nop
  10003d9e4  ldr     x19, [x8, #0x828]
  10003d9e8  movi    v0.16b, #0
  10003d9ec  mov     x1, x19
  10003d9f0  bl      _objc_msgSend                            ; [[self view] setAlpha:0]
  10003d9f4  mov     x0, x22
  10003d9f8  bl      _objc_release
  10003d9fc  stp     xzr, xzr, [sp, #0x38]
  10003da00  stp     xzr, xzr, [sp, #0x28]
  10003da04  stp     xzr, xzr, [sp, #0x18]
  10003da08  stp     xzr, xzr, [sp, #8]
  10003da0c  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10003da10  mov     x1, x21
  10003da14  bl      _objc_msgSend                            ; [self view]
  10003da18  mov     x29, x29
  10003da1c  bl      _objc_retainAutoreleasedReturnValue
  10003da20  mov     x21, x0
  10003da24  adrp    x8, #0x100417000
  10003da28  nop
  10003da2c  ldr     x1, [x8, #0x1c8]
  10003da30  bl      _objc_msgSend                            ; [[self view] subviews]
  10003da34  mov     x29, x29
  10003da38  bl      _objc_retainAutoreleasedReturnValue
  10003da3c  mov     x20, x0
  10003da40  mov     x0, x21
  10003da44  bl      _objc_release
  10003da48  adrp    x8, #0x100416000
  10003da4c  nop
  10003da50  ldr     x21, [x8, #0xe00]
  10003da54  add     x2, sp, #8
  10003da58  add     x3, sp, #0x48
  10003da5c  mov     w4, #0x10
  10003da60  mov     x0, x20
  10003da64  mov     x1, x21
  10003da68  bl      _objc_msgSend                            ; [[[self view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10003da6c  mov     x22, x0
  10003da70  cbz     x22, loc_10003dad8                       ; if ([[[self view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  10003da74  ldr     x8, [sp, #0x18]
  10003da78  ldr     x24, [x8]
loc_10003da7c:
  10003da7c  mov     x25, #0
loc_10003da80:
  10003da80  ldr     x8, [sp, #0x18]
  10003da84  ldr     x8, [x8]
  10003da88  cmp     x8, x24
  10003da8c  b.eq    loc_10003da98                            ; if (x8 == x24)
  10003da90  mov     x0, x20
  10003da94  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self view] subviews])
loc_10003da98:
  10003da98  ldr     x8, [sp, #0x10]
  10003da9c  ldr     x0, [x8, x25, lsl #3]
  10003daa0  movi    v0.16b, #0
  10003daa4  mov     x1, x19
  10003daa8  bl      _objc_msgSend                            ; [x0 setAlpha:0]
  10003daac  add     x25, x25, #1
  10003dab0  cmp     x25, x22
  10003dab4  b.lo    loc_10003da80                            ; if ((x25 + 1) <u [[[self view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  10003dab8  add     x2, sp, #8
  10003dabc  add     x3, sp, #0x48
  10003dac0  mov     w4, #0x10
  10003dac4  mov     x0, x20
  10003dac8  mov     x1, x21
  10003dacc  bl      _objc_msgSend                            ; [[[self view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10003dad0  mov     x22, x0
  10003dad4  cbnz    x22, loc_10003da7c                       ; if ([[[self view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_10003dad8:
  10003dad8  mov     x0, x20
  10003dadc  bl      _objc_release
  10003dae0  ldur    x8, [x29, #-0x48]
  10003dae4  sub     x8, x23, x8
  10003dae8  cbnz    x8, loc_10003db08                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10003daec  sub     sp, x29, #0x40
  10003daf0  ldp     x29, x30, [sp, #0x40]
  10003daf4  ldp     x20, x19, [sp, #0x30]
  10003daf8  ldp     x22, x21, [sp, #0x20]
  10003dafc  ldp     x24, x23, [sp, #0x10]
  10003db00  ldp     x26, x25, [sp], #0x50
  10003db04  ret
loc_10003db08:
  10003db08  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10003db0c:
  10003db0c  mov     x19, x0
  10003db10  mov     x0, x20
loc_10003db14:
  10003db14  bl      _objc_release
  10003db18  mov     x0, x19
  10003db1c  bl      __Unwind_Resume                          ; Unwind_Resume()
  10003db20  b       loc_10003db0c
  10003db24  mov     x19, x0
  10003db28  mov     x0, x22
  10003db2c  b       loc_10003db14
  10003db30  mov     x19, x0
  10003db34  mov     x0, x21
  10003db38  b       loc_10003db14
  10003db3c  b       loc_10003db0c

; ======================================================================
; sub_10003db40
; address 0x10003db40  size 8  kind sub
; ======================================================================
  10003db40  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10003db44  b       _objc_retain

; ======================================================================
; sub_10003db48
; address 0x10003db48  size 8  kind sub
; ======================================================================
  10003db48  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10003db4c  b       _objc_release

; ======================================================================
; -[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke_2
; address 0x10003db50  size 336  kind block
; ======================================================================
  10003db50  stp     x22, x21, [sp, #-0x30]!
  10003db54  stp     x20, x19, [sp, #0x10]
  10003db58  stp     x29, x30, [sp, #0x20]
  10003db5c  add     x29, sp, #0x20
  10003db60  sub     sp, sp, #0x50
  10003db64  mov     x19, x0
  10003db68  cbz     w1, loc_10003dc64                        ; if (blockarg1 == 0)
  10003db6c  ldp     x0, x2, [x19, #0x20]
  10003db70  adrp    x8, #0x100418000
  10003db74  nop
  10003db78  ldr     x1, [x8, #0x630]
  10003db7c  bl      _objc_msgSend                            ; [x0 setMission:x2]
  10003db80  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10003db84  adrp    x8, #0x100418000
  10003db88  nop
  10003db8c  ldr     x1, [x8, #0x638]
  10003db90  bl      _objc_msgSend                            ; [self refreshAndLoad]
  10003db94  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10003db98  adrp    x8, #0x100416000
  10003db9c  nop
  10003dba0  ldr     x1, [x8, #0xf18]
  10003dba4  bl      _objc_msgSend                            ; [self view]
  10003dba8  mov     x29, x29
  10003dbac  bl      _objc_retainAutoreleasedReturnValue
  10003dbb0  mov     x20, x0
  10003dbb4  adrp    x8, #0x100418000
  10003dbb8  nop
  10003dbbc  ldr     x1, [x8, #0x640]
  10003dbc0  bl      _objc_msgSend                            ; [[self view] layoutIfNeeded]
  10003dbc4  mov     x0, x20
  10003dbc8  bl      _objc_release
  10003dbcc  adrp    x8, #0x10041d000
  10003dbd0  adrp    x21, #0x1003b0000
  10003dbd4  ldr     x21, [x21, #0x118]                       ; __NSConcreteStackBlock
  10003dbd8  ldr     x20, [x8, #0xf98]                        ; class UIView
  10003dbdc  str     x21, [sp, #0x28]
  10003dbe0  mov     w22, #-0x3e000000
  10003dbe4  stp     w22, wzr, [sp, #0x30]
  10003dbe8  adr     x8, #0x10003dca0                         ; &-[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke_2_block_invoke
  10003dbec  nop
  10003dbf0  str     x8, [sp, #0x38]
  10003dbf4  adrp    x8, #0x1003b1000
  10003dbf8  add     x8, x8, #0x5e0                           ; &d_1003b15e0
  10003dbfc  str     x8, [sp, #0x40]
  10003dc00  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10003dc04  bl      _objc_retain
  10003dc08  str     x0, [sp, #0x48]
  10003dc0c  str     x21, [sp]
  10003dc10  stp     w22, wzr, [sp, #8]
  10003dc14  adr     x8, #0x10003de74                         ; &-[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke_2_block_invoke_2
  10003dc18  nop
  10003dc1c  str     x8, [sp, #0x10]
  10003dc20  adrp    x8, #0x1003b1000
  10003dc24  add     x8, x8, #0x610                           ; &d_1003b1610
  10003dc28  str     x8, [sp, #0x18]
  10003dc2c  bl      _objc_retain
  10003dc30  str     x0, [sp, #0x20]
  10003dc34  adrp    x8, #0x100417000
  10003dc38  nop
  10003dc3c  ldr     x1, [x8, #0x880]
  10003dc40  fmov    d0, #0.25000000
  10003dc44  add     x2, sp, #0x28
  10003dc48  mov     x3, sp
  10003dc4c  mov     x0, x20
  10003dc50  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.25 animations:^{-[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke_2_block_invoke captures +0x20=self} completion:^{-[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke_2_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADMissionForTopbarViewController mark…, +0x40=&d_1003b15e0, +0x48=self}]
  10003dc54  ldr     x0, [sp, #0x20]
  10003dc58  bl      _objc_release
  10003dc5c  ldr     x0, [sp, #0x48]
  10003dc60  bl      _objc_release
loc_10003dc64:
  10003dc64  sub     sp, x29, #0x20
  10003dc68  ldp     x29, x30, [sp, #0x20]
  10003dc6c  ldp     x20, x19, [sp, #0x10]
  10003dc70  ldp     x22, x21, [sp], #0x30
  10003dc74  ret
  10003dc78  mov     x19, x0
  10003dc7c  mov     x0, x20
  10003dc80  b       loc_10003dc94
  10003dc84  mov     x19, x0
  10003dc88  ldr     x0, [sp, #0x20]
  10003dc8c  bl      _objc_release
  10003dc90  ldr     x0, [sp, #0x48]
loc_10003dc94:
  10003dc94  bl      _objc_release
  10003dc98  mov     x0, x19
  10003dc9c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke_2_block_invoke
; address 0x10003dca0  size 452  kind block
; ======================================================================
  10003dca0  stp     d9, d8, [sp, #-0x60]!
  10003dca4  stp     x26, x25, [sp, #0x10]
  10003dca8  stp     x24, x23, [sp, #0x20]
  10003dcac  stp     x22, x21, [sp, #0x30]
  10003dcb0  stp     x20, x19, [sp, #0x40]
  10003dcb4  stp     x29, x30, [sp, #0x50]
  10003dcb8  add     x29, sp, #0x50
  10003dcbc  sub     sp, sp, #0xd0
  10003dcc0  mov     x20, x0
  10003dcc4  adrp    x23, #0x1003b0000
  10003dcc8  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  10003dccc  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  10003dcd0  stur    x23, [x29, #-0x58]
  10003dcd4  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10003dcd8  adrp    x8, #0x100416000
  10003dcdc  nop
  10003dce0  ldr     x21, [x8, #0xf18]
  10003dce4  mov     x1, x21
  10003dce8  bl      _objc_msgSend                            ; [self view]
  10003dcec  mov     x29, x29
  10003dcf0  bl      _objc_retainAutoreleasedReturnValue
  10003dcf4  mov     x22, x0
  10003dcf8  adrp    x8, #0x100417000
  10003dcfc  nop
  10003dd00  ldr     x19, [x8, #0x828]
  10003dd04  fmov    d0, #1.00000000
  10003dd08  mov     x1, x19
  10003dd0c  bl      _objc_msgSend                            ; [[self view] setAlpha:1]
  10003dd10  mov     x0, x22
  10003dd14  bl      _objc_release
  10003dd18  stp     xzr, xzr, [sp, #0x38]
  10003dd1c  stp     xzr, xzr, [sp, #0x28]
  10003dd20  stp     xzr, xzr, [sp, #0x18]
  10003dd24  stp     xzr, xzr, [sp, #8]
  10003dd28  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10003dd2c  mov     x1, x21
  10003dd30  bl      _objc_msgSend                            ; [self view]
  10003dd34  mov     x29, x29
  10003dd38  bl      _objc_retainAutoreleasedReturnValue
  10003dd3c  mov     x21, x0
  10003dd40  adrp    x8, #0x100417000
  10003dd44  nop
  10003dd48  ldr     x1, [x8, #0x1c8]
  10003dd4c  bl      _objc_msgSend                            ; [[self view] subviews]
  10003dd50  mov     x29, x29
  10003dd54  bl      _objc_retainAutoreleasedReturnValue
  10003dd58  mov     x20, x0
  10003dd5c  mov     x0, x21
  10003dd60  bl      _objc_release
  10003dd64  adrp    x8, #0x100416000
  10003dd68  nop
  10003dd6c  ldr     x21, [x8, #0xe00]
  10003dd70  add     x2, sp, #8
  10003dd74  add     x3, sp, #0x48
  10003dd78  mov     w4, #0x10
  10003dd7c  mov     x0, x20
  10003dd80  mov     x1, x21
  10003dd84  bl      _objc_msgSend                            ; [[[self view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10003dd88  mov     x22, x0
  10003dd8c  cbz     x22, loc_10003ddf8                       ; if ([[[self view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  10003dd90  ldr     x8, [sp, #0x18]
  10003dd94  ldr     x24, [x8]
  10003dd98  fmov    d8, #1.00000000
loc_10003dd9c:
  10003dd9c  mov     x25, #0
loc_10003dda0:
  10003dda0  ldr     x8, [sp, #0x18]
  10003dda4  ldr     x8, [x8]
  10003dda8  cmp     x8, x24
  10003ddac  b.eq    loc_10003ddb8                            ; if (x8 == x24)
  10003ddb0  mov     x0, x20
  10003ddb4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self view] subviews])
loc_10003ddb8:
  10003ddb8  ldr     x8, [sp, #0x10]
  10003ddbc  ldr     x0, [x8, x25, lsl #3]
  10003ddc0  mov     x1, x19
  10003ddc4  mov     v0.16b, v8.16b
  10003ddc8  bl      _objc_msgSend                            ; [x0 setAlpha:1]
  10003ddcc  add     x25, x25, #1
  10003ddd0  cmp     x25, x22
  10003ddd4  b.lo    loc_10003dda0                            ; if ((x25 + 1) <u [[[self view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  10003ddd8  add     x2, sp, #8
  10003dddc  add     x3, sp, #0x48
  10003dde0  mov     w4, #0x10
  10003dde4  mov     x0, x20
  10003dde8  mov     x1, x21
  10003ddec  bl      _objc_msgSend                            ; [[[self view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10003ddf0  mov     x22, x0
  10003ddf4  cbnz    x22, loc_10003dd9c                       ; if ([[[self view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_10003ddf8:
  10003ddf8  mov     x0, x20
  10003ddfc  bl      _objc_release
  10003de00  ldur    x8, [x29, #-0x58]
  10003de04  sub     x8, x23, x8
  10003de08  cbnz    x8, loc_10003de2c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10003de0c  sub     sp, x29, #0x50
  10003de10  ldp     x29, x30, [sp, #0x50]
  10003de14  ldp     x20, x19, [sp, #0x40]
  10003de18  ldp     x22, x21, [sp, #0x30]
  10003de1c  ldp     x24, x23, [sp, #0x20]
  10003de20  ldp     x26, x25, [sp, #0x10]
  10003de24  ldp     d9, d8, [sp], #0x60
  10003de28  ret
loc_10003de2c:
  10003de2c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10003de30:
  10003de30  mov     x19, x0
  10003de34  mov     x0, x20
loc_10003de38:
  10003de38  bl      _objc_release
  10003de3c  mov     x0, x19
  10003de40  bl      __Unwind_Resume                          ; Unwind_Resume()
  10003de44  b       loc_10003de30
  10003de48  mov     x19, x0
  10003de4c  mov     x0, x22
  10003de50  b       loc_10003de38
  10003de54  mov     x19, x0
  10003de58  mov     x0, x21
  10003de5c  b       loc_10003de38
  10003de60  b       loc_10003de30

; ======================================================================
; sub_10003de64
; address 0x10003de64  size 8  kind sub
; ======================================================================
  10003de64  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10003de68  b       _objc_retain

; ======================================================================
; sub_10003de6c
; address 0x10003de6c  size 8  kind sub
; ======================================================================
  10003de6c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10003de70  b       _objc_release

; ======================================================================
; -[ADMissionForTopbarViewController markAsCompletedAndSwapWithReward:]_block_invoke_2_block_invoke_2
; address 0x10003de74  size 100  kind block
; ======================================================================
  10003de74  stp     x20, x19, [sp, #-0x20]!
  10003de78  stp     x29, x30, [sp, #0x10]
  10003de7c  add     x29, sp, #0x10
  10003de80  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10003de84  adrp    x8, #0x100416000
  10003de88  nop
  10003de8c  ldr     x1, [x8, #0xf18]
  10003de90  bl      _objc_msgSend                            ; [self view]
  10003de94  mov     x29, x29
  10003de98  bl      _objc_retainAutoreleasedReturnValue
  10003de9c  mov     x19, x0
  10003dea0  adrp    x8, #0x100416000
  10003dea4  nop
  10003dea8  ldr     x1, [x8, #0xba8]
  10003deac  mov     w2, #0
  10003deb0  bl      _objc_msgSend                            ; [[self view] setHidden:0]
  10003deb4  mov     x0, x19
  10003deb8  ldp     x29, x30, [sp, #0x10]
  10003debc  ldp     x20, x19, [sp], #0x20
  10003dec0  b       _objc_release
  10003dec4  mov     x20, x0
  10003dec8  mov     x0, x19
  10003decc  bl      _objc_release
  10003ded0  mov     x0, x20
  10003ded4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10003ded8
; address 0x10003ded8  size 8  kind sub
; ======================================================================
  10003ded8  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10003dedc  b       _objc_retain

; ======================================================================
; sub_10003dee0
; address 0x10003dee0  size 8  kind sub
; ======================================================================
  10003dee0  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10003dee4  b       _objc_release

; ======================================================================
; sub_10003dee8
; address 0x10003dee8  size 40  kind sub
; ======================================================================
  10003dee8  stp     x20, x19, [sp, #-0x20]!
  10003deec  stp     x29, x30, [sp, #0x10]
  10003def0  add     x29, sp, #0x10
  10003def4  mov     x19, x1
  10003def8  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10003defc  bl      _objc_retain
  10003df00  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10003df04  ldp     x29, x30, [sp, #0x10]
  10003df08  ldp     x20, x19, [sp], #0x20
  10003df0c  b       _objc_retain

; ======================================================================
; sub_10003df10
; address 0x10003df10  size 40  kind sub
; ======================================================================
  10003df10  stp     x20, x19, [sp, #-0x20]!
  10003df14  stp     x29, x30, [sp, #0x10]
  10003df18  add     x29, sp, #0x10
  10003df1c  mov     x19, x0
  10003df20  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10003df24  bl      _objc_release
  10003df28  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10003df2c  ldp     x29, x30, [sp, #0x10]
  10003df30  ldp     x20, x19, [sp], #0x20
  10003df34  b       _objc_release

; ======================================================================
; -[ADMissionForTopbarViewController didReceiveMemoryWarning]
; address 0x10003df38  size 60  kind objc
; ======================================================================
  10003df38  stp     x29, x30, [sp, #-0x10]!
  10003df3c  mov     x29, sp
  10003df40  sub     sp, sp, #0x10
  10003df44  str     x0, [sp]
  10003df48  adrp    x8, #0x10041e000
  10003df4c  ldr     x8, [x8, #0xcc0]
  10003df50  str     x8, [sp, #8]
  10003df54  adrp    x8, #0x100416000
  10003df58  nop
  10003df5c  ldr     x1, [x8, #0xbf8]
  10003df60  mov     x0, sp
  10003df64  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10003df68  mov     sp, x29
  10003df6c  ldp     x29, x30, [sp], #0x10
  10003df70  ret

; ======================================================================
; -[ADMissionForTopbarViewController description]
; address 0x10003df74  size 16  kind objc
; ======================================================================
  10003df74  adrp    x8, #0x10041f000
  10003df78  ldrsw   x8, [x8, #0x8b0]                         ; ivar offset ADMissionForTopbarViewController.description (+0x148)
  10003df7c  ldr     x0, [x0, x8]                             ; x0 = self->description
  10003df80  ret

; ======================================================================
; -[ADMissionForTopbarViewController setDescription:]
; address 0x10003df84  size 56  kind objc
; ======================================================================
  10003df84  stp     x20, x19, [sp, #-0x20]!
  10003df88  stp     x29, x30, [sp, #0x10]
  10003df8c  add     x29, sp, #0x10
  10003df90  mov     x19, x0
  10003df94  adrp    x8, #0x10041f000
  10003df98  ldrsw   x20, [x8, #0x8b0]                        ; ivar offset ADMissionForTopbarViewController.description (+0x148)
  10003df9c  mov     x0, x2
  10003dfa0  bl      _objc_retain
  10003dfa4  ldr     x8, [x19, x20]                           ; x8 = self->description
  10003dfa8  str     x0, [x19, x20]                           ; self->description = arg1
  10003dfac  mov     x0, x8
  10003dfb0  ldp     x29, x30, [sp, #0x10]
  10003dfb4  ldp     x20, x19, [sp], #0x20
  10003dfb8  b       _objc_release

; ======================================================================
; -[ADMissionForTopbarViewController rewardLabel]
; address 0x10003dfbc  size 16  kind objc
; ======================================================================
  10003dfbc  adrp    x8, #0x10041f000
  10003dfc0  ldrsw   x8, [x8, #0x8b4]                         ; ivar offset ADMissionForTopbarViewController._rewardLabel (+0x150)
  10003dfc4  ldr     x0, [x0, x8]                             ; x0 = self->_rewardLabel
  10003dfc8  ret

; ======================================================================
; -[ADMissionForTopbarViewController setRewardLabel:]
; address 0x10003dfcc  size 56  kind objc
; ======================================================================
  10003dfcc  stp     x20, x19, [sp, #-0x20]!
  10003dfd0  stp     x29, x30, [sp, #0x10]
  10003dfd4  add     x29, sp, #0x10
  10003dfd8  mov     x19, x0
  10003dfdc  adrp    x8, #0x10041f000
  10003dfe0  ldrsw   x20, [x8, #0x8b4]                        ; ivar offset ADMissionForTopbarViewController._rewardLabel (+0x150)
  10003dfe4  mov     x0, x2
  10003dfe8  bl      _objc_retain
  10003dfec  ldr     x8, [x19, x20]                           ; x8 = self->_rewardLabel
  10003dff0  str     x0, [x19, x20]                           ; self->_rewardLabel = arg1
  10003dff4  mov     x0, x8
  10003dff8  ldp     x29, x30, [sp, #0x10]
  10003dffc  ldp     x20, x19, [sp], #0x20
  10003e000  b       _objc_release

; ======================================================================
; -[ADMissionForTopbarViewController completion]
; address 0x10003e004  size 16  kind objc
; ======================================================================
  10003e004  adrp    x8, #0x10041f000
  10003e008  ldrsw   x8, [x8, #0x8b8]                         ; ivar offset ADMissionForTopbarViewController._completion (+0x158)
  10003e00c  ldr     x0, [x0, x8]                             ; x0 = self->_completion
  10003e010  ret

; ======================================================================
; -[ADMissionForTopbarViewController setCompletion:]
; address 0x10003e014  size 56  kind objc
; ======================================================================
  10003e014  stp     x20, x19, [sp, #-0x20]!
  10003e018  stp     x29, x30, [sp, #0x10]
  10003e01c  add     x29, sp, #0x10
  10003e020  mov     x19, x0
  10003e024  adrp    x8, #0x10041f000
  10003e028  ldrsw   x20, [x8, #0x8b8]                        ; ivar offset ADMissionForTopbarViewController._completion (+0x158)
  10003e02c  mov     x0, x2
  10003e030  bl      _objc_retain
  10003e034  ldr     x8, [x19, x20]                           ; x8 = self->_completion
  10003e038  str     x0, [x19, x20]                           ; self->_completion = arg1
  10003e03c  mov     x0, x8
  10003e040  ldp     x29, x30, [sp, #0x10]
  10003e044  ldp     x20, x19, [sp], #0x20
  10003e048  b       _objc_release

; ======================================================================
; -[ADMissionForTopbarViewController reward]
; address 0x10003e04c  size 16  kind objc
; ======================================================================
  10003e04c  adrp    x8, #0x10041f000
  10003e050  ldrsw   x8, [x8, #0x8bc]                         ; ivar offset ADMissionForTopbarViewController._reward (+0x160)
  10003e054  ldr     x0, [x0, x8]                             ; x0 = self->_reward
  10003e058  ret

; ======================================================================
; -[ADMissionForTopbarViewController setReward:]
; address 0x10003e05c  size 56  kind objc
; ======================================================================
  10003e05c  stp     x20, x19, [sp, #-0x20]!
  10003e060  stp     x29, x30, [sp, #0x10]
  10003e064  add     x29, sp, #0x10
  10003e068  mov     x19, x0
  10003e06c  adrp    x8, #0x10041f000
  10003e070  ldrsw   x20, [x8, #0x8bc]                        ; ivar offset ADMissionForTopbarViewController._reward (+0x160)
  10003e074  mov     x0, x2
  10003e078  bl      _objc_retain
  10003e07c  ldr     x8, [x19, x20]                           ; x8 = self->_reward
  10003e080  str     x0, [x19, x20]                           ; self->_reward = arg1
  10003e084  mov     x0, x8
  10003e088  ldp     x29, x30, [sp, #0x10]
  10003e08c  ldp     x20, x19, [sp], #0x20
  10003e090  b       _objc_release

; ======================================================================
; -[ADMissionForTopbarViewController skipButton]
; address 0x10003e094  size 16  kind objc
; ======================================================================
  10003e094  adrp    x8, #0x10041f000
  10003e098  ldrsw   x8, [x8, #0x8c0]                         ; ivar offset ADMissionForTopbarViewController._skipButton (+0x168)
  10003e09c  ldr     x0, [x0, x8]                             ; x0 = self->_skipButton
  10003e0a0  ret

; ======================================================================
; -[ADMissionForTopbarViewController setSkipButton:]
; address 0x10003e0a4  size 56  kind objc
; ======================================================================
  10003e0a4  stp     x20, x19, [sp, #-0x20]!
  10003e0a8  stp     x29, x30, [sp, #0x10]
  10003e0ac  add     x29, sp, #0x10
  10003e0b0  mov     x19, x0
  10003e0b4  adrp    x8, #0x10041f000
  10003e0b8  ldrsw   x20, [x8, #0x8c0]                        ; ivar offset ADMissionForTopbarViewController._skipButton (+0x168)
  10003e0bc  mov     x0, x2
  10003e0c0  bl      _objc_retain
  10003e0c4  ldr     x8, [x19, x20]                           ; x8 = self->_skipButton
  10003e0c8  str     x0, [x19, x20]                           ; self->_skipButton = arg1
  10003e0cc  mov     x0, x8
  10003e0d0  ldp     x29, x30, [sp, #0x10]
  10003e0d4  ldp     x20, x19, [sp], #0x20
  10003e0d8  b       _objc_release

; ======================================================================
; -[ADMissionForTopbarViewController skipDiamondsLabel]
; address 0x10003e0dc  size 16  kind objc
; ======================================================================
  10003e0dc  adrp    x8, #0x10041f000
  10003e0e0  ldrsw   x8, [x8, #0x8c4]                         ; ivar offset ADMissionForTopbarViewController._skipDiamondsLabel (+0x170)
  10003e0e4  ldr     x0, [x0, x8]                             ; x0 = self->_skipDiamondsLabel
  10003e0e8  ret

; ======================================================================
; -[ADMissionForTopbarViewController setSkipDiamondsLabel:]
; address 0x10003e0ec  size 56  kind objc
; ======================================================================
  10003e0ec  stp     x20, x19, [sp, #-0x20]!
  10003e0f0  stp     x29, x30, [sp, #0x10]
  10003e0f4  add     x29, sp, #0x10
  10003e0f8  mov     x19, x0
  10003e0fc  adrp    x8, #0x10041f000
  10003e100  ldrsw   x20, [x8, #0x8c4]                        ; ivar offset ADMissionForTopbarViewController._skipDiamondsLabel (+0x170)
  10003e104  mov     x0, x2
  10003e108  bl      _objc_retain
  10003e10c  ldr     x8, [x19, x20]                           ; x8 = self->_skipDiamondsLabel
  10003e110  str     x0, [x19, x20]                           ; self->_skipDiamondsLabel = arg1
  10003e114  mov     x0, x8
  10003e118  ldp     x29, x30, [sp, #0x10]
  10003e11c  ldp     x20, x19, [sp], #0x20
  10003e120  b       _objc_release

; ======================================================================
; -[ADMissionForTopbarViewController mission]
; address 0x10003e124  size 16  kind objc
; ======================================================================
  10003e124  adrp    x8, #0x10041f000
  10003e128  ldrsw   x2, [x8, #0x8c8]                         ; ivar offset ADMissionForTopbarViewController._mission (+0x178)
  10003e12c  mov     w3, #1
  10003e130  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADMissionForTopbarViewController setMission:]
; address 0x10003e134  size 12  kind objc
; ======================================================================
  10003e134  adrp    x8, #0x10041f000
  10003e138  ldrsw   x3, [x8, #0x8c8]                         ; ivar offset ADMissionForTopbarViewController._mission (+0x178)
  10003e13c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADMissionForTopbarViewController starImage]
; address 0x10003e140  size 16  kind objc
; ======================================================================
  10003e140  adrp    x8, #0x10041f000
  10003e144  ldrsw   x8, [x8, #0x8cc]                         ; ivar offset ADMissionForTopbarViewController._starImage (+0x180)
  10003e148  ldr     x0, [x0, x8]                             ; x0 = self->_starImage
  10003e14c  ret

; ======================================================================
; -[ADMissionForTopbarViewController setStarImage:]
; address 0x10003e150  size 56  kind objc
; ======================================================================
  10003e150  stp     x20, x19, [sp, #-0x20]!
  10003e154  stp     x29, x30, [sp, #0x10]
  10003e158  add     x29, sp, #0x10
  10003e15c  mov     x19, x0
  10003e160  adrp    x8, #0x10041f000
  10003e164  ldrsw   x20, [x8, #0x8cc]                        ; ivar offset ADMissionForTopbarViewController._starImage (+0x180)
  10003e168  mov     x0, x2
  10003e16c  bl      _objc_retain
  10003e170  ldr     x8, [x19, x20]                           ; x8 = self->_starImage
  10003e174  str     x0, [x19, x20]                           ; self->_starImage = arg1
  10003e178  mov     x0, x8
  10003e17c  ldp     x29, x30, [sp, #0x10]
  10003e180  ldp     x20, x19, [sp], #0x20
  10003e184  b       _objc_release

; ======================================================================
; -[ADMissionForTopbarViewController completionBar]
; address 0x10003e188  size 16  kind objc
; ======================================================================
  10003e188  adrp    x8, #0x10041f000
  10003e18c  ldrsw   x8, [x8, #0x8d0]                         ; ivar offset ADMissionForTopbarViewController._completionBar (+0x188)
  10003e190  ldr     x0, [x0, x8]                             ; x0 = self->_completionBar
  10003e194  ret

; ======================================================================
; -[ADMissionForTopbarViewController setCompletionBar:]
; address 0x10003e198  size 56  kind objc
; ======================================================================
  10003e198  stp     x20, x19, [sp, #-0x20]!
  10003e19c  stp     x29, x30, [sp, #0x10]
  10003e1a0  add     x29, sp, #0x10
  10003e1a4  mov     x19, x0
  10003e1a8  adrp    x8, #0x10041f000
  10003e1ac  ldrsw   x20, [x8, #0x8d0]                        ; ivar offset ADMissionForTopbarViewController._completionBar (+0x188)
  10003e1b0  mov     x0, x2
  10003e1b4  bl      _objc_retain
  10003e1b8  ldr     x8, [x19, x20]                           ; x8 = self->_completionBar
  10003e1bc  str     x0, [x19, x20]                           ; self->_completionBar = arg1
  10003e1c0  mov     x0, x8
  10003e1c4  ldp     x29, x30, [sp, #0x10]
  10003e1c8  ldp     x20, x19, [sp], #0x20
  10003e1cc  b       _objc_release

; ======================================================================
; -[ADMissionForTopbarViewController completionBarBackground]
; address 0x10003e1d0  size 16  kind objc
; ======================================================================
  10003e1d0  adrp    x8, #0x10041f000
  10003e1d4  ldrsw   x8, [x8, #0x8d4]                         ; ivar offset ADMissionForTopbarViewController._completionBarBackground (+0x190)
  10003e1d8  ldr     x0, [x0, x8]                             ; x0 = self->_completionBarBackground
  10003e1dc  ret

; ======================================================================
; -[ADMissionForTopbarViewController setCompletionBarBackground:]
; address 0x10003e1e0  size 56  kind objc
; ======================================================================
  10003e1e0  stp     x20, x19, [sp, #-0x20]!
  10003e1e4  stp     x29, x30, [sp, #0x10]
  10003e1e8  add     x29, sp, #0x10
  10003e1ec  mov     x19, x0
  10003e1f0  adrp    x8, #0x10041f000
  10003e1f4  ldrsw   x20, [x8, #0x8d4]                        ; ivar offset ADMissionForTopbarViewController._completionBarBackground (+0x190)
  10003e1f8  mov     x0, x2
  10003e1fc  bl      _objc_retain
  10003e200  ldr     x8, [x19, x20]                           ; x8 = self->_completionBarBackground
  10003e204  str     x0, [x19, x20]                           ; self->_completionBarBackground = arg1
  10003e208  mov     x0, x8
  10003e20c  ldp     x29, x30, [sp, #0x10]
  10003e210  ldp     x20, x19, [sp], #0x20
  10003e214  b       _objc_release

; ======================================================================
; -[ADMissionForTopbarViewController missionBarDelegate]
; address 0x10003e218  size 16  kind objc
; ======================================================================
  10003e218  adrp    x8, #0x10041f000
  10003e21c  ldrsw   x2, [x8, #0x8d8]                         ; ivar offset ADMissionForTopbarViewController._missionBarDelegate (+0x198)
  10003e220  mov     w3, #1
  10003e224  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADMissionForTopbarViewController setMissionBarDelegate:]
; address 0x10003e228  size 12  kind objc
; ======================================================================
  10003e228  adrp    x8, #0x10041f000
  10003e22c  ldrsw   x3, [x8, #0x8d8]                         ; ivar offset ADMissionForTopbarViewController._missionBarDelegate (+0x198)
  10003e230  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADMissionForTopbarViewController placeholderTag]
; address 0x10003e234  size 16  kind objc
; ======================================================================
  10003e234  adrp    x8, #0x10041f000
  10003e238  ldrsw   x8, [x8, #0x8dc]                         ; ivar offset ADMissionForTopbarViewController._placeholderTag (+0x1a0)
  10003e23c  ldr     x0, [x0, x8]                             ; x0 = self->_placeholderTag
  10003e240  ret

; ======================================================================
; -[ADMissionForTopbarViewController setPlaceholderTag:]
; address 0x10003e244  size 16  kind objc
; ======================================================================
  10003e244  adrp    x8, #0x10041f000
  10003e248  ldrsw   x8, [x8, #0x8dc]                         ; ivar offset ADMissionForTopbarViewController._placeholderTag (+0x1a0)
  10003e24c  str     x2, [x0, x8]                             ; self->_placeholderTag = arg1
  10003e250  ret

; ======================================================================
; -[ADMissionForTopbarViewController .cxx_destruct]
; address 0x10003e254  size 244  kind objc
; ======================================================================
  10003e254  stp     x20, x19, [sp, #-0x20]!
  10003e258  stp     x29, x30, [sp, #0x10]
  10003e25c  add     x29, sp, #0x10
  10003e260  mov     x19, x0
  10003e264  adrp    x8, #0x10041f000
  10003e268  ldrsw   x8, [x8, #0x8d8]                         ; ivar offset ADMissionForTopbarViewController._missionBarDelegate (+0x198)
  10003e26c  add     x0, x19, x8
  10003e270  mov     x1, #0
  10003e274  bl      _objc_storeStrong
  10003e278  adrp    x8, #0x10041f000
  10003e27c  ldrsw   x8, [x8, #0x8d4]                         ; ivar offset ADMissionForTopbarViewController._completionBarBackground (+0x190)
  10003e280  add     x0, x19, x8
  10003e284  mov     x1, #0
  10003e288  bl      _objc_storeStrong
  10003e28c  adrp    x8, #0x10041f000
  10003e290  ldrsw   x8, [x8, #0x8d0]                         ; ivar offset ADMissionForTopbarViewController._completionBar (+0x188)
  10003e294  add     x0, x19, x8
  10003e298  mov     x1, #0
  10003e29c  bl      _objc_storeStrong
  10003e2a0  adrp    x8, #0x10041f000
  10003e2a4  ldrsw   x8, [x8, #0x8cc]                         ; ivar offset ADMissionForTopbarViewController._starImage (+0x180)
  10003e2a8  add     x0, x19, x8
  10003e2ac  mov     x1, #0
  10003e2b0  bl      _objc_storeStrong
  10003e2b4  adrp    x8, #0x10041f000
  10003e2b8  ldrsw   x8, [x8, #0x8c8]                         ; ivar offset ADMissionForTopbarViewController._mission (+0x178)
  10003e2bc  add     x0, x19, x8
  10003e2c0  mov     x1, #0
  10003e2c4  bl      _objc_storeStrong
  10003e2c8  adrp    x8, #0x10041f000
  10003e2cc  ldrsw   x8, [x8, #0x8c4]                         ; ivar offset ADMissionForTopbarViewController._skipDiamondsLabel (+0x170)
  10003e2d0  add     x0, x19, x8
  10003e2d4  mov     x1, #0
  10003e2d8  bl      _objc_storeStrong
  10003e2dc  adrp    x8, #0x10041f000
  10003e2e0  ldrsw   x8, [x8, #0x8c0]                         ; ivar offset ADMissionForTopbarViewController._skipButton (+0x168)
  10003e2e4  add     x0, x19, x8
  10003e2e8  mov     x1, #0
  10003e2ec  bl      _objc_storeStrong
  10003e2f0  adrp    x8, #0x10041f000
  10003e2f4  ldrsw   x8, [x8, #0x8bc]                         ; ivar offset ADMissionForTopbarViewController._reward (+0x160)
  10003e2f8  add     x0, x19, x8
  10003e2fc  mov     x1, #0
  10003e300  bl      _objc_storeStrong
  10003e304  adrp    x8, #0x10041f000
  10003e308  ldrsw   x8, [x8, #0x8b8]                         ; ivar offset ADMissionForTopbarViewController._completion (+0x158)
  10003e30c  add     x0, x19, x8
  10003e310  mov     x1, #0
  10003e314  bl      _objc_storeStrong
  10003e318  adrp    x8, #0x10041f000
  10003e31c  ldrsw   x8, [x8, #0x8b4]                         ; ivar offset ADMissionForTopbarViewController._rewardLabel (+0x150)
  10003e320  add     x0, x19, x8
  10003e324  mov     x1, #0
  10003e328  bl      _objc_storeStrong
  10003e32c  mov     x1, #0
  10003e330  adrp    x8, #0x10041f000
  10003e334  ldrsw   x8, [x8, #0x8b0]                         ; ivar offset ADMissionForTopbarViewController.description (+0x148)
  10003e338  add     x0, x19, x8
  10003e33c  ldp     x29, x30, [sp, #0x10]
  10003e340  ldp     x20, x19, [sp], #0x20
  10003e344  b       _objc_storeStrong
