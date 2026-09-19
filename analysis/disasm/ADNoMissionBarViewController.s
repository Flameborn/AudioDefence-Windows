// unit ADNoMissionBarViewController — 3 functions
//   0x10003e7d0     140  -[ADNoMissionBarViewController initWithNibName:bundle:]
//   0x10003e85c      92  -[ADNoMissionBarViewController viewDidLoad]
//   0x10003e8b8      60  -[ADNoMissionBarViewController didReceiveMemoryWarning]

; ======================================================================
; -[ADNoMissionBarViewController initWithNibName:bundle:]
; address 0x10003e7d0  size 140  kind objc
; ======================================================================
  10003e7d0  stp     x22, x21, [sp, #-0x30]!
  10003e7d4  stp     x20, x19, [sp, #0x10]
  10003e7d8  stp     x29, x30, [sp, #0x20]
  10003e7dc  add     x29, sp, #0x20
  10003e7e0  sub     sp, sp, #0x10
  10003e7e4  mov     x20, x3
  10003e7e8  mov     x21, x0
  10003e7ec  mov     x0, x2
  10003e7f0  bl      _objc_retain
  10003e7f4  mov     x19, x0
  10003e7f8  str     x21, [sp]
  10003e7fc  adrp    x8, #0x10041e000
  10003e800  ldr     x8, [x8, #0xcd0]
  10003e804  str     x8, [sp, #8]
  10003e808  adrp    x8, #0x100416000
  10003e80c  nop
  10003e810  ldr     x1, [x8, #0xb40]
  10003e814  mov     x0, sp
  10003e818  mov     x2, x19
  10003e81c  mov     x3, x20
  10003e820  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  10003e824  mov     x20, x0
  10003e828  mov     x0, x19
  10003e82c  bl      _objc_release
  10003e830  mov     x0, x20
  10003e834  sub     sp, x29, #0x20
  10003e838  ldp     x29, x30, [sp, #0x20]
  10003e83c  ldp     x20, x19, [sp, #0x10]
  10003e840  ldp     x22, x21, [sp], #0x30
  10003e844  ret
  10003e848  mov     x20, x0
  10003e84c  mov     x0, x19
  10003e850  bl      _objc_release
  10003e854  mov     x0, x20
  10003e858  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADNoMissionBarViewController viewDidLoad]
; address 0x10003e85c  size 92  kind objc
; ======================================================================
  10003e85c  stp     x20, x19, [sp, #-0x20]!
  10003e860  stp     x29, x30, [sp, #0x10]
  10003e864  add     x29, sp, #0x10
  10003e868  sub     sp, sp, #0x10
  10003e86c  mov     x19, x0
  10003e870  str     x19, [sp]
  10003e874  adrp    x8, #0x10041e000
  10003e878  ldr     x8, [x8, #0xcd0]
  10003e87c  str     x8, [sp, #8]
  10003e880  adrp    x8, #0x100416000
  10003e884  nop
  10003e888  ldr     x1, [x8, #0xb48]
  10003e88c  mov     x0, sp
  10003e890  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10003e894  adrp    x8, #0x100418000
  10003e898  nop
  10003e89c  ldr     x1, [x8, #0x6f0]
  10003e8a0  mov     x0, x19
  10003e8a4  bl      _objc_msgSend                            ; [self loadStatusBar]
  10003e8a8  sub     sp, x29, #0x10
  10003e8ac  ldp     x29, x30, [sp, #0x10]
  10003e8b0  ldp     x20, x19, [sp], #0x20
  10003e8b4  ret

; ======================================================================
; -[ADNoMissionBarViewController didReceiveMemoryWarning]
; address 0x10003e8b8  size 60  kind objc
; ======================================================================
  10003e8b8  stp     x29, x30, [sp, #-0x10]!
  10003e8bc  mov     x29, sp
  10003e8c0  sub     sp, sp, #0x10
  10003e8c4  str     x0, [sp]
  10003e8c8  adrp    x8, #0x10041e000
  10003e8cc  ldr     x8, [x8, #0xcd0]
  10003e8d0  str     x8, [sp, #8]
  10003e8d4  adrp    x8, #0x100416000
  10003e8d8  nop
  10003e8dc  ldr     x1, [x8, #0xbf8]
  10003e8e0  mov     x0, sp
  10003e8e4  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10003e8e8  mov     sp, x29
  10003e8ec  ldp     x29, x30, [sp], #0x10
  10003e8f0  ret
