// unit TAGAdwordsClickReferrer — 6 functions
//   0x100172e5c      44  +[TAGAdwordsClickReferrer functionId]
//   0x100172e88      44  +[TAGAdwordsClickReferrer componentKey]
//   0x100172eb4      44  +[TAGAdwordsClickReferrer conversionIdKey]
//   0x100172ee0     184  -[TAGAdwordsClickReferrer init]
//   0x100172f98       8  -[TAGAdwordsClickReferrer isCacheable]
//   0x100172fa0     520  -[TAGAdwordsClickReferrer evaluate:]

; ======================================================================
; +[TAGAdwordsClickReferrer functionId]
; address 0x100172e5c  size 44  kind objc
; ======================================================================
  100172e5c  stp     x29, x30, [sp, #-0x10]!
  100172e60  mov     x29, sp
  100172e64  stp     x20, x19, [sp, #-0x10]!
  100172e68  adrp    x19, #0x1003c9000
  100172e6c  add     x19, x19, #0x90                          ; @"_awcr"
  100172e70  mov     x0, x19
  100172e74  bl      _objc_retainAutorelease
  100172e78  mov     x0, x19
  100172e7c  ldp     x20, x19, [sp], #0x10
  100172e80  ldp     x29, x30, [sp], #0x10
  100172e84  ret

; ======================================================================
; +[TAGAdwordsClickReferrer componentKey]
; address 0x100172e88  size 44  kind objc
; ======================================================================
  100172e88  stp     x29, x30, [sp, #-0x10]!
  100172e8c  mov     x29, sp
  100172e90  stp     x20, x19, [sp, #-0x10]!
  100172e94  adrp    x19, #0x1003c9000
  100172e98  add     x19, x19, #0xb0                          ; @"component"
  100172e9c  mov     x0, x19
  100172ea0  bl      _objc_retainAutorelease
  100172ea4  mov     x0, x19
  100172ea8  ldp     x20, x19, [sp], #0x10
  100172eac  ldp     x29, x30, [sp], #0x10
  100172eb0  ret

; ======================================================================
; +[TAGAdwordsClickReferrer conversionIdKey]
; address 0x100172eb4  size 44  kind objc
; ======================================================================
  100172eb4  stp     x29, x30, [sp, #-0x10]!
  100172eb8  mov     x29, sp
  100172ebc  stp     x20, x19, [sp, #-0x10]!
  100172ec0  adrp    x19, #0x1003c9000
  100172ec4  add     x19, x19, #0xd0                          ; @"conversion_id"
  100172ec8  mov     x0, x19
  100172ecc  bl      _objc_retainAutorelease
  100172ed0  mov     x0, x19
  100172ed4  ldp     x20, x19, [sp], #0x10
  100172ed8  ldp     x29, x30, [sp], #0x10
  100172edc  ret

; ======================================================================
; -[TAGAdwordsClickReferrer init]
; address 0x100172ee0  size 184  kind objc
; ======================================================================
  100172ee0  stp     x29, x30, [sp, #-0x10]!
  100172ee4  mov     x29, sp
  100172ee8  stp     x20, x19, [sp, #-0x10]!
  100172eec  stp     x22, x21, [sp, #-0x10]!
  100172ef0  sub     sp, sp, #0x10
  100172ef4  mov     x19, x0
  100172ef8  adrp    x8, #0x10041e000
  100172efc  ldr     x0, [x8, #0x550]                         ; class NSSet
  100172f00  adrp    x8, #0x10041b000
  100172f04  nop
  100172f08  ldr     x1, [x8, #0x7e0]
  100172f0c  adrp    x2, #0x1003c9000
  100172f10  add     x2, x2, #0xd0                            ; @"conversion_id"
  100172f14  bl      _objc_msgSend                            ; [NSSet setWithObject:@"conversion_id"]
  100172f18  mov     x29, x29
  100172f1c  bl      _objc_retainAutoreleasedReturnValue
  100172f20  mov     x20, x0
  100172f24  str     x19, [sp]
  100172f28  adrp    x8, #0x10041f000
  100172f2c  ldr     x8, [x8, #0x340]
  100172f30  str     x8, [sp, #8]
  100172f34  adrp    x8, #0x10041d000
  100172f38  nop
  100172f3c  ldr     x1, [x8, #0xc10]
  100172f40  adrp    x2, #0x1003c9000
  100172f44  add     x2, x2, #0x90                            ; @"_awcr"
  100172f48  mov     x0, sp
  100172f4c  mov     x3, x20
  100172f50  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_awcr" requiredKeys:[NSSet setWithObject:@"conversion_id"]]
  100172f54  mov     x19, x0
  100172f58  mov     x0, x20
  100172f5c  bl      _objc_release
  100172f60  mov     x0, x19
  100172f64  sub     sp, x29, #0x20
  100172f68  ldp     x22, x21, [sp], #0x10
  100172f6c  ldp     x20, x19, [sp], #0x10
  100172f70  ldp     x29, x30, [sp], #0x10
  100172f74  ret
  100172f78  mov     x21, x0
  100172f7c  mov     x0, x19
  100172f80  b       loc_100172f8c
  100172f84  mov     x21, x0
  100172f88  mov     x0, x20
loc_100172f8c:
  100172f8c  bl      _objc_release
  100172f90  mov     x0, x21
  100172f94  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGAdwordsClickReferrer isCacheable]
; address 0x100172f98  size 8  kind objc
; ======================================================================
  100172f98  mov     w0, #1
  100172f9c  ret

; ======================================================================
; -[TAGAdwordsClickReferrer evaluate:]
; address 0x100172fa0  size 520  kind objc
; ======================================================================
  100172fa0  stp     x29, x30, [sp, #-0x10]!
  100172fa4  mov     x29, sp
  100172fa8  stp     x20, x19, [sp, #-0x10]!
  100172fac  stp     x22, x21, [sp, #-0x10]!
  100172fb0  stp     x24, x23, [sp, #-0x10]!
  100172fb4  stp     x26, x25, [sp, #-0x10]!
  100172fb8  mov     x0, x2
  100172fbc  bl      _objc_retain
  100172fc0  mov     x19, x0
  100172fc4  adrp    x8, #0x100417000
  100172fc8  nop
  100172fcc  ldr     x22, [x8, #0x40]
  100172fd0  adrp    x2, #0x1003c9000
  100172fd4  add     x2, x2, #0xd0                            ; @"conversion_id"
  100172fd8  mov     x1, x22
  100172fdc  bl      _objc_msgSend                            ; [arg1 objectForKey:@"conversion_id"]
  100172fe0  mov     x29, x29
  100172fe4  bl      _objc_retainAutoreleasedReturnValue
  100172fe8  mov     x20, x0
  100172fec  adrp    x25, #0x10041e000
  100172ff0  ldr     x0, [x25, #0xb58]                        ; class TAGTypes
  100172ff4  cbz     x20, loc_100173064                       ; if ([arg1 objectForKey:@"conversion_id"] == 0)
  100172ff8  adrp    x8, #0x10041d000
  100172ffc  nop
  100173000  ldr     x23, [x8, #0xc18]
  100173004  mov     x1, x23
  100173008  mov     x2, x20
  10017300c  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"conversion_id"]]
  100173010  mov     x29, x29
  100173014  bl      _objc_retainAutoreleasedReturnValue
  100173018  mov     x21, x0
  10017301c  adrp    x2, #0x1003c9000
  100173020  add     x2, x2, #0xb0                            ; @"component"
  100173024  mov     x0, x19
  100173028  mov     x1, x22
  10017302c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"component"]
  100173030  mov     x29, x29
  100173034  bl      _objc_retainAutoreleasedReturnValue
  100173038  mov     x22, x0
  10017303c  cbz     x22, loc_100173084                       ; if ([arg1 objectForKey:@"component"] == 0)
  100173040  ldr     x0, [x25, #0xb58]                        ; class TAGTypes
  100173044  mov     x1, x23
  100173048  mov     x2, x22
  10017304c  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"component"]]
  100173050  mov     x29, x29
  100173054  bl      _objc_retainAutoreleasedReturnValue
  100173058  mov     x3, x0
  10017305c  mov     x23, x3
  100173060  b       loc_10017308c
loc_100173064:
  100173064  adrp    x8, #0x10041c000
  100173068  nop
  10017306c  ldr     x1, [x8, #0xa98]
  100173070  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100173074  mov     x29, x29
  100173078  bl      _objc_retainAutoreleasedReturnValue
  10017307c  mov     x25, x0
  100173080  b       loc_100173114
loc_100173084:
  100173084  mov     x3, #0
  100173088  mov     x23, #0
loc_10017308c:
  10017308c  adrp    x8, #0x10041e000
  100173090  ldr     x0, [x8, #0x928]                         ; class TAGClickReferrerUtil
  100173094  adrp    x8, #0x10041d000
  100173098  nop
  10017309c  ldr     x1, [x8, #0xbf8]
  1001730a0  mov     x2, x21
  1001730a4  bl      _objc_msgSend                            ; [TAGClickReferrerUtil clickReferrerForConversionId:[TAGTypes valueToString:[arg1 objectForKey:@"conversion_id"]] component:x3]
  1001730a8  mov     x29, x29
  1001730ac  bl      _objc_retainAutoreleasedReturnValue
  1001730b0  mov     x24, x0
  1001730b4  ldr     x0, [x25, #0xb58]                        ; class TAGTypes
  1001730b8  cbz     x24, loc_1001730d8                       ; if ([TAGClickReferrerUtil clickReferrerForConversionId:[TAGTypes valueToString:[arg1 objectForKey:@"conversion_id"]] component:x3] == 0)
  1001730bc  adrp    x8, #0x10041d000
  1001730c0  nop
  1001730c4  ldr     x1, [x8, #0xc30]
  1001730c8  mov     x2, x24
  1001730cc  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[TAGClickReferrerUtil clickReferrerForConversionId:[TAGTypes valueToString:[arg1 objectForKey:@"conversion_id"]] component:x3]]
  1001730d0  mov     x29, x29
  1001730d4  b       loc_1001730ec
loc_1001730d8:
  1001730d8  adrp    x8, #0x10041c000
  1001730dc  nop
  1001730e0  ldr     x1, [x8, #0xa98]
  1001730e4  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  1001730e8  mov     x29, x29
loc_1001730ec:
  1001730ec  bl      _objc_retainAutoreleasedReturnValue
  1001730f0  mov     x25, x0
  1001730f4  mov     x0, x24
  1001730f8  bl      _objc_release
  1001730fc  mov     x0, x23
  100173100  bl      _objc_release
  100173104  mov     x0, x22
  100173108  bl      _objc_release
  10017310c  mov     x0, x21
  100173110  bl      _objc_release
loc_100173114:
  100173114  mov     x0, x20
  100173118  bl      _objc_release
  10017311c  mov     x0, x19
  100173120  bl      _objc_release
  100173124  mov     x0, x25
  100173128  ldp     x26, x25, [sp], #0x10
  10017312c  ldp     x24, x23, [sp], #0x10
  100173130  ldp     x22, x21, [sp], #0x10
  100173134  ldp     x20, x19, [sp], #0x10
  100173138  ldp     x29, x30, [sp], #0x10
  10017313c  b       _objc_autoreleaseReturnValue
  100173140  mov     x25, x0
  100173144  b       loc_100173198
  100173148  mov     x25, x0
  10017314c  b       loc_100173188
  100173150  mov     x25, x0
  100173154  b       loc_100173180
  100173158  mov     x25, x0
  10017315c  b       loc_100173190
  100173160  mov     x25, x0
  100173164  b       loc_100173178
  100173168  b       loc_10017316c
loc_10017316c:
  10017316c  mov     x25, x0
  100173170  mov     x0, x24
  100173174  bl      _objc_release
loc_100173178:
  100173178  mov     x0, x23
  10017317c  bl      _objc_release
loc_100173180:
  100173180  mov     x0, x22
  100173184  bl      _objc_release
loc_100173188:
  100173188  mov     x0, x21
  10017318c  bl      _objc_release
loc_100173190:
  100173190  mov     x0, x20
  100173194  bl      _objc_release
loc_100173198:
  100173198  mov     x0, x19
  10017319c  bl      _objc_release
  1001731a0  mov     x0, x25
  1001731a4  bl      __Unwind_Resume                          ; Unwind_Resume()
