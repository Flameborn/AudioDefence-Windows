// unit TAGPBUnknownFieldSet — 38 functions
//   0x1001470c8     120  -[TAGPBUnknownFieldSet initWithFields:]
//   0x100147140      16  -[TAGPBUnknownFieldSet copyWithZone:]
//   0x100147150      92  -[TAGPBUnknownFieldSet mutableCopyWithZone:]
//   0x1001471ac      92  -[TAGPBUnknownFieldSet dealloc]
//   0x100147208     148  -[TAGPBUnknownFieldSet isEqual:]
//   0x10014729c      60  -[TAGPBUnknownFieldSet hasField:]
//   0x1001472d8      48  -[TAGPBUnknownFieldSet getField:]
//   0x100147308      28  -[TAGPBUnknownFieldSet countOfFields]
//   0x100147324     340  -[TAGPBUnknownFieldSet writeToCodedOutputStream:]
//   0x100147478      28  -[TAGPBUnknownFieldSet writeToCodedOutputStream:]_block_invoke
//   0x100147494     164  -[TAGPBUnknownFieldSet description]
//   0x100147538    1288  sub_100147538
//   0x100147a40      76  -[TAGPBUnknownFieldSet serializedSize]
//   0x100147a8c      64  -[TAGPBUnknownFieldSet serializedSize]_block_invoke
//   0x100147acc      32  -[TAGPBUnknownFieldSet writeAsMessageSetTo:]
//   0x100147aec      24  -[TAGPBUnknownFieldSet writeAsMessageSetTo:]_block_invoke
//   0x100147b04      76  -[TAGPBUnknownFieldSet serializedSizeAsMessageSet]
//   0x100147b50      64  -[TAGPBUnknownFieldSet serializedSizeAsMessageSet]_block_invoke
//   0x100147b90     184  -[TAGPBUnknownFieldSet data]
//   0x100147c48      16  +[TAGPBUnknownFieldSet isFieldTag:]
//   0x100147c58     216  -[TAGPBUnknownFieldSet addField:]
//   0x100147d30       8  sub_100147d30
//   0x100147d38       4  sub_100147d38
//   0x100147d3c      60  sub_100147d3c
//   0x100147d78      12  sub_100147d78
//   0x100147d84       4  sub_100147d84
//   0x100147d88     188  -[TAGPBUnknownFieldSet getFieldBuilder:create:]
//   0x100147e44     180  -[TAGPBUnknownFieldSet mergeField:]
//   0x100147ef8      44  -[TAGPBUnknownFieldSet mergeUnknownFields:]
//   0x100147f24      28  -[TAGPBUnknownFieldSet mergeUnknownFields:]_block_invoke
//   0x100147f40     144  -[TAGPBUnknownFieldSet mergeFromData:]
//   0x100147fd0     136  -[TAGPBUnknownFieldSet mergeVarintField:value:]
//   0x100148058     572  -[TAGPBUnknownFieldSet mergeFieldFrom:input:]
//   0x100148294      64  -[TAGPBUnknownFieldSet mergeMessageSetMessage:data:]
//   0x1001482d4      92  -[TAGPBUnknownFieldSet mergeFromCodedInputStream:]
//   0x100148330     348  -[TAGPBUnknownFieldSet sortedFields]
//   0x10014848c      28  -[TAGPBUnknownFieldSet sortedFields]_block_invoke
//   0x1001484a8     192  -[TAGPBUnknownFieldSet getTags:]

; ======================================================================
; -[TAGPBUnknownFieldSet initWithFields:]
; address 0x1001470c8  size 120  kind objc
; ======================================================================
  1001470c8  stp     x29, x30, [sp, #-0x10]!
  1001470cc  mov     x29, sp
  1001470d0  stp     x20, x19, [sp, #-0x10]!
  1001470d4  sub     sp, sp, #0x10
  1001470d8  mov     x19, x2
  1001470dc  str     x0, [sp]
  1001470e0  adrp    x8, #0x10041f000
  1001470e4  ldr     x8, [x8, #0x1f0]
  1001470e8  str     x8, [sp, #8]
  1001470ec  adrp    x8, #0x100416000
  1001470f0  nop
  1001470f4  ldr     x1, [x8, #0xab8]
  1001470f8  mov     x0, sp
  1001470fc  bl      _objc_msgSendSuper2                      ; [super init]
  100147100  mov     x20, x0
  100147104  cmp     x20, #0
  100147108  ccmp    x19, #0, #4, ne
  10014710c  b.eq    loc_10014712c                            ; if (flags ==)
  100147110  mov     x0, #0
  100147114  mov     x1, #0
  100147118  mov     x2, x19
  10014711c  bl      _CFDictionaryCreateMutableCopy           ; CFDictionaryCreateMutableCopy(0, 0, arg1)
  100147120  adrp    x8, #0x100420000
  100147124  ldrsw   x8, [x8, #0x9f8]                         ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  100147128  str     x0, [x20, x8]                            ; self->fields_ = CFDictionaryCreateMutableCopy(0, 0, arg1)
loc_10014712c:
  10014712c  mov     x0, x20
  100147130  sub     sp, x29, #0x10
  100147134  ldp     x20, x19, [sp], #0x10
  100147138  ldp     x29, x30, [sp], #0x10
  10014713c  ret

; ======================================================================
; -[TAGPBUnknownFieldSet copyWithZone:]
; address 0x100147140  size 16  kind objc
; ======================================================================
  100147140  adrp    x8, #0x10041c000
  100147144  nop
  100147148  ldr     x1, [x8, #0x590]
  10014714c  b       _objc_msgSend                            ; [self mutableCopyWithZone:arg1]

; ======================================================================
; -[TAGPBUnknownFieldSet mutableCopyWithZone:]
; address 0x100147150  size 92  kind objc
; ======================================================================
  100147150  stp     x29, x30, [sp, #-0x10]!
  100147154  mov     x29, sp
  100147158  stp     x20, x19, [sp, #-0x10]!
  10014715c  mov     x19, x2
  100147160  mov     x20, x0
  100147164  adrp    x8, #0x100417000
  100147168  nop
  10014716c  ldr     x1, [x8, #0x2e0]
  100147170  bl      _objc_msgSend                            ; [self class]
  100147174  adrp    x8, #0x100416000
  100147178  nop
  10014717c  ldr     x1, [x8, #0xab0]
  100147180  mov     x2, x19
  100147184  bl      _objc_msgSend                            ; [[self class] allocWithZone:arg1]
  100147188  adrp    x8, #0x100420000
  10014718c  ldrsw   x8, [x8, #0x9f8]                         ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  100147190  ldr     x2, [x20, x8]                            ; x2 = self->fields_
  100147194  adrp    x8, #0x10041c000
  100147198  nop
  10014719c  ldr     x1, [x8, #0xbd0]
  1001471a0  ldp     x20, x19, [sp], #0x10
  1001471a4  ldp     x29, x30, [sp], #0x10
  1001471a8  b       _objc_msgSend                            ; [[[self class] allocWithZone:arg1] initWithFields:self->fields_]

; ======================================================================
; -[TAGPBUnknownFieldSet dealloc]
; address 0x1001471ac  size 92  kind objc
; ======================================================================
  1001471ac  stp     x29, x30, [sp, #-0x10]!
  1001471b0  mov     x29, sp
  1001471b4  stp     x20, x19, [sp, #-0x10]!
  1001471b8  sub     sp, sp, #0x10
  1001471bc  mov     x19, x0
  1001471c0  adrp    x8, #0x100420000
  1001471c4  ldrsw   x8, [x8, #0x9f8]                         ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  1001471c8  ldr     x0, [x19, x8]                            ; x0 = self->fields_
  1001471cc  cbz     x0, loc_1001471d4                        ; if (self->fields_ == 0)
  1001471d0  bl      _CFRelease                               ; CFRelease(self->fields_, _cmd)
loc_1001471d4:
  1001471d4  str     x19, [sp]
  1001471d8  adrp    x8, #0x10041f000
  1001471dc  ldr     x8, [x8, #0x1f0]
  1001471e0  str     x8, [sp, #8]
  1001471e4  adrp    x8, #0x100416000
  1001471e8  nop
  1001471ec  ldr     x1, [x8, #0xfc8]
  1001471f0  mov     x0, sp
  1001471f4  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1001471f8  sub     sp, x29, #0x10
  1001471fc  ldp     x20, x19, [sp], #0x10
  100147200  ldp     x29, x30, [sp], #0x10
  100147204  ret

; ======================================================================
; -[TAGPBUnknownFieldSet isEqual:]
; address 0x100147208  size 148  kind objc
; ======================================================================
  100147208  stp     x29, x30, [sp, #-0x10]!
  10014720c  mov     x29, sp
  100147210  stp     x20, x19, [sp, #-0x10]!
  100147214  mov     x19, x2
  100147218  mov     x20, x0
  10014721c  adrp    x8, #0x10041e000
  100147220  ldr     x0, [x8, #0x7c0]                         ; class TAGPBUnknownFieldSet
  100147224  adrp    x8, #0x100417000
  100147228  nop
  10014722c  ldr     x1, [x8, #0x2e0]
  100147230  bl      _objc_msgSend                            ; [TAGPBUnknownFieldSet class]
  100147234  mov     x2, x0
  100147238  adrp    x8, #0x100417000
  10014723c  nop
  100147240  ldr     x1, [x8, #0x3b8]
  100147244  mov     x0, x19
  100147248  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[TAGPBUnknownFieldSet class]]
  10014724c  cbz     w0, loc_100147288                        ; if ([arg1 isKindOfClass:[TAGPBUnknownFieldSet class]] == 0)
  100147250  adrp    x8, #0x100420000
  100147254  ldrsw   x8, [x8, #0x9f8]                         ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  100147258  ldr     x0, [x20, x8]                            ; x0 = self->fields_
  10014725c  ldr     x1, [x19, x8]                            ; x1 = arg1->fields_
  100147260  orr     x8, x0, x1
  100147264  cmp     x8, #0
  100147268  cset    w8, eq
  10014726c  cmp     x0, #0
  100147270  ccmp    x1, #0, #4, ne
  100147274  b.eq    loc_10014728c                            ; if (flags ==)
  100147278  bl      _CFEqual                                 ; CFEqual(self->fields_, arg1->fields_)
  10014727c  cmp     w0, #0
  100147280  cset    w8, ne
  100147284  b       loc_10014728c
loc_100147288:
  100147288  mov     w8, #0
loc_10014728c:
  10014728c  and     w0, w8, #1
  100147290  ldp     x20, x19, [sp], #0x10
  100147294  ldp     x29, x30, [sp], #0x10
  100147298  ret

; ======================================================================
; -[TAGPBUnknownFieldSet hasField:]
; address 0x10014729c  size 60  kind objc
; ======================================================================
  10014729c  stp     x29, x30, [sp, #-0x10]!
  1001472a0  mov     x29, sp
  1001472a4  adrp    x8, #0x100420000
  1001472a8  ldrsw   x8, [x8, #0x9f8]                         ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  1001472ac  ldr     x0, [x0, x8]                             ; x0 = self->fields_
  1001472b0  cbz     x0, loc_1001472c8                        ; if (self->fields_ == 0)
  1001472b4  sxtw    x1, w2
  1001472b8  bl      _CFDictionaryGetValue                    ; CFDictionaryGetValue(self->fields_, arg1, arg1)
  1001472bc  cmp     x0, #0
  1001472c0  cset    w8, ne
  1001472c4  b       loc_1001472cc
loc_1001472c8:
  1001472c8  mov     w8, #0
loc_1001472cc:
  1001472cc  and     w0, w8, #1
  1001472d0  ldp     x29, x30, [sp], #0x10
  1001472d4  ret

; ======================================================================
; -[TAGPBUnknownFieldSet getField:]
; address 0x1001472d8  size 48  kind objc
; ======================================================================
  1001472d8  stp     x29, x30, [sp, #-0x10]!
  1001472dc  mov     x29, sp
  1001472e0  adrp    x8, #0x100420000
  1001472e4  ldrsw   x8, [x8, #0x9f8]                         ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  1001472e8  ldr     x0, [x0, x8]                             ; x0 = self->fields_
  1001472ec  cbz     x0, loc_1001472fc                        ; if (self->fields_ == 0)
  1001472f0  sxtw    x1, w2
  1001472f4  bl      _CFDictionaryGetValue                    ; CFDictionaryGetValue(self->fields_, arg1, arg1)
  1001472f8  b       loc_100147300
loc_1001472fc:
  1001472fc  mov     x0, #0
loc_100147300:
  100147300  ldp     x29, x30, [sp], #0x10
  100147304  ret

; ======================================================================
; -[TAGPBUnknownFieldSet countOfFields]
; address 0x100147308  size 28  kind objc
; ======================================================================
  100147308  adrp    x8, #0x100420000
  10014730c  ldrsw   x8, [x8, #0x9f8]                         ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  100147310  ldr     x0, [x0, x8]                             ; x0 = self->fields_
  100147314  cbz     x0, loc_10014731c                        ; if (self->fields_ == 0)
  100147318  b       _CFDictionaryGetCount                    ; CFDictionaryGetCount(self->fields_, _cmd)
loc_10014731c:
  10014731c  mov     x0, #0
  100147320  ret

; ======================================================================
; -[TAGPBUnknownFieldSet writeToCodedOutputStream:]
; address 0x100147324  size 340  kind objc
; ======================================================================
  100147324  stp     x29, x30, [sp, #-0x10]!
  100147328  mov     x29, sp
  10014732c  stp     x20, x19, [sp, #-0x10]!
  100147330  stp     x22, x21, [sp, #-0x10]!
  100147334  stp     x24, x23, [sp, #-0x10]!
  100147338  stp     x26, x25, [sp, #-0x10]!
  10014733c  sub     sp, sp, #0x10
  100147340  mov     x19, x2
  100147344  adrp    x24, #0x1003b0000
  100147348  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10014734c  mov     x23, x0
  100147350  ldr     x8, [x24]                                ; x8 = ___stack_chk_guard[+0x0]
  100147354  stur    x8, [x29, #-0x48]
  100147358  adrp    x8, #0x100420000
  10014735c  ldrsw   x26, [x8, #0x9f8]                        ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  100147360  ldr     x0, [x23, x26]                           ; x0 = self->fields_
  100147364  cbz     x0, loc_100147448                        ; if (self->fields_ == 0)
  100147368  bl      _CFDictionaryGetCount                    ; CFDictionaryGetCount(self->fields_, _cmd, arg1)
  10014736c  mov     x20, x0
  100147370  mov     x25, sp
  100147374  mov     x8, sp
  100147378  lsl     x9, x20, #3
  10014737c  add     x9, x9, #0xf
  100147380  and     x9, x9, #0xfffffffffffffff0
  100147384  sub     x21, x8, x9
  100147388  mov     sp, x21
  10014738c  mov     x8, sp
  100147390  sub     x22, x8, x9
  100147394  mov     sp, x22
  100147398  ldr     x0, [x23, x26]                           ; x0 = self->fields_
  10014739c  mov     x1, x21
  1001473a0  mov     x2, x22
  1001473a4  bl      _CFDictionaryGetKeysAndValues            ; CFDictionaryGetKeysAndValues(self->fields_, (&sp[0x0] - (((CFDictionaryGetCount(self->fields_, _cmd, arg1) << 3) + 15) & -16)), (&sp[0x0] - (((CFDictionaryGetCount(self->fields_, _cmd, arg1) << 3) + 15) & -16)))
  1001473a8  cmp     x20, #2
  1001473ac  b.lo    loc_10014742c                            ; if (CFDictionaryGetCount(self->fields_, _cmd, arg1) <u 2)
  1001473b0  mov     x26, sp
  1001473b4  mov     x8, sp
  1001473b8  sub     x23, x8, x20, lsl #4
  1001473bc  mov     sp, x23
  1001473c0  mov     x8, #0
  1001473c4  add     x9, x23, #8
loc_1001473c8:
  1001473c8  ldr     x10, [x21, x8, lsl #3]
  1001473cc  stur    x10, [x9, #-8]                           ; ((&sp[0x0] - (CFDictionaryGetCount(self->fields_, _cmd, arg1) << 4)) + 8)[+0x-8] = x10
  1001473d0  ldr     x10, [x22, x8, lsl #3]
  1001473d4  str     x10, [x9], #0x10
  1001473d8  add     x8, x8, #1
  1001473dc  cmp     x20, x8
  1001473e0  b.ne    loc_1001473c8                            ; if (CFDictionaryGetCount(self->fields_, _cmd, arg1) != (x8 + 1))
  1001473e4  adrp    x3, #0x1003b8000
  1001473e8  add     x3, x3, #0xb70                           ; ^{-[TAGPBUnknownFieldSet writeToCodedOutputStream:]_block_invoke}
  1001473ec  mov     x2, #0x10
  1001473f0  mov     x0, x23
  1001473f4  mov     x1, x20
  1001473f8  bl      _qsort_b                                 ; qsort_b((&sp[0x0] - (CFDictionaryGetCount(self->fields_, _cmd, arg1) << 4)), CFDictionaryGetCount(self->fields_, _cmd, arg1), 16, ^{-[TAGPBUnknownFieldSet writeToCodedOutputStream:]_block_invoke})
  1001473fc  adrp    x8, #0x10041c000
  100147400  add     x8, x8, #0xbd8                           ; &@selector(writeToOutput:)
  100147404  ldr     x21, [x8]
  100147408  add     x22, x23, #8
loc_10014740c:
  10014740c  ldr     x0, [x22], #0x10
  100147410  mov     x1, x21
  100147414  mov     x2, x19
  100147418  bl      _objc_msgSend                            ; [x0 writeToOutput:arg1]
  10014741c  sub     x20, x20, #1
  100147420  cbnz    x20, loc_10014740c                       ; if ((x20 - 1) != 0)
  100147424  mov     sp, x26
  100147428  b       loc_100147444
loc_10014742c:
  10014742c  ldr     x0, [x22]                                ; x0 = (&sp[0x0] - (((CFDictionaryGetCount(self->fields_, _cmd, arg1) << 3) + 15) & -16))[+0x0]
  100147430  adrp    x8, #0x10041c000
  100147434  nop
  100147438  ldr     x1, [x8, #0xbd8]
  10014743c  mov     x2, x19
  100147440  bl      _objc_msgSend                            ; [(&sp[0x0] - (((CFDictionaryGetCount(self->fields_, _cmd, arg1) << 3) + 15) & -16))[+0x0] writeToOutput:arg1]
loc_100147444:
  100147444  mov     sp, x25
loc_100147448:
  100147448  ldr     x8, [x24]                                ; x8 = ___stack_chk_guard[+0x0]
  10014744c  ldur    x9, [x29, #-0x48]
  100147450  sub     x8, x8, x9
  100147454  cbnz    x8, loc_100147474                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100147458  sub     sp, x29, #0x40
  10014745c  ldp     x26, x25, [sp], #0x10
  100147460  ldp     x24, x23, [sp], #0x10
  100147464  ldp     x22, x21, [sp], #0x10
  100147468  ldp     x20, x19, [sp], #0x10
  10014746c  ldp     x29, x30, [sp], #0x10
  100147470  ret
loc_100147474:
  100147474  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[TAGPBUnknownFieldSet writeToCodedOutputStream:]_block_invoke
; address 0x100147478  size 28  kind block
; ======================================================================
  100147478  ldr     x8, [x1]                                 ; x8 = blockarg1[+0x0]
  10014747c  ldr     x9, [x2]                                 ; x9 = blockarg2[+0x0]
  100147480  mov     w10, #1
  100147484  cmp     x8, x9
  100147488  csetm   w8, ne
  10014748c  csel    w0, w10, w8, gt
  100147490  ret

; ======================================================================
; -[TAGPBUnknownFieldSet description]
; address 0x100147494  size 164  kind objc
; ======================================================================
  100147494  stp     x29, x30, [sp, #-0x10]!
  100147498  mov     x29, sp
  10014749c  stp     x20, x19, [sp, #-0x10]!
  1001474a0  sub     sp, sp, #0x10
  1001474a4  mov     x19, x0
  1001474a8  adrp    x8, #0x10041e000
  1001474ac  ldr     x20, [x8, #0xd8]                         ; class NSMutableString
  1001474b0  adrp    x8, #0x100417000
  1001474b4  nop
  1001474b8  ldr     x1, [x8, #0x2e0]
  1001474bc  bl      _objc_msgSend                            ; [self class]
  1001474c0  adrp    x8, #0x100416000
  1001474c4  nop
  1001474c8  ldr     x1, [x8, #0xee8]
  1001474cc  stp     x0, x19, [sp]
  1001474d0  adrp    x2, #0x1003c7000
  1001474d4  add     x2, x2, #0x110                           ; @"<%@ %p>: TextFormat: {\n"
  1001474d8  mov     x0, x20
  1001474dc  bl      _objc_msgSend                            ; [NSMutableString stringWithFormat:@"<%@ %p>: TextFormat: {\n", [self class], self]
  1001474e0  mov     x20, x0
  1001474e4  adrp    x1, #0x1003c7000
  1001474e8  add     x1, x1, #0x130                           ; @"  "
  1001474ec  mov     x0, x19
  1001474f0  bl      sub_100147538                            ; sub_100147538(self, @"  ")
  1001474f4  mov     x2, x0
  1001474f8  adrp    x8, #0x10041a000
  1001474fc  nop
  100147500  ldr     x19, [x8, #0x950]
  100147504  mov     x0, x20
  100147508  mov     x1, x19
  10014750c  bl      _objc_msgSend                            ; [[NSMutableString stringWithFormat:@"<%@ %p>: TextFormat: {\n", [self class], self] appendString:sub_100147538(self, @"  ")]
  100147510  adrp    x2, #0x1003c6000
  100147514  add     x2, x2, #0xff0                           ; @"}"
  100147518  mov     x0, x20
  10014751c  mov     x1, x19
  100147520  bl      _objc_msgSend                            ; [[NSMutableString stringWithFormat:@"<%@ %p>: TextFormat: {\n", [self class], self] appendString:@"}"]
  100147524  mov     x0, x20
  100147528  sub     sp, x29, #0x10
  10014752c  ldp     x20, x19, [sp], #0x10
  100147530  ldp     x29, x30, [sp], #0x10
  100147534  ret

; ======================================================================
; sub_100147538
; address 0x100147538  size 1288  kind sub
; ======================================================================
loc_100147538:
  100147538  stp     x29, x30, [sp, #-0x10]!
  10014753c  mov     x29, sp
  100147540  stp     x20, x19, [sp, #-0x10]!
  100147544  stp     x22, x21, [sp, #-0x10]!
  100147548  stp     x24, x23, [sp, #-0x10]!
  10014754c  stp     x26, x25, [sp, #-0x10]!
  100147550  stp     x28, x27, [sp, #-0x10]!
  100147554  sub     sp, sp, #0x190
  100147558  mov     x21, x0
  10014755c  adrp    x9, #0x1003b0000
  100147560  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100147564  ldr     x8, [x9]                                 ; x8 = ___stack_chk_guard[+0x0]
  100147568  stur    x8, [x29, #-0x58]
  10014756c  cbz     x21, loc_100147a04                       ; if (a0 == 0)
  100147570  adrp    x8, #0x1003b9000
  100147574  add     x8, x8, #0x870                           ; @""
  100147578  cmp     x1, #0
  10014757c  csel    x25, x8, x1, eq
  100147580  adrp    x8, #0x10041e000
  100147584  ldr     x0, [x8, #0xd8]                          ; class NSMutableString
  100147588  adrp    x8, #0x10041b000
  10014758c  nop
  100147590  ldr     x1, [x8, #0x1f0]
  100147594  bl      _objc_msgSend                            ; [NSMutableString string]
  100147598  mov     x19, x0
  10014759c  stp     xzr, xzr, [x29, #-0x68]
  1001475a0  stp     xzr, xzr, [x29, #-0x78]
  1001475a4  stp     xzr, xzr, [x29, #-0x88]
  1001475a8  stp     xzr, xzr, [x29, #-0x98]
  1001475ac  adrp    x8, #0x10041c000
  1001475b0  nop
  1001475b4  ldr     x1, [x8, #0xc38]
  1001475b8  mov     x0, x21
  1001475bc  bl      _objc_msgSend                            ; [a0 sortedFields]
  1001475c0  str     x0, [sp, #0x48]
  1001475c4  adrp    x8, #0x100416000
  1001475c8  nop
  1001475cc  ldr     x1, [x8, #0xe00]
  1001475d0  str     x1, [sp, #0x40]
  1001475d4  sub     x2, x29, #0x98
  1001475d8  add     x3, sp, #0xc8
  1001475dc  mov     x4, #0x10
  1001475e0  bl      _objc_msgSend                            ; [[a0 sortedFields] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xc8] count:16]
  1001475e4  str     x0, [sp, #0x98]
  1001475e8  cbz     x0, loc_1001479f8                        ; if ([[a0 sortedFields] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xc8] count:16] == 0)
  1001475ec  adrp    x8, #0x10041c000
  1001475f0  nop
  1001475f4  ldur    x9, [x29, #-0x88]
  1001475f8  adrp    x10, #0x10041c000
  1001475fc  nop
  100147600  adrp    x11, #0x10041c000
  100147604  nop
  100147608  adrp    x12, #0x10041c000
  10014760c  nop
  100147610  adrp    x13, #0x10041c000
  100147614  nop
  100147618  adrp    x14, #0x10041c000
  10014761c  add     x14, x14, #0x978                         ; &@selector(groupList)
  100147620  ldr     x8, [x8, #0x50]
  100147624  str     x8, [sp, #0x90]
  100147628  ldr     x8, [x10, #0x958]
  10014762c  str     x8, [sp, #0x88]
  100147630  adrp    x8, #0x100417000
  100147634  nop
  100147638  adrp    x10, #0x10041a000
  10014763c  nop
  100147640  ldr     x11, [x11, #0x960]
  100147644  str     x11, [sp, #0x80]
  100147648  ldr     x11, [x12, #0x968]
  10014764c  str     x11, [sp, #0x78]
  100147650  adrp    x11, #0x100416000
  100147654  add     x11, x11, #0xc30                         ; &@selector(objectAtIndex:)
  100147658  adrp    x12, #0x10041a000
  10014765c  add     x12, x12, #0x950                         ; &@selector(appendString:)
  100147660  ldr     x13, [x13, #0x970]
  100147664  str     x13, [sp, #0x70]
  100147668  ldr     x13, [x14]
  10014766c  str     x13, [sp, #0x68]
  100147670  ldr     x21, [x8, #0xd88]
  100147674  ldr     x8, [x10, #0x620]
  100147678  str     x8, [sp, #0x58]
  10014767c  ldr     x8, [x9]
  100147680  str     x8, [sp, #0x60]
  100147684  ldr     x8, [x11]
  100147688  str     x8, [sp, #0xc0]
  10014768c  adrp    x8, #0x10041c000
  100147690  nop
  100147694  adrp    x9, #0x10041c000
  100147698  add     x9, x9, #0x7c0                           ; &@selector(uint32AtIndex:)
  10014769c  ldr     x10, [x12]
  1001476a0  str     x10, [sp, #0xb0]
  1001476a4  ldr     x8, [x8, #0x7d0]
  1001476a8  str     x8, [sp, #0xa8]
  1001476ac  ldr     x8, [x9]
  1001476b0  str     x8, [sp, #0x50]
  1001476b4  adrp    x20, #0x1003c7000
  1001476b8  add     x20, x20, #0x150                         ; @"%@%d: %llu\n"
loc_1001476bc:
  1001476bc  mov     x22, #0
loc_1001476c0:
  1001476c0  ldur    x8, [x29, #-0x88]
  1001476c4  ldr     x8, [x8]
  1001476c8  ldr     x9, [sp, #0x60]
  1001476cc  cmp     x8, x9
  1001476d0  b.eq    loc_1001476dc                            ; if (x8 == x9)
  1001476d4  ldr     x0, [sp, #0x48]
  1001476d8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([a0 sortedFields])
loc_1001476dc:
  1001476dc  ldur    x8, [x29, #-0x90]
  1001476e0  ldr     x23, [x8, x22, lsl #3]
  1001476e4  str     x22, [sp, #0xa0]
  1001476e8  mov     x0, x23
  1001476ec  ldr     x1, [sp, #0x90]
  1001476f0  bl      _objc_msgSend                            ; [x0 number]
  1001476f4  mov     x27, x0
  1001476f8  mov     x0, x23
  1001476fc  ldr     x1, [sp, #0x88]
  100147700  bl      _objc_msgSend                            ; [x0 varintList]
  100147704  mov     x24, x0
  100147708  ldr     x26, [sp, #0xa8]
  10014770c  mov     x28, x25
  100147710  cbz     x24, loc_10014775c                       ; if ([x0 varintList] == 0)
  100147714  adrp    x8, #0x100420000
  100147718  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10014771c  ldr     x25, [x24, x8]                           ; x25 = [x0 varintList]->_count
  100147720  cbz     x25, loc_10014775c                       ; if ([x0 varintList]->_count == 0)
  100147724  mov     x22, #0
loc_100147728:
  100147728  mov     x0, x24
  10014772c  mov     x1, x26
  100147730  mov     x2, x22
  100147734  bl      _objc_msgSend                            ; [[x0 varintList] uint64AtIndex:x2]
  100147738  stp     x27, x0, [sp, #8]
  10014773c  str     x28, [sp]
  100147740  mov     x0, x19
  100147744  mov     x1, x21
  100147748  mov     x2, x20
  10014774c  bl      _objc_msgSend                            ; [[NSMutableString string] appendFormat:@"%@%d: %llu\n", (a1 == 0 ? @"" : a1), [x0 number], [[x0 varintList] uint64AtIndex:x2]]
  100147750  add     x22, x22, #1
  100147754  cmp     x25, x22
  100147758  b.ne    loc_100147728                            ; if ([x0 varintList]->_count != (x22 + 1))
loc_10014775c:
  10014775c  mov     x0, x23
  100147760  mov     x26, x23
  100147764  ldr     x1, [sp, #0x80]
  100147768  bl      _objc_msgSend                            ; [x0 fixed32List]
  10014776c  mov     x24, x0
  100147770  ldr     x20, [sp, #0x50]
  100147774  adrp    x23, #0x1003c7000
  100147778  add     x23, x23, #0x170                         ; @"%@%d: 0x%X\n"
  10014777c  cbz     x24, loc_1001477c8                       ; if ([x0 fixed32List] == 0)
  100147780  adrp    x8, #0x100420000
  100147784  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100147788  ldr     x25, [x24, x8]                           ; x25 = [x0 fixed32List]->_count
  10014778c  cbz     x25, loc_1001477c8                       ; if ([x0 fixed32List]->_count == 0)
  100147790  mov     x22, #0
loc_100147794:
  100147794  mov     x0, x24
  100147798  mov     x1, x20
  10014779c  mov     x2, x22
  1001477a0  bl      _objc_msgSend                            ; [[x0 fixed32List] uint32AtIndex:x2]
  1001477a4  stp     x27, x0, [sp, #8]
  1001477a8  str     x28, [sp]
  1001477ac  mov     x0, x19
  1001477b0  mov     x1, x21
  1001477b4  mov     x2, x23
  1001477b8  bl      _objc_msgSend                            ; [[NSMutableString string] appendFormat:@"%@%d: 0x%X\n", (a1 == 0 ? @"" : a1), [x0 number], [[x0 fixed32List] uint32AtIndex:x2]]
  1001477bc  add     x22, x22, #1
  1001477c0  cmp     x25, x22
  1001477c4  b.ne    loc_100147794                            ; if ([x0 fixed32List]->_count != (x22 + 1))
loc_1001477c8:
  1001477c8  mov     x23, x26
  1001477cc  mov     x0, x23
  1001477d0  ldr     x1, [sp, #0x78]
  1001477d4  bl      _objc_msgSend                            ; [x0 fixed64List]
  1001477d8  mov     x24, x0
  1001477dc  ldr     x26, [sp, #0xa8]
  1001477e0  adrp    x20, #0x1003c7000
  1001477e4  add     x20, x20, #0x190                         ; @"%@%d: 0x%llX\n"
  1001477e8  cbz     x24, loc_100147834                       ; if ([x0 fixed64List] == 0)
  1001477ec  adrp    x8, #0x100420000
  1001477f0  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001477f4  ldr     x25, [x24, x8]                           ; x25 = [x0 fixed64List]->_count
  1001477f8  cbz     x25, loc_100147834                       ; if ([x0 fixed64List]->_count == 0)
  1001477fc  mov     x22, #0
loc_100147800:
  100147800  mov     x0, x24
  100147804  mov     x1, x26
  100147808  mov     x2, x22
  10014780c  bl      _objc_msgSend                            ; [[x0 fixed64List] uint64AtIndex:x2]
  100147810  stp     x27, x0, [sp, #8]
  100147814  str     x28, [sp]
  100147818  mov     x0, x19
  10014781c  mov     x1, x21
  100147820  mov     x2, x20
  100147824  bl      _objc_msgSend                            ; [[NSMutableString string] appendFormat:@"%@%d: 0x%llX\n", (a1 == 0 ? @"" : a1), [x0 number], [[x0 fixed64List] uint64AtIndex:x2]]
  100147828  add     x22, x22, #1
  10014782c  cmp     x25, x22
  100147830  b.ne    loc_100147800                            ; if ([x0 fixed64List]->_count != (x22 + 1))
loc_100147834:
  100147834  mov     x0, x23
  100147838  str     x23, [sp, #0xb8]
  10014783c  ldr     x1, [sp, #0x70]
  100147840  bl      _objc_msgSend                            ; [x0 lengthDelimitedList]
  100147844  mov     x24, x0
  100147848  ldr     x23, [sp, #0xb0]
  10014784c  adrp    x26, #0x1003c7000
  100147850  add     x26, x26, #0x1b0                         ; @"%@%d: "
  100147854  adrp    x20, #0x1003c2000
  100147858  add     x20, x20, #0xbd0                         ; @"\n"
  10014785c  cbz     x24, loc_1001478bc                       ; if ([x0 lengthDelimitedList] == 0)
  100147860  adrp    x8, #0x100420000
  100147864  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100147868  ldr     x25, [x24, x8]                           ; x25 = [x0 lengthDelimitedList]->_count
  10014786c  cbz     x25, loc_1001478bc                       ; if ([x0 lengthDelimitedList]->_count == 0)
  100147870  mov     x22, #0
loc_100147874:
  100147874  stp     x28, x27, [sp]
  100147878  mov     x0, x19
  10014787c  mov     x1, x21
  100147880  mov     x2, x26
  100147884  bl      _objc_msgSend                            ; [[NSMutableString string] appendFormat:@"%@%d: ", (a1 == 0 ? @"" : a1), [x0 number]]
  100147888  mov     x0, x24
  10014788c  ldr     x1, [sp, #0xc0]
  100147890  mov     x2, x22
  100147894  bl      _objc_msgSend                            ; [[x0 lengthDelimitedList] objectAtIndex:x2]
  100147898  mov     x1, x19
  10014789c  bl      sub_100149c54                            ; sub_100149c54([[x0 lengthDelimitedList] objectAtIndex:x2], [NSMutableString string])
  1001478a0  mov     x0, x19
  1001478a4  mov     x1, x23
  1001478a8  mov     x2, x20
  1001478ac  bl      _objc_msgSend                            ; [[NSMutableString string] appendString:@"\n"]
  1001478b0  add     x22, x22, #1
  1001478b4  cmp     x25, x22
  1001478b8  b.ne    loc_100147874                            ; if ([x0 lengthDelimitedList]->_count != (x22 + 1))
loc_1001478bc:
  1001478bc  ldr     x0, [sp, #0xb8]
  1001478c0  ldr     x1, [sp, #0x68]
  1001478c4  bl      _objc_msgSend                            ; [x0 groupList]
  1001478c8  ldr     x22, [sp, #0x58]
  1001478cc  adrp    x26, #0x1003c7000
  1001478d0  add     x26, x26, #0x130                         ; @"  "
  1001478d4  mov     x20, x26
  1001478d8  adrp    x26, #0x1003c2000
  1001478dc  add     x26, x26, #0xad0                         ; @"%@}\n"
  1001478e0  mov     x25, x26
  1001478e4  str     x0, [sp, #0xb8]
  1001478e8  mov     x8, x28
  1001478ec  mov     x28, x19
  1001478f0  mov     x19, x27
  1001478f4  mov     x23, x21
  1001478f8  mov     x21, x8
  1001478fc  cbz     x0, loc_1001479b8                        ; if ([x0 groupList] == 0)
  100147900  adrp    x8, #0x100420000
  100147904  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100147908  ldr     x10, [sp, #0xb8]
  10014790c  ldr     x27, [x10, x8]                           ; x27 = [x0 groupList]->_count
  100147910  cbz     x27, loc_1001479b8                       ; if ([x0 groupList]->_count == 0)
  100147914  mov     x24, #0
loc_100147918:
  100147918  stp     x21, x19, [sp]
  10014791c  mov     x0, x28
  100147920  mov     x1, x23
  100147924  adrp    x2, #0x1003c7000
  100147928  add     x2, x2, #0x1d0                           ; @"%@%d: {\n"
  10014792c  bl      _objc_msgSend                            ; [[NSMutableString string] appendFormat:@"%@%d: {\n", (a1 == 0 ? @"" : a1), [x0 number]]
  100147930  mov     x0, x21
  100147934  mov     x1, x22
  100147938  mov     x2, x20
  10014793c  bl      _objc_msgSend                            ; [(a1 == 0 ? @"" : a1) stringByAppendingString:@"  "]
  100147940  mov     x26, x21
  100147944  mov     x21, x28
  100147948  mov     x28, x23
  10014794c  mov     x23, x25
  100147950  mov     x25, x20
  100147954  mov     x20, x22
  100147958  mov     x22, x0
  10014795c  ldp     x0, x1, [sp, #0xb8]
  100147960  mov     x2, x24
  100147964  bl      _objc_msgSend                            ; [[x0 groupList] objectAtIndex:x2]
  100147968  mov     x1, x22
  10014796c  mov     x22, x20
  100147970  mov     x20, x25
  100147974  mov     x25, x23
  100147978  mov     x23, x28
  10014797c  mov     x28, x21
  100147980  mov     x21, x26
  100147984  bl      loc_100147538                            ; sub_100147538([[x0 groupList] objectAtIndex:x2], [(a1 == 0 ? @"" : a1) stringByAppendingString:@"  "])
  100147988  mov     x2, x0
  10014798c  mov     x0, x28
  100147990  ldr     x1, [sp, #0xb0]
  100147994  bl      _objc_msgSend                            ; [[NSMutableString string] appendString:sub_100147538([[x0 groupList] objectAtIndex:x2], [(a1 == 0 ? @"" : a1) stringByAppendingString:@"  "])]
  100147998  str     x21, [sp]
  10014799c  mov     x0, x28
  1001479a0  mov     x1, x23
  1001479a4  mov     x2, x25
  1001479a8  bl      _objc_msgSend                            ; [[NSMutableString string] appendFormat:@"%@}\n", (a1 == 0 ? @"" : a1)]
  1001479ac  add     x24, x24, #1
  1001479b0  cmp     x27, x24
  1001479b4  b.ne    loc_100147918                            ; if ([x0 groupList]->_count != (x24 + 1))
loc_1001479b8:
  1001479b8  ldp     x8, x22, [sp, #0x98]
  1001479bc  add     x22, x22, #1
  1001479c0  cmp     x22, x8
  1001479c4  adrp    x20, #0x1003c7000
  1001479c8  add     x20, x20, #0x150                         ; @"%@%d: %llu\n"
  1001479cc  mov     x25, x21
  1001479d0  mov     x21, x23
  1001479d4  mov     x19, x28
  1001479d8  b.lo    loc_1001476c0                            ; if ((x22 + 1) <u [[a0 sortedFields] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xc8] count:16])
  1001479dc  sub     x2, x29, #0x98
  1001479e0  add     x3, sp, #0xc8
  1001479e4  mov     x4, #0x10
  1001479e8  ldp     x1, x0, [sp, #0x40]
  1001479ec  bl      _objc_msgSend                            ; [[a0 sortedFields] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xc8] count:16]
  1001479f0  str     x0, [sp, #0x98]
  1001479f4  cbnz    x0, loc_1001476bc                        ; if ([[a0 sortedFields] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xc8] count:16] != 0)
loc_1001479f8:
  1001479f8  adrp    x9, #0x1003b0000
  1001479fc  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100147a00  b       loc_100147a08
loc_100147a04:
  100147a04  mov     x19, #0
loc_100147a08:
  100147a08  ldr     x8, [x9]                                 ; x8 = ___stack_chk_guard[+0x0]
  100147a0c  ldur    x9, [x29, #-0x58]
  100147a10  sub     x8, x8, x9
  100147a14  cbnz    x8, loc_100147a3c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100147a18  mov     x0, x19
  100147a1c  sub     sp, x29, #0x50
  100147a20  ldp     x28, x27, [sp], #0x10
  100147a24  ldp     x26, x25, [sp], #0x10
  100147a28  ldp     x24, x23, [sp], #0x10
  100147a2c  ldp     x22, x21, [sp], #0x10
  100147a30  ldp     x20, x19, [sp], #0x10
  100147a34  ldp     x29, x30, [sp], #0x10
  100147a38  ret
loc_100147a3c:
  100147a3c  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[TAGPBUnknownFieldSet serializedSize]
; address 0x100147a40  size 76  kind objc
; ======================================================================
  100147a40  stp     x29, x30, [sp, #-0x10]!
  100147a44  mov     x29, sp
  100147a48  sub     sp, sp, #0x10
  100147a4c  mov     x8, x0
  100147a50  mov     x0, #0
  100147a54  str     xzr, [sp, #8]
  100147a58  adrp    x9, #0x100420000
  100147a5c  ldrsw   x9, [x9, #0x9f8]                         ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  100147a60  ldr     x8, [x8, x9]                             ; x8 = self->fields_
  100147a64  cbz     x8, loc_100147a80                        ; if (self->fields_ == 0)
  100147a68  adr     x1, #0x100147a8c                         ; &-[TAGPBUnknownFieldSet serializedSize]_block_invoke
  100147a6c  nop
  100147a70  add     x2, sp, #8
  100147a74  mov     x0, x8
  100147a78  bl      _CFDictionaryApplyFunction               ; CFDictionaryApplyFunction(self->fields_, &-[TAGPBUnknownFieldSet serializedSize]_block_invoke, &sp[0x8])
  100147a7c  ldr     x0, [sp, #8]
loc_100147a80:
  100147a80  mov     sp, x29
  100147a84  ldp     x29, x30, [sp], #0x10
  100147a88  ret

; ======================================================================
; -[TAGPBUnknownFieldSet serializedSize]_block_invoke
; address 0x100147a8c  size 64  kind block
; ======================================================================
  100147a8c  stp     x29, x30, [sp, #-0x10]!
  100147a90  mov     x29, sp
  100147a94  stp     x20, x19, [sp, #-0x10]!
  100147a98  mov     x19, x2
  100147a9c  adrp    x8, #0x10041c000
  100147aa0  nop
  100147aa4  ldr     x8, [x8, #0x610]
  100147aa8  mov     x0, x1
  100147aac  mov     x1, x8
  100147ab0  bl      _objc_msgSend                            ; [blockarg1 serializedSize]
  100147ab4  ldr     x8, [x19]                                ; x8 = blockarg2[+0x0]
  100147ab8  add     x8, x8, x0
  100147abc  str     x8, [x19]                                ; blockarg2[+0x0] = (blockarg2[+0x0] + [blockarg1 serializedSize])
  100147ac0  ldp     x20, x19, [sp], #0x10
  100147ac4  ldp     x29, x30, [sp], #0x10
  100147ac8  ret

; ======================================================================
; -[TAGPBUnknownFieldSet writeAsMessageSetTo:]
; address 0x100147acc  size 32  kind objc
; ======================================================================
  100147acc  adrp    x8, #0x100420000
  100147ad0  ldrsw   x8, [x8, #0x9f8]                         ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  100147ad4  ldr     x0, [x0, x8]                             ; x0 = self->fields_
  100147ad8  cbz     x0, loc_100147ae8                        ; if (self->fields_ == 0)
  100147adc  adr     x1, #0x100147aec                         ; &-[TAGPBUnknownFieldSet writeAsMessageSetTo:]_block_invoke
  100147ae0  nop
  100147ae4  b       _CFDictionaryApplyFunction               ; CFDictionaryApplyFunction(self->fields_, &-[TAGPBUnknownFieldSet writeAsMessageSetTo:]_block_invoke, arg1)
loc_100147ae8:
  100147ae8  ret

; ======================================================================
; -[TAGPBUnknownFieldSet writeAsMessageSetTo:]_block_invoke
; address 0x100147aec  size 24  kind block
; ======================================================================
  100147aec  adrp    x8, #0x10041c000
  100147af0  nop
  100147af4  ldr     x8, [x8, #0xc90]
  100147af8  mov     x0, x1
  100147afc  mov     x1, x8
  100147b00  b       _objc_msgSend                            ; [blockarg1 writeAsMessageSetExtensionToOutput:blockarg2]

; ======================================================================
; -[TAGPBUnknownFieldSet serializedSizeAsMessageSet]
; address 0x100147b04  size 76  kind objc
; ======================================================================
  100147b04  stp     x29, x30, [sp, #-0x10]!
  100147b08  mov     x29, sp
  100147b0c  sub     sp, sp, #0x10
  100147b10  mov     x8, x0
  100147b14  mov     x0, #0
  100147b18  str     xzr, [sp, #8]
  100147b1c  adrp    x9, #0x100420000
  100147b20  ldrsw   x9, [x9, #0x9f8]                         ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  100147b24  ldr     x8, [x8, x9]                             ; x8 = self->fields_
  100147b28  cbz     x8, loc_100147b44                        ; if (self->fields_ == 0)
  100147b2c  adr     x1, #0x100147b50                         ; &-[TAGPBUnknownFieldSet serializedSizeAsMessageSet]_block_invoke
  100147b30  nop
  100147b34  add     x2, sp, #8
  100147b38  mov     x0, x8
  100147b3c  bl      _CFDictionaryApplyFunction               ; CFDictionaryApplyFunction(self->fields_, &-[TAGPBUnknownFieldSet serializedSizeAsMessageSet]_block_invoke, &sp[0x8])
  100147b40  ldr     x0, [sp, #8]
loc_100147b44:
  100147b44  mov     sp, x29
  100147b48  ldp     x29, x30, [sp], #0x10
  100147b4c  ret

; ======================================================================
; -[TAGPBUnknownFieldSet serializedSizeAsMessageSet]_block_invoke
; address 0x100147b50  size 64  kind block
; ======================================================================
  100147b50  stp     x29, x30, [sp, #-0x10]!
  100147b54  mov     x29, sp
  100147b58  stp     x20, x19, [sp, #-0x10]!
  100147b5c  mov     x19, x2
  100147b60  adrp    x8, #0x10041c000
  100147b64  nop
  100147b68  ldr     x8, [x8, #0xc88]
  100147b6c  mov     x0, x1
  100147b70  mov     x1, x8
  100147b74  bl      _objc_msgSend                            ; [blockarg1 serializedSizeAsMessageSetExtension]
  100147b78  ldr     x8, [x19]                                ; x8 = blockarg2[+0x0]
  100147b7c  add     x8, x8, x0
  100147b80  str     x8, [x19]                                ; blockarg2[+0x0] = (blockarg2[+0x0] + [blockarg1 serializedSizeAsMessageSetExtension])
  100147b84  ldp     x20, x19, [sp], #0x10
  100147b88  ldp     x29, x30, [sp], #0x10
  100147b8c  ret

; ======================================================================
; -[TAGPBUnknownFieldSet data]
; address 0x100147b90  size 184  kind objc
; ======================================================================
  100147b90  stp     x29, x30, [sp, #-0x10]!
  100147b94  mov     x29, sp
  100147b98  stp     x20, x19, [sp, #-0x10]!
  100147b9c  stp     x22, x21, [sp, #-0x10]!
  100147ba0  mov     x19, x0
  100147ba4  adrp    x8, #0x10041e000
  100147ba8  ldr     x20, [x8, #0x568]                        ; class NSMutableData
  100147bac  adrp    x8, #0x10041c000
  100147bb0  nop
  100147bb4  ldr     x1, [x8, #0x610]
  100147bb8  bl      _objc_msgSend                            ; [self serializedSize]
  100147bbc  mov     x2, x0
  100147bc0  adrp    x8, #0x10041c000
  100147bc4  nop
  100147bc8  ldr     x1, [x8, #0x5b8]
  100147bcc  mov     x0, x20
  100147bd0  bl      _objc_msgSend                            ; [NSMutableData dataWithLength:[self serializedSize]]
  100147bd4  mov     x20, x0
  100147bd8  adrp    x8, #0x10041e000
  100147bdc  ldr     x0, [x8, #0x788]                         ; class TAGPBCodedOutputStream
  100147be0  adrp    x8, #0x100416000
  100147be4  nop
  100147be8  ldr     x1, [x8, #0xac8]
  100147bec  bl      _objc_msgSend                            ; [TAGPBCodedOutputStream alloc]
  100147bf0  adrp    x8, #0x10041c000
  100147bf4  nop
  100147bf8  ldr     x1, [x8, #0x550]
  100147bfc  mov     x2, x20
  100147c00  bl      _objc_msgSend                            ; [[TAGPBCodedOutputStream alloc] initWithData:[NSMutableData dataWithLength:[self serializedSize]]]
  100147c04  mov     x21, x0
  100147c08  adrp    x8, #0x10041c000
  100147c0c  nop
  100147c10  ldr     x1, [x8, #0x5f8]
  100147c14  mov     x0, x19
  100147c18  mov     x2, x21
  100147c1c  bl      _objc_msgSend                            ; [self writeToCodedOutputStream:[[TAGPBCodedOutputStream alloc] initWithData:[NSMutableData dataWithLength:[self serializedSize]]]]
  100147c20  adrp    x8, #0x10041b000
  100147c24  nop
  100147c28  ldr     x1, [x8, #0xd70]
  100147c2c  mov     x0, x21
  100147c30  bl      _objc_msgSend                            ; [[[TAGPBCodedOutputStream alloc] initWithData:[NSMutableData dataWithLength:[self serializedSize]]] release]
  100147c34  mov     x0, x20
  100147c38  ldp     x22, x21, [sp], #0x10
  100147c3c  ldp     x20, x19, [sp], #0x10
  100147c40  ldp     x29, x30, [sp], #0x10
  100147c44  ret

; ======================================================================
; +[TAGPBUnknownFieldSet isFieldTag:]
; address 0x100147c48  size 16  kind objc
; ======================================================================
  100147c48  and     w8, w2, #7
  100147c4c  cmp     w8, #4
  100147c50  cset    w0, ne
  100147c54  ret

; ======================================================================
; -[TAGPBUnknownFieldSet addField:]
; address 0x100147c58  size 216  kind objc
; ======================================================================
  100147c58  stp     x29, x30, [sp, #-0x10]!
  100147c5c  mov     x29, sp
  100147c60  stp     x20, x19, [sp, #-0x10]!
  100147c64  stp     x22, x21, [sp, #-0x10]!
  100147c68  sub     sp, sp, #0x30
  100147c6c  mov     x19, x2
  100147c70  mov     x20, x0
  100147c74  adrp    x8, #0x10041c000
  100147c78  nop
  100147c7c  ldr     x1, [x8, #0x50]
  100147c80  mov     x0, x19
  100147c84  bl      _objc_msgSend                            ; [arg1 number]
  100147c88  mov     x21, x0
  100147c8c  cbnz    w21, loc_100147cbc                       ; if ([arg1 number] != 0)
  100147c90  adrp    x8, #0x10041d000
  100147c94  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100147c98  adrp    x8, #0x1003b0000
  100147c9c  ldr     x8, [x8, #0x40]                          ; _NSInvalidArgumentException
  100147ca0  ldr     x2, [x8]                                 ; x2 = _NSInvalidArgumentException[+0x0]
  100147ca4  adrp    x8, #0x100417000
  100147ca8  nop
  100147cac  ldr     x1, [x8, #0x260]
  100147cb0  adrp    x3, #0x1003c7000
  100147cb4  add     x3, x3, #0x550                           ; @"Zero is not a valid field number."
  100147cb8  bl      _objc_msgSend                            ; [NSException raise:_NSInvalidArgumentException[+0x0] format:@"Zero is not a valid field number."]
loc_100147cbc:
  100147cbc  adrp    x8, #0x100420000
  100147cc0  ldrsw   x22, [x8, #0x9f8]                        ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  100147cc4  ldr     x0, [x20, x22]                           ; x0 = self->fields_
  100147cc8  cbnz    x0, loc_100147d10                        ; if (self->fields_ != 0)
  100147ccc  adrp    x8, #0x1003b8000
  100147cd0  add     x8, x8, #0xb90                           ; &d_1003b8b90
  100147cd4  ldr     q0, [x8, #0x20]                          ; [&d_1003b8bb0] -> &sub_100147d78
  100147cd8  str     q0, [sp, #0x20]
  100147cdc  ldr     q0, [x8, #0x10]                          ; [&d_1003b8ba0] -> &sub_100147d38
  100147ce0  str     q0, [sp, #0x10]
  100147ce4  ldr     q0, [x8]                                 ; [&d_1003b8b90] -> 0x0
  100147ce8  str     q0, [sp]
  100147cec  adrp    x8, #0x1003b0000
  100147cf0  ldr     x8, [x8, #0x1f0]                         ; _kCFAllocatorDefault
  100147cf4  ldr     x0, [x8]                                 ; x0 = _kCFAllocatorDefault[+0x0]
  100147cf8  mov     x1, #0
  100147cfc  adrp    x3, #0x1003b0000
  100147d00  ldr     x3, [x3, #0x228]                         ; _kCFTypeDictionaryValueCallBacks
  100147d04  mov     x2, sp
  100147d08  bl      _CFDictionaryCreateMutable               ; CFDictionaryCreateMutable(_kCFAllocatorDefault[+0x0], 0, ^{sub_100147d38 captures +0x20=&sub_100147d78}, _kCFTypeDictionaryValueCallBacks)
  100147d0c  str     x0, [x20, x22]                           ; self->fields_ = CFDictionaryCreateMutable(_kCFAllocatorDefault[+0x0], 0, ^{sub_100147d38 captures +0x20=&sub_100147d78}, _kCFTypeDictionaryValueCallBacks)
loc_100147d10:
  100147d10  sxtw    x1, w21
  100147d14  mov     x2, x19
  100147d18  bl      _CFDictionarySetValue                    ; CFDictionarySetValue(x0, [arg1 number], arg1)
  100147d1c  sub     sp, x29, #0x20
  100147d20  ldp     x22, x21, [sp], #0x10
  100147d24  ldp     x20, x19, [sp], #0x10
  100147d28  ldp     x29, x30, [sp], #0x10
  100147d2c  ret

; ======================================================================
; sub_100147d30
; address 0x100147d30  size 8  kind sub
; ======================================================================
  100147d30  mov     x0, x1
  100147d34  ret

; ======================================================================
; sub_100147d38
; address 0x100147d38  size 4  kind sub
; ======================================================================
  100147d38  ret

; ======================================================================
; sub_100147d3c
; address 0x100147d3c  size 60  kind sub
; ======================================================================
  100147d3c  stp     x29, x30, [sp, #-0x10]!
  100147d40  mov     x29, sp
  100147d44  sub     sp, sp, #0x10
  100147d48  adrp    x8, #0x1003b0000
  100147d4c  ldr     x8, [x8, #0x1f0]                         ; _kCFAllocatorDefault
  100147d50  ldr     x8, [x8]                                 ; x8 = _kCFAllocatorDefault[+0x0]
  100147d54  str     x0, [sp]
  100147d58  adrp    x2, #0x1003ba000
  100147d5c  add     x2, x2, #0x1f0                           ; @"%d"
  100147d60  mov     x0, x8
  100147d64  mov     x1, #0
  100147d68  bl      _CFStringCreateWithFormat                ; CFStringCreateWithFormat(_kCFAllocatorDefault[+0x0], 0, @"%d", a3)
  100147d6c  mov     sp, x29
  100147d70  ldp     x29, x30, [sp], #0x10
  100147d74  ret

; ======================================================================
; sub_100147d78
; address 0x100147d78  size 12  kind sub
; ======================================================================
  100147d78  cmp     x0, x1
  100147d7c  cset    w0, eq
  100147d80  ret

; ======================================================================
; sub_100147d84
; address 0x100147d84  size 4  kind sub
; ======================================================================
  100147d84  ret

; ======================================================================
; -[TAGPBUnknownFieldSet getFieldBuilder:create:]
; address 0x100147d88  size 188  kind objc
; ======================================================================
  100147d88  stp     x29, x30, [sp, #-0x10]!
  100147d8c  mov     x29, sp
  100147d90  stp     x20, x19, [sp, #-0x10]!
  100147d94  stp     x22, x21, [sp, #-0x10]!
  100147d98  mov     x22, x3
  100147d9c  mov     x20, x2
  100147da0  mov     x19, x0
  100147da4  adrp    x8, #0x100420000
  100147da8  ldrsw   x8, [x8, #0x9f8]                         ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  100147dac  ldr     x0, [x19, x8]                            ; x0 = self->fields_
  100147db0  cbz     x0, loc_100147dc4                        ; if (self->fields_ == 0)
  100147db4  sxtw    x1, w20
  100147db8  bl      _CFDictionaryGetValue                    ; CFDictionaryGetValue(self->fields_, arg1, arg1, arg2)
  100147dbc  mov     x21, x0
  100147dc0  b       loc_100147dc8
loc_100147dc4:
  100147dc4  mov     x21, #0
loc_100147dc8:
  100147dc8  cbnz    x21, loc_100147e30                       ; if (x21 != 0)
  100147dcc  eor     w8, w22, #1
  100147dd0  tbnz    w8, #0, loc_100147e30                    ; if (((arg2 ^ 1) & 1))
  100147dd4  adrp    x8, #0x10041e000
  100147dd8  ldr     x0, [x8, #0x7c8]                         ; class TAGPBMutableField
  100147ddc  adrp    x8, #0x100416000
  100147de0  nop
  100147de4  ldr     x1, [x8, #0xac8]
  100147de8  bl      _objc_msgSend                            ; [TAGPBMutableField alloc]
  100147dec  adrp    x8, #0x10041c000
  100147df0  nop
  100147df4  ldr     x1, [x8, #0xbe0]
  100147df8  mov     x2, x20
  100147dfc  bl      _objc_msgSend                            ; [[TAGPBMutableField alloc] initWithNumber:arg1]
  100147e00  mov     x21, x0
  100147e04  adrp    x8, #0x10041c000
  100147e08  nop
  100147e0c  ldr     x1, [x8, #0xbe8]
  100147e10  mov     x0, x19
  100147e14  mov     x2, x21
  100147e18  bl      _objc_msgSend                            ; [self addField:[[TAGPBMutableField alloc] initWithNumber:arg1]]
  100147e1c  adrp    x8, #0x10041b000
  100147e20  nop
  100147e24  ldr     x1, [x8, #0xd70]
  100147e28  mov     x0, x21
  100147e2c  bl      _objc_msgSend                            ; [[[TAGPBMutableField alloc] initWithNumber:arg1] release]
loc_100147e30:
  100147e30  mov     x0, x21
  100147e34  ldp     x22, x21, [sp], #0x10
  100147e38  ldp     x20, x19, [sp], #0x10
  100147e3c  ldp     x29, x30, [sp], #0x10
  100147e40  ret

; ======================================================================
; -[TAGPBUnknownFieldSet mergeField:]
; address 0x100147e44  size 180  kind objc
; ======================================================================
  100147e44  stp     x29, x30, [sp, #-0x10]!
  100147e48  mov     x29, sp
  100147e4c  stp     x20, x19, [sp, #-0x10]!
  100147e50  stp     x22, x21, [sp, #-0x10]!
  100147e54  mov     x19, x2
  100147e58  mov     x20, x0
  100147e5c  adrp    x8, #0x10041c000
  100147e60  nop
  100147e64  ldr     x1, [x8, #0x50]
  100147e68  mov     x0, x19
  100147e6c  bl      _objc_msgSend                            ; [arg1 number]
  100147e70  mov     x21, x0
  100147e74  cbnz    w21, loc_100147ea4                       ; if ([arg1 number] != 0)
  100147e78  adrp    x8, #0x10041d000
  100147e7c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100147e80  adrp    x8, #0x1003b0000
  100147e84  ldr     x8, [x8, #0x40]                          ; _NSInvalidArgumentException
  100147e88  ldr     x2, [x8]                                 ; x2 = _NSInvalidArgumentException[+0x0]
  100147e8c  adrp    x8, #0x100417000
  100147e90  nop
  100147e94  ldr     x1, [x8, #0x260]
  100147e98  adrp    x3, #0x1003c7000
  100147e9c  add     x3, x3, #0x550                           ; @"Zero is not a valid field number."
  100147ea0  bl      _objc_msgSend                            ; [NSException raise:_NSInvalidArgumentException[+0x0] format:@"Zero is not a valid field number."]
loc_100147ea4:
  100147ea4  adrp    x8, #0x10041c000
  100147ea8  nop
  100147eac  ldr     x1, [x8, #0xbf0]
  100147eb0  mov     w3, #0
  100147eb4  mov     x0, x20
  100147eb8  mov     x2, x21
  100147ebc  bl      _objc_msgSend                            ; [self getFieldBuilder:[arg1 number] create:0]
  100147ec0  cbz     x0, loc_100147ed4                        ; if ([self getFieldBuilder:[arg1 number] create:0] == 0)
  100147ec4  adrp    x8, #0x10041c000
  100147ec8  add     x8, x8, #0xbf8                           ; &@selector(mergeFromField:)
  100147ecc  ldr     x1, [x8]
  100147ed0  b       loc_100147ee4
loc_100147ed4:
  100147ed4  adrp    x8, #0x10041c000
  100147ed8  add     x8, x8, #0xbe8                           ; &@selector(addField:)
  100147edc  ldr     x1, [x8]
  100147ee0  mov     x0, x20
loc_100147ee4:
  100147ee4  mov     x2, x19
  100147ee8  ldp     x22, x21, [sp], #0x10
  100147eec  ldp     x20, x19, [sp], #0x10
  100147ef0  ldp     x29, x30, [sp], #0x10
  100147ef4  b       _objc_msgSend                            ; [x0 <sel x1>]

; ======================================================================
; -[TAGPBUnknownFieldSet mergeUnknownFields:]
; address 0x100147ef8  size 44  kind objc
; ======================================================================
  100147ef8  mov     x8, x0
  100147efc  cbz     x2, loc_100147f20                        ; if (arg1 == 0)
  100147f00  adrp    x9, #0x100420000
  100147f04  ldrsw   x9, [x9, #0x9f8]                         ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  100147f08  ldr     x0, [x2, x9]                             ; x0 = arg1->fields_
  100147f0c  cbz     x0, loc_100147f20                        ; if (arg1->fields_ == 0)
  100147f10  adr     x1, #0x100147f24                         ; &-[TAGPBUnknownFieldSet mergeUnknownFields:]_block_invoke
  100147f14  nop
  100147f18  mov     x2, x8
  100147f1c  b       _CFDictionaryApplyFunction               ; CFDictionaryApplyFunction(arg1->fields_, &-[TAGPBUnknownFieldSet mergeUnknownFields:]_block_invoke, self)
loc_100147f20:
  100147f20  ret

; ======================================================================
; -[TAGPBUnknownFieldSet mergeUnknownFields:]_block_invoke
; address 0x100147f24  size 28  kind block
; ======================================================================
  100147f24  mov     x8, x1
  100147f28  adrp    x9, #0x10041c000
  100147f2c  nop
  100147f30  ldr     x1, [x9, #0xc80]
  100147f34  mov     x0, x2
  100147f38  mov     x2, x8
  100147f3c  b       _objc_msgSend                            ; [blockarg2 mergeField:blockarg1]

; ======================================================================
; -[TAGPBUnknownFieldSet mergeFromData:]
; address 0x100147f40  size 144  kind objc
; ======================================================================
  100147f40  stp     x29, x30, [sp, #-0x10]!
  100147f44  mov     x29, sp
  100147f48  stp     x20, x19, [sp, #-0x10]!
  100147f4c  mov     x19, x2
  100147f50  mov     x20, x0
  100147f54  adrp    x8, #0x10041e000
  100147f58  ldr     x0, [x8, #0x778]                         ; class TAGPBCodedInputStream
  100147f5c  adrp    x8, #0x100416000
  100147f60  nop
  100147f64  ldr     x1, [x8, #0xac8]
  100147f68  bl      _objc_msgSend                            ; [TAGPBCodedInputStream alloc]
  100147f6c  adrp    x8, #0x10041c000
  100147f70  nop
  100147f74  ldr     x1, [x8, #0x550]
  100147f78  mov     x2, x19
  100147f7c  bl      _objc_msgSend                            ; [[TAGPBCodedInputStream alloc] initWithData:arg1]
  100147f80  mov     x19, x0
  100147f84  adrp    x8, #0x10041c000
  100147f88  nop
  100147f8c  ldr     x1, [x8, #0x580]
  100147f90  mov     x0, x20
  100147f94  mov     x2, x19
  100147f98  bl      _objc_msgSend                            ; [self mergeFromCodedInputStream:[[TAGPBCodedInputStream alloc] initWithData:arg1]]
  100147f9c  adrp    x8, #0x10041c000
  100147fa0  nop
  100147fa4  ldr     x1, [x8, #0x568]
  100147fa8  mov     w2, #0
  100147fac  mov     x0, x19
  100147fb0  bl      _objc_msgSend                            ; [[[TAGPBCodedInputStream alloc] initWithData:arg1] checkLastTagWas:0]
  100147fb4  adrp    x8, #0x10041b000
  100147fb8  nop
  100147fbc  ldr     x1, [x8, #0xd70]
  100147fc0  mov     x0, x19
  100147fc4  ldp     x20, x19, [sp], #0x10
  100147fc8  ldp     x29, x30, [sp], #0x10
  100147fcc  b       _objc_msgSend                            ; [[[TAGPBCodedInputStream alloc] initWithData:arg1] release]

; ======================================================================
; -[TAGPBUnknownFieldSet mergeVarintField:value:]
; address 0x100147fd0  size 136  kind objc
; ======================================================================
  100147fd0  stp     x29, x30, [sp, #-0x10]!
  100147fd4  mov     x29, sp
  100147fd8  stp     x20, x19, [sp, #-0x10]!
  100147fdc  stp     x22, x21, [sp, #-0x10]!
  100147fe0  mov     x19, x3
  100147fe4  mov     x20, x2
  100147fe8  mov     x21, x0
  100147fec  cbnz    w20, loc_10014801c                       ; if (arg1 != 0)
  100147ff0  adrp    x8, #0x10041d000
  100147ff4  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100147ff8  adrp    x8, #0x1003b0000
  100147ffc  ldr     x8, [x8, #0x40]                          ; _NSInvalidArgumentException
  100148000  ldr     x2, [x8]                                 ; x2 = _NSInvalidArgumentException[+0x0]
  100148004  adrp    x8, #0x100417000
  100148008  nop
  10014800c  ldr     x1, [x8, #0x260]
  100148010  adrp    x3, #0x1003c7000
  100148014  add     x3, x3, #0x550                           ; @"Zero is not a valid field number."
  100148018  bl      _objc_msgSend                            ; [NSException raise:_NSInvalidArgumentException[+0x0] format:@"Zero is not a valid field number."]
loc_10014801c:
  10014801c  adrp    x8, #0x10041c000
  100148020  nop
  100148024  ldr     x1, [x8, #0xbf0]
  100148028  mov     w3, #1
  10014802c  mov     x0, x21
  100148030  mov     x2, x20
  100148034  bl      _objc_msgSend                            ; [self getFieldBuilder:arg1 create:1]
  100148038  sxtw    x2, w19
  10014803c  adrp    x8, #0x10041c000
  100148040  nop
  100148044  ldr     x1, [x8, #0xc00]
  100148048  ldp     x22, x21, [sp], #0x10
  10014804c  ldp     x20, x19, [sp], #0x10
  100148050  ldp     x29, x30, [sp], #0x10
  100148054  b       _objc_msgSend                            ; [[self getFieldBuilder:arg1 create:1] addVarint:arg2]

; ======================================================================
; -[TAGPBUnknownFieldSet mergeFieldFrom:input:]
; address 0x100148058  size 572  kind objc
; ======================================================================
  100148058  stp     x29, x30, [sp, #-0x10]!
  10014805c  mov     x29, sp
  100148060  stp     x20, x19, [sp, #-0x10]!
  100148064  stp     x22, x21, [sp, #-0x10]!
  100148068  stp     x24, x23, [sp, #-0x10]!
  10014806c  mov     x20, x3
  100148070  mov     x21, x0
  100148074  mov     w19, #0
  100148078  and     w8, w2, #7
  10014807c  cmp     w8, #5
  100148080  b.hi    loc_100148264                            ; if ((arg1 & 7) >u 5)
  100148084  lsr     w22, w2, #3
  100148088  adr     x9, #0x10014827c                         ; 0x10014827c
  10014808c  nop
  100148090  ldrsw   x8, [x9, x8, lsl #2]
  100148094  add     x8, x8, x9
  100148098  br      x8                                       ; switch ((arg1 & 7)) { case 0: goto loc_10014809c; case 1: goto loc_1001480e4; case 2: goto loc_10014812c; case 3: goto loc_100148180; case 4: goto loc_100148264; case 5: goto loc_100148214 }
loc_10014809c:  ; case 0
  10014809c  adrp    x8, #0x10041c000
  1001480a0  nop
  1001480a4  ldr     x1, [x8, #0xbf0]
  1001480a8  mov     w19, #1
  1001480ac  mov     w3, #1
  1001480b0  mov     x0, x21
  1001480b4  mov     x2, x22
  1001480b8  bl      _objc_msgSend                            ; [self getFieldBuilder:(arg1 >>> 3) create:1]
  1001480bc  mov     x21, x0
  1001480c0  adrp    x8, #0x10041c000
  1001480c4  nop
  1001480c8  ldr     x1, [x8, #0x8a8]
  1001480cc  mov     x0, x20
  1001480d0  bl      _objc_msgSend                            ; [arg2 readInt64]
  1001480d4  mov     x2, x0
  1001480d8  adrp    x8, #0x10041c000
  1001480dc  add     x8, x8, #0xc00                           ; &@selector(addVarint:)
  1001480e0  b       loc_100148170
loc_1001480e4:  ; case 1
  1001480e4  adrp    x8, #0x10041c000
  1001480e8  nop
  1001480ec  ldr     x1, [x8, #0xbf0]
  1001480f0  mov     w19, #1
  1001480f4  mov     w3, #1
  1001480f8  mov     x0, x21
  1001480fc  mov     x2, x22
  100148100  bl      _objc_msgSend                            ; [self getFieldBuilder:(arg1 >>> 3) create:1]
  100148104  mov     x21, x0
  100148108  adrp    x8, #0x10041c000
  10014810c  nop
  100148110  ldr     x1, [x8, #0x890]
  100148114  mov     x0, x20
  100148118  bl      _objc_msgSend                            ; [arg2 readFixed64]
  10014811c  mov     x2, x0
  100148120  adrp    x8, #0x10041c000
  100148124  add     x8, x8, #0xc08                           ; &@selector(addFixed64:)
  100148128  b       loc_100148170
loc_10014812c:  ; case 2
  10014812c  adrp    x8, #0x10041c000
  100148130  nop
  100148134  ldr     x1, [x8, #0xbf0]
  100148138  mov     w19, #1
  10014813c  mov     w3, #1
  100148140  mov     x0, x21
  100148144  mov     x2, x22
  100148148  bl      _objc_msgSend                            ; [self getFieldBuilder:(arg1 >>> 3) create:1]
  10014814c  mov     x21, x0
  100148150  adrp    x8, #0x10041c000
  100148154  nop
  100148158  ldr     x1, [x8, #0x8d0]
  10014815c  mov     x0, x20
  100148160  bl      _objc_msgSend                            ; [arg2 readData]
  100148164  mov     x2, x0
  100148168  adrp    x8, #0x10041c000
  10014816c  add     x8, x8, #0xc10                           ; &@selector(addLengthDelimited:)
loc_100148170:
  100148170  ldr     x1, [x8]                                 ; x1 = one of selectors {addFixed64:, addLengthDelimited:, addVarint:}
  100148174  mov     x0, x21
  100148178  bl      _objc_msgSend                            ; [[self getFieldBuilder:(arg1 >>> 3) create:1] addFixed64:x2  | addLengthDelimited:x3  | addVarint:x4]
  10014817c  b       loc_100148264
loc_100148180:  ; case 3
  100148180  adrp    x8, #0x10041e000
  100148184  ldr     x0, [x8, #0x7c0]                         ; class TAGPBUnknownFieldSet
  100148188  adrp    x8, #0x100416000
  10014818c  nop
  100148190  ldr     x1, [x8, #0xac8]
  100148194  bl      _objc_msgSend                            ; [TAGPBUnknownFieldSet alloc]
  100148198  adrp    x8, #0x100416000
  10014819c  nop
  1001481a0  ldr     x1, [x8, #0xab8]
  1001481a4  bl      _objc_msgSend                            ; [[TAGPBUnknownFieldSet alloc] init]
  1001481a8  mov     x23, x0
  1001481ac  adrp    x8, #0x10041c000
  1001481b0  nop
  1001481b4  ldr     x1, [x8, #0xc18]
  1001481b8  mov     x0, x20
  1001481bc  mov     x2, x22
  1001481c0  mov     x3, x23
  1001481c4  bl      _objc_msgSend                            ; [arg2 readUnknownGroup:(arg1 >>> 3) builder:[[TAGPBUnknownFieldSet alloc] init]]
  1001481c8  adrp    x8, #0x10041c000
  1001481cc  nop
  1001481d0  ldr     x1, [x8, #0xbf0]
  1001481d4  mov     w19, #1
  1001481d8  mov     w3, #1
  1001481dc  mov     x0, x21
  1001481e0  mov     x2, x22
  1001481e4  bl      _objc_msgSend                            ; [self getFieldBuilder:(arg1 >>> 3) create:1]
  1001481e8  adrp    x8, #0x10041c000
  1001481ec  nop
  1001481f0  ldr     x1, [x8, #0xc20]
  1001481f4  mov     x2, x23
  1001481f8  bl      _objc_msgSend                            ; [[self getFieldBuilder:(arg1 >>> 3) create:1] addGroup:[[TAGPBUnknownFieldSet alloc] init]]
  1001481fc  adrp    x8, #0x10041b000
  100148200  nop
  100148204  ldr     x1, [x8, #0xd70]
  100148208  mov     x0, x23
  10014820c  bl      _objc_msgSend                            ; [[[TAGPBUnknownFieldSet alloc] init] release]
  100148210  b       loc_100148264
loc_100148214:  ; case 5
  100148214  adrp    x8, #0x10041c000
  100148218  nop
  10014821c  ldr     x1, [x8, #0xbf0]
  100148220  mov     w19, #1
  100148224  mov     w3, #1
  100148228  mov     x0, x21
  10014822c  mov     x2, x22
  100148230  bl      _objc_msgSend                            ; [self getFieldBuilder:(arg1 >>> 3) create:1]
  100148234  mov     x21, x0
  100148238  adrp    x8, #0x10041c000
  10014823c  nop
  100148240  ldr     x1, [x8, #0x878]
  100148244  mov     x0, x20
  100148248  bl      _objc_msgSend                            ; [arg2 readFixed32]
  10014824c  mov     x2, x0
  100148250  adrp    x8, #0x10041c000
  100148254  nop
  100148258  ldr     x1, [x8, #0xc28]
  10014825c  mov     x0, x21
  100148260  bl      _objc_msgSend                            ; [[self getFieldBuilder:(arg1 >>> 3) create:1] addFixed32:[arg2 readFixed32]]
loc_100148264:  ; case 4
  100148264  mov     x0, x19
  100148268  ldp     x24, x23, [sp], #0x10
  10014826c  ldp     x22, x21, [sp], #0x10
  100148270  ldp     x20, x19, [sp], #0x10
  100148274  ldp     x29, x30, [sp], #0x10
  100148278  ret
  10014827c  .word   jump table of 100148098, case 0 -> loc_10014809c
  100148280  .word   jump table of 100148098, case 1 -> loc_1001480e4
  100148284  .word   jump table of 100148098, case 2 -> loc_10014812c
  100148288  .word   jump table of 100148098, case 3 -> loc_100148180
  10014828c  .word   jump table of 100148098, case 4 -> loc_100148264
  100148290  .word   jump table of 100148098, case 5 -> loc_100148214

; ======================================================================
; -[TAGPBUnknownFieldSet mergeMessageSetMessage:data:]
; address 0x100148294  size 64  kind objc
; ======================================================================
  100148294  stp     x29, x30, [sp, #-0x10]!
  100148298  mov     x29, sp
  10014829c  stp     x20, x19, [sp, #-0x10]!
  1001482a0  mov     x19, x3
  1001482a4  adrp    x8, #0x10041c000
  1001482a8  nop
  1001482ac  ldr     x1, [x8, #0xbf0]
  1001482b0  mov     w3, #1
  1001482b4  bl      _objc_msgSend                            ; [self getFieldBuilder:arg1 create:1]
  1001482b8  adrp    x8, #0x10041c000
  1001482bc  nop
  1001482c0  ldr     x1, [x8, #0xc10]
  1001482c4  mov     x2, x19
  1001482c8  ldp     x20, x19, [sp], #0x10
  1001482cc  ldp     x29, x30, [sp], #0x10
  1001482d0  b       _objc_msgSend                            ; [[self getFieldBuilder:arg1 create:1] addLengthDelimited:arg2]

; ======================================================================
; -[TAGPBUnknownFieldSet mergeFromCodedInputStream:]
; address 0x1001482d4  size 92  kind objc
; ======================================================================
  1001482d4  stp     x29, x30, [sp, #-0x10]!
  1001482d8  mov     x29, sp
  1001482dc  stp     x20, x19, [sp, #-0x10]!
  1001482e0  stp     x22, x21, [sp, #-0x10]!
  1001482e4  mov     x19, x2
  1001482e8  mov     x20, x0
  1001482ec  adrp    x8, #0x10041c000
  1001482f0  add     x8, x8, #0xb30                           ; &@selector(mergeFieldFrom:input:)
  1001482f4  ldr     x21, [x8]
loc_1001482f8:
  1001482f8  mov     x0, x19
  1001482fc  bl      sub_100130f90                            ; sub_100130f90(arg1)
  100148300  mov     x8, x0
  100148304  cbz     w8, loc_100148320                        ; if (sub_100130f90(arg1) == 0)
  100148308  mov     x0, x20
  10014830c  mov     x1, x21
  100148310  mov     x2, x8
  100148314  mov     x3, x19
  100148318  bl      _objc_msgSend                            ; [self mergeFieldFrom:sub_100130f90(arg1) input:arg1]
  10014831c  tbnz    w0, #0, loc_1001482f8                    ; if (([self mergeFieldFrom:sub_100130f90(arg1) input:arg1] & 1))
loc_100148320:
  100148320  ldp     x22, x21, [sp], #0x10
  100148324  ldp     x20, x19, [sp], #0x10
  100148328  ldp     x29, x30, [sp], #0x10
  10014832c  ret

; ======================================================================
; -[TAGPBUnknownFieldSet sortedFields]
; address 0x100148330  size 348  kind objc
; ======================================================================
  100148330  stp     x29, x30, [sp, #-0x10]!
  100148334  mov     x29, sp
  100148338  stp     x20, x19, [sp, #-0x10]!
  10014833c  stp     x22, x21, [sp, #-0x10]!
  100148340  stp     x24, x23, [sp, #-0x10]!
  100148344  stp     x26, x25, [sp, #-0x10]!
  100148348  sub     sp, sp, #0x10
  10014834c  mov     x22, x0
  100148350  adrp    x23, #0x1003b0000
  100148354  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100148358  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  10014835c  stur    x8, [x29, #-0x48]
  100148360  adrp    x8, #0x100420000
  100148364  ldrsw   x25, [x8, #0x9f8]                        ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  100148368  ldr     x0, [x22, x25]                           ; x0 = self->fields_
  10014836c  cbz     x0, loc_10014841c                        ; if (self->fields_ == 0)
  100148370  bl      _CFDictionaryGetCount                    ; CFDictionaryGetCount(self->fields_, _cmd)
  100148374  mov     x19, x0
  100148378  mov     x24, sp
  10014837c  mov     x8, sp
  100148380  lsl     x9, x19, #3
  100148384  add     x9, x9, #0xf
  100148388  and     x9, x9, #0xfffffffffffffff0
  10014838c  sub     x21, x8, x9
  100148390  mov     sp, x21
  100148394  mov     x8, sp
  100148398  sub     x20, x8, x9
  10014839c  mov     sp, x20
  1001483a0  ldr     x0, [x22, x25]                           ; x0 = self->fields_
  1001483a4  mov     x1, x21
  1001483a8  mov     x2, x20
  1001483ac  bl      _CFDictionaryGetKeysAndValues            ; CFDictionaryGetKeysAndValues(self->fields_, (&sp[0x0] - (((CFDictionaryGetCount(self->fields_, _cmd) << 3) + 15) & -16)), (&sp[0x0] - (((CFDictionaryGetCount(self->fields_, _cmd) << 3) + 15) & -16)))
  1001483b0  mov     x8, sp
  1001483b4  sub     x0, x8, x19, lsl #4
  1001483b8  mov     sp, x0
  1001483bc  cbz     x19, loc_100148424                       ; if (CFDictionaryGetCount(self->fields_, _cmd) == 0)
  1001483c0  mov     x8, #0
  1001483c4  add     x22, x0, #8
  1001483c8  mov     x9, x22
loc_1001483cc:
  1001483cc  ldr     x10, [x21, x8, lsl #3]
  1001483d0  stur    x10, [x9, #-8]                           ; ((&sp[0x0] - (CFDictionaryGetCount(self->fields_, _cmd) << 4)) + 8)[+0x-8] = x10
  1001483d4  ldr     x10, [x20, x8, lsl #3]
  1001483d8  str     x10, [x9], #0x10
  1001483dc  add     x8, x8, #1
  1001483e0  cmp     x19, x8
  1001483e4  b.ne    loc_1001483cc                            ; if (CFDictionaryGetCount(self->fields_, _cmd) != (x8 + 1))
  1001483e8  adrp    x3, #0x1003b8000
  1001483ec  add     x3, x3, #0xbe0                           ; ^{-[TAGPBUnknownFieldSet sortedFields]_block_invoke}
  1001483f0  mov     x2, #0x10
  1001483f4  mov     x1, x19
  1001483f8  bl      _qsort_b                                 ; qsort_b((&sp[0x0] - (CFDictionaryGetCount(self->fields_, _cmd) << 4)), CFDictionaryGetCount(self->fields_, _cmd), 16, ^{-[TAGPBUnknownFieldSet sortedFields]_block_invoke})
  1001483fc  cbz     x19, loc_100148438                       ; if (CFDictionaryGetCount(self->fields_, _cmd) == 0)
  100148400  mov     x8, x19
  100148404  mov     x9, x20
loc_100148408:
  100148408  ldr     x10, [x22], #0x10
  10014840c  str     x10, [x9], #8
  100148410  sub     x8, x8, #1
  100148414  cbnz    x8, loc_100148408                        ; if ((x8 - 1) != 0)
  100148418  b       loc_100148438
loc_10014841c:
  10014841c  mov     x0, #0
  100148420  b       loc_10014845c
loc_100148424:
  100148424  adrp    x3, #0x1003b8000
  100148428  add     x3, x3, #0xbe0                           ; ^{-[TAGPBUnknownFieldSet sortedFields]_block_invoke}
  10014842c  mov     x2, #0x10
  100148430  mov     x1, x19
  100148434  bl      _qsort_b                                 ; qsort_b((&sp[0x0] - (CFDictionaryGetCount(self->fields_, _cmd) << 4)), CFDictionaryGetCount(self->fields_, _cmd), 16, ^{-[TAGPBUnknownFieldSet sortedFields]_block_invoke})
loc_100148438:
  100148438  adrp    x8, #0x10041d000
  10014843c  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100148440  adrp    x8, #0x100417000
  100148444  nop
  100148448  ldr     x1, [x8, #0x3c8]
  10014844c  mov     x2, x20
  100148450  mov     x3, x19
  100148454  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:(&sp[0x0] - (((CFDictionaryGetCount(self->fields_, _cmd) << 3) + 15) & -16)) count:CFDictionaryGetCount(self->fields_, _cmd)]
  100148458  mov     sp, x24
loc_10014845c:
  10014845c  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  100148460  ldur    x9, [x29, #-0x48]
  100148464  sub     x8, x8, x9
  100148468  cbnz    x8, loc_100148488                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10014846c  sub     sp, x29, #0x40
  100148470  ldp     x26, x25, [sp], #0x10
  100148474  ldp     x24, x23, [sp], #0x10
  100148478  ldp     x22, x21, [sp], #0x10
  10014847c  ldp     x20, x19, [sp], #0x10
  100148480  ldp     x29, x30, [sp], #0x10
  100148484  ret
loc_100148488:
  100148488  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[TAGPBUnknownFieldSet sortedFields]_block_invoke
; address 0x10014848c  size 28  kind block
; ======================================================================
  10014848c  ldr     x8, [x1]                                 ; x8 = blockarg1[+0x0]
  100148490  ldr     x9, [x2]                                 ; x9 = blockarg2[+0x0]
  100148494  mov     w10, #1
  100148498  cmp     x8, x9
  10014849c  csetm   w8, ne
  1001484a0  csel    w0, w10, w8, gt
  1001484a4  ret

; ======================================================================
; -[TAGPBUnknownFieldSet getTags:]
; address 0x1001484a8  size 192  kind objc
; ======================================================================
  1001484a8  stp     x29, x30, [sp, #-0x10]!
  1001484ac  mov     x29, sp
  1001484b0  stp     x20, x19, [sp, #-0x10]!
  1001484b4  stp     x22, x21, [sp, #-0x10]!
  1001484b8  stp     x24, x23, [sp, #-0x10]!
  1001484bc  stp     x26, x25, [sp, #-0x10]!
  1001484c0  sub     sp, sp, #0x10
  1001484c4  mov     x19, x2
  1001484c8  adrp    x23, #0x1003b0000
  1001484cc  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  1001484d0  mov     x22, x0
  1001484d4  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  1001484d8  stur    x8, [x29, #-0x48]
  1001484dc  adrp    x8, #0x100420000
  1001484e0  ldrsw   x25, [x8, #0x9f8]                        ; ivar offset TAGPBUnknownFieldSet.fields_ (+0x8)
  1001484e4  ldr     x0, [x22, x25]                           ; x0 = self->fields_
  1001484e8  cbz     x0, loc_100148538                        ; if (self->fields_ == 0)
  1001484ec  bl      _CFDictionaryGetCount                    ; CFDictionaryGetCount(self->fields_, _cmd, arg1)
  1001484f0  mov     x20, x0
  1001484f4  mov     x24, sp
  1001484f8  mov     x8, sp
  1001484fc  lsl     x9, x20, #3
  100148500  add     x9, x9, #0xf
  100148504  and     x9, x9, #0xfffffffffffffff0
  100148508  sub     x21, x8, x9
  10014850c  mov     sp, x21
  100148510  ldr     x0, [x22, x25]                           ; x0 = self->fields_
  100148514  mov     x2, #0
  100148518  mov     x1, x21
  10014851c  bl      _CFDictionaryGetKeysAndValues            ; CFDictionaryGetKeysAndValues(self->fields_, (&sp[0x0] - (((CFDictionaryGetCount(self->fields_, _cmd, arg1) << 3) + 15) & -16)), 0)
  100148520  cbz     x20, loc_100148534                       ; if (CFDictionaryGetCount(self->fields_, _cmd, arg1) == 0)
loc_100148524:
  100148524  ldr     x8, [x21], #8
  100148528  str     w8, [x19], #4
  10014852c  sub     x20, x20, #1
  100148530  cbnz    x20, loc_100148524                       ; if ((x20 - 1) != 0)
loc_100148534:
  100148534  mov     sp, x24
loc_100148538:
  100148538  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  10014853c  ldur    x9, [x29, #-0x48]
  100148540  sub     x8, x8, x9
  100148544  cbnz    x8, loc_100148564                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100148548  sub     sp, x29, #0x40
  10014854c  ldp     x26, x25, [sp], #0x10
  100148550  ldp     x24, x23, [sp], #0x10
  100148554  ldp     x22, x21, [sp], #0x10
  100148558  ldp     x20, x19, [sp], #0x10
  10014855c  ldp     x29, x30, [sp], #0x10
  100148560  ret
loc_100148564:
  100148564  bl      ___stack_chk_fail                        ; stack_chk_fail()
