// unit S3DAbstractModel — 6 functions
//   0x100107624     236  +[S3DAbstractModel decode:]
//   0x100107710     232  -[S3DAbstractModel encode]
//   0x1001077f8     112  -[S3DAbstractModel description]
//   0x100107868      16  -[S3DAbstractModel xId]
//   0x100107878      56  -[S3DAbstractModel setXId:]
//   0x1001078b0      20  -[S3DAbstractModel .cxx_destruct]

; ======================================================================
; +[S3DAbstractModel decode:]
; address 0x100107624  size 236  kind objc
; ======================================================================
  100107624  stp     x22, x21, [sp, #-0x30]!
  100107628  stp     x20, x19, [sp, #0x10]
  10010762c  stp     x29, x30, [sp, #0x20]
  100107630  add     x29, sp, #0x20
  100107634  sub     sp, sp, #0x10
  100107638  mov     x20, x0
  10010763c  adrp    x8, #0x10041d000
  100107640  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100107644  adrp    x8, #0x100417000
  100107648  nop
  10010764c  ldr     x1, [x8, #0x4f0]
  100107650  bl      _objc_msgSend                            ; [S3DEngine engine]
  100107654  mov     x29, x29
  100107658  bl      _objc_retainAutoreleasedReturnValue
  10010765c  mov     x19, x0
  100107660  adrp    x8, #0x100417000
  100107664  nop
  100107668  ldr     x1, [x8, #0x2e0]
  10010766c  mov     x0, x20
  100107670  bl      _objc_msgSend                            ; [S3DAbstractModel class]
  100107674  bl      _NSStringFromClass                       ; NSStringFromClass([S3DAbstractModel class])
  100107678  mov     x29, x29
  10010767c  bl      _objc_retainAutoreleasedReturnValue
  100107680  mov     x20, x0
  100107684  adrp    x8, #0x10041b000
  100107688  nop
  10010768c  ldr     x1, [x8, #0x800]
  100107690  str     x20, [sp]
  100107694  adrp    x3, #0x1003c3000
  100107698  add     x3, x3, #0x970                           ; @"%@ should override `(id<S3DEncodable>) (SExp *) decode: (SExp *)`"
  10010769c  mov     x0, x19
  1001076a0  mov     w2, #0
  1001076a4  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:0 format:@"%@ should override `(id<S3DEncodable>) (SExp *) decode: (SExp *)`"]
  1001076a8  mov     x0, x20
  1001076ac  bl      _objc_release
  1001076b0  mov     x0, x19
  1001076b4  bl      _objc_release
  1001076b8  adrp    x8, #0x10041e000
  1001076bc  ldr     x0, [x8, #0x4e0]                         ; class S3DAbstractModel
  1001076c0  adrp    x8, #0x100418000
  1001076c4  nop
  1001076c8  ldr     x1, [x8, #0xe90]
  1001076cc  bl      _objc_msgSend                            ; [S3DAbstractModel new]
  1001076d0  sub     sp, x29, #0x20
  1001076d4  ldp     x29, x30, [sp, #0x20]
  1001076d8  ldp     x20, x19, [sp, #0x10]
  1001076dc  ldp     x22, x21, [sp], #0x30
  1001076e0  b       _objc_autoreleaseReturnValue
  1001076e4  mov     x21, x0
  1001076e8  b       loc_100107700
  1001076ec  mov     x21, x0
  1001076f0  b       loc_100107708
  1001076f4  mov     x21, x0
  1001076f8  mov     x0, x20
  1001076fc  bl      _objc_release
loc_100107700:
  100107700  mov     x0, x19
  100107704  bl      _objc_release
loc_100107708:
  100107708  mov     x0, x21
  10010770c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DAbstractModel encode]
; address 0x100107710  size 232  kind objc
; ======================================================================
  100107710  stp     x22, x21, [sp, #-0x30]!
  100107714  stp     x20, x19, [sp, #0x10]
  100107718  stp     x29, x30, [sp, #0x20]
  10010771c  add     x29, sp, #0x20
  100107720  sub     sp, sp, #0x10
  100107724  mov     x20, x0
  100107728  adrp    x8, #0x10041d000
  10010772c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100107730  adrp    x8, #0x100417000
  100107734  nop
  100107738  ldr     x1, [x8, #0x4f0]
  10010773c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100107740  mov     x29, x29
  100107744  bl      _objc_retainAutoreleasedReturnValue
  100107748  mov     x19, x0
  10010774c  adrp    x8, #0x100417000
  100107750  nop
  100107754  ldr     x1, [x8, #0x2e0]
  100107758  mov     x0, x20
  10010775c  bl      _objc_msgSend                            ; [self class]
  100107760  bl      _NSStringFromClass                       ; NSStringFromClass([self class])
  100107764  mov     x29, x29
  100107768  bl      _objc_retainAutoreleasedReturnValue
  10010776c  mov     x20, x0
  100107770  adrp    x8, #0x10041b000
  100107774  nop
  100107778  ldr     x1, [x8, #0x800]
  10010777c  str     x20, [sp]
  100107780  adrp    x3, #0x1003c3000
  100107784  add     x3, x3, #0x990                           ; @"%@ should override `(SExp *) encode`"
  100107788  mov     x0, x19
  10010778c  mov     w2, #0
  100107790  bl      _objc_msgSend                            ; [[S3DEngine engine] quietLog:0 format:@"%@ should override `(SExp *) encode`"]
  100107794  mov     x0, x20
  100107798  bl      _objc_release
  10010779c  mov     x0, x19
  1001077a0  bl      _objc_release
  1001077a4  adrp    x8, #0x10041e000
  1001077a8  ldr     x0, [x8, #0x488]                         ; class SExp
  1001077ac  adrp    x8, #0x10041b000
  1001077b0  nop
  1001077b4  ldr     x1, [x8, #0x260]
  1001077b8  adrp    x2, #0x1003c3000
  1001077bc  add     x2, x2, #0x9b0                           ; @"Cannot ship without proper serialisation support!"
  1001077c0  sub     sp, x29, #0x20
  1001077c4  ldp     x29, x30, [sp, #0x20]
  1001077c8  ldp     x20, x19, [sp, #0x10]
  1001077cc  ldp     x22, x21, [sp], #0x30
  1001077d0  b       _objc_msgSend                            ; [SExp sexp:@"Cannot ship without proper serialisation support!"]
  1001077d4  mov     x21, x0
  1001077d8  b       loc_1001077e8
  1001077dc  mov     x21, x0
  1001077e0  mov     x0, x20
  1001077e4  bl      _objc_release
loc_1001077e8:
  1001077e8  mov     x0, x19
  1001077ec  bl      _objc_release
  1001077f0  mov     x0, x21
  1001077f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DAbstractModel description]
; address 0x1001077f8  size 112  kind objc
; ======================================================================
  1001077f8  stp     x20, x19, [sp, #-0x20]!
  1001077fc  stp     x29, x30, [sp, #0x10]
  100107800  add     x29, sp, #0x10
  100107804  adrp    x8, #0x10041b000
  100107808  nop
  10010780c  ldr     x1, [x8, #0x940]
  100107810  bl      _objc_msgSend                            ; [self encode]
  100107814  mov     x29, x29
  100107818  bl      _objc_retainAutoreleasedReturnValue
  10010781c  mov     x19, x0
  100107820  adrp    x8, #0x100418000
  100107824  nop
  100107828  ldr     x1, [x8, #0x648]
  10010782c  bl      _objc_msgSend                            ; [[self encode] description]
  100107830  mov     x29, x29
  100107834  bl      _objc_retainAutoreleasedReturnValue
  100107838  mov     x20, x0
  10010783c  mov     x0, x19
  100107840  bl      _objc_release
  100107844  mov     x0, x20
  100107848  ldp     x29, x30, [sp, #0x10]
  10010784c  ldp     x20, x19, [sp], #0x20
  100107850  b       _objc_autoreleaseReturnValue
  100107854  mov     x20, x0
  100107858  mov     x0, x19
  10010785c  bl      _objc_release
  100107860  mov     x0, x20
  100107864  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[S3DAbstractModel xId]
; address 0x100107868  size 16  kind objc
; ======================================================================
  100107868  adrp    x8, #0x100420000
  10010786c  ldrsw   x8, [x8, #0x704]                         ; ivar offset S3DAbstractModel.xId (+0x8)
  100107870  ldr     x0, [x0, x8]                             ; x0 = self->xId
  100107874  ret

; ======================================================================
; -[S3DAbstractModel setXId:]
; address 0x100107878  size 56  kind objc
; ======================================================================
  100107878  stp     x20, x19, [sp, #-0x20]!
  10010787c  stp     x29, x30, [sp, #0x10]
  100107880  add     x29, sp, #0x10
  100107884  mov     x19, x0
  100107888  adrp    x8, #0x100420000
  10010788c  ldrsw   x20, [x8, #0x704]                        ; ivar offset S3DAbstractModel.xId (+0x8)
  100107890  mov     x0, x2
  100107894  bl      _objc_retain
  100107898  ldr     x8, [x19, x20]                           ; x8 = self->xId
  10010789c  str     x0, [x19, x20]                           ; self->xId = arg1
  1001078a0  mov     x0, x8
  1001078a4  ldp     x29, x30, [sp, #0x10]
  1001078a8  ldp     x20, x19, [sp], #0x20
  1001078ac  b       _objc_release

; ======================================================================
; -[S3DAbstractModel .cxx_destruct]
; address 0x1001078b0  size 20  kind objc
; ======================================================================
  1001078b0  mov     x1, #0
  1001078b4  adrp    x8, #0x100420000
  1001078b8  ldrsw   x8, [x8, #0x704]                         ; ivar offset S3DAbstractModel.xId (+0x8)
  1001078bc  add     x0, x0, x8
  1001078c0  b       _objc_storeStrong
