// unit GAIUtil — 5 functions
//   0x10011588c     128  -[GAIUtil init]
//   0x10011590c      40  +[GAIUtil descriptionFromException:]
//   0x100115934     168  +[GAIUtil descriptionFromError:]
//   0x1001159dc     128  +[GAIUtil valueForNumber:]
//   0x100115a5c      48  +[GAIUtil valueForString:]

; ======================================================================
; -[GAIUtil init]
; address 0x10011588c  size 128  kind objc
; ======================================================================
  10011588c  stp     x29, x30, [sp, #-0x10]!
  100115890  mov     x29, sp
  100115894  stp     x20, x19, [sp, #-0x10]!
  100115898  sub     sp, sp, #0x10
  10011589c  mov     x19, x1
  1001158a0  str     x0, [sp]
  1001158a4  adrp    x8, #0x10041f000
  1001158a8  ldr     x8, [x8, #0xb0]
  1001158ac  str     x8, [sp, #8]
  1001158b0  adrp    x8, #0x100416000
  1001158b4  nop
  1001158b8  ldr     x1, [x8, #0xab8]
  1001158bc  mov     x0, sp
  1001158c0  bl      _objc_msgSendSuper2                      ; [super init]
  1001158c4  mov     x20, x0
  1001158c8  cbz     x20, loc_1001158f8                       ; if (self == 0)
  1001158cc  adrp    x8, #0x10041b000
  1001158d0  nop
  1001158d4  ldr     x1, [x8, #0xd68]
  1001158d8  mov     x0, x20
  1001158dc  mov     x2, x19
  1001158e0  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  1001158e4  adrp    x8, #0x10041b000
  1001158e8  nop
  1001158ec  ldr     x1, [x8, #0xd70]
  1001158f0  mov     x0, x20
  1001158f4  bl      _objc_msgSend                            ; [self release]
loc_1001158f8:
  1001158f8  mov     x0, #0
  1001158fc  sub     sp, x29, #0x10
  100115900  ldp     x20, x19, [sp], #0x10
  100115904  ldp     x29, x30, [sp], #0x10
  100115908  ret

; ======================================================================
; +[GAIUtil descriptionFromException:]
; address 0x10011590c  size 40  kind objc
; ======================================================================
  10011590c  cbz     x2, loc_10011592c                        ; if (arg1 == 0)
  100115910  adrp    x8, #0x10041e000
  100115914  adrp    x9, #0x10041b000
  100115918  nop
  10011591c  ldr     x0, [x8, #0x580]                         ; class GAIExceptionParser
  100115920  ldr     x1, [x9, #0xd78]
  100115924  mov     x3, #0x96
  100115928  b       _objc_msgSend                            ; [GAIExceptionParser exceptionDescription:arg1 withMaxLength:150]
loc_10011592c:
  10011592c  mov     x0, #0
  100115930  ret

; ======================================================================
; +[GAIUtil descriptionFromError:]
; address 0x100115934  size 168  kind objc
; ======================================================================
  100115934  stp     x29, x30, [sp, #-0x10]!
  100115938  mov     x29, sp
  10011593c  stp     x20, x19, [sp, #-0x10]!
  100115940  stp     x22, x21, [sp, #-0x10]!
  100115944  sub     sp, sp, #0x20
  100115948  mov     x19, x2
  10011594c  cbz     x19, loc_1001159c4                       ; if (arg1 == 0)
  100115950  adrp    x8, #0x10041d000
  100115954  ldr     x20, [x8, #0xf78]                        ; class NSString
  100115958  adrp    x8, #0x10041b000
  10011595c  nop
  100115960  ldr     x1, [x8, #0xd80]
  100115964  mov     x0, x19
  100115968  bl      _objc_msgSend                            ; [arg1 domain]
  10011596c  mov     x21, x0
  100115970  adrp    x8, #0x10041b000
  100115974  nop
  100115978  ldr     x1, [x8, #0xd88]
  10011597c  mov     x0, x19
  100115980  bl      _objc_msgSend                            ; [arg1 code]
  100115984  mov     x22, x0
  100115988  adrp    x8, #0x10041b000
  10011598c  nop
  100115990  ldr     x1, [x8, #0xd90]
  100115994  mov     x0, x19
  100115998  bl      _objc_msgSend                            ; [arg1 localizedDescription]
  10011599c  adrp    x8, #0x100416000
  1001159a0  nop
  1001159a4  ldr     x1, [x8, #0xee8]
  1001159a8  stp     x22, x0, [sp, #8]
  1001159ac  str     x21, [sp]
  1001159b0  adrp    x2, #0x1003c4000
  1001159b4  add     x2, x2, #0x3f0                           ; @"%@ %ld: %@"
  1001159b8  mov     x0, x20
  1001159bc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %ld: %@", [arg1 domain], [arg1 code], [arg1 localizedDescription]]
  1001159c0  b       loc_1001159c8
loc_1001159c4:
  1001159c4  mov     x0, #0
loc_1001159c8:
  1001159c8  sub     sp, x29, #0x20
  1001159cc  ldp     x22, x21, [sp], #0x10
  1001159d0  ldp     x20, x19, [sp], #0x10
  1001159d4  ldp     x29, x30, [sp], #0x10
  1001159d8  ret

; ======================================================================
; +[GAIUtil valueForNumber:]
; address 0x1001159dc  size 128  kind objc
; ======================================================================
  1001159dc  stp     x29, x30, [sp, #-0x10]!
  1001159e0  mov     x29, sp
  1001159e4  stp     x20, x19, [sp, #-0x10]!
  1001159e8  mov     x19, x2
  1001159ec  cbz     x19, loc_100115a38                       ; if (arg1 == 0)
  1001159f0  adrp    x8, #0x10041d000
  1001159f4  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1001159f8  adrp    x8, #0x100417000
  1001159fc  nop
  100115a00  ldr     x1, [x8, #0x2e0]
  100115a04  bl      _objc_msgSend                            ; [NSNumber class]
  100115a08  mov     x2, x0
  100115a0c  adrp    x8, #0x100417000
  100115a10  nop
  100115a14  ldr     x1, [x8, #0x3b8]
  100115a18  mov     x0, x19
  100115a1c  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSNumber class]]
  100115a20  cbz     w0, loc_100115a38                        ; if ([arg1 isKindOfClass:[NSNumber class]] == 0)
  100115a24  adrp    x8, #0x10041a000
  100115a28  add     x8, x8, #0xd20                           ; &@selector(stringValue)
  100115a2c  ldr     x1, [x8]
  100115a30  mov     x0, x19
  100115a34  b       loc_100115a4c
loc_100115a38:
  100115a38  adrp    x8, #0x10041e000
  100115a3c  ldr     x0, [x8, #0x140]                         ; class NSNull
  100115a40  adrp    x8, #0x100418000
  100115a44  add     x8, x8, #0x468                           ; &@selector(null)
  100115a48  ldr     x1, [x8]
loc_100115a4c:
  100115a4c  bl      _objc_msgSend                            ; [x0 <sel x1>]
  100115a50  ldp     x20, x19, [sp], #0x10
  100115a54  ldp     x29, x30, [sp], #0x10
  100115a58  ret

; ======================================================================
; +[GAIUtil valueForString:]
; address 0x100115a5c  size 48  kind objc
; ======================================================================
  100115a5c  stp     x29, x30, [sp, #-0x10]!
  100115a60  mov     x29, sp
  100115a64  mov     x0, x2
  100115a68  cbnz    x0, loc_100115a84                        ; if (arg1 != 0)
  100115a6c  adrp    x8, #0x10041e000
  100115a70  ldr     x0, [x8, #0x140]                         ; class NSNull
  100115a74  adrp    x8, #0x100418000
  100115a78  nop
  100115a7c  ldr     x1, [x8, #0x468]
  100115a80  bl      _objc_msgSend                            ; [NSNull null]
loc_100115a84:
  100115a84  ldp     x29, x30, [sp], #0x10
  100115a88  ret
