// unit PEMetricsViewController — 32 functions
//   0x1000bf474     140  -[PEMetricsViewController initWithNibName:bundle:]
//   0x1000bf500    1256  -[PEMetricsViewController updateMetrics]
//   0x1000bf9e8       8  -[PEMetricsViewController shouldAutotate]
//   0x1000bf9f0     160  -[PEMetricsViewController viewDidLoad]
//   0x1000bfa90      60  -[PEMetricsViewController didReceiveMemoryWarning]
//   0x1000bfacc      60  -[PEMetricsViewController dealloc]
//   0x1000bfb08     308  -[PEMetricsViewController viewDidUnload]
//   0x1000bfc3c      16  -[PEMetricsViewController ctrlAppCPU]
//   0x1000bfc4c      56  -[PEMetricsViewController setCtrlAppCPU:]
//   0x1000bfc84      16  -[PEMetricsViewController ctrlLoadedSnds]
//   0x1000bfc94      56  -[PEMetricsViewController setCtrlLoadedSnds:]
//   0x1000bfccc      16  -[PEMetricsViewController ctrlMixPercent]
//   0x1000bfcdc      56  -[PEMetricsViewController setCtrlMixPercent:]
//   0x1000bfd14      16  -[PEMetricsViewController ctrlMixPercentLP]
//   0x1000bfd24      56  -[PEMetricsViewController setCtrlMixPercentLP:]
//   0x1000bfd5c      16  -[PEMetricsViewController ctrlTotalActiveSnds]
//   0x1000bfd6c      56  -[PEMetricsViewController setCtrlTotalActiveSnds:]
//   0x1000bfda4      16  -[PEMetricsViewController ctrlActSpatial]
//   0x1000bfdb4      56  -[PEMetricsViewController setCtrlActSpatial:]
//   0x1000bfdec      16  -[PEMetricsViewController ctrlActNonSpatial]
//   0x1000bfdfc      56  -[PEMetricsViewController setCtrlActNonSpatial:]
//   0x1000bfe34      16  -[PEMetricsViewController ctrlAudioMemMB]
//   0x1000bfe44      56  -[PEMetricsViewController setCtrlAudioMemMB:]
//   0x1000bfe7c      16  -[PEMetricsViewController ctrlPapaEngineVersion]
//   0x1000bfe8c      56  -[PEMetricsViewController setCtrlPapaEngineVersion:]
//   0x1000bfec4      16  -[PEMetricsViewController ctrlMixPercentMax]
//   0x1000bfed4      56  -[PEMetricsViewController setCtrlMixPercentMax:]
//   0x1000bff0c      16  -[PEMetricsViewController myViewController]
//   0x1000bff1c      16  -[PEMetricsViewController setMyViewController:]
//   0x1000bff2c      16  -[PEMetricsViewController ctrlCPUMeter]
//   0x1000bff3c      16  -[PEMetricsViewController setCtrlCPUMeter:]
//   0x1000bff4c     244  -[PEMetricsViewController .cxx_destruct]

; ======================================================================
; -[PEMetricsViewController initWithNibName:bundle:]
; address 0x1000bf474  size 140  kind objc
; ======================================================================
  1000bf474  stp     x22, x21, [sp, #-0x30]!
  1000bf478  stp     x20, x19, [sp, #0x10]
  1000bf47c  stp     x29, x30, [sp, #0x20]
  1000bf480  add     x29, sp, #0x20
  1000bf484  sub     sp, sp, #0x10
  1000bf488  mov     x20, x3
  1000bf48c  mov     x21, x0
  1000bf490  mov     x0, x2
  1000bf494  bl      _objc_retain
  1000bf498  mov     x19, x0
  1000bf49c  str     x21, [sp]
  1000bf4a0  adrp    x8, #0x10041e000
  1000bf4a4  ldr     x8, [x8, #0xf90]
  1000bf4a8  str     x8, [sp, #8]
  1000bf4ac  adrp    x8, #0x100416000
  1000bf4b0  nop
  1000bf4b4  ldr     x1, [x8, #0xb40]
  1000bf4b8  mov     x0, sp
  1000bf4bc  mov     x2, x19
  1000bf4c0  mov     x3, x20
  1000bf4c4  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000bf4c8  mov     x20, x0
  1000bf4cc  mov     x0, x19
  1000bf4d0  bl      _objc_release
  1000bf4d4  mov     x0, x20
  1000bf4d8  sub     sp, x29, #0x20
  1000bf4dc  ldp     x29, x30, [sp, #0x20]
  1000bf4e0  ldp     x20, x19, [sp, #0x10]
  1000bf4e4  ldp     x22, x21, [sp], #0x30
  1000bf4e8  ret
  1000bf4ec  mov     x20, x0
  1000bf4f0  mov     x0, x19
  1000bf4f4  bl      _objc_release
  1000bf4f8  mov     x0, x20
  1000bf4fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[PEMetricsViewController updateMetrics]
; address 0x1000bf500  size 1256  kind objc
; ======================================================================
  1000bf500  stp     d9, d8, [sp, #-0x60]!
  1000bf504  stp     x26, x25, [sp, #0x10]
  1000bf508  stp     x24, x23, [sp, #0x20]
  1000bf50c  stp     x22, x21, [sp, #0x30]
  1000bf510  stp     x20, x19, [sp, #0x40]
  1000bf514  stp     x29, x30, [sp, #0x50]
  1000bf518  add     x29, sp, #0x50
  1000bf51c  sub     sp, sp, #0x10
  1000bf520  mov     x19, x0
  1000bf524  adrp    x8, #0x100420000
  1000bf528  ldrsw   x8, [x8, #0x32c]                         ; ivar offset PEMetricsViewController._ctrlMixPercent (+0x158)
  1000bf52c  ldr     x23, [x19, x8]                           ; x23 = self->_ctrlMixPercent
  1000bf530  adrp    x24, #0x10041d000
  1000bf534  ldr     x20, [x24, #0xf78]                       ; class NSString
  1000bf538  adrp    x25, #0x10041d000
  1000bf53c  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1000bf540  adrp    x8, #0x100418000
  1000bf544  nop
  1000bf548  ldr     x1, [x8, #0x6d8]
  1000bf54c  bl      _objc_msgSend                            ; [S3DEngine metric_MixPercent]
  1000bf550  nop
  1000bf554  ldr     s8, #0x100181a10                         ; s8 = 100.0
  1000bf558  fmul    s0, s0, s8
  1000bf55c  fcvt    d0, s0
  1000bf560  adrp    x8, #0x100416000
  1000bf564  nop
  1000bf568  ldr     x21, [x8, #0xee8]
  1000bf56c  str     d0, [sp]
  1000bf570  adrp    x2, #0x1003c1000
  1000bf574  add     x2, x2, #0xe30                           ; @"%03.02f"
  1000bf578  mov     x0, x20
  1000bf57c  mov     x1, x21
  1000bf580  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%03.02f", ([S3DEngine metric_MixPercent] * 100)]
  1000bf584  mov     x29, x29
  1000bf588  bl      _objc_retainAutoreleasedReturnValue
  1000bf58c  mov     x22, x0
  1000bf590  adrp    x8, #0x100416000
  1000bf594  nop
  1000bf598  ldr     x20, [x8, #0xb68]
  1000bf59c  mov     x0, x23
  1000bf5a0  mov     x1, x20
  1000bf5a4  mov     x2, x22
  1000bf5a8  bl      _objc_msgSend                            ; [self->_ctrlMixPercent setText:[NSString stringWithFormat:@"%03.02f", ([S3DEngine metric_MixPercent] * 100)]]
  1000bf5ac  mov     x0, x22
  1000bf5b0  bl      _objc_release
  1000bf5b4  adrp    x8, #0x100420000
  1000bf5b8  ldrsw   x8, [x8, #0x330]                         ; ivar offset PEMetricsViewController._ctrlMixPercentLP (+0x160)
  1000bf5bc  ldr     x23, [x19, x8]                           ; x23 = self->_ctrlMixPercentLP
  1000bf5c0  ldr     x22, [x24, #0xf78]                       ; class NSString
  1000bf5c4  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1000bf5c8  adrp    x8, #0x100418000
  1000bf5cc  nop
  1000bf5d0  ldr     x1, [x8, #0x6e0]
  1000bf5d4  bl      _objc_msgSend                            ; [S3DEngine metric_MixPercentLP]
  1000bf5d8  fmul    s0, s0, s8
  1000bf5dc  fcvt    d0, s0
  1000bf5e0  str     d0, [sp]
  1000bf5e4  adrp    x2, #0x1003c1000
  1000bf5e8  add     x2, x2, #0xe30                           ; @"%03.02f"
  1000bf5ec  mov     x0, x22
  1000bf5f0  mov     x1, x21
  1000bf5f4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%03.02f", ([S3DEngine metric_MixPercentLP] * 100)]
  1000bf5f8  mov     x29, x29
  1000bf5fc  bl      _objc_retainAutoreleasedReturnValue
  1000bf600  mov     x22, x0
  1000bf604  mov     x0, x23
  1000bf608  mov     x1, x20
  1000bf60c  mov     x2, x22
  1000bf610  bl      _objc_msgSend                            ; [self->_ctrlMixPercentLP setText:[NSString stringWithFormat:@"%03.02f", ([S3DEngine metric_MixPercentLP] * 100)]]
  1000bf614  mov     x0, x22
  1000bf618  bl      _objc_release
  1000bf61c  adrp    x8, #0x100420000
  1000bf620  ldrsw   x8, [x8, #0x334]                         ; ivar offset PEMetricsViewController._ctrlMixPercentMax (+0x190)
  1000bf624  ldr     x23, [x19, x8]                           ; x23 = self->_ctrlMixPercentMax
  1000bf628  ldr     x22, [x24, #0xf78]                       ; class NSString
  1000bf62c  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1000bf630  adrp    x8, #0x100418000
  1000bf634  nop
  1000bf638  ldr     x1, [x8, #0x6e8]
  1000bf63c  bl      _objc_msgSend                            ; [S3DEngine metric_MixPercentMax]
  1000bf640  fmul    s0, s0, s8
  1000bf644  fcvt    d0, s0
  1000bf648  str     d0, [sp]
  1000bf64c  adrp    x2, #0x1003c1000
  1000bf650  add     x2, x2, #0xe30                           ; @"%03.02f"
  1000bf654  mov     x0, x22
  1000bf658  mov     x1, x21
  1000bf65c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%03.02f", ([S3DEngine metric_MixPercentMax] * 100)]
  1000bf660  mov     x29, x29
  1000bf664  bl      _objc_retainAutoreleasedReturnValue
  1000bf668  mov     x22, x0
  1000bf66c  mov     x0, x23
  1000bf670  mov     x1, x20
  1000bf674  mov     x2, x22
  1000bf678  bl      _objc_msgSend                            ; [self->_ctrlMixPercentMax setText:[NSString stringWithFormat:@"%03.02f", ([S3DEngine metric_MixPercentMax] * 100)]]
  1000bf67c  mov     x0, x22
  1000bf680  bl      _objc_release
  1000bf684  adrp    x8, #0x100420000
  1000bf688  ldrsw   x8, [x8, #0x338]                         ; ivar offset PEMetricsViewController._ctrlAppCPU (+0x148)
  1000bf68c  ldr     x23, [x19, x8]                           ; x23 = self->_ctrlAppCPU
  1000bf690  ldr     x22, [x24, #0xf78]                       ; class NSString
  1000bf694  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1000bf698  adrp    x8, #0x100418000
  1000bf69c  nop
  1000bf6a0  ldr     x1, [x8, #0x6d0]
  1000bf6a4  bl      _objc_msgSend                            ; [S3DEngine metric_app_cpu_usage]
  1000bf6a8  fcvt    d0, s0
  1000bf6ac  str     d0, [sp]
  1000bf6b0  adrp    x2, #0x1003c1000
  1000bf6b4  add     x2, x2, #0xe30                           ; @"%03.02f"
  1000bf6b8  mov     x0, x22
  1000bf6bc  mov     x1, x21
  1000bf6c0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%03.02f", [S3DEngine metric_app_cpu_usage]]
  1000bf6c4  mov     x29, x29
  1000bf6c8  bl      _objc_retainAutoreleasedReturnValue
  1000bf6cc  mov     x22, x0
  1000bf6d0  mov     x0, x23
  1000bf6d4  mov     x1, x20
  1000bf6d8  mov     x2, x22
  1000bf6dc  bl      _objc_msgSend                            ; [self->_ctrlAppCPU setText:[NSString stringWithFormat:@"%03.02f", [S3DEngine metric_app_cpu_usage]]]
  1000bf6e0  mov     x0, x22
  1000bf6e4  bl      _objc_release
  1000bf6e8  adrp    x8, #0x100420000
  1000bf6ec  ldrsw   x8, [x8, #0x33c]                         ; ivar offset PEMetricsViewController._ctrlAudioMemMB (+0x180)
  1000bf6f0  ldr     x23, [x19, x8]                           ; x23 = self->_ctrlAudioMemMB
  1000bf6f4  ldr     x22, [x24, #0xf78]                       ; class NSString
  1000bf6f8  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1000bf6fc  adrp    x8, #0x10041a000
  1000bf700  nop
  1000bf704  ldr     x1, [x8, #0x9b0]
  1000bf708  bl      _objc_msgSend                            ; [S3DEngine metric_BufferBytesAllocated]
  1000bf70c  ucvtf   s0, w0
  1000bf710  nop
  1000bf714  ldr     s1, #0x100181d70                         ; s1 = 0.0009765625
  1000bf718  fmul    s0, s0, s1
  1000bf71c  fmul    s0, s0, s1
  1000bf720  fcvt    d0, s0
  1000bf724  str     d0, [sp]
  1000bf728  adrp    x2, #0x1003c1000
  1000bf72c  add     x2, x2, #0xe50                           ; @"%03.03f"
  1000bf730  mov     x0, x22
  1000bf734  mov     x1, x21
  1000bf738  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%03.03f", (((float)[S3DEngine metric_BufferBytesAllocated] * 0.000976562) * 0.000976562)]
  1000bf73c  mov     x29, x29
  1000bf740  bl      _objc_retainAutoreleasedReturnValue
  1000bf744  mov     x22, x0
  1000bf748  mov     x0, x23
  1000bf74c  mov     x1, x20
  1000bf750  mov     x2, x22
  1000bf754  bl      _objc_msgSend                            ; [self->_ctrlAudioMemMB setText:[NSString stringWithFormat:@"%03.03f", (((float)[S3DEngine metric_BufferBytesAllocated] * 0.000976562) * 0.000976562)]]
  1000bf758  mov     x0, x22
  1000bf75c  bl      _objc_release
  1000bf760  adrp    x8, #0x100420000
  1000bf764  ldrsw   x8, [x8, #0x340]                         ; ivar offset PEMetricsViewController._ctrlLoadedSnds (+0x150)
  1000bf768  ldr     x23, [x19, x8]                           ; x23 = self->_ctrlLoadedSnds
  1000bf76c  ldr     x22, [x24, #0xf78]                       ; class NSString
  1000bf770  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1000bf774  adrp    x8, #0x10041a000
  1000bf778  nop
  1000bf77c  ldr     x1, [x8, #0x9b8]
  1000bf780  bl      _objc_msgSend                            ; [S3DEngine metric_NumSoundsLoaded]
  1000bf784  str     x0, [sp]
  1000bf788  adrp    x2, #0x1003ba000
  1000bf78c  add     x2, x2, #0xc50                           ; @"%i"
  1000bf790  mov     x0, x22
  1000bf794  mov     x1, x21
  1000bf798  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [S3DEngine metric_NumSoundsLoaded]]
  1000bf79c  mov     x29, x29
  1000bf7a0  bl      _objc_retainAutoreleasedReturnValue
  1000bf7a4  mov     x22, x0
  1000bf7a8  mov     x0, x23
  1000bf7ac  mov     x1, x20
  1000bf7b0  mov     x2, x22
  1000bf7b4  bl      _objc_msgSend                            ; [self->_ctrlLoadedSnds setText:[NSString stringWithFormat:@"%i", [S3DEngine metric_NumSoundsLoaded]]]
  1000bf7b8  mov     x0, x22
  1000bf7bc  bl      _objc_release
  1000bf7c0  adrp    x8, #0x100420000
  1000bf7c4  ldrsw   x8, [x8, #0x344]                         ; ivar offset PEMetricsViewController._ctrlTotalActiveSnds (+0x168)
  1000bf7c8  ldr     x23, [x19, x8]                           ; x23 = self->_ctrlTotalActiveSnds
  1000bf7cc  ldr     x22, [x24, #0xf78]                       ; class NSString
  1000bf7d0  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1000bf7d4  adrp    x8, #0x10041a000
  1000bf7d8  nop
  1000bf7dc  ldr     x1, [x8, #0x9c0]
  1000bf7e0  bl      _objc_msgSend                            ; [S3DEngine metric_NumActiveSounds]
  1000bf7e4  str     x0, [sp]
  1000bf7e8  adrp    x2, #0x1003ba000
  1000bf7ec  add     x2, x2, #0xc50                           ; @"%i"
  1000bf7f0  mov     x0, x22
  1000bf7f4  mov     x1, x21
  1000bf7f8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [S3DEngine metric_NumActiveSounds]]
  1000bf7fc  mov     x29, x29
  1000bf800  bl      _objc_retainAutoreleasedReturnValue
  1000bf804  mov     x22, x0
  1000bf808  mov     x0, x23
  1000bf80c  mov     x1, x20
  1000bf810  mov     x2, x22
  1000bf814  bl      _objc_msgSend                            ; [self->_ctrlTotalActiveSnds setText:[NSString stringWithFormat:@"%i", [S3DEngine metric_NumActiveSounds]]]
  1000bf818  mov     x0, x22
  1000bf81c  bl      _objc_release
  1000bf820  adrp    x8, #0x100420000
  1000bf824  ldrsw   x8, [x8, #0x348]                         ; ivar offset PEMetricsViewController._ctrlActSpatial (+0x170)
  1000bf828  ldr     x23, [x19, x8]                           ; x23 = self->_ctrlActSpatial
  1000bf82c  ldr     x22, [x24, #0xf78]                       ; class NSString
  1000bf830  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1000bf834  adrp    x8, #0x10041a000
  1000bf838  nop
  1000bf83c  ldr     x1, [x8, #0x9c8]
  1000bf840  bl      _objc_msgSend                            ; [S3DEngine metric_NumActiveSpatialSounds]
  1000bf844  str     x0, [sp]
  1000bf848  adrp    x2, #0x1003ba000
  1000bf84c  add     x2, x2, #0xc50                           ; @"%i"
  1000bf850  mov     x0, x22
  1000bf854  mov     x1, x21
  1000bf858  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [S3DEngine metric_NumActiveSpatialSounds]]
  1000bf85c  mov     x29, x29
  1000bf860  bl      _objc_retainAutoreleasedReturnValue
  1000bf864  mov     x22, x0
  1000bf868  mov     x0, x23
  1000bf86c  mov     x1, x20
  1000bf870  mov     x2, x22
  1000bf874  bl      _objc_msgSend                            ; [self->_ctrlActSpatial setText:[NSString stringWithFormat:@"%i", [S3DEngine metric_NumActiveSpatialSounds]]]
  1000bf878  mov     x0, x22
  1000bf87c  bl      _objc_release
  1000bf880  adrp    x8, #0x100420000
  1000bf884  ldrsw   x8, [x8, #0x34c]                         ; ivar offset PEMetricsViewController._ctrlActNonSpatial (+0x178)
  1000bf888  ldr     x23, [x19, x8]                           ; x23 = self->_ctrlActNonSpatial
  1000bf88c  ldr     x22, [x24, #0xf78]                       ; class NSString
  1000bf890  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1000bf894  adrp    x8, #0x10041a000
  1000bf898  nop
  1000bf89c  ldr     x1, [x8, #0x9d0]
  1000bf8a0  bl      _objc_msgSend                            ; [S3DEngine metric_NumActiveNonSpatialSounds]
  1000bf8a4  str     x0, [sp]
  1000bf8a8  adrp    x2, #0x1003ba000
  1000bf8ac  add     x2, x2, #0xc50                           ; @"%i"
  1000bf8b0  mov     x0, x22
  1000bf8b4  mov     x1, x21
  1000bf8b8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [S3DEngine metric_NumActiveNonSpatialSounds]]
  1000bf8bc  mov     x29, x29
  1000bf8c0  bl      _objc_retainAutoreleasedReturnValue
  1000bf8c4  mov     x22, x0
  1000bf8c8  mov     x0, x23
  1000bf8cc  mov     x1, x20
  1000bf8d0  mov     x2, x22
  1000bf8d4  bl      _objc_msgSend                            ; [self->_ctrlActNonSpatial setText:[NSString stringWithFormat:@"%i", [S3DEngine metric_NumActiveNonSpatialSounds]]]
  1000bf8d8  mov     x0, x22
  1000bf8dc  bl      _objc_release
  1000bf8e0  adrp    x8, #0x100420000
  1000bf8e4  ldrsw   x8, [x8, #0x350]                         ; ivar offset PEMetricsViewController._ctrlPapaEngineVersion (+0x188)
  1000bf8e8  ldr     x23, [x19, x8]                           ; x23 = self->_ctrlPapaEngineVersion
  1000bf8ec  ldr     x24, [x24, #0xf78]                       ; class NSString
  1000bf8f0  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1000bf8f4  adrp    x8, #0x10041a000
  1000bf8f8  nop
  1000bf8fc  ldr     x1, [x8, #0x9d8]
  1000bf900  bl      _objc_msgSend                            ; [S3DEngine engineVersion]
  1000bf904  mov     x29, x29
  1000bf908  bl      _objc_retainAutoreleasedReturnValue
  1000bf90c  bl      _objc_retainAutorelease
  1000bf910  mov     x22, x0
  1000bf914  adrp    x8, #0x10041a000
  1000bf918  nop
  1000bf91c  ldr     x1, [x8, #0x18]
  1000bf920  bl      _objc_msgSend                            ; [[S3DEngine engineVersion] UTF8String]
  1000bf924  str     x0, [sp]
  1000bf928  adrp    x2, #0x1003c1000
  1000bf92c  add     x2, x2, #0xe70                           ; @"%s"
  1000bf930  mov     x0, x24
  1000bf934  mov     x1, x21
  1000bf938  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%s", [[S3DEngine engineVersion] UTF8String]]
  1000bf93c  mov     x29, x29
  1000bf940  bl      _objc_retainAutoreleasedReturnValue
  1000bf944  mov     x21, x0
  1000bf948  mov     x0, x23
  1000bf94c  mov     x1, x20
  1000bf950  mov     x2, x21
  1000bf954  bl      _objc_msgSend                            ; [self->_ctrlPapaEngineVersion setText:[NSString stringWithFormat:@"%s", [[S3DEngine engineVersion] UTF8String]]]
  1000bf958  mov     x0, x21
  1000bf95c  bl      _objc_release
  1000bf960  mov     x0, x22
  1000bf964  bl      _objc_release
  1000bf968  adrp    x8, #0x100420000
  1000bf96c  ldrsw   x8, [x8, #0x354]                         ; ivar offset PEMetricsViewController._ctrlCPUMeter (+0x1a0)
  1000bf970  ldr     x0, [x19, x8]                            ; x0 = self->_ctrlCPUMeter
  1000bf974  adrp    x8, #0x100418000
  1000bf978  nop
  1000bf97c  ldr     x1, [x8, #0x140]
  1000bf980  sub     sp, x29, #0x50
  1000bf984  ldp     x29, x30, [sp, #0x50]
  1000bf988  ldp     x20, x19, [sp, #0x40]
  1000bf98c  ldp     x22, x21, [sp, #0x30]
  1000bf990  ldp     x24, x23, [sp, #0x20]
  1000bf994  ldp     x26, x25, [sp, #0x10]
  1000bf998  ldp     d9, d8, [sp], #0x60
  1000bf99c  b       _objc_msgSend                            ; [self->_ctrlCPUMeter setNeedsDisplay]
  1000bf9a0  b       loc_1000bf9c4
  1000bf9a4  b       loc_1000bf9c4
  1000bf9a8  b       loc_1000bf9c4
  1000bf9ac  b       loc_1000bf9c4
  1000bf9b0  b       loc_1000bf9c4
  1000bf9b4  b       loc_1000bf9c4
  1000bf9b8  b       loc_1000bf9c4
  1000bf9bc  b       loc_1000bf9c4
  1000bf9c0  b       loc_1000bf9c4
loc_1000bf9c4:
  1000bf9c4  mov     x19, x0
loc_1000bf9c8:
  1000bf9c8  mov     x0, x22
  1000bf9cc  bl      _objc_release
  1000bf9d0  mov     x0, x19
  1000bf9d4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000bf9d8  mov     x19, x0
  1000bf9dc  mov     x0, x21
  1000bf9e0  bl      _objc_release
  1000bf9e4  b       loc_1000bf9c8

; ======================================================================
; -[PEMetricsViewController shouldAutotate]
; address 0x1000bf9e8  size 8  kind objc
; ======================================================================
  1000bf9e8  mov     w0, #1
  1000bf9ec  ret

; ======================================================================
; -[PEMetricsViewController viewDidLoad]
; address 0x1000bf9f0  size 160  kind objc
; ======================================================================
  1000bf9f0  stp     x20, x19, [sp, #-0x20]!
  1000bf9f4  stp     x29, x30, [sp, #0x10]
  1000bf9f8  add     x29, sp, #0x10
  1000bf9fc  sub     sp, sp, #0x10
  1000bfa00  mov     x19, x0
  1000bfa04  str     x19, [sp]
  1000bfa08  adrp    x8, #0x10041e000
  1000bfa0c  ldr     x8, [x8, #0xf90]
  1000bfa10  str     x8, [sp, #8]
  1000bfa14  adrp    x8, #0x100416000
  1000bfa18  nop
  1000bfa1c  ldr     x1, [x8, #0xb48]
  1000bfa20  mov     x0, sp
  1000bfa24  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000bfa28  adrp    x8, #0x10041e000
  1000bfa2c  ldr     x0, [x8, #0x30]                          ; class NSTimer
  1000bfa30  adrp    x8, #0x10041a000
  1000bfa34  nop
  1000bfa38  ldr     x3, [x8, #0x9e0]
  1000bfa3c  adrp    x8, #0x100417000
  1000bfa40  nop
  1000bfa44  ldr     x1, [x8, #0x890]
  1000bfa48  nop
  1000bfa4c  ldr     d0, #0x1001819e0                         ; d0 = 0.1
  1000bfa50  mov     w5, #1
  1000bfa54  mov     x2, x19
  1000bfa58  mov     x4, #0
  1000bfa5c  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateMetrics) userInfo:0 repeats:1]
  1000bfa60  mov     x29, x29
  1000bfa64  bl      _objc_retainAutoreleasedReturnValue
  1000bfa68  adrp    x8, #0x100420000
  1000bfa6c  ldrsw   x9, [x8, #0x358]                         ; ivar offset PEMetricsViewController.mTimer (+0x140)
  1000bfa70  ldr     x8, [x19, x9]                            ; x8 = self->mTimer
  1000bfa74  str     x0, [x19, x9]                            ; self->mTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateMetrics) userInfo:0 repeats:1]
  1000bfa78  mov     x0, x8
  1000bfa7c  bl      _objc_release
  1000bfa80  sub     sp, x29, #0x10
  1000bfa84  ldp     x29, x30, [sp, #0x10]
  1000bfa88  ldp     x20, x19, [sp], #0x20
  1000bfa8c  ret

; ======================================================================
; -[PEMetricsViewController didReceiveMemoryWarning]
; address 0x1000bfa90  size 60  kind objc
; ======================================================================
  1000bfa90  stp     x29, x30, [sp, #-0x10]!
  1000bfa94  mov     x29, sp
  1000bfa98  sub     sp, sp, #0x10
  1000bfa9c  str     x0, [sp]
  1000bfaa0  adrp    x8, #0x10041e000
  1000bfaa4  ldr     x8, [x8, #0xf90]
  1000bfaa8  str     x8, [sp, #8]
  1000bfaac  adrp    x8, #0x100416000
  1000bfab0  nop
  1000bfab4  ldr     x1, [x8, #0xbf8]
  1000bfab8  mov     x0, sp
  1000bfabc  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000bfac0  mov     sp, x29
  1000bfac4  ldp     x29, x30, [sp], #0x10
  1000bfac8  ret

; ======================================================================
; -[PEMetricsViewController dealloc]
; address 0x1000bfacc  size 60  kind objc
; ======================================================================
  1000bfacc  stp     x29, x30, [sp, #-0x10]!
  1000bfad0  mov     x29, sp
  1000bfad4  sub     sp, sp, #0x10
  1000bfad8  str     x0, [sp]
  1000bfadc  adrp    x8, #0x10041e000
  1000bfae0  ldr     x8, [x8, #0xf90]
  1000bfae4  str     x8, [sp, #8]
  1000bfae8  adrp    x8, #0x100416000
  1000bfaec  nop
  1000bfaf0  ldr     x1, [x8, #0xfc8]
  1000bfaf4  mov     x0, sp
  1000bfaf8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000bfafc  mov     sp, x29
  1000bfb00  ldp     x29, x30, [sp], #0x10
  1000bfb04  ret

; ======================================================================
; -[PEMetricsViewController viewDidUnload]
; address 0x1000bfb08  size 308  kind objc
; ======================================================================
  1000bfb08  stp     x20, x19, [sp, #-0x20]!
  1000bfb0c  stp     x29, x30, [sp, #0x10]
  1000bfb10  add     x29, sp, #0x10
  1000bfb14  sub     sp, sp, #0x10
  1000bfb18  mov     x19, x0
  1000bfb1c  adrp    x8, #0x10041a000
  1000bfb20  nop
  1000bfb24  ldr     x1, [x8, #0x9e8]
  1000bfb28  mov     x2, #0
  1000bfb2c  bl      _objc_msgSend                            ; [self setCtrlAppCPU:0]
  1000bfb30  adrp    x8, #0x10041a000
  1000bfb34  nop
  1000bfb38  ldr     x1, [x8, #0x9f0]
  1000bfb3c  mov     x2, #0
  1000bfb40  mov     x0, x19
  1000bfb44  bl      _objc_msgSend                            ; [self setCtrlLoadedSnds:0]
  1000bfb48  adrp    x8, #0x10041a000
  1000bfb4c  nop
  1000bfb50  ldr     x1, [x8, #0x9f8]
  1000bfb54  mov     x2, #0
  1000bfb58  mov     x0, x19
  1000bfb5c  bl      _objc_msgSend                            ; [self setCtrlMixPercent:0]
  1000bfb60  adrp    x8, #0x10041a000
  1000bfb64  nop
  1000bfb68  ldr     x1, [x8, #0xa00]
  1000bfb6c  mov     x2, #0
  1000bfb70  mov     x0, x19
  1000bfb74  bl      _objc_msgSend                            ; [self setCtrlMixPercentLP:0]
  1000bfb78  adrp    x8, #0x10041a000
  1000bfb7c  nop
  1000bfb80  ldr     x1, [x8, #0xa08]
  1000bfb84  mov     x2, #0
  1000bfb88  mov     x0, x19
  1000bfb8c  bl      _objc_msgSend                            ; [self setCtrlTotalActiveSnds:0]
  1000bfb90  adrp    x8, #0x10041a000
  1000bfb94  nop
  1000bfb98  ldr     x1, [x8, #0xa10]
  1000bfb9c  mov     x2, #0
  1000bfba0  mov     x0, x19
  1000bfba4  bl      _objc_msgSend                            ; [self setCtrlActSpatial:0]
  1000bfba8  adrp    x8, #0x10041a000
  1000bfbac  nop
  1000bfbb0  ldr     x1, [x8, #0xa18]
  1000bfbb4  mov     x2, #0
  1000bfbb8  mov     x0, x19
  1000bfbbc  bl      _objc_msgSend                            ; [self setCtrlActNonSpatial:0]
  1000bfbc0  adrp    x8, #0x10041a000
  1000bfbc4  nop
  1000bfbc8  ldr     x1, [x8, #0xa20]
  1000bfbcc  mov     x2, #0
  1000bfbd0  mov     x0, x19
  1000bfbd4  bl      _objc_msgSend                            ; [self setCtrlAudioMemMB:0]
  1000bfbd8  adrp    x8, #0x10041a000
  1000bfbdc  nop
  1000bfbe0  ldr     x1, [x8, #0xa28]
  1000bfbe4  mov     x2, #0
  1000bfbe8  mov     x0, x19
  1000bfbec  bl      _objc_msgSend                            ; [self setCtrlPapaEngineVersion:0]
  1000bfbf0  adrp    x8, #0x10041a000
  1000bfbf4  nop
  1000bfbf8  ldr     x1, [x8, #0xa30]
  1000bfbfc  mov     x2, #0
  1000bfc00  mov     x0, x19
  1000bfc04  bl      _objc_msgSend                            ; [self setCtrlCPUMeter:0]
  1000bfc08  str     x19, [sp]
  1000bfc0c  adrp    x8, #0x10041e000
  1000bfc10  ldr     x8, [x8, #0xf90]
  1000bfc14  str     x8, [sp, #8]
  1000bfc18  adrp    x8, #0x10041a000
  1000bfc1c  nop
  1000bfc20  ldr     x1, [x8, #0xa38]
  1000bfc24  mov     x0, sp
  1000bfc28  bl      _objc_msgSendSuper2                      ; [super viewDidUnload]
  1000bfc2c  sub     sp, x29, #0x10
  1000bfc30  ldp     x29, x30, [sp, #0x10]
  1000bfc34  ldp     x20, x19, [sp], #0x20
  1000bfc38  ret

; ======================================================================
; -[PEMetricsViewController ctrlAppCPU]
; address 0x1000bfc3c  size 16  kind objc
; ======================================================================
  1000bfc3c  adrp    x8, #0x100420000
  1000bfc40  ldrsw   x8, [x8, #0x338]                         ; ivar offset PEMetricsViewController._ctrlAppCPU (+0x148)
  1000bfc44  ldr     x0, [x0, x8]                             ; x0 = self->_ctrlAppCPU
  1000bfc48  ret

; ======================================================================
; -[PEMetricsViewController setCtrlAppCPU:]
; address 0x1000bfc4c  size 56  kind objc
; ======================================================================
  1000bfc4c  stp     x20, x19, [sp, #-0x20]!
  1000bfc50  stp     x29, x30, [sp, #0x10]
  1000bfc54  add     x29, sp, #0x10
  1000bfc58  mov     x19, x0
  1000bfc5c  adrp    x8, #0x100420000
  1000bfc60  ldrsw   x20, [x8, #0x338]                        ; ivar offset PEMetricsViewController._ctrlAppCPU (+0x148)
  1000bfc64  mov     x0, x2
  1000bfc68  bl      _objc_retain
  1000bfc6c  ldr     x8, [x19, x20]                           ; x8 = self->_ctrlAppCPU
  1000bfc70  str     x0, [x19, x20]                           ; self->_ctrlAppCPU = arg1
  1000bfc74  mov     x0, x8
  1000bfc78  ldp     x29, x30, [sp, #0x10]
  1000bfc7c  ldp     x20, x19, [sp], #0x20
  1000bfc80  b       _objc_release

; ======================================================================
; -[PEMetricsViewController ctrlLoadedSnds]
; address 0x1000bfc84  size 16  kind objc
; ======================================================================
  1000bfc84  adrp    x8, #0x100420000
  1000bfc88  ldrsw   x8, [x8, #0x340]                         ; ivar offset PEMetricsViewController._ctrlLoadedSnds (+0x150)
  1000bfc8c  ldr     x0, [x0, x8]                             ; x0 = self->_ctrlLoadedSnds
  1000bfc90  ret

; ======================================================================
; -[PEMetricsViewController setCtrlLoadedSnds:]
; address 0x1000bfc94  size 56  kind objc
; ======================================================================
  1000bfc94  stp     x20, x19, [sp, #-0x20]!
  1000bfc98  stp     x29, x30, [sp, #0x10]
  1000bfc9c  add     x29, sp, #0x10
  1000bfca0  mov     x19, x0
  1000bfca4  adrp    x8, #0x100420000
  1000bfca8  ldrsw   x20, [x8, #0x340]                        ; ivar offset PEMetricsViewController._ctrlLoadedSnds (+0x150)
  1000bfcac  mov     x0, x2
  1000bfcb0  bl      _objc_retain
  1000bfcb4  ldr     x8, [x19, x20]                           ; x8 = self->_ctrlLoadedSnds
  1000bfcb8  str     x0, [x19, x20]                           ; self->_ctrlLoadedSnds = arg1
  1000bfcbc  mov     x0, x8
  1000bfcc0  ldp     x29, x30, [sp, #0x10]
  1000bfcc4  ldp     x20, x19, [sp], #0x20
  1000bfcc8  b       _objc_release

; ======================================================================
; -[PEMetricsViewController ctrlMixPercent]
; address 0x1000bfccc  size 16  kind objc
; ======================================================================
  1000bfccc  adrp    x8, #0x100420000
  1000bfcd0  ldrsw   x8, [x8, #0x32c]                         ; ivar offset PEMetricsViewController._ctrlMixPercent (+0x158)
  1000bfcd4  ldr     x0, [x0, x8]                             ; x0 = self->_ctrlMixPercent
  1000bfcd8  ret

; ======================================================================
; -[PEMetricsViewController setCtrlMixPercent:]
; address 0x1000bfcdc  size 56  kind objc
; ======================================================================
  1000bfcdc  stp     x20, x19, [sp, #-0x20]!
  1000bfce0  stp     x29, x30, [sp, #0x10]
  1000bfce4  add     x29, sp, #0x10
  1000bfce8  mov     x19, x0
  1000bfcec  adrp    x8, #0x100420000
  1000bfcf0  ldrsw   x20, [x8, #0x32c]                        ; ivar offset PEMetricsViewController._ctrlMixPercent (+0x158)
  1000bfcf4  mov     x0, x2
  1000bfcf8  bl      _objc_retain
  1000bfcfc  ldr     x8, [x19, x20]                           ; x8 = self->_ctrlMixPercent
  1000bfd00  str     x0, [x19, x20]                           ; self->_ctrlMixPercent = arg1
  1000bfd04  mov     x0, x8
  1000bfd08  ldp     x29, x30, [sp, #0x10]
  1000bfd0c  ldp     x20, x19, [sp], #0x20
  1000bfd10  b       _objc_release

; ======================================================================
; -[PEMetricsViewController ctrlMixPercentLP]
; address 0x1000bfd14  size 16  kind objc
; ======================================================================
  1000bfd14  adrp    x8, #0x100420000
  1000bfd18  ldrsw   x8, [x8, #0x330]                         ; ivar offset PEMetricsViewController._ctrlMixPercentLP (+0x160)
  1000bfd1c  ldr     x0, [x0, x8]                             ; x0 = self->_ctrlMixPercentLP
  1000bfd20  ret

; ======================================================================
; -[PEMetricsViewController setCtrlMixPercentLP:]
; address 0x1000bfd24  size 56  kind objc
; ======================================================================
  1000bfd24  stp     x20, x19, [sp, #-0x20]!
  1000bfd28  stp     x29, x30, [sp, #0x10]
  1000bfd2c  add     x29, sp, #0x10
  1000bfd30  mov     x19, x0
  1000bfd34  adrp    x8, #0x100420000
  1000bfd38  ldrsw   x20, [x8, #0x330]                        ; ivar offset PEMetricsViewController._ctrlMixPercentLP (+0x160)
  1000bfd3c  mov     x0, x2
  1000bfd40  bl      _objc_retain
  1000bfd44  ldr     x8, [x19, x20]                           ; x8 = self->_ctrlMixPercentLP
  1000bfd48  str     x0, [x19, x20]                           ; self->_ctrlMixPercentLP = arg1
  1000bfd4c  mov     x0, x8
  1000bfd50  ldp     x29, x30, [sp, #0x10]
  1000bfd54  ldp     x20, x19, [sp], #0x20
  1000bfd58  b       _objc_release

; ======================================================================
; -[PEMetricsViewController ctrlTotalActiveSnds]
; address 0x1000bfd5c  size 16  kind objc
; ======================================================================
  1000bfd5c  adrp    x8, #0x100420000
  1000bfd60  ldrsw   x8, [x8, #0x344]                         ; ivar offset PEMetricsViewController._ctrlTotalActiveSnds (+0x168)
  1000bfd64  ldr     x0, [x0, x8]                             ; x0 = self->_ctrlTotalActiveSnds
  1000bfd68  ret

; ======================================================================
; -[PEMetricsViewController setCtrlTotalActiveSnds:]
; address 0x1000bfd6c  size 56  kind objc
; ======================================================================
  1000bfd6c  stp     x20, x19, [sp, #-0x20]!
  1000bfd70  stp     x29, x30, [sp, #0x10]
  1000bfd74  add     x29, sp, #0x10
  1000bfd78  mov     x19, x0
  1000bfd7c  adrp    x8, #0x100420000
  1000bfd80  ldrsw   x20, [x8, #0x344]                        ; ivar offset PEMetricsViewController._ctrlTotalActiveSnds (+0x168)
  1000bfd84  mov     x0, x2
  1000bfd88  bl      _objc_retain
  1000bfd8c  ldr     x8, [x19, x20]                           ; x8 = self->_ctrlTotalActiveSnds
  1000bfd90  str     x0, [x19, x20]                           ; self->_ctrlTotalActiveSnds = arg1
  1000bfd94  mov     x0, x8
  1000bfd98  ldp     x29, x30, [sp, #0x10]
  1000bfd9c  ldp     x20, x19, [sp], #0x20
  1000bfda0  b       _objc_release

; ======================================================================
; -[PEMetricsViewController ctrlActSpatial]
; address 0x1000bfda4  size 16  kind objc
; ======================================================================
  1000bfda4  adrp    x8, #0x100420000
  1000bfda8  ldrsw   x8, [x8, #0x348]                         ; ivar offset PEMetricsViewController._ctrlActSpatial (+0x170)
  1000bfdac  ldr     x0, [x0, x8]                             ; x0 = self->_ctrlActSpatial
  1000bfdb0  ret

; ======================================================================
; -[PEMetricsViewController setCtrlActSpatial:]
; address 0x1000bfdb4  size 56  kind objc
; ======================================================================
  1000bfdb4  stp     x20, x19, [sp, #-0x20]!
  1000bfdb8  stp     x29, x30, [sp, #0x10]
  1000bfdbc  add     x29, sp, #0x10
  1000bfdc0  mov     x19, x0
  1000bfdc4  adrp    x8, #0x100420000
  1000bfdc8  ldrsw   x20, [x8, #0x348]                        ; ivar offset PEMetricsViewController._ctrlActSpatial (+0x170)
  1000bfdcc  mov     x0, x2
  1000bfdd0  bl      _objc_retain
  1000bfdd4  ldr     x8, [x19, x20]                           ; x8 = self->_ctrlActSpatial
  1000bfdd8  str     x0, [x19, x20]                           ; self->_ctrlActSpatial = arg1
  1000bfddc  mov     x0, x8
  1000bfde0  ldp     x29, x30, [sp, #0x10]
  1000bfde4  ldp     x20, x19, [sp], #0x20
  1000bfde8  b       _objc_release

; ======================================================================
; -[PEMetricsViewController ctrlActNonSpatial]
; address 0x1000bfdec  size 16  kind objc
; ======================================================================
  1000bfdec  adrp    x8, #0x100420000
  1000bfdf0  ldrsw   x8, [x8, #0x34c]                         ; ivar offset PEMetricsViewController._ctrlActNonSpatial (+0x178)
  1000bfdf4  ldr     x0, [x0, x8]                             ; x0 = self->_ctrlActNonSpatial
  1000bfdf8  ret

; ======================================================================
; -[PEMetricsViewController setCtrlActNonSpatial:]
; address 0x1000bfdfc  size 56  kind objc
; ======================================================================
  1000bfdfc  stp     x20, x19, [sp, #-0x20]!
  1000bfe00  stp     x29, x30, [sp, #0x10]
  1000bfe04  add     x29, sp, #0x10
  1000bfe08  mov     x19, x0
  1000bfe0c  adrp    x8, #0x100420000
  1000bfe10  ldrsw   x20, [x8, #0x34c]                        ; ivar offset PEMetricsViewController._ctrlActNonSpatial (+0x178)
  1000bfe14  mov     x0, x2
  1000bfe18  bl      _objc_retain
  1000bfe1c  ldr     x8, [x19, x20]                           ; x8 = self->_ctrlActNonSpatial
  1000bfe20  str     x0, [x19, x20]                           ; self->_ctrlActNonSpatial = arg1
  1000bfe24  mov     x0, x8
  1000bfe28  ldp     x29, x30, [sp, #0x10]
  1000bfe2c  ldp     x20, x19, [sp], #0x20
  1000bfe30  b       _objc_release

; ======================================================================
; -[PEMetricsViewController ctrlAudioMemMB]
; address 0x1000bfe34  size 16  kind objc
; ======================================================================
  1000bfe34  adrp    x8, #0x100420000
  1000bfe38  ldrsw   x8, [x8, #0x33c]                         ; ivar offset PEMetricsViewController._ctrlAudioMemMB (+0x180)
  1000bfe3c  ldr     x0, [x0, x8]                             ; x0 = self->_ctrlAudioMemMB
  1000bfe40  ret

; ======================================================================
; -[PEMetricsViewController setCtrlAudioMemMB:]
; address 0x1000bfe44  size 56  kind objc
; ======================================================================
  1000bfe44  stp     x20, x19, [sp, #-0x20]!
  1000bfe48  stp     x29, x30, [sp, #0x10]
  1000bfe4c  add     x29, sp, #0x10
  1000bfe50  mov     x19, x0
  1000bfe54  adrp    x8, #0x100420000
  1000bfe58  ldrsw   x20, [x8, #0x33c]                        ; ivar offset PEMetricsViewController._ctrlAudioMemMB (+0x180)
  1000bfe5c  mov     x0, x2
  1000bfe60  bl      _objc_retain
  1000bfe64  ldr     x8, [x19, x20]                           ; x8 = self->_ctrlAudioMemMB
  1000bfe68  str     x0, [x19, x20]                           ; self->_ctrlAudioMemMB = arg1
  1000bfe6c  mov     x0, x8
  1000bfe70  ldp     x29, x30, [sp, #0x10]
  1000bfe74  ldp     x20, x19, [sp], #0x20
  1000bfe78  b       _objc_release

; ======================================================================
; -[PEMetricsViewController ctrlPapaEngineVersion]
; address 0x1000bfe7c  size 16  kind objc
; ======================================================================
  1000bfe7c  adrp    x8, #0x100420000
  1000bfe80  ldrsw   x8, [x8, #0x350]                         ; ivar offset PEMetricsViewController._ctrlPapaEngineVersion (+0x188)
  1000bfe84  ldr     x0, [x0, x8]                             ; x0 = self->_ctrlPapaEngineVersion
  1000bfe88  ret

; ======================================================================
; -[PEMetricsViewController setCtrlPapaEngineVersion:]
; address 0x1000bfe8c  size 56  kind objc
; ======================================================================
  1000bfe8c  stp     x20, x19, [sp, #-0x20]!
  1000bfe90  stp     x29, x30, [sp, #0x10]
  1000bfe94  add     x29, sp, #0x10
  1000bfe98  mov     x19, x0
  1000bfe9c  adrp    x8, #0x100420000
  1000bfea0  ldrsw   x20, [x8, #0x350]                        ; ivar offset PEMetricsViewController._ctrlPapaEngineVersion (+0x188)
  1000bfea4  mov     x0, x2
  1000bfea8  bl      _objc_retain
  1000bfeac  ldr     x8, [x19, x20]                           ; x8 = self->_ctrlPapaEngineVersion
  1000bfeb0  str     x0, [x19, x20]                           ; self->_ctrlPapaEngineVersion = arg1
  1000bfeb4  mov     x0, x8
  1000bfeb8  ldp     x29, x30, [sp, #0x10]
  1000bfebc  ldp     x20, x19, [sp], #0x20
  1000bfec0  b       _objc_release

; ======================================================================
; -[PEMetricsViewController ctrlMixPercentMax]
; address 0x1000bfec4  size 16  kind objc
; ======================================================================
  1000bfec4  adrp    x8, #0x100420000
  1000bfec8  ldrsw   x8, [x8, #0x334]                         ; ivar offset PEMetricsViewController._ctrlMixPercentMax (+0x190)
  1000bfecc  ldr     x0, [x0, x8]                             ; x0 = self->_ctrlMixPercentMax
  1000bfed0  ret

; ======================================================================
; -[PEMetricsViewController setCtrlMixPercentMax:]
; address 0x1000bfed4  size 56  kind objc
; ======================================================================
  1000bfed4  stp     x20, x19, [sp, #-0x20]!
  1000bfed8  stp     x29, x30, [sp, #0x10]
  1000bfedc  add     x29, sp, #0x10
  1000bfee0  mov     x19, x0
  1000bfee4  adrp    x8, #0x100420000
  1000bfee8  ldrsw   x20, [x8, #0x334]                        ; ivar offset PEMetricsViewController._ctrlMixPercentMax (+0x190)
  1000bfeec  mov     x0, x2
  1000bfef0  bl      _objc_retain
  1000bfef4  ldr     x8, [x19, x20]                           ; x8 = self->_ctrlMixPercentMax
  1000bfef8  str     x0, [x19, x20]                           ; self->_ctrlMixPercentMax = arg1
  1000bfefc  mov     x0, x8
  1000bff00  ldp     x29, x30, [sp, #0x10]
  1000bff04  ldp     x20, x19, [sp], #0x20
  1000bff08  b       _objc_release

; ======================================================================
; -[PEMetricsViewController myViewController]
; address 0x1000bff0c  size 16  kind objc
; ======================================================================
  1000bff0c  adrp    x8, #0x100420000
  1000bff10  ldrsw   x8, [x8, #0x35c]                         ; ivar offset PEMetricsViewController._myViewController (+0x198)
  1000bff14  ldr     x0, [x0, x8]                             ; x0 = self->_myViewController
  1000bff18  ret

; ======================================================================
; -[PEMetricsViewController setMyViewController:]
; address 0x1000bff1c  size 16  kind objc
; ======================================================================
  1000bff1c  adrp    x8, #0x100420000
  1000bff20  ldrsw   x8, [x8, #0x35c]                         ; ivar offset PEMetricsViewController._myViewController (+0x198)
  1000bff24  str     x2, [x0, x8]                             ; self->_myViewController = arg1
  1000bff28  ret

; ======================================================================
; -[PEMetricsViewController ctrlCPUMeter]
; address 0x1000bff2c  size 16  kind objc
; ======================================================================
  1000bff2c  adrp    x8, #0x100420000
  1000bff30  ldrsw   x8, [x8, #0x354]                         ; ivar offset PEMetricsViewController._ctrlCPUMeter (+0x1a0)
  1000bff34  ldr     x0, [x0, x8]                             ; x0 = self->_ctrlCPUMeter
  1000bff38  ret

; ======================================================================
; -[PEMetricsViewController setCtrlCPUMeter:]
; address 0x1000bff3c  size 16  kind objc
; ======================================================================
  1000bff3c  adrp    x8, #0x100420000
  1000bff40  ldrsw   x8, [x8, #0x354]                         ; ivar offset PEMetricsViewController._ctrlCPUMeter (+0x1a0)
  1000bff44  str     x2, [x0, x8]                             ; self->_ctrlCPUMeter = arg1
  1000bff48  ret

; ======================================================================
; -[PEMetricsViewController .cxx_destruct]
; address 0x1000bff4c  size 244  kind objc
; ======================================================================
  1000bff4c  stp     x20, x19, [sp, #-0x20]!
  1000bff50  stp     x29, x30, [sp, #0x10]
  1000bff54  add     x29, sp, #0x10
  1000bff58  mov     x19, x0
  1000bff5c  adrp    x8, #0x100420000
  1000bff60  ldrsw   x8, [x8, #0x334]                         ; ivar offset PEMetricsViewController._ctrlMixPercentMax (+0x190)
  1000bff64  add     x0, x19, x8
  1000bff68  mov     x1, #0
  1000bff6c  bl      _objc_storeStrong
  1000bff70  adrp    x8, #0x100420000
  1000bff74  ldrsw   x8, [x8, #0x350]                         ; ivar offset PEMetricsViewController._ctrlPapaEngineVersion (+0x188)
  1000bff78  add     x0, x19, x8
  1000bff7c  mov     x1, #0
  1000bff80  bl      _objc_storeStrong
  1000bff84  adrp    x8, #0x100420000
  1000bff88  ldrsw   x8, [x8, #0x33c]                         ; ivar offset PEMetricsViewController._ctrlAudioMemMB (+0x180)
  1000bff8c  add     x0, x19, x8
  1000bff90  mov     x1, #0
  1000bff94  bl      _objc_storeStrong
  1000bff98  adrp    x8, #0x100420000
  1000bff9c  ldrsw   x8, [x8, #0x34c]                         ; ivar offset PEMetricsViewController._ctrlActNonSpatial (+0x178)
  1000bffa0  add     x0, x19, x8
  1000bffa4  mov     x1, #0
  1000bffa8  bl      _objc_storeStrong
  1000bffac  adrp    x8, #0x100420000
  1000bffb0  ldrsw   x8, [x8, #0x348]                         ; ivar offset PEMetricsViewController._ctrlActSpatial (+0x170)
  1000bffb4  add     x0, x19, x8
  1000bffb8  mov     x1, #0
  1000bffbc  bl      _objc_storeStrong
  1000bffc0  adrp    x8, #0x100420000
  1000bffc4  ldrsw   x8, [x8, #0x344]                         ; ivar offset PEMetricsViewController._ctrlTotalActiveSnds (+0x168)
  1000bffc8  add     x0, x19, x8
  1000bffcc  mov     x1, #0
  1000bffd0  bl      _objc_storeStrong
  1000bffd4  adrp    x8, #0x100420000
  1000bffd8  ldrsw   x8, [x8, #0x330]                         ; ivar offset PEMetricsViewController._ctrlMixPercentLP (+0x160)
  1000bffdc  add     x0, x19, x8
  1000bffe0  mov     x1, #0
  1000bffe4  bl      _objc_storeStrong
  1000bffe8  adrp    x8, #0x100420000
  1000bffec  ldrsw   x8, [x8, #0x32c]                         ; ivar offset PEMetricsViewController._ctrlMixPercent (+0x158)
  1000bfff0  add     x0, x19, x8
  1000bfff4  mov     x1, #0
  1000bfff8  bl      _objc_storeStrong
  1000bfffc  adrp    x8, #0x100420000
  1000c0000  ldrsw   x8, [x8, #0x340]                         ; ivar offset PEMetricsViewController._ctrlLoadedSnds (+0x150)
  1000c0004  add     x0, x19, x8
  1000c0008  mov     x1, #0
  1000c000c  bl      _objc_storeStrong
  1000c0010  adrp    x8, #0x100420000
  1000c0014  ldrsw   x8, [x8, #0x338]                         ; ivar offset PEMetricsViewController._ctrlAppCPU (+0x148)
  1000c0018  add     x0, x19, x8
  1000c001c  mov     x1, #0
  1000c0020  bl      _objc_storeStrong
  1000c0024  mov     x1, #0
  1000c0028  adrp    x8, #0x100420000
  1000c002c  ldrsw   x8, [x8, #0x358]                         ; ivar offset PEMetricsViewController.mTimer (+0x140)
  1000c0030  add     x0, x19, x8
  1000c0034  ldp     x29, x30, [sp, #0x10]
  1000c0038  ldp     x20, x19, [sp], #0x20
  1000c003c  b       _objc_storeStrong
