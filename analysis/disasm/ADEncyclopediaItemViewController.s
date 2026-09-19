// unit ADEncyclopediaItemViewController — 17 functions
//   0x1000b6d30     220  -[ADEncyclopediaItemViewController initWithNibName:bundle:name:data:]
//   0x1000b6e0c      92  -[ADEncyclopediaItemViewController viewDidLoad]
//   0x1000b6e68     808  -[ADEncyclopediaItemViewController loadView]
//   0x1000b7190    1380  -[ADEncyclopediaItemViewController populateViewWithData]
//   0x1000b76f4      92  -[ADEncyclopediaItemViewController viewWillAppear:]
//   0x1000b7750     608  -[ADEncyclopediaItemViewController applyAccessibility]
//   0x1000b79b0      32  -[ADEncyclopediaItemViewController killsLabel]
//   0x1000b79d0      20  -[ADEncyclopediaItemViewController setKillsLabel:]
//   0x1000b79e4      16  -[ADEncyclopediaItemViewController killsValueLabel]
//   0x1000b79f4      56  -[ADEncyclopediaItemViewController setKillsValueLabel:]
//   0x1000b7a2c      16  -[ADEncyclopediaItemViewController killedByLabel]
//   0x1000b7a3c      56  -[ADEncyclopediaItemViewController setKilledByLabel:]
//   0x1000b7a74      16  -[ADEncyclopediaItemViewController killedByValueLabel]
//   0x1000b7a84      56  -[ADEncyclopediaItemViewController setKilledByValueLabel:]
//   0x1000b7abc      32  -[ADEncyclopediaItemViewController bioView]
//   0x1000b7adc      20  -[ADEncyclopediaItemViewController setBioView:]
//   0x1000b7af0     116  -[ADEncyclopediaItemViewController .cxx_destruct]

; ======================================================================
; -[ADEncyclopediaItemViewController initWithNibName:bundle:name:data:]
; address 0x1000b6d30  size 220  kind objc
; ======================================================================
  1000b6d30  stp     x24, x23, [sp, #-0x40]!
  1000b6d34  stp     x22, x21, [sp, #0x10]
  1000b6d38  stp     x20, x19, [sp, #0x20]
  1000b6d3c  stp     x29, x30, [sp, #0x30]
  1000b6d40  add     x29, sp, #0x30
  1000b6d44  sub     sp, sp, #0x10
  1000b6d48  mov     x22, x5
  1000b6d4c  mov     x21, x4
  1000b6d50  mov     x20, x3
  1000b6d54  mov     x23, x0
  1000b6d58  mov     x0, x2
  1000b6d5c  bl      _objc_retain
  1000b6d60  mov     x19, x0
  1000b6d64  mov     x0, x20
  1000b6d68  bl      _objc_retain
  1000b6d6c  mov     x20, x0
  1000b6d70  mov     x0, x21
  1000b6d74  bl      _objc_retain
  1000b6d78  mov     x21, x0
  1000b6d7c  str     x23, [sp]
  1000b6d80  adrp    x8, #0x10041e000
  1000b6d84  ldr     x8, [x8, #0xf68]
  1000b6d88  str     x8, [sp, #8]
  1000b6d8c  adrp    x8, #0x100419000
  1000b6d90  nop
  1000b6d94  ldr     x1, [x8, #0xa88]
  1000b6d98  mov     x0, sp
  1000b6d9c  mov     x2, x19
  1000b6da0  mov     x3, x20
  1000b6da4  mov     x4, x21
  1000b6da8  mov     x5, x22
  1000b6dac  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2 name:arg3 data:arg4]
  1000b6db0  mov     x22, x0
  1000b6db4  mov     x0, x21
  1000b6db8  bl      _objc_release
  1000b6dbc  mov     x0, x20
  1000b6dc0  bl      _objc_release
  1000b6dc4  mov     x0, x19
  1000b6dc8  bl      _objc_release
  1000b6dcc  mov     x0, x22
  1000b6dd0  sub     sp, x29, #0x30
  1000b6dd4  ldp     x29, x30, [sp, #0x30]
  1000b6dd8  ldp     x20, x19, [sp, #0x20]
  1000b6ddc  ldp     x22, x21, [sp, #0x10]
  1000b6de0  ldp     x24, x23, [sp], #0x40
  1000b6de4  ret
  1000b6de8  mov     x22, x0
  1000b6dec  mov     x0, x21
  1000b6df0  bl      _objc_release
  1000b6df4  mov     x0, x20
  1000b6df8  bl      _objc_release
  1000b6dfc  mov     x0, x19
  1000b6e00  bl      _objc_release
  1000b6e04  mov     x0, x22
  1000b6e08  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaItemViewController viewDidLoad]
; address 0x1000b6e0c  size 92  kind objc
; ======================================================================
  1000b6e0c  stp     x20, x19, [sp, #-0x20]!
  1000b6e10  stp     x29, x30, [sp, #0x10]
  1000b6e14  add     x29, sp, #0x10
  1000b6e18  sub     sp, sp, #0x10
  1000b6e1c  mov     x19, x0
  1000b6e20  str     x19, [sp]
  1000b6e24  adrp    x8, #0x10041e000
  1000b6e28  ldr     x8, [x8, #0xf68]
  1000b6e2c  str     x8, [sp, #8]
  1000b6e30  adrp    x8, #0x100416000
  1000b6e34  nop
  1000b6e38  ldr     x1, [x8, #0xb48]
  1000b6e3c  mov     x0, sp
  1000b6e40  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000b6e44  adrp    x8, #0x100419000
  1000b6e48  nop
  1000b6e4c  ldr     x1, [x8, #0xf10]
  1000b6e50  mov     x0, x19
  1000b6e54  bl      _objc_msgSend                            ; [self populateViewWithData]
  1000b6e58  sub     sp, x29, #0x10
  1000b6e5c  ldp     x29, x30, [sp, #0x10]
  1000b6e60  ldp     x20, x19, [sp], #0x20
  1000b6e64  ret

; ======================================================================
; -[ADEncyclopediaItemViewController loadView]
; address 0x1000b6e68  size 808  kind objc
; ======================================================================
  1000b6e68  stp     x28, x27, [sp, #-0x60]!
  1000b6e6c  stp     x26, x25, [sp, #0x10]
  1000b6e70  stp     x24, x23, [sp, #0x20]
  1000b6e74  stp     x22, x21, [sp, #0x30]
  1000b6e78  stp     x20, x19, [sp, #0x40]
  1000b6e7c  stp     x29, x30, [sp, #0x50]
  1000b6e80  add     x29, sp, #0x50
  1000b6e84  sub     sp, sp, #0xb0
  1000b6e88  mov     x19, x0
  1000b6e8c  adrp    x27, #0x1003b0000
  1000b6e90  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  1000b6e94  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  1000b6e98  stur    x27, [x29, #-0x58]
  1000b6e9c  adrp    x8, #0x1003c1000
  1000b6ea0  add     x8, x8, #0x770                           ; @"bioView"
  1000b6ea4  str     x8, [sp, #0x18]
  1000b6ea8  adrp    x21, #0x10041d000
  1000b6eac  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  1000b6eb0  adrp    x8, #0x100416000
  1000b6eb4  nop
  1000b6eb8  ldr     x25, [x8, #0xec0]
  1000b6ebc  mov     w2, #1
  1000b6ec0  mov     x1, x25
  1000b6ec4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  1000b6ec8  mov     x29, x29
  1000b6ecc  bl      _objc_retainAutoreleasedReturnValue
  1000b6ed0  str     x0, [sp, #0x10]
  1000b6ed4  str     x0, [sp, #0x60]
  1000b6ed8  adrp    x8, #0x1003bf000
  1000b6edc  add     x8, x8, #0xc10                           ; @"enemyNameLabel"
  1000b6ee0  str     x8, [sp, #0x20]
  1000b6ee4  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  1000b6ee8  mov     w2, #2
  1000b6eec  mov     x1, x25
  1000b6ef0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  1000b6ef4  bl      _objc_retain
  1000b6ef8  str     x0, [sp, #8]
  1000b6efc  str     x0, [sp, #0x68]
  1000b6f00  adrp    x8, #0x1003c1000
  1000b6f04  add     x8, x8, #0x790                           ; @"killedByLabel"
  1000b6f08  str     x8, [sp, #0x28]
  1000b6f0c  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  1000b6f10  mov     w2, #3
  1000b6f14  mov     x1, x25
  1000b6f18  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  1000b6f1c  bl      _objc_retain
  1000b6f20  mov     x22, x0
  1000b6f24  str     x22, [sp, #0x70]
  1000b6f28  adrp    x8, #0x1003c1000
  1000b6f2c  add     x8, x8, #0x7b0                           ; @"killedByValueLabel"
  1000b6f30  str     x8, [sp, #0x30]
  1000b6f34  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  1000b6f38  mov     w2, #4
  1000b6f3c  mov     x1, x25
  1000b6f40  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  1000b6f44  bl      _objc_retain
  1000b6f48  mov     x23, x0
  1000b6f4c  str     x23, [sp, #0x78]
  1000b6f50  adrp    x8, #0x1003c1000
  1000b6f54  add     x8, x8, #0x7d0                           ; @"killsLabel"
  1000b6f58  str     x8, [sp, #0x38]
  1000b6f5c  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  1000b6f60  mov     w2, #5
  1000b6f64  mov     x1, x25
  1000b6f68  bl      _objc_msgSend                            ; [NSNumber numberWithInt:5]
  1000b6f6c  bl      _objc_retain
  1000b6f70  mov     x24, x0
  1000b6f74  str     x24, [sp, #0x80]
  1000b6f78  adrp    x8, #0x1003c1000
  1000b6f7c  add     x8, x8, #0x7f0                           ; @"killsValueLabel"
  1000b6f80  str     x8, [sp, #0x40]
  1000b6f84  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  1000b6f88  mov     w2, #6
  1000b6f8c  mov     x1, x25
  1000b6f90  bl      _objc_msgSend                            ; [NSNumber numberWithInt:6]
  1000b6f94  bl      _objc_retain
  1000b6f98  mov     x26, x0
  1000b6f9c  str     x26, [sp, #0x88]
  1000b6fa0  adrp    x8, #0x1003bf000
  1000b6fa4  add     x8, x8, #0x110                           ; @"leftArrow"
  1000b6fa8  str     x8, [sp, #0x48]
  1000b6fac  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  1000b6fb0  mov     w2, #7
  1000b6fb4  mov     x1, x25
  1000b6fb8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:7]
  1000b6fbc  mov     x20, x19
  1000b6fc0  mov     x19, x27
  1000b6fc4  bl      _objc_retain
  1000b6fc8  mov     x27, x0
  1000b6fcc  str     x27, [sp, #0x90]
  1000b6fd0  adrp    x8, #0x1003bf000
  1000b6fd4  add     x8, x8, #0x130                           ; @"rightArrow"
  1000b6fd8  str     x8, [sp, #0x50]
  1000b6fdc  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  1000b6fe0  mov     w2, #8
  1000b6fe4  mov     x1, x25
  1000b6fe8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:8]
  1000b6fec  bl      _objc_retain
  1000b6ff0  mov     x28, x0
  1000b6ff4  str     x28, [sp, #0x98]
  1000b6ff8  adrp    x8, #0x1003bf000
  1000b6ffc  add     x8, x8, #0xc50                           ; @"audioButton"
  1000b7000  str     x8, [sp, #0x58]
  1000b7004  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  1000b7008  mov     w2, #9
  1000b700c  mov     x1, x25
  1000b7010  bl      _objc_msgSend                            ; [NSNumber numberWithInt:9]
  1000b7014  bl      _objc_retain
  1000b7018  mov     x21, x0
  1000b701c  str     x21, [sp, #0xa0]
  1000b7020  adrp    x8, #0x10041d000
  1000b7024  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000b7028  adrp    x8, #0x100416000
  1000b702c  nop
  1000b7030  ldr     x1, [x8, #0xcd0]
  1000b7034  add     x2, sp, #0x60
  1000b7038  add     x3, sp, #0x18
  1000b703c  mov     w4, #9
  1000b7040  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x60] forKeys:&sp[0x18] count:9]
  1000b7044  mov     x29, x29
  1000b7048  bl      _objc_retainAutoreleasedReturnValue
  1000b704c  mov     x25, x0
  1000b7050  mov     x0, x21
  1000b7054  bl      _objc_release
  1000b7058  mov     x0, x28
  1000b705c  bl      _objc_release
  1000b7060  mov     x0, x27
  1000b7064  bl      _objc_release
  1000b7068  mov     x0, x26
  1000b706c  bl      _objc_release
  1000b7070  mov     x0, x24
  1000b7074  bl      _objc_release
  1000b7078  mov     x0, x23
  1000b707c  bl      _objc_release
  1000b7080  mov     x0, x22
  1000b7084  bl      _objc_release
  1000b7088  ldr     x0, [sp, #8]
  1000b708c  bl      _objc_release
  1000b7090  ldr     x0, [sp, #0x10]
  1000b7094  bl      _objc_release
  1000b7098  adrp    x8, #0x100416000
  1000b709c  nop
  1000b70a0  ldr     x1, [x8, #0xbf0]
  1000b70a4  adrp    x2, #0x1003bf000
  1000b70a8  add     x2, x2, #0x530                           ; @"ADEncyclopediaItemViewController"
  1000b70ac  mov     x0, x20
  1000b70b0  mov     x3, x25
  1000b70b4  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADEncyclopediaItemViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x60] forKeys:&sp[0x18] count:9]]
  1000b70b8  mov     x0, x25
  1000b70bc  bl      _objc_release
  1000b70c0  ldur    x8, [x29, #-0x58]
  1000b70c4  sub     x8, x19, x8
  1000b70c8  cbnz    x8, loc_1000b70ec                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000b70cc  sub     sp, x29, #0x50
  1000b70d0  ldp     x29, x30, [sp, #0x50]
  1000b70d4  ldp     x20, x19, [sp, #0x40]
  1000b70d8  ldp     x22, x21, [sp, #0x30]
  1000b70dc  ldp     x24, x23, [sp, #0x20]
  1000b70e0  ldp     x26, x25, [sp, #0x10]
  1000b70e4  ldp     x28, x27, [sp], #0x60
  1000b70e8  ret
loc_1000b70ec:
  1000b70ec  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000b70f0  mov     x19, x0
  1000b70f4  b       loc_1000b7174
  1000b70f8  mov     x19, x0
  1000b70fc  b       loc_1000b716c
  1000b7100  mov     x19, x0
  1000b7104  b       loc_1000b7164
  1000b7108  mov     x19, x0
  1000b710c  b       loc_1000b715c
  1000b7110  mov     x19, x0
  1000b7114  b       loc_1000b7154
  1000b7118  mov     x19, x0
  1000b711c  b       loc_1000b714c
  1000b7120  mov     x19, x0
  1000b7124  b       loc_1000b7144
  1000b7128  mov     x19, x0
  1000b712c  b       loc_1000b713c
  1000b7130  mov     x19, x0
  1000b7134  mov     x0, x21
  1000b7138  bl      _objc_release
loc_1000b713c:
  1000b713c  mov     x0, x28
  1000b7140  bl      _objc_release
loc_1000b7144:
  1000b7144  mov     x0, x27
  1000b7148  bl      _objc_release
loc_1000b714c:
  1000b714c  mov     x0, x26
  1000b7150  bl      _objc_release
loc_1000b7154:
  1000b7154  mov     x0, x24
  1000b7158  bl      _objc_release
loc_1000b715c:
  1000b715c  mov     x0, x23
  1000b7160  bl      _objc_release
loc_1000b7164:
  1000b7164  mov     x0, x22
  1000b7168  bl      _objc_release
loc_1000b716c:
  1000b716c  ldr     x0, [sp, #8]
  1000b7170  bl      _objc_release
loc_1000b7174:
  1000b7174  ldr     x0, [sp, #0x10]
loc_1000b7178:
  1000b7178  bl      _objc_release
  1000b717c  mov     x0, x19
  1000b7180  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000b7184  mov     x19, x0
  1000b7188  mov     x0, x25
  1000b718c  b       loc_1000b7178

; ======================================================================
; -[ADEncyclopediaItemViewController populateViewWithData]
; address 0x1000b7190  size 1380  kind objc
; ======================================================================
  1000b7190  stp     x28, x27, [sp, #-0x60]!
  1000b7194  stp     x26, x25, [sp, #0x10]
  1000b7198  stp     x24, x23, [sp, #0x20]
  1000b719c  stp     x22, x21, [sp, #0x30]
  1000b71a0  stp     x20, x19, [sp, #0x40]
  1000b71a4  stp     x29, x30, [sp, #0x50]
  1000b71a8  add     x29, sp, #0x50
  1000b71ac  sub     sp, sp, #0x10
  1000b71b0  mov     x19, x0
  1000b71b4  adrp    x8, #0x100419000
  1000b71b8  nop
  1000b71bc  ldr     x21, [x8, #0xf30]
  1000b71c0  mov     x1, x21
  1000b71c4  bl      _objc_msgSend                            ; [self setupData]
  1000b71c8  mov     x29, x29
  1000b71cc  bl      _objc_retainAutoreleasedReturnValue
  1000b71d0  mov     x22, x0
  1000b71d4  adrp    x8, #0x100417000
  1000b71d8  nop
  1000b71dc  ldr     x20, [x8, #0x40]
  1000b71e0  adrp    x2, #0x1003ba000
  1000b71e4  add     x2, x2, #0x1d0                           ; @"Killed"
  1000b71e8  mov     x1, x20
  1000b71ec  bl      _objc_msgSend                            ; [[self setupData] objectForKey:@"Killed"]
  1000b71f0  mov     x29, x29
  1000b71f4  bl      _objc_retainAutoreleasedReturnValue
  1000b71f8  mov     x25, x0
  1000b71fc  adrp    x8, #0x100417000
  1000b7200  nop
  1000b7204  ldr     x23, [x8, #0xb0]
  1000b7208  mov     x1, x23
  1000b720c  bl      _objc_msgSend                            ; [[[self setupData] objectForKey:@"Killed"] integerValue]
  1000b7210  mov     x24, x0
  1000b7214  mov     x0, x25
  1000b7218  bl      _objc_release
  1000b721c  mov     x0, x22
  1000b7220  bl      _objc_release
  1000b7224  mov     x0, x19
  1000b7228  mov     x1, x21
  1000b722c  bl      _objc_msgSend                            ; [self setupData]
  1000b7230  mov     x29, x29
  1000b7234  bl      _objc_retainAutoreleasedReturnValue
  1000b7238  mov     x22, x0
  1000b723c  adrp    x2, #0x1003bf000
  1000b7240  add     x2, x2, #0x470                           ; @"Casualty"
  1000b7244  mov     x1, x20
  1000b7248  bl      _objc_msgSend                            ; [[self setupData] objectForKey:@"Casualty"]
  1000b724c  mov     x29, x29
  1000b7250  bl      _objc_retainAutoreleasedReturnValue
  1000b7254  mov     x25, x0
  1000b7258  mov     x1, x23
  1000b725c  bl      _objc_msgSend                            ; [[[self setupData] objectForKey:@"Casualty"] integerValue]
  1000b7260  mov     x23, x0
  1000b7264  mov     x0, x25
  1000b7268  bl      _objc_release
  1000b726c  mov     x0, x22
  1000b7270  bl      _objc_release
  1000b7274  adrp    x8, #0x100419000
  1000b7278  nop
  1000b727c  ldr     x22, [x8, #0xaf0]
  1000b7280  mov     x0, x19
  1000b7284  mov     x1, x22
  1000b7288  bl      _objc_msgSend                            ; [self enemyNameLabel]
  1000b728c  mov     x29, x29
  1000b7290  bl      _objc_retainAutoreleasedReturnValue
  1000b7294  mov     x25, x0
  1000b7298  adrp    x8, #0x100416000
  1000b729c  nop
  1000b72a0  ldr     x1, [x8, #0xb88]
  1000b72a4  bl      _objc_msgSend                            ; [[self enemyNameLabel] setupAsTitle]
  1000b72a8  mov     x0, x25
  1000b72ac  bl      _objc_release
  1000b72b0  mov     x0, x19
  1000b72b4  mov     x1, x22
  1000b72b8  bl      _objc_msgSend                            ; [self enemyNameLabel]
  1000b72bc  mov     x29, x29
  1000b72c0  bl      _objc_retainAutoreleasedReturnValue
  1000b72c4  mov     x25, x0
  1000b72c8  adrp    x8, #0x100419000
  1000b72cc  nop
  1000b72d0  ldr     x1, [x8, #0xad8]
  1000b72d4  mov     x0, x19
  1000b72d8  bl      _objc_msgSend                            ; [self enemyName]
  1000b72dc  mov     x29, x29
  1000b72e0  bl      _objc_retainAutoreleasedReturnValue
  1000b72e4  mov     x26, x0
  1000b72e8  adrp    x8, #0x100416000
  1000b72ec  nop
  1000b72f0  ldr     x22, [x8, #0xb68]
  1000b72f4  mov     x0, x25
  1000b72f8  mov     x1, x22
  1000b72fc  mov     x2, x26
  1000b7300  bl      _objc_msgSend                            ; [[self enemyNameLabel] setText:[self enemyName]]
  1000b7304  mov     x0, x26
  1000b7308  bl      _objc_release
  1000b730c  mov     x0, x25
  1000b7310  bl      _objc_release
  1000b7314  adrp    x8, #0x100416000
  1000b7318  nop
  1000b731c  ldr     x26, [x8, #0xc40]
  1000b7320  mov     x0, x19
  1000b7324  mov     x1, x26
  1000b7328  bl      _objc_msgSend                            ; [self killsLabel]
  1000b732c  mov     x29, x29
  1000b7330  bl      _objc_retainAutoreleasedReturnValue
  1000b7334  mov     x27, x0
  1000b7338  adrp    x8, #0x100416000
  1000b733c  nop
  1000b7340  ldr     x25, [x8, #0xba0]
  1000b7344  mov     x1, x25
  1000b7348  bl      _objc_msgSend                            ; [[self killsLabel] setupAsMain]
  1000b734c  mov     x0, x27
  1000b7350  bl      _objc_release
  1000b7354  mov     x0, x19
  1000b7358  mov     x1, x26
  1000b735c  bl      _objc_msgSend                            ; [self killsLabel]
  1000b7360  mov     x29, x29
  1000b7364  bl      _objc_retainAutoreleasedReturnValue
  1000b7368  mov     x26, x0
  1000b736c  adrp    x2, #0x1003b9000
  1000b7370  add     x2, x2, #0x950                           ; @"Kills"
  1000b7374  mov     x1, x22
  1000b7378  bl      _objc_msgSend                            ; [[self killsLabel] setText:@"Kills"]
  1000b737c  mov     x0, x26
  1000b7380  bl      _objc_release
  1000b7384  adrp    x8, #0x100416000
  1000b7388  nop
  1000b738c  ldr     x26, [x8, #0xc28]
  1000b7390  mov     x0, x19
  1000b7394  mov     x1, x26
  1000b7398  bl      _objc_msgSend                            ; [self killsValueLabel]
  1000b739c  mov     x29, x29
  1000b73a0  bl      _objc_retainAutoreleasedReturnValue
  1000b73a4  mov     x27, x0
  1000b73a8  mov     x1, x25
  1000b73ac  bl      _objc_msgSend                            ; [[self killsValueLabel] setupAsMain]
  1000b73b0  mov     x0, x27
  1000b73b4  bl      _objc_release
  1000b73b8  mov     x0, x19
  1000b73bc  mov     x1, x26
  1000b73c0  bl      _objc_msgSend                            ; [self killsValueLabel]
  1000b73c4  mov     x29, x29
  1000b73c8  bl      _objc_retainAutoreleasedReturnValue
  1000b73cc  mov     x27, x0
  1000b73d0  adrp    x28, #0x10041d000
  1000b73d4  ldr     x0, [x28, #0xf78]                        ; class NSString
  1000b73d8  adrp    x8, #0x100416000
  1000b73dc  nop
  1000b73e0  ldr     x26, [x8, #0xee8]
  1000b73e4  str     x24, [sp]
  1000b73e8  adrp    x2, #0x1003ba000
  1000b73ec  add     x2, x2, #0x1f0                           ; @"%d"
  1000b73f0  mov     x1, x26
  1000b73f4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", [[[self setupData] objectForKey:@"Killed"] integerValue]]
  1000b73f8  mov     x29, x29
  1000b73fc  bl      _objc_retainAutoreleasedReturnValue
  1000b7400  mov     x24, x0
  1000b7404  mov     x0, x27
  1000b7408  mov     x1, x22
  1000b740c  mov     x2, x24
  1000b7410  bl      _objc_msgSend                            ; [[self killsValueLabel] setText:[NSString stringWithFormat:@"%d", [[[self setupData] objectForKey:@"Killed"] integerValue]]]
  1000b7414  mov     x0, x24
  1000b7418  bl      _objc_release
  1000b741c  mov     x0, x27
  1000b7420  bl      _objc_release
  1000b7424  adrp    x8, #0x10041a000
  1000b7428  nop
  1000b742c  ldr     x24, [x8, #0x778]
  1000b7430  mov     x0, x19
  1000b7434  mov     x1, x24
  1000b7438  bl      _objc_msgSend                            ; [self killedByLabel]
  1000b743c  mov     x29, x29
  1000b7440  bl      _objc_retainAutoreleasedReturnValue
  1000b7444  mov     x27, x0
  1000b7448  mov     x1, x25
  1000b744c  bl      _objc_msgSend                            ; [[self killedByLabel] setupAsMain]
  1000b7450  mov     x0, x27
  1000b7454  bl      _objc_release
  1000b7458  mov     x0, x19
  1000b745c  mov     x1, x24
  1000b7460  bl      _objc_msgSend                            ; [self killedByLabel]
  1000b7464  mov     x29, x29
  1000b7468  bl      _objc_retainAutoreleasedReturnValue
  1000b746c  mov     x24, x0
  1000b7470  adrp    x2, #0x1003c1000
  1000b7474  add     x2, x2, #0x810                           ; @"Killed by"
  1000b7478  mov     x1, x22
  1000b747c  bl      _objc_msgSend                            ; [[self killedByLabel] setText:@"Killed by"]
  1000b7480  mov     x0, x24
  1000b7484  bl      _objc_release
  1000b7488  adrp    x8, #0x10041a000
  1000b748c  nop
  1000b7490  ldr     x24, [x8, #0x780]
  1000b7494  mov     x0, x19
  1000b7498  mov     x1, x24
  1000b749c  bl      _objc_msgSend                            ; [self killedByValueLabel]
  1000b74a0  mov     x29, x29
  1000b74a4  bl      _objc_retainAutoreleasedReturnValue
  1000b74a8  mov     x27, x0
  1000b74ac  mov     x1, x25
  1000b74b0  bl      _objc_msgSend                            ; [[self killedByValueLabel] setupAsMain]
  1000b74b4  mov     x0, x27
  1000b74b8  bl      _objc_release
  1000b74bc  mov     x0, x19
  1000b74c0  mov     x1, x24
  1000b74c4  bl      _objc_msgSend                            ; [self killedByValueLabel]
  1000b74c8  mov     x29, x29
  1000b74cc  bl      _objc_retainAutoreleasedReturnValue
  1000b74d0  mov     x24, x0
  1000b74d4  ldr     x0, [x28, #0xf78]                        ; class NSString
  1000b74d8  str     x23, [sp]
  1000b74dc  adrp    x2, #0x1003ba000
  1000b74e0  add     x2, x2, #0x1f0                           ; @"%d"
  1000b74e4  mov     x1, x26
  1000b74e8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", [[[self setupData] objectForKey:@"Casualty"] integerValue]]
  1000b74ec  mov     x29, x29
  1000b74f0  bl      _objc_retainAutoreleasedReturnValue
  1000b74f4  mov     x23, x0
  1000b74f8  mov     x0, x24
  1000b74fc  mov     x1, x22
  1000b7500  mov     x2, x23
  1000b7504  bl      _objc_msgSend                            ; [[self killedByValueLabel] setText:[NSString stringWithFormat:@"%d", [[[self setupData] objectForKey:@"Casualty"] integerValue]]]
  1000b7508  mov     x0, x23
  1000b750c  bl      _objc_release
  1000b7510  mov     x0, x24
  1000b7514  bl      _objc_release
  1000b7518  adrp    x8, #0x10041a000
  1000b751c  nop
  1000b7520  ldr     x23, [x8, #0x788]
  1000b7524  mov     x0, x19
  1000b7528  mov     x1, x23
  1000b752c  bl      _objc_msgSend                            ; [self bioView]
  1000b7530  mov     x29, x29
  1000b7534  bl      _objc_retainAutoreleasedReturnValue
  1000b7538  mov     x24, x0
  1000b753c  adrp    x8, #0x10041a000
  1000b7540  nop
  1000b7544  ldr     x1, [x8, #0x790]
  1000b7548  bl      _objc_msgSend                            ; [[self bioView] setupAsParagraph]
  1000b754c  mov     x0, x24
  1000b7550  bl      _objc_release
  1000b7554  mov     x0, x19
  1000b7558  mov     x1, x23
  1000b755c  bl      _objc_msgSend                            ; [self bioView]
  1000b7560  mov     x29, x29
  1000b7564  bl      _objc_retainAutoreleasedReturnValue
  1000b7568  mov     x24, x0
  1000b756c  mov     x0, x19
  1000b7570  mov     x1, x21
  1000b7574  bl      _objc_msgSend                            ; [self setupData]
  1000b7578  mov     x29, x29
  1000b757c  bl      _objc_retainAutoreleasedReturnValue
  1000b7580  mov     x21, x0
  1000b7584  adrp    x2, #0x1003bf000
  1000b7588  add     x2, x2, #0x490                           ; @"Bio"
  1000b758c  mov     x1, x20
  1000b7590  bl      _objc_msgSend                            ; [[self setupData] objectForKey:@"Bio"]
  1000b7594  mov     x29, x29
  1000b7598  bl      _objc_retainAutoreleasedReturnValue
  1000b759c  mov     x20, x0
  1000b75a0  mov     x0, x24
  1000b75a4  mov     x1, x22
  1000b75a8  mov     x2, x20
  1000b75ac  bl      _objc_msgSend                            ; [[self bioView] setText:[[self setupData] objectForKey:@"Bio"]]
  1000b75b0  mov     x0, x20
  1000b75b4  bl      _objc_release
  1000b75b8  mov     x0, x21
  1000b75bc  bl      _objc_release
  1000b75c0  mov     x0, x24
  1000b75c4  bl      _objc_release
  1000b75c8  mov     x0, x19
  1000b75cc  mov     x1, x23
  1000b75d0  bl      _objc_msgSend                            ; [self bioView]
  1000b75d4  mov     x29, x29
  1000b75d8  bl      _objc_retainAutoreleasedReturnValue
  1000b75dc  mov     x20, x0
  1000b75e0  adrp    x8, #0x100419000
  1000b75e4  nop
  1000b75e8  ldr     x1, [x8, #0xfc8]
  1000b75ec  mov     w2, #0
  1000b75f0  bl      _objc_msgSend                            ; [[self bioView] setEditable:0]
  1000b75f4  mov     x0, x20
  1000b75f8  sub     sp, x29, #0x50
  1000b75fc  ldp     x29, x30, [sp, #0x50]
  1000b7600  ldp     x20, x19, [sp, #0x40]
  1000b7604  ldp     x22, x21, [sp, #0x30]
  1000b7608  ldp     x24, x23, [sp, #0x20]
  1000b760c  ldp     x26, x25, [sp, #0x10]
  1000b7610  ldp     x28, x27, [sp], #0x60
  1000b7614  b       _objc_release
  1000b7618  mov     x19, x0
  1000b761c  b       loc_1000b7638
  1000b7620  b       loc_1000b762c
  1000b7624  mov     x19, x0
  1000b7628  b       loc_1000b7638
loc_1000b762c:
  1000b762c  mov     x19, x0
  1000b7630  mov     x0, x25
  1000b7634  bl      _objc_release
loc_1000b7638:
  1000b7638  mov     x0, x22
  1000b763c  b       loc_1000b76dc
  1000b7640  mov     x19, x0
  1000b7644  b       loc_1000b765c
  1000b7648  mov     x19, x0
  1000b764c  b       loc_1000b765c
  1000b7650  mov     x19, x0
  1000b7654  mov     x0, x26
  1000b7658  bl      _objc_release
loc_1000b765c:
  1000b765c  mov     x0, x25
  1000b7660  b       loc_1000b76dc
  1000b7664  b       loc_1000b7694
  1000b7668  mov     x19, x0
  1000b766c  mov     x0, x26
  1000b7670  b       loc_1000b76dc
  1000b7674  b       loc_1000b7694
  1000b7678  b       loc_1000b7694
  1000b767c  mov     x19, x0
  1000b7680  mov     x0, x24
  1000b7684  bl      _objc_release
  1000b7688  b       loc_1000b7698
  1000b768c  b       loc_1000b7694
  1000b7690  b       loc_1000b76b4
loc_1000b7694:
  1000b7694  mov     x19, x0
loc_1000b7698:
  1000b7698  mov     x0, x27
  1000b769c  b       loc_1000b76dc
  1000b76a0  b       loc_1000b76b4
  1000b76a4  mov     x19, x0
  1000b76a8  mov     x0, x23
  1000b76ac  b       loc_1000b76d4
  1000b76b0  b       loc_1000b76b4
loc_1000b76b4:
  1000b76b4  mov     x19, x0
  1000b76b8  b       loc_1000b76d8
  1000b76bc  mov     x19, x0
  1000b76c0  b       loc_1000b76d0
  1000b76c4  mov     x19, x0
  1000b76c8  mov     x0, x20
  1000b76cc  bl      _objc_release
loc_1000b76d0:
  1000b76d0  mov     x0, x21
loc_1000b76d4:
  1000b76d4  bl      _objc_release
loc_1000b76d8:
  1000b76d8  mov     x0, x24
loc_1000b76dc:
  1000b76dc  bl      _objc_release
  1000b76e0  mov     x0, x19
  1000b76e4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000b76e8  mov     x19, x0
  1000b76ec  mov     x0, x20
  1000b76f0  b       loc_1000b76dc

; ======================================================================
; -[ADEncyclopediaItemViewController viewWillAppear:]
; address 0x1000b76f4  size 92  kind objc
; ======================================================================
  1000b76f4  stp     x20, x19, [sp, #-0x20]!
  1000b76f8  stp     x29, x30, [sp, #0x10]
  1000b76fc  add     x29, sp, #0x10
  1000b7700  adrp    x8, #0x100416000
  1000b7704  nop
  1000b7708  ldr     x1, [x8, #0xf18]
  1000b770c  bl      _objc_msgSend                            ; [self view]
  1000b7710  mov     x29, x29
  1000b7714  bl      _objc_retainAutoreleasedReturnValue
  1000b7718  mov     x19, x0
  1000b771c  adrp    x8, #0x100418000
  1000b7720  nop
  1000b7724  ldr     x1, [x8, #0x640]
  1000b7728  bl      _objc_msgSend                            ; [[self view] layoutIfNeeded]
  1000b772c  mov     x0, x19
  1000b7730  ldp     x29, x30, [sp, #0x10]
  1000b7734  ldp     x20, x19, [sp], #0x20
  1000b7738  b       _objc_release
  1000b773c  mov     x20, x0
  1000b7740  mov     x0, x19
  1000b7744  bl      _objc_release
  1000b7748  mov     x0, x20
  1000b774c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaItemViewController applyAccessibility]
; address 0x1000b7750  size 608  kind objc
; ======================================================================
  1000b7750  stp     x28, x27, [sp, #-0x60]!
  1000b7754  stp     x26, x25, [sp, #0x10]
  1000b7758  stp     x24, x23, [sp, #0x20]
  1000b775c  stp     x22, x21, [sp, #0x30]
  1000b7760  stp     x20, x19, [sp, #0x40]
  1000b7764  stp     x29, x30, [sp, #0x50]
  1000b7768  add     x29, sp, #0x50
  1000b776c  sub     sp, sp, #0x20
  1000b7770  mov     x19, x0
  1000b7774  str     x19, [sp, #0x10]
  1000b7778  adrp    x8, #0x10041e000
  1000b777c  ldr     x8, [x8, #0xf68]
  1000b7780  str     x8, [sp, #0x18]
  1000b7784  adrp    x8, #0x100419000
  1000b7788  nop
  1000b778c  ldr     x1, [x8, #0xf18]
  1000b7790  add     x0, sp, #0x10
  1000b7794  bl      _objc_msgSendSuper2                      ; [super applyAccessibility]
  1000b7798  adrp    x8, #0x100416000
  1000b779c  nop
  1000b77a0  ldr     x1, [x8, #0xc40]
  1000b77a4  mov     x0, x19
  1000b77a8  bl      _objc_msgSend                            ; [self killsLabel]
  1000b77ac  mov     x29, x29
  1000b77b0  bl      _objc_retainAutoreleasedReturnValue
  1000b77b4  mov     x20, x0
  1000b77b8  adrp    x27, #0x10041d000
  1000b77bc  ldr     x23, [x27, #0xf78]                       ; class NSString
  1000b77c0  adrp    x8, #0x100416000
  1000b77c4  nop
  1000b77c8  ldr     x1, [x8, #0xc28]
  1000b77cc  mov     x0, x19
  1000b77d0  bl      _objc_msgSend                            ; [self killsValueLabel]
  1000b77d4  mov     x29, x29
  1000b77d8  bl      _objc_retainAutoreleasedReturnValue
  1000b77dc  mov     x24, x0
  1000b77e0  adrp    x8, #0x100418000
  1000b77e4  nop
  1000b77e8  ldr     x22, [x8, #0x290]
  1000b77ec  mov     x1, x22
  1000b77f0  bl      _objc_msgSend                            ; [[self killsValueLabel] text]
  1000b77f4  mov     x29, x29
  1000b77f8  bl      _objc_retainAutoreleasedReturnValue
  1000b77fc  mov     x25, x0
  1000b7800  adrp    x8, #0x100416000
  1000b7804  nop
  1000b7808  ldr     x21, [x8, #0xee8]
  1000b780c  str     x25, [sp]
  1000b7810  adrp    x2, #0x1003c1000
  1000b7814  add     x2, x2, #0x830                           ; @"Killed: %@"
  1000b7818  mov     x0, x23
  1000b781c  mov     x1, x21
  1000b7820  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Killed: %@", [[self killsValueLabel] text]]
  1000b7824  mov     x29, x29
  1000b7828  bl      _objc_retainAutoreleasedReturnValue
  1000b782c  mov     x26, x0
  1000b7830  adrp    x8, #0x100417000
  1000b7834  nop
  1000b7838  ldr     x23, [x8, #0x7e8]
  1000b783c  mov     x0, x20
  1000b7840  mov     x1, x23
  1000b7844  mov     x2, x26
  1000b7848  bl      _objc_msgSend                            ; [[self killsLabel] setAccessibilityLabel:[NSString stringWithFormat:@"Killed: %@", [[self killsValueLabel] text]]]
  1000b784c  mov     x0, x26
  1000b7850  bl      _objc_release
  1000b7854  mov     x0, x25
  1000b7858  bl      _objc_release
  1000b785c  mov     x0, x24
  1000b7860  bl      _objc_release
  1000b7864  mov     x0, x20
  1000b7868  bl      _objc_release
  1000b786c  adrp    x8, #0x10041a000
  1000b7870  nop
  1000b7874  ldr     x1, [x8, #0x778]
  1000b7878  mov     x0, x19
  1000b787c  bl      _objc_msgSend                            ; [self killedByLabel]
  1000b7880  mov     x29, x29
  1000b7884  bl      _objc_retainAutoreleasedReturnValue
  1000b7888  mov     x20, x0
  1000b788c  ldr     x24, [x27, #0xf78]                       ; class NSString
  1000b7890  adrp    x8, #0x10041a000
  1000b7894  nop
  1000b7898  ldr     x1, [x8, #0x780]
  1000b789c  mov     x0, x19
  1000b78a0  bl      _objc_msgSend                            ; [self killedByValueLabel]
  1000b78a4  mov     x29, x29
  1000b78a8  bl      _objc_retainAutoreleasedReturnValue
  1000b78ac  mov     x19, x0
  1000b78b0  mov     x1, x22
  1000b78b4  bl      _objc_msgSend                            ; [[self killedByValueLabel] text]
  1000b78b8  mov     x29, x29
  1000b78bc  bl      _objc_retainAutoreleasedReturnValue
  1000b78c0  mov     x22, x0
  1000b78c4  str     x22, [sp]
  1000b78c8  adrp    x2, #0x1003c1000
  1000b78cc  add     x2, x2, #0x850                           ; @"Killed by: %@"
  1000b78d0  mov     x0, x24
  1000b78d4  mov     x1, x21
  1000b78d8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Killed by: %@", [[self killedByValueLabel] text]]
  1000b78dc  mov     x29, x29
  1000b78e0  bl      _objc_retainAutoreleasedReturnValue
  1000b78e4  mov     x24, x0
  1000b78e8  mov     x0, x20
  1000b78ec  mov     x1, x23
  1000b78f0  mov     x2, x24
  1000b78f4  bl      _objc_msgSend                            ; [[self killedByLabel] setAccessibilityLabel:[NSString stringWithFormat:@"Killed by: %@", [[self killedByValueLabel] text]]]
  1000b78f8  mov     x0, x24
  1000b78fc  bl      _objc_release
  1000b7900  mov     x0, x22
  1000b7904  bl      _objc_release
  1000b7908  mov     x0, x19
  1000b790c  bl      _objc_release
  1000b7910  mov     x0, x20
  1000b7914  bl      _objc_release
  1000b7918  sub     sp, x29, #0x50
  1000b791c  ldp     x29, x30, [sp, #0x50]
  1000b7920  ldp     x20, x19, [sp, #0x40]
  1000b7924  ldp     x22, x21, [sp, #0x30]
  1000b7928  ldp     x24, x23, [sp, #0x20]
  1000b792c  ldp     x26, x25, [sp, #0x10]
  1000b7930  ldp     x28, x27, [sp], #0x60
  1000b7934  ret
  1000b7938  mov     x21, x0
  1000b793c  b       loc_1000b79a0
  1000b7940  mov     x21, x0
  1000b7944  b       loc_1000b7964
  1000b7948  mov     x21, x0
  1000b794c  b       loc_1000b795c
  1000b7950  mov     x21, x0
  1000b7954  mov     x0, x26
  1000b7958  bl      _objc_release
loc_1000b795c:
  1000b795c  mov     x0, x25
  1000b7960  bl      _objc_release
loc_1000b7964:
  1000b7964  mov     x0, x24
  1000b7968  b       loc_1000b799c
  1000b796c  mov     x21, x0
  1000b7970  b       loc_1000b79a0
  1000b7974  mov     x21, x0
  1000b7978  b       loc_1000b7998
  1000b797c  mov     x21, x0
  1000b7980  b       loc_1000b7990
  1000b7984  mov     x21, x0
  1000b7988  mov     x0, x24
  1000b798c  bl      _objc_release
loc_1000b7990:
  1000b7990  mov     x0, x22
  1000b7994  bl      _objc_release
loc_1000b7998:
  1000b7998  mov     x0, x19
loc_1000b799c:
  1000b799c  bl      _objc_release
loc_1000b79a0:
  1000b79a0  mov     x0, x20
  1000b79a4  bl      _objc_release
  1000b79a8  mov     x0, x21
  1000b79ac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEncyclopediaItemViewController killsLabel]
; address 0x1000b79b0  size 32  kind objc
; ======================================================================
  1000b79b0  stp     x29, x30, [sp, #-0x10]!
  1000b79b4  mov     x29, sp
  1000b79b8  adrp    x8, #0x100420000
  1000b79bc  ldrsw   x8, [x8, #0x268]                         ; ivar offset ADEncyclopediaItemViewController._killsLabel (+0x140)
  1000b79c0  add     x0, x0, x8
  1000b79c4  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000b79c8  ldp     x29, x30, [sp], #0x10
  1000b79cc  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADEncyclopediaItemViewController setKillsLabel:]
; address 0x1000b79d0  size 20  kind objc
; ======================================================================
  1000b79d0  adrp    x8, #0x100420000
  1000b79d4  ldrsw   x8, [x8, #0x268]                         ; ivar offset ADEncyclopediaItemViewController._killsLabel (+0x140)
  1000b79d8  add     x0, x0, x8
  1000b79dc  mov     x1, x2
  1000b79e0  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADEncyclopediaItemViewController killsValueLabel]
; address 0x1000b79e4  size 16  kind objc
; ======================================================================
  1000b79e4  adrp    x8, #0x100420000
  1000b79e8  ldrsw   x8, [x8, #0x26c]                         ; ivar offset ADEncyclopediaItemViewController._killsValueLabel (+0x148)
  1000b79ec  ldr     x0, [x0, x8]                             ; x0 = self->_killsValueLabel
  1000b79f0  ret

; ======================================================================
; -[ADEncyclopediaItemViewController setKillsValueLabel:]
; address 0x1000b79f4  size 56  kind objc
; ======================================================================
  1000b79f4  stp     x20, x19, [sp, #-0x20]!
  1000b79f8  stp     x29, x30, [sp, #0x10]
  1000b79fc  add     x29, sp, #0x10
  1000b7a00  mov     x19, x0
  1000b7a04  adrp    x8, #0x100420000
  1000b7a08  ldrsw   x20, [x8, #0x26c]                        ; ivar offset ADEncyclopediaItemViewController._killsValueLabel (+0x148)
  1000b7a0c  mov     x0, x2
  1000b7a10  bl      _objc_retain
  1000b7a14  ldr     x8, [x19, x20]                           ; x8 = self->_killsValueLabel
  1000b7a18  str     x0, [x19, x20]                           ; self->_killsValueLabel = arg1
  1000b7a1c  mov     x0, x8
  1000b7a20  ldp     x29, x30, [sp, #0x10]
  1000b7a24  ldp     x20, x19, [sp], #0x20
  1000b7a28  b       _objc_release

; ======================================================================
; -[ADEncyclopediaItemViewController killedByLabel]
; address 0x1000b7a2c  size 16  kind objc
; ======================================================================
  1000b7a2c  adrp    x8, #0x100420000
  1000b7a30  ldrsw   x8, [x8, #0x270]                         ; ivar offset ADEncyclopediaItemViewController._killedByLabel (+0x150)
  1000b7a34  ldr     x0, [x0, x8]                             ; x0 = self->_killedByLabel
  1000b7a38  ret

; ======================================================================
; -[ADEncyclopediaItemViewController setKilledByLabel:]
; address 0x1000b7a3c  size 56  kind objc
; ======================================================================
  1000b7a3c  stp     x20, x19, [sp, #-0x20]!
  1000b7a40  stp     x29, x30, [sp, #0x10]
  1000b7a44  add     x29, sp, #0x10
  1000b7a48  mov     x19, x0
  1000b7a4c  adrp    x8, #0x100420000
  1000b7a50  ldrsw   x20, [x8, #0x270]                        ; ivar offset ADEncyclopediaItemViewController._killedByLabel (+0x150)
  1000b7a54  mov     x0, x2
  1000b7a58  bl      _objc_retain
  1000b7a5c  ldr     x8, [x19, x20]                           ; x8 = self->_killedByLabel
  1000b7a60  str     x0, [x19, x20]                           ; self->_killedByLabel = arg1
  1000b7a64  mov     x0, x8
  1000b7a68  ldp     x29, x30, [sp, #0x10]
  1000b7a6c  ldp     x20, x19, [sp], #0x20
  1000b7a70  b       _objc_release

; ======================================================================
; -[ADEncyclopediaItemViewController killedByValueLabel]
; address 0x1000b7a74  size 16  kind objc
; ======================================================================
  1000b7a74  adrp    x8, #0x100420000
  1000b7a78  ldrsw   x8, [x8, #0x274]                         ; ivar offset ADEncyclopediaItemViewController._killedByValueLabel (+0x158)
  1000b7a7c  ldr     x0, [x0, x8]                             ; x0 = self->_killedByValueLabel
  1000b7a80  ret

; ======================================================================
; -[ADEncyclopediaItemViewController setKilledByValueLabel:]
; address 0x1000b7a84  size 56  kind objc
; ======================================================================
  1000b7a84  stp     x20, x19, [sp, #-0x20]!
  1000b7a88  stp     x29, x30, [sp, #0x10]
  1000b7a8c  add     x29, sp, #0x10
  1000b7a90  mov     x19, x0
  1000b7a94  adrp    x8, #0x100420000
  1000b7a98  ldrsw   x20, [x8, #0x274]                        ; ivar offset ADEncyclopediaItemViewController._killedByValueLabel (+0x158)
  1000b7a9c  mov     x0, x2
  1000b7aa0  bl      _objc_retain
  1000b7aa4  ldr     x8, [x19, x20]                           ; x8 = self->_killedByValueLabel
  1000b7aa8  str     x0, [x19, x20]                           ; self->_killedByValueLabel = arg1
  1000b7aac  mov     x0, x8
  1000b7ab0  ldp     x29, x30, [sp, #0x10]
  1000b7ab4  ldp     x20, x19, [sp], #0x20
  1000b7ab8  b       _objc_release

; ======================================================================
; -[ADEncyclopediaItemViewController bioView]
; address 0x1000b7abc  size 32  kind objc
; ======================================================================
  1000b7abc  stp     x29, x30, [sp, #-0x10]!
  1000b7ac0  mov     x29, sp
  1000b7ac4  adrp    x8, #0x100420000
  1000b7ac8  ldrsw   x8, [x8, #0x278]                         ; ivar offset ADEncyclopediaItemViewController._bioView (+0x160)
  1000b7acc  add     x0, x0, x8
  1000b7ad0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000b7ad4  ldp     x29, x30, [sp], #0x10
  1000b7ad8  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADEncyclopediaItemViewController setBioView:]
; address 0x1000b7adc  size 20  kind objc
; ======================================================================
  1000b7adc  adrp    x8, #0x100420000
  1000b7ae0  ldrsw   x8, [x8, #0x278]                         ; ivar offset ADEncyclopediaItemViewController._bioView (+0x160)
  1000b7ae4  add     x0, x0, x8
  1000b7ae8  mov     x1, x2
  1000b7aec  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADEncyclopediaItemViewController .cxx_destruct]
; address 0x1000b7af0  size 116  kind objc
; ======================================================================
  1000b7af0  stp     x20, x19, [sp, #-0x20]!
  1000b7af4  stp     x29, x30, [sp, #0x10]
  1000b7af8  add     x29, sp, #0x10
  1000b7afc  mov     x19, x0
  1000b7b00  adrp    x8, #0x100420000
  1000b7b04  ldrsw   x8, [x8, #0x278]                         ; ivar offset ADEncyclopediaItemViewController._bioView (+0x160)
  1000b7b08  add     x0, x19, x8
  1000b7b0c  bl      _objc_destroyWeak
  1000b7b10  adrp    x8, #0x100420000
  1000b7b14  ldrsw   x8, [x8, #0x274]                         ; ivar offset ADEncyclopediaItemViewController._killedByValueLabel (+0x158)
  1000b7b18  add     x0, x19, x8
  1000b7b1c  mov     x1, #0
  1000b7b20  bl      _objc_storeStrong
  1000b7b24  adrp    x8, #0x100420000
  1000b7b28  ldrsw   x8, [x8, #0x270]                         ; ivar offset ADEncyclopediaItemViewController._killedByLabel (+0x150)
  1000b7b2c  add     x0, x19, x8
  1000b7b30  mov     x1, #0
  1000b7b34  bl      _objc_storeStrong
  1000b7b38  adrp    x8, #0x100420000
  1000b7b3c  ldrsw   x8, [x8, #0x26c]                         ; ivar offset ADEncyclopediaItemViewController._killsValueLabel (+0x148)
  1000b7b40  add     x0, x19, x8
  1000b7b44  mov     x1, #0
  1000b7b48  bl      _objc_storeStrong
  1000b7b4c  adrp    x8, #0x100420000
  1000b7b50  ldrsw   x8, [x8, #0x268]                         ; ivar offset ADEncyclopediaItemViewController._killsLabel (+0x140)
  1000b7b54  add     x0, x19, x8
  1000b7b58  ldp     x29, x30, [sp, #0x10]
  1000b7b5c  ldp     x20, x19, [sp], #0x20
  1000b7b60  b       _objc_destroyWeak
