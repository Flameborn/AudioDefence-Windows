// unit SExpValidityChecker — 5 functions
//   0x1000e0590     116  +[SExpValidityChecker simpleValidityChecker:]
//   0x1000e0604     164  -[SExpValidityChecker initWithUnicharStream:]
//   0x1000e06a8     224  -[SExpValidityChecker isBasicSyntaxValid]
//   0x1000e0788      92  -[SExpValidityChecker dealloc]
//   0x1000e07e4      20  -[SExpValidityChecker .cxx_destruct]

; ======================================================================
; +[SExpValidityChecker simpleValidityChecker:]
; address 0x1000e0590  size 116  kind objc
; ======================================================================
  1000e0590  stp     x20, x19, [sp, #-0x20]!
  1000e0594  stp     x29, x30, [sp, #0x10]
  1000e0598  add     x29, sp, #0x10
  1000e059c  mov     x0, x2
  1000e05a0  bl      _objc_retain
  1000e05a4  mov     x19, x0
  1000e05a8  adrp    x8, #0x10041e000
  1000e05ac  ldr     x0, [x8, #0x480]                         ; class SExpValidityChecker
  1000e05b0  adrp    x8, #0x100416000
  1000e05b4  nop
  1000e05b8  ldr     x1, [x8, #0xac8]
  1000e05bc  bl      _objc_msgSend                            ; [SExpValidityChecker alloc]
  1000e05c0  adrp    x8, #0x10041b000
  1000e05c4  nop
  1000e05c8  ldr     x1, [x8, #0x248]
  1000e05cc  mov     x2, x19
  1000e05d0  bl      _objc_msgSend                            ; [[SExpValidityChecker alloc] initWithUnicharStream:arg1]
  1000e05d4  mov     x20, x0
  1000e05d8  mov     x0, x19
  1000e05dc  bl      _objc_release
  1000e05e0  mov     x0, x20
  1000e05e4  ldp     x29, x30, [sp, #0x10]
  1000e05e8  ldp     x20, x19, [sp], #0x20
  1000e05ec  b       _objc_autoreleaseReturnValue
  1000e05f0  mov     x20, x0
  1000e05f4  mov     x0, x19
  1000e05f8  bl      _objc_release
  1000e05fc  mov     x0, x20
  1000e0600  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExpValidityChecker initWithUnicharStream:]
; address 0x1000e0604  size 164  kind objc
; ======================================================================
  1000e0604  stp     x22, x21, [sp, #-0x30]!
  1000e0608  stp     x20, x19, [sp, #0x10]
  1000e060c  stp     x29, x30, [sp, #0x20]
  1000e0610  add     x29, sp, #0x20
  1000e0614  sub     sp, sp, #0x10
  1000e0618  mov     x20, x0
  1000e061c  mov     x0, x2
  1000e0620  bl      _objc_retain
  1000e0624  mov     x19, x0
  1000e0628  str     x20, [sp]
  1000e062c  adrp    x8, #0x10041f000
  1000e0630  ldr     x8, [x8, #0x40]
  1000e0634  str     x8, [sp, #8]
  1000e0638  adrp    x8, #0x100416000
  1000e063c  nop
  1000e0640  ldr     x1, [x8, #0xab8]
  1000e0644  mov     x0, sp
  1000e0648  bl      _objc_msgSendSuper2                      ; [super init]
  1000e064c  mov     x20, x0
  1000e0650  cbz     x20, loc_1000e0674                       ; if (self == 0)
  1000e0654  adrp    x8, #0x100420000
  1000e0658  ldrsw   x21, [x8, #0x5bc]                        ; ivar offset SExpValidityChecker.inStream (+0x8)
  1000e065c  mov     x0, x19
  1000e0660  bl      _objc_retain
  1000e0664  ldr     x8, [x20, x21]                           ; x8 = self->inStream
  1000e0668  str     x0, [x20, x21]                           ; self->inStream = arg1
  1000e066c  mov     x0, x8
  1000e0670  bl      _objc_release
loc_1000e0674:
  1000e0674  mov     x0, x19
  1000e0678  bl      _objc_release
  1000e067c  mov     x0, x20
  1000e0680  sub     sp, x29, #0x20
  1000e0684  ldp     x29, x30, [sp, #0x20]
  1000e0688  ldp     x20, x19, [sp, #0x10]
  1000e068c  ldp     x22, x21, [sp], #0x30
  1000e0690  ret
  1000e0694  mov     x20, x0
  1000e0698  mov     x0, x19
  1000e069c  bl      _objc_release
  1000e06a0  mov     x0, x20
  1000e06a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExpValidityChecker isBasicSyntaxValid]
; address 0x1000e06a8  size 224  kind objc
; ======================================================================
  1000e06a8  stp     x24, x23, [sp, #-0x40]!
  1000e06ac  stp     x22, x21, [sp, #0x10]
  1000e06b0  stp     x20, x19, [sp, #0x20]
  1000e06b4  stp     x29, x30, [sp, #0x30]
  1000e06b8  add     x29, sp, #0x30
  1000e06bc  mov     x19, x0
  1000e06c0  adrp    x8, #0x100420000
  1000e06c4  ldrsw   x22, [x8, #0x5bc]                        ; ivar offset SExpValidityChecker.inStream (+0x8)
  1000e06c8  ldr     x0, [x19, x22]                           ; x0 = self->inStream
  1000e06cc  adrp    x8, #0x10041b000
  1000e06d0  nop
  1000e06d4  ldr     x20, [x8, #0x220]
  1000e06d8  mov     x1, x20
  1000e06dc  bl      _objc_msgSend                            ; [self->inStream hasNext]
  1000e06e0  mov     x23, #0
  1000e06e4  cbz     w0, loc_1000e076c                        ; if ([self->inStream hasNext] == 0)
  1000e06e8  adrp    x8, #0x10041b000
  1000e06ec  add     x8, x8, #0x228                           ; &@selector(next)
  1000e06f0  ldr     x21, [x8]
  1000e06f4  b       loc_1000e0700
loc_1000e06f8:
  1000e06f8  add     x23, x23, #1
  1000e06fc  b       loc_1000e075c
loc_1000e0700:
  1000e0700  mov     w24, #0
loc_1000e0704:
  1000e0704  ldr     x0, [x19, x22]                           ; x0 = self->inStream
  1000e0708  mov     x1, x21
  1000e070c  bl      _objc_msgSend                            ; [self->inStream next]
  1000e0710  tbz     w24, #0, loc_1000e0720                   ; if (!(w24 & 1))
  1000e0714  cmp     w0, #0x22
  1000e0718  cset    w24, ne
  1000e071c  b       loc_1000e072c
loc_1000e0720:
  1000e0720  cmp     w0, #0x22
  1000e0724  b.ne    loc_1000e0740                            ; if ([self->inStream next] != 34)
  1000e0728  mov     w24, #1
loc_1000e072c:
  1000e072c  ldr     x0, [x19, x22]                           ; x0 = self->inStream
  1000e0730  mov     x1, x20
  1000e0734  bl      _objc_msgSend                            ; [self->inStream hasNext]
  1000e0738  tbnz    w0, #0, loc_1000e0704                    ; if (([self->inStream hasNext] & 1))
  1000e073c  b       loc_1000e076c
loc_1000e0740:
  1000e0740  cmp     w0, #0x29
  1000e0744  b.eq    loc_1000e0758                            ; if ([self->inStream next] == 41)
  1000e0748  cmp     w0, #0x28
  1000e074c  b.eq    loc_1000e06f8                            ; if ([self->inStream next] == 40)
  1000e0750  mov     w24, #0
  1000e0754  b       loc_1000e072c
loc_1000e0758:
  1000e0758  sub     x23, x23, #1
loc_1000e075c:
  1000e075c  ldr     x0, [x19, x22]                           ; x0 = self->inStream
  1000e0760  mov     x1, x20
  1000e0764  bl      _objc_msgSend                            ; [self->inStream hasNext]
  1000e0768  tbnz    w0, #0, loc_1000e0700                    ; if (([self->inStream hasNext] & 1))
loc_1000e076c:
  1000e076c  cmp     x23, #0
  1000e0770  cset    w0, eq
  1000e0774  ldp     x29, x30, [sp, #0x30]
  1000e0778  ldp     x20, x19, [sp, #0x20]
  1000e077c  ldp     x22, x21, [sp, #0x10]
  1000e0780  ldp     x24, x23, [sp], #0x40
  1000e0784  ret

; ======================================================================
; -[SExpValidityChecker dealloc]
; address 0x1000e0788  size 92  kind objc
; ======================================================================
  1000e0788  stp     x20, x19, [sp, #-0x20]!
  1000e078c  stp     x29, x30, [sp, #0x10]
  1000e0790  add     x29, sp, #0x10
  1000e0794  sub     sp, sp, #0x10
  1000e0798  mov     x19, x0
  1000e079c  adrp    x8, #0x100420000
  1000e07a0  ldrsw   x8, [x8, #0x5bc]                         ; ivar offset SExpValidityChecker.inStream (+0x8)
  1000e07a4  ldr     x0, [x19, x8]                            ; x0 = self->inStream
  1000e07a8  str     xzr, [x19, x8]                           ; self->inStream = 0
  1000e07ac  bl      _objc_release
  1000e07b0  str     x19, [sp]
  1000e07b4  adrp    x8, #0x10041f000
  1000e07b8  ldr     x8, [x8, #0x40]
  1000e07bc  str     x8, [sp, #8]
  1000e07c0  adrp    x8, #0x100416000
  1000e07c4  nop
  1000e07c8  ldr     x1, [x8, #0xfc8]
  1000e07cc  mov     x0, sp
  1000e07d0  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000e07d4  sub     sp, x29, #0x10
  1000e07d8  ldp     x29, x30, [sp, #0x10]
  1000e07dc  ldp     x20, x19, [sp], #0x20
  1000e07e0  ret

; ======================================================================
; -[SExpValidityChecker .cxx_destruct]
; address 0x1000e07e4  size 20  kind objc
; ======================================================================
  1000e07e4  mov     x1, #0
  1000e07e8  adrp    x8, #0x100420000
  1000e07ec  ldrsw   x8, [x8, #0x5bc]                         ; ivar offset SExpValidityChecker.inStream (+0x8)
  1000e07f0  add     x0, x0, x8
  1000e07f4  b       _objc_storeStrong
