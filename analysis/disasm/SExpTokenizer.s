// unit SExpTokenizer — 10 functions
//   0x1000dfc10     116  +[SExpTokenizer simpleSExpTokenizer:]
//   0x1000dfc84     420  -[SExpTokenizer initWithInputStream:]
//   0x1000dfe28      72  -[SExpTokenizer nextToken]
//   0x1000dfe70    1504  -[SExpTokenizer nextTokenInternal]
//   0x1000e0450     112  -[SExpTokenizer dealloc]
//   0x1000e04c0      16  -[SExpTokenizer inStream]
//   0x1000e04d0      56  -[SExpTokenizer setInStream:]
//   0x1000e0508      16  -[SExpTokenizer stringValue]
//   0x1000e0518      56  -[SExpTokenizer setStringValue:]
//   0x1000e0550      64  -[SExpTokenizer .cxx_destruct]

; ======================================================================
; +[SExpTokenizer simpleSExpTokenizer:]
; address 0x1000dfc10  size 116  kind objc
; ======================================================================
  1000dfc10  stp     x20, x19, [sp, #-0x20]!
  1000dfc14  stp     x29, x30, [sp, #0x10]
  1000dfc18  add     x29, sp, #0x10
  1000dfc1c  mov     x0, x2
  1000dfc20  bl      _objc_retain
  1000dfc24  mov     x19, x0
  1000dfc28  adrp    x8, #0x10041e000
  1000dfc2c  ldr     x0, [x8, #0x478]                         ; class SExpTokenizer
  1000dfc30  adrp    x8, #0x100416000
  1000dfc34  nop
  1000dfc38  ldr     x1, [x8, #0xac8]
  1000dfc3c  bl      _objc_msgSend                            ; [SExpTokenizer alloc]
  1000dfc40  adrp    x8, #0x10041b000
  1000dfc44  nop
  1000dfc48  ldr     x1, [x8, #0x200]
  1000dfc4c  mov     x2, x19
  1000dfc50  bl      _objc_msgSend                            ; [[SExpTokenizer alloc] initWithInputStream:arg1]
  1000dfc54  mov     x20, x0
  1000dfc58  mov     x0, x19
  1000dfc5c  bl      _objc_release
  1000dfc60  mov     x0, x20
  1000dfc64  ldp     x29, x30, [sp, #0x10]
  1000dfc68  ldp     x20, x19, [sp], #0x20
  1000dfc6c  b       _objc_autoreleaseReturnValue
  1000dfc70  mov     x20, x0
  1000dfc74  mov     x0, x19
  1000dfc78  bl      _objc_release
  1000dfc7c  mov     x0, x20
  1000dfc80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExpTokenizer initWithInputStream:]
; address 0x1000dfc84  size 420  kind objc
; ======================================================================
  1000dfc84  stp     x22, x21, [sp, #-0x30]!
  1000dfc88  stp     x20, x19, [sp, #0x10]
  1000dfc8c  stp     x29, x30, [sp, #0x20]
  1000dfc90  add     x29, sp, #0x20
  1000dfc94  sub     sp, sp, #0x10
  1000dfc98  mov     x20, x0
  1000dfc9c  mov     x0, x2
  1000dfca0  bl      _objc_retain
  1000dfca4  mov     x19, x0
  1000dfca8  str     x20, [sp]
  1000dfcac  adrp    x8, #0x10041f000
  1000dfcb0  ldr     x8, [x8, #0x38]
  1000dfcb4  str     x8, [sp, #8]
  1000dfcb8  adrp    x8, #0x100416000
  1000dfcbc  nop
  1000dfcc0  ldr     x1, [x8, #0xab8]
  1000dfcc4  mov     x0, sp
  1000dfcc8  bl      _objc_msgSendSuper2                      ; [super init]
  1000dfccc  mov     x20, x0
  1000dfcd0  cbz     x20, loc_1000dfdf4                       ; if (self == 0)
  1000dfcd4  adrp    x8, #0x100420000
  1000dfcd8  ldrsw   x21, [x8, #0x5b4]                        ; ivar offset SExpTokenizer.inStream (+0x8)
  1000dfcdc  mov     x0, x19
  1000dfce0  bl      _objc_retain
  1000dfce4  ldr     x8, [x20, x21]                           ; x8 = self->inStream
  1000dfce8  str     x0, [x20, x21]                           ; self->inStream = arg1
  1000dfcec  mov     x0, x8
  1000dfcf0  bl      _objc_release
  1000dfcf4  adrp    x8, #0x10042d000
  1000dfcf8  add     x8, x8, #0xa70                           ; &g_10042da70
  1000dfcfc  ldrh    w9, [x8, #0x82]                          ; load g_10042daf2
  1000dfd00  cbnz    w9, loc_1000dfdf4                        ; if (g_10042daf2 != 0)
  1000dfd04  stp     xzr, xzr, [x8, #0x10]
  1000dfd08  stp     xzr, xzr, [x8]
  1000dfd0c  add     x10, x8, #0x82                           ; &g_10042daf2
  1000dfd10  mov     w11, #0x41
  1000dfd14  adrp    x12, #0x100181000
  1000dfd18  mov     w9, #0x61
  1000dfd1c  ldr     d0, [x12, #0xdb8]                        ; d0 = 2.12199579e-314
loc_1000dfd20:
  1000dfd20  dup     v1.2s, w11
  1000dfd24  add     v1.2s, v1.2s, v0.2s
  1000dfd28  mov     w12, v1.s[1]
  1000dfd2c  strh    w12, [x10, #2]
  1000dfd30  fmov    w12, s1
  1000dfd34  strh    w12, [x10]
  1000dfd38  add     x11, x11, #2
  1000dfd3c  add     x10, x10, #4
  1000dfd40  cmp     x11, #0x5b
  1000dfd44  b.ne    loc_1000dfd20                            ; if ((x11 + 2) != 91)
  1000dfd48  add     x10, x8, #0xc2                           ; &g_10042db32
loc_1000dfd4c:
  1000dfd4c  dup     v1.2s, w9
  1000dfd50  add     v1.2s, v1.2s, v0.2s
  1000dfd54  mov     w11, v1.s[1]
  1000dfd58  strh    w11, [x10, #2]
  1000dfd5c  fmov    w11, s1
  1000dfd60  strh    w11, [x10]
  1000dfd64  add     x9, x9, #2
  1000dfd68  add     x10, x10, #4
  1000dfd6c  cmp     x9, #0x7b
  1000dfd70  b.ne    loc_1000dfd4c                            ; if ((x9 + 2) != 123)
  1000dfd74  mov     w9, #0x21
  1000dfd78  strh    w9, [x8, #0x42]                          ; store g_10042dab2 = 33
  1000dfd7c  mov     w10, #0x23
  1000dfd80  mov     w9, #0x2a
loc_1000dfd84:
  1000dfd84  strh    w10, [x8, x10, lsl #1]
  1000dfd88  add     x10, x10, #1
  1000dfd8c  cmp     x10, #0x28
  1000dfd90  b.ne    loc_1000dfd84                            ; if ((x10 + 1) != 40)
  1000dfd94  mov     w10, #0x30
loc_1000dfd98:
  1000dfd98  strh    w9, [x8, x9, lsl #1]
  1000dfd9c  add     x9, x9, #1
  1000dfda0  cmp     x9, #0x30
  1000dfda4  b.ne    loc_1000dfd98                            ; if ((x9 + 1) != 48)
  1000dfda8  mov     w9, #0x3a
loc_1000dfdac:
  1000dfdac  strh    w10, [x8, x10, lsl #1]
  1000dfdb0  add     x10, x10, #1
  1000dfdb4  cmp     x10, #0x3a
  1000dfdb8  b.ne    loc_1000dfdac                            ; if ((x10 + 1) != 58)
  1000dfdbc  mov     w10, #0x5b
loc_1000dfdc0:
  1000dfdc0  strh    w9, [x8, x9, lsl #1]
  1000dfdc4  add     x9, x9, #1
  1000dfdc8  cmp     x9, #0x40
  1000dfdcc  b.ne    loc_1000dfdc0                            ; if ((x9 + 1) != 64)
  1000dfdd0  mov     w9, #0x7b
loc_1000dfdd4:
  1000dfdd4  strh    w10, [x8, x10, lsl #1]
  1000dfdd8  add     x10, x10, #1
  1000dfddc  cmp     x10, #0x60
  1000dfde0  b.ne    loc_1000dfdd4                            ; if ((x10 + 1) != 96)
loc_1000dfde4:
  1000dfde4  strh    w9, [x8, x9, lsl #1]
  1000dfde8  add     x9, x9, #1
  1000dfdec  cmp     x9, #0x7f
  1000dfdf0  b.ne    loc_1000dfde4                            ; if ((x9 + 1) != 127)
loc_1000dfdf4:
  1000dfdf4  mov     x0, x19
  1000dfdf8  bl      _objc_release
  1000dfdfc  mov     x0, x20
  1000dfe00  sub     sp, x29, #0x20
  1000dfe04  ldp     x29, x30, [sp, #0x20]
  1000dfe08  ldp     x20, x19, [sp, #0x10]
  1000dfe0c  ldp     x22, x21, [sp], #0x30
  1000dfe10  ret
  1000dfe14  mov     x20, x0
  1000dfe18  mov     x0, x19
  1000dfe1c  bl      _objc_release
  1000dfe20  mov     x0, x20
  1000dfe24  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExpTokenizer nextToken]
; address 0x1000dfe28  size 72  kind objc
; ======================================================================
  1000dfe28  stp     x20, x19, [sp, #-0x20]!
  1000dfe2c  stp     x29, x30, [sp, #0x10]
  1000dfe30  add     x29, sp, #0x10
  1000dfe34  mov     x19, x0
  1000dfe38  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  1000dfe3c  mov     x20, x0
  1000dfe40  adrp    x8, #0x10041b000
  1000dfe44  nop
  1000dfe48  ldr     x1, [x8, #0x208]
  1000dfe4c  mov     x0, x19
  1000dfe50  bl      _objc_msgSend                            ; [self nextTokenInternal]
  1000dfe54  mov     x19, x0
  1000dfe58  mov     x0, x20
  1000dfe5c  bl      _objc_autoreleasePoolPop
  1000dfe60  mov     x0, x19
  1000dfe64  ldp     x29, x30, [sp, #0x10]
  1000dfe68  ldp     x20, x19, [sp], #0x20
  1000dfe6c  ret

; ======================================================================
; -[SExpTokenizer nextTokenInternal]
; address 0x1000dfe70  size 1504  kind objc
; ======================================================================
  1000dfe70  stp     x28, x27, [sp, #-0x60]!
  1000dfe74  stp     x26, x25, [sp, #0x10]
  1000dfe78  stp     x24, x23, [sp, #0x20]
  1000dfe7c  stp     x22, x21, [sp, #0x30]
  1000dfe80  stp     x20, x19, [sp, #0x40]
  1000dfe84  stp     x29, x30, [sp, #0x50]
  1000dfe88  add     x29, sp, #0x50
  1000dfe8c  sub     sp, sp, #0x10
  1000dfe90  mov     x20, x0
  1000dfe94  adrp    x8, #0x10041e000
  1000dfe98  ldr     x0, [x8, #0xd8]                          ; class NSMutableString
  1000dfe9c  adrp    x8, #0x10041b000
  1000dfea0  nop
  1000dfea4  ldr     x1, [x8, #0x210]
  1000dfea8  mov     w2, #0x80
  1000dfeac  bl      _objc_msgSend                            ; [NSMutableString stringWithCapacity:128]
  1000dfeb0  mov     x29, x29
  1000dfeb4  bl      _objc_retainAutoreleasedReturnValue
  1000dfeb8  mov     x19, x0
  1000dfebc  mov     w27, #0
  1000dfec0  adrp    x8, #0x10041b000
  1000dfec4  nop
  1000dfec8  adrp    x9, #0x10041b000
  1000dfecc  nop
  1000dfed0  ldr     x22, [x8, #0x218]
  1000dfed4  ldr     x23, [x9, #0x220]
  1000dfed8  adrp    x8, #0x10041b000
  1000dfedc  nop
  1000dfee0  adrp    x9, #0x10041b000
  1000dfee4  nop
  1000dfee8  ldr     x24, [x8, #0x228]
  1000dfeec  ldr     x25, [x9, #0x238]
  1000dfef0  adrp    x8, #0x10041a000
  1000dfef4  nop
  1000dfef8  adrp    x9, #0x10041b000
  1000dfefc  add     x9, x9, #0x240                           ; &@selector(back)
  1000dff00  ldr     x26, [x8, #0x950]
  1000dff04  ldr     x8, [x9]
  1000dff08  str     x8, [sp]
  1000dff0c  b       loc_1000dff18
loc_1000dff10:
  1000dff10  mov     x0, x21
  1000dff14  bl      _objc_release
loc_1000dff18:
  1000dff18  mov     x0, x20
  1000dff1c  mov     x1, x22
  1000dff20  bl      _objc_msgSend                            ; [self inStream]
  1000dff24  mov     x29, x29
  1000dff28  bl      _objc_retainAutoreleasedReturnValue
  1000dff2c  mov     x28, x0
  1000dff30  mov     x1, x23
  1000dff34  bl      _objc_msgSend                            ; [[self inStream] hasNext]
  1000dff38  mov     x21, x0
  1000dff3c  mov     x0, x28
  1000dff40  bl      _objc_release
  1000dff44  cbz     w21, loc_1000e0358                       ; if ([[self inStream] hasNext] == 0)
  1000dff48  mov     x0, x20
  1000dff4c  mov     x1, x22
  1000dff50  bl      _objc_msgSend                            ; [self inStream]
  1000dff54  mov     x29, x29
  1000dff58  bl      _objc_retainAutoreleasedReturnValue
  1000dff5c  mov     x21, x0
  1000dff60  mov     x1, x24
  1000dff64  bl      _objc_msgSend                            ; [[self inStream] next]
  1000dff68  mov     x28, x0
  1000dff6c  mov     x0, x21
  1000dff70  bl      _objc_release
  1000dff74  strh    w28, [sp, #0xe]
  1000dff78  tbz     w27, #0, loc_1000e00f4                   ; if (!(one of {0, 1} & 1))
  1000dff7c  cmp     w28, #0x5c
  1000dff80  b.ne    loc_1000e00b4                            ; if ([[self inStream] next] != 92)
  1000dff84  mov     x0, x20
  1000dff88  mov     x1, x22
  1000dff8c  bl      _objc_msgSend                            ; [self inStream]
  1000dff90  mov     x29, x29
  1000dff94  bl      _objc_retainAutoreleasedReturnValue
  1000dff98  mov     x21, x0
  1000dff9c  mov     x1, x23
  1000dffa0  bl      _objc_msgSend                            ; [[self inStream] hasNext]
  1000dffa4  mov     x28, x0
  1000dffa8  mov     x0, x21
  1000dffac  bl      _objc_release
  1000dffb0  cbz     w28, loc_1000e0358                       ; if ([[self inStream] hasNext] == 0)
  1000dffb4  mov     x0, x20
  1000dffb8  mov     x1, x22
  1000dffbc  bl      _objc_msgSend                            ; [self inStream]
  1000dffc0  mov     x29, x29
  1000dffc4  bl      _objc_retainAutoreleasedReturnValue
  1000dffc8  mov     x21, x0
  1000dffcc  mov     x1, x24
  1000dffd0  bl      _objc_msgSend                            ; [[self inStream] next]
  1000dffd4  mov     x28, x0
  1000dffd8  mov     x0, x21
  1000dffdc  bl      _objc_release
  1000dffe0  strh    w28, [sp, #0xc]
  1000dffe4  sub     w8, w28, #0x22
  1000dffe8  cmp     w8, #0x3a
  1000dffec  b.hi    loc_1000e0040                            ; if (([[self inStream] next] - 34) >u 58)
  1000dfff0  mov     w9, #1
  1000dfff4  lsl     x8, x9, x8
  1000dfff8  mov     x9, #0x400000000000000
  1000dfffc  movk    x9, #0xc1
  1000e0000  and     x8, x8, x9
  1000e0004  cbz     x8, loc_1000e0040                        ; if (((1 << ([[self inStream] next] - 34)) & 0x4000000000000c1) == 0)
  1000e0008  adrp    x8, #0x10041d000
  1000e000c  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000e0010  add     x2, sp, #0xc
  1000e0014  mov     w3, #1
  1000e0018  mov     x1, x25
  1000e001c  bl      _objc_msgSend                            ; [NSString stringWithCharacters:&sp[0xc] length:1]
  1000e0020  mov     x29, x29
  1000e0024  bl      _objc_retainAutoreleasedReturnValue
  1000e0028  mov     x21, x0
  1000e002c  mov     x0, x19
  1000e0030  mov     x1, x26
  1000e0034  mov     x2, x21
  1000e0038  bl      _objc_msgSend                            ; [[NSMutableString stringWithCapacity:128] appendString:[NSString stringWithCharacters:&sp[0xc] length:1]]
  1000e003c  b       loc_1000dff10
loc_1000e0040:
  1000e0040  adrp    x8, #0x10041d000
  1000e0044  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000e0048  add     x2, sp, #0xe
  1000e004c  mov     w3, #1
  1000e0050  mov     x1, x25
  1000e0054  bl      _objc_msgSend                            ; [NSString stringWithCharacters:&sp[0xe] length:1]
  1000e0058  mov     x29, x29
  1000e005c  bl      _objc_retainAutoreleasedReturnValue
  1000e0060  mov     x21, x0
  1000e0064  mov     x0, x19
  1000e0068  mov     x1, x26
  1000e006c  mov     x2, x21
  1000e0070  bl      _objc_msgSend                            ; [[NSMutableString stringWithCapacity:128] appendString:[NSString stringWithCharacters:&sp[0xe] length:1]]
  1000e0074  mov     x0, x21
  1000e0078  bl      _objc_release
  1000e007c  adrp    x8, #0x10041d000
  1000e0080  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000e0084  add     x2, sp, #0xc
  1000e0088  mov     w3, #1
  1000e008c  mov     x1, x25
  1000e0090  bl      _objc_msgSend                            ; [NSString stringWithCharacters:&sp[0xc] length:1]
  1000e0094  mov     x29, x29
  1000e0098  bl      _objc_retainAutoreleasedReturnValue
  1000e009c  mov     x21, x0
  1000e00a0  mov     x0, x19
  1000e00a4  mov     x1, x26
  1000e00a8  mov     x2, x21
  1000e00ac  bl      _objc_msgSend                            ; [[NSMutableString stringWithCapacity:128] appendString:[NSString stringWithCharacters:&sp[0xc] length:1]]
  1000e00b0  b       loc_1000dff10
loc_1000e00b4:
  1000e00b4  cmp     w28, #0x22
  1000e00b8  b.eq    loc_1000e021c                            ; if ([[self inStream] next] == 34)
  1000e00bc  adrp    x8, #0x10041d000
  1000e00c0  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000e00c4  add     x2, sp, #0xe
  1000e00c8  mov     w3, #1
  1000e00cc  mov     x1, x25
  1000e00d0  bl      _objc_msgSend                            ; [NSString stringWithCharacters:&sp[0xe] length:1]
  1000e00d4  mov     x29, x29
  1000e00d8  bl      _objc_retainAutoreleasedReturnValue
  1000e00dc  mov     x21, x0
  1000e00e0  mov     x0, x19
  1000e00e4  mov     x1, x26
  1000e00e8  mov     x2, x21
  1000e00ec  bl      _objc_msgSend                            ; [[NSMutableString stringWithCapacity:128] appendString:[NSString stringWithCharacters:&sp[0xe] length:1]]
  1000e00f0  b       loc_1000dff10
loc_1000e00f4:
  1000e00f4  cmp     w28, #0x20
  1000e00f8  b.hi    loc_1000e018c                            ; if ([[self inStream] next] >u 32)
loc_1000e00fc:
  1000e00fc  mov     x0, x20
  1000e0100  mov     x1, x22
  1000e0104  bl      _objc_msgSend                            ; [self inStream]
  1000e0108  mov     x29, x29
  1000e010c  bl      _objc_retainAutoreleasedReturnValue
  1000e0110  mov     x21, x0
  1000e0114  mov     x1, x23
  1000e0118  bl      _objc_msgSend                            ; [[self inStream] hasNext]
  1000e011c  mov     x28, x0
  1000e0120  mov     x0, x21
  1000e0124  bl      _objc_release
  1000e0128  cbz     w28, loc_1000e0358                       ; if ([[self inStream] hasNext] == 0)
  1000e012c  mov     x0, x20
  1000e0130  mov     x1, x22
  1000e0134  bl      _objc_msgSend                            ; [self inStream]
  1000e0138  mov     x29, x29
  1000e013c  bl      _objc_retainAutoreleasedReturnValue
  1000e0140  mov     x21, x0
  1000e0144  mov     x1, x24
  1000e0148  bl      _objc_msgSend                            ; [[self inStream] next]
  1000e014c  mov     x28, x0
  1000e0150  mov     x0, x21
  1000e0154  bl      _objc_release
  1000e0158  cmp     w28, #0x21
  1000e015c  b.lo    loc_1000e00fc                            ; if ([[self inStream] next] <u 33)
  1000e0160  mov     x0, x20
  1000e0164  mov     x1, x22
  1000e0168  bl      _objc_msgSend                            ; [self inStream]
  1000e016c  mov     x29, x29
  1000e0170  bl      _objc_retainAutoreleasedReturnValue
  1000e0174  mov     x21, x0
  1000e0178  ldr     x1, [sp]
  1000e017c  bl      _objc_msgSend                            ; [[self inStream] back]
  1000e0180  mov     x0, x21
  1000e0184  bl      _objc_release
  1000e0188  b       loc_1000e0214
loc_1000e018c:
  1000e018c  sxth    w8, w28
  1000e0190  cmp     w8, #0x3a
  1000e0194  b.gt    loc_1000e01a8                            ; if ([[self inStream] next] > 58)
  1000e0198  mov     w27, #1
  1000e019c  cmp     w28, #0x22
  1000e01a0  b.eq    loc_1000dff18                            ; if ([[self inStream] next] == 34)
  1000e01a4  b       loc_1000e023c
loc_1000e01a8:
  1000e01a8  cmp     w28, #0x3b
  1000e01ac  b.ne    loc_1000e0258                            ; if ([[self inStream] next] != 59)
loc_1000e01b0:
  1000e01b0  mov     x0, x20
  1000e01b4  mov     x1, x22
  1000e01b8  bl      _objc_msgSend                            ; [self inStream]
  1000e01bc  mov     x29, x29
  1000e01c0  bl      _objc_retainAutoreleasedReturnValue
  1000e01c4  mov     x21, x0
  1000e01c8  mov     x1, x23
  1000e01cc  bl      _objc_msgSend                            ; [[self inStream] hasNext]
  1000e01d0  mov     x28, x0
  1000e01d4  mov     x0, x21
  1000e01d8  bl      _objc_release
  1000e01dc  cbz     w28, loc_1000e0358                       ; if ([[self inStream] hasNext] == 0)
  1000e01e0  mov     x0, x20
  1000e01e4  mov     x1, x22
  1000e01e8  bl      _objc_msgSend                            ; [self inStream]
  1000e01ec  mov     x29, x29
  1000e01f0  bl      _objc_retainAutoreleasedReturnValue
  1000e01f4  mov     x21, x0
  1000e01f8  mov     x1, x24
  1000e01fc  bl      _objc_msgSend                            ; [[self inStream] next]
  1000e0200  mov     x28, x0
  1000e0204  mov     x0, x21
  1000e0208  bl      _objc_release
  1000e020c  cmp     w28, #0xa
  1000e0210  b.ne    loc_1000e01b0                            ; if ([[self inStream] next] != 10)
loc_1000e0214:
  1000e0214  mov     w27, #0
  1000e0218  b       loc_1000dff18
loc_1000e021c:
  1000e021c  adrp    x8, #0x10041b000
  1000e0220  nop
  1000e0224  ldr     x1, [x8, #0x230]
  1000e0228  mov     w21, #4
  1000e022c  mov     x0, x20
  1000e0230  mov     x2, x19
  1000e0234  bl      _objc_msgSend                            ; [self setStringValue:[NSMutableString stringWithCapacity:128]]
  1000e0238  b       loc_1000e035c
loc_1000e023c:
  1000e023c  cmp     w28, #0x28
  1000e0240  b.ne    loc_1000e024c                            ; if ([[self inStream] next] != 40)
  1000e0244  mov     w21, #1
  1000e0248  b       loc_1000e035c
loc_1000e024c:
  1000e024c  cmp     w28, #0x29
  1000e0250  mov     w21, #2
  1000e0254  b.eq    loc_1000e035c                            ; if ([[self inStream] next] == 41)
loc_1000e0258:
  1000e0258  adrp    x8, #0x10041d000
  1000e025c  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000e0260  add     x2, sp, #0xe
  1000e0264  mov     w3, #1
  1000e0268  mov     x1, x25
  1000e026c  bl      _objc_msgSend                            ; [NSString stringWithCharacters:&sp[0xe] length:1]
  1000e0270  mov     x29, x29
  1000e0274  bl      _objc_retainAutoreleasedReturnValue
  1000e0278  mov     x21, x0
  1000e027c  mov     x0, x19
  1000e0280  mov     x1, x26
  1000e0284  mov     x2, x21
  1000e0288  bl      _objc_msgSend                            ; [[NSMutableString stringWithCapacity:128] appendString:[NSString stringWithCharacters:&sp[0xe] length:1]]
  1000e028c  mov     x0, x21
  1000e0290  bl      _objc_release
  1000e0294  adrp    x27, #0x10042d000
  1000e0298  add     x27, x27, #0xa70                         ; &g_10042da70
  1000e029c  b       loc_1000e02a8
loc_1000e02a0:
  1000e02a0  mov     x0, x21
  1000e02a4  bl      _objc_release
loc_1000e02a8:
  1000e02a8  mov     x0, x20
  1000e02ac  mov     x1, x22
  1000e02b0  bl      _objc_msgSend                            ; [self inStream]
  1000e02b4  mov     x29, x29
  1000e02b8  bl      _objc_retainAutoreleasedReturnValue
  1000e02bc  mov     x21, x0
  1000e02c0  mov     x1, x23
  1000e02c4  bl      _objc_msgSend                            ; [[self inStream] hasNext]
  1000e02c8  mov     x28, x0
  1000e02cc  mov     x0, x21
  1000e02d0  bl      _objc_release
  1000e02d4  cbz     w28, loc_1000e0358                       ; if ([[self inStream] hasNext] == 0)
  1000e02d8  mov     x0, x20
  1000e02dc  mov     x1, x22
  1000e02e0  bl      _objc_msgSend                            ; [self inStream]
  1000e02e4  mov     x29, x29
  1000e02e8  bl      _objc_retainAutoreleasedReturnValue
  1000e02ec  mov     x21, x0
  1000e02f0  mov     x1, x24
  1000e02f4  bl      _objc_msgSend                            ; [[self inStream] next]
  1000e02f8  mov     x28, x0
  1000e02fc  mov     x0, x21
  1000e0300  bl      _objc_release
  1000e0304  strh    w28, [sp, #0xa]
  1000e0308  cmp     w28, #0x7f
  1000e030c  b.hi    loc_1000e031c                            ; if ([[self inStream] next] >u 127)
  1000e0310  and     x8, x28, #0x7f
  1000e0314  ldrh    w8, [x27, x8, lsl #1]
  1000e0318  cbz     w8, loc_1000e0388                        ; if (w8 == 0)
loc_1000e031c:
  1000e031c  adrp    x8, #0x10041d000
  1000e0320  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000e0324  add     x2, sp, #0xa
  1000e0328  mov     w3, #1
  1000e032c  mov     x1, x25
  1000e0330  bl      _objc_msgSend                            ; [NSString stringWithCharacters:&sp[0xa] length:1]
  1000e0334  mov     x29, x29
  1000e0338  bl      _objc_retainAutoreleasedReturnValue
  1000e033c  mov     x21, x0
  1000e0340  mov     x0, x19
  1000e0344  mov     x1, x26
  1000e0348  mov     x2, x21
  1000e034c  bl      _objc_msgSend                            ; [[NSMutableString stringWithCapacity:128] appendString:[NSString stringWithCharacters:&sp[0xa] length:1]]
  1000e0350  b       loc_1000e02a0
  1000e0354  b       loc_1000e0418
loc_1000e0358:
  1000e0358  mov     x21, #0
loc_1000e035c:
  1000e035c  mov     x0, x19
  1000e0360  bl      _objc_release
  1000e0364  mov     x0, x21
  1000e0368  sub     sp, x29, #0x50
  1000e036c  ldp     x29, x30, [sp, #0x50]
  1000e0370  ldp     x20, x19, [sp, #0x40]
  1000e0374  ldp     x22, x21, [sp, #0x30]
  1000e0378  ldp     x24, x23, [sp, #0x20]
  1000e037c  ldp     x26, x25, [sp, #0x10]
  1000e0380  ldp     x28, x27, [sp], #0x60
  1000e0384  ret
loc_1000e0388:
  1000e0388  mov     x0, x20
  1000e038c  mov     x1, x22
  1000e0390  bl      _objc_msgSend                            ; [self inStream]
  1000e0394  mov     x29, x29
  1000e0398  bl      _objc_retainAutoreleasedReturnValue
  1000e039c  mov     x21, x0
  1000e03a0  ldr     x1, [sp]
  1000e03a4  bl      _objc_msgSend                            ; [[self inStream] back]
  1000e03a8  mov     x0, x21
  1000e03ac  bl      _objc_release
  1000e03b0  adrp    x8, #0x10041b000
  1000e03b4  nop
  1000e03b8  ldr     x1, [x8, #0x230]
  1000e03bc  mov     w21, #3
  1000e03c0  mov     x0, x20
  1000e03c4  mov     x2, x19
  1000e03c8  bl      _objc_msgSend                            ; [self setStringValue:[NSMutableString stringWithCapacity:128]]
  1000e03cc  b       loc_1000e035c
  1000e03d0  b       loc_1000e03d4
loc_1000e03d4:
  1000e03d4  mov     x20, x0
  1000e03d8  b       loc_1000e0424
  1000e03dc  mov     x20, x0
  1000e03e0  mov     x0, x28
  1000e03e4  b       loc_1000e0420
  1000e03e8  b       loc_1000e0418
  1000e03ec  b       loc_1000e0418
  1000e03f0  b       loc_1000e0418
  1000e03f4  b       loc_1000e0418
  1000e03f8  b       loc_1000e0418
  1000e03fc  b       loc_1000e03d4
  1000e0400  b       loc_1000e0418
  1000e0404  b       loc_1000e0418
  1000e0408  b       loc_1000e03d4
  1000e040c  b       loc_1000e0418
  1000e0410  b       loc_1000e0418
  1000e0414  b       loc_1000e0418
loc_1000e0418:
  1000e0418  mov     x20, x0
  1000e041c  mov     x0, x21
loc_1000e0420:
  1000e0420  bl      _objc_release
loc_1000e0424:
  1000e0424  mov     x0, x19
  1000e0428  bl      _objc_release
  1000e042c  mov     x0, x20
  1000e0430  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e0434  b       loc_1000e03d4
  1000e0438  b       loc_1000e0418
  1000e043c  b       loc_1000e03d4
  1000e0440  b       loc_1000e0418
  1000e0444  b       loc_1000e0418
  1000e0448  b       loc_1000e0418
  1000e044c  b       loc_1000e0418

; ======================================================================
; -[SExpTokenizer dealloc]
; address 0x1000e0450  size 112  kind objc
; ======================================================================
  1000e0450  stp     x20, x19, [sp, #-0x20]!
  1000e0454  stp     x29, x30, [sp, #0x10]
  1000e0458  add     x29, sp, #0x10
  1000e045c  sub     sp, sp, #0x10
  1000e0460  mov     x19, x0
  1000e0464  adrp    x8, #0x100420000
  1000e0468  ldrsw   x8, [x8, #0x5b8]                         ; ivar offset SExpTokenizer.stringValue (+0x10)
  1000e046c  ldr     x0, [x19, x8]                            ; x0 = self->stringValue
  1000e0470  str     xzr, [x19, x8]                           ; self->stringValue = 0
  1000e0474  bl      _objc_release
  1000e0478  adrp    x8, #0x100420000
  1000e047c  ldrsw   x8, [x8, #0x5b4]                         ; ivar offset SExpTokenizer.inStream (+0x8)
  1000e0480  ldr     x0, [x19, x8]                            ; x0 = self->inStream
  1000e0484  str     xzr, [x19, x8]                           ; self->inStream = 0
  1000e0488  bl      _objc_release
  1000e048c  str     x19, [sp]
  1000e0490  adrp    x8, #0x10041f000
  1000e0494  ldr     x8, [x8, #0x38]
  1000e0498  str     x8, [sp, #8]
  1000e049c  adrp    x8, #0x100416000
  1000e04a0  nop
  1000e04a4  ldr     x1, [x8, #0xfc8]
  1000e04a8  mov     x0, sp
  1000e04ac  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000e04b0  sub     sp, x29, #0x10
  1000e04b4  ldp     x29, x30, [sp, #0x10]
  1000e04b8  ldp     x20, x19, [sp], #0x20
  1000e04bc  ret

; ======================================================================
; -[SExpTokenizer inStream]
; address 0x1000e04c0  size 16  kind objc
; ======================================================================
  1000e04c0  adrp    x8, #0x100420000
  1000e04c4  ldrsw   x8, [x8, #0x5b4]                         ; ivar offset SExpTokenizer.inStream (+0x8)
  1000e04c8  ldr     x0, [x0, x8]                             ; x0 = self->inStream
  1000e04cc  ret

; ======================================================================
; -[SExpTokenizer setInStream:]
; address 0x1000e04d0  size 56  kind objc
; ======================================================================
  1000e04d0  stp     x20, x19, [sp, #-0x20]!
  1000e04d4  stp     x29, x30, [sp, #0x10]
  1000e04d8  add     x29, sp, #0x10
  1000e04dc  mov     x19, x0
  1000e04e0  adrp    x8, #0x100420000
  1000e04e4  ldrsw   x20, [x8, #0x5b4]                        ; ivar offset SExpTokenizer.inStream (+0x8)
  1000e04e8  mov     x0, x2
  1000e04ec  bl      _objc_retain
  1000e04f0  ldr     x8, [x19, x20]                           ; x8 = self->inStream
  1000e04f4  str     x0, [x19, x20]                           ; self->inStream = arg1
  1000e04f8  mov     x0, x8
  1000e04fc  ldp     x29, x30, [sp, #0x10]
  1000e0500  ldp     x20, x19, [sp], #0x20
  1000e0504  b       _objc_release

; ======================================================================
; -[SExpTokenizer stringValue]
; address 0x1000e0508  size 16  kind objc
; ======================================================================
  1000e0508  adrp    x8, #0x100420000
  1000e050c  ldrsw   x8, [x8, #0x5b8]                         ; ivar offset SExpTokenizer.stringValue (+0x10)
  1000e0510  ldr     x0, [x0, x8]                             ; x0 = self->stringValue
  1000e0514  ret

; ======================================================================
; -[SExpTokenizer setStringValue:]
; address 0x1000e0518  size 56  kind objc
; ======================================================================
  1000e0518  stp     x20, x19, [sp, #-0x20]!
  1000e051c  stp     x29, x30, [sp, #0x10]
  1000e0520  add     x29, sp, #0x10
  1000e0524  mov     x19, x0
  1000e0528  adrp    x8, #0x100420000
  1000e052c  ldrsw   x20, [x8, #0x5b8]                        ; ivar offset SExpTokenizer.stringValue (+0x10)
  1000e0530  mov     x0, x2
  1000e0534  bl      _objc_retain
  1000e0538  ldr     x8, [x19, x20]                           ; x8 = self->stringValue
  1000e053c  str     x0, [x19, x20]                           ; self->stringValue = arg1
  1000e0540  mov     x0, x8
  1000e0544  ldp     x29, x30, [sp, #0x10]
  1000e0548  ldp     x20, x19, [sp], #0x20
  1000e054c  b       _objc_release

; ======================================================================
; -[SExpTokenizer .cxx_destruct]
; address 0x1000e0550  size 64  kind objc
; ======================================================================
  1000e0550  stp     x20, x19, [sp, #-0x20]!
  1000e0554  stp     x29, x30, [sp, #0x10]
  1000e0558  add     x29, sp, #0x10
  1000e055c  mov     x19, x0
  1000e0560  adrp    x8, #0x100420000
  1000e0564  ldrsw   x8, [x8, #0x5b8]                         ; ivar offset SExpTokenizer.stringValue (+0x10)
  1000e0568  add     x0, x19, x8
  1000e056c  mov     x1, #0
  1000e0570  bl      _objc_storeStrong
  1000e0574  mov     x1, #0
  1000e0578  adrp    x8, #0x100420000
  1000e057c  ldrsw   x8, [x8, #0x5b4]                         ; ivar offset SExpTokenizer.inStream (+0x8)
  1000e0580  add     x0, x19, x8
  1000e0584  ldp     x29, x30, [sp, #0x10]
  1000e0588  ldp     x20, x19, [sp], #0x20
  1000e058c  b       _objc_storeStrong
