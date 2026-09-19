// unit GAIHitUtil — 16 functions
//   0x10011dc3c     128  -[GAIHitUtil init]
//   0x10011dcbc     128  +[GAIHitUtil systemLanguageFromLanguages:]
//   0x10011dd3c      64  +[GAIHitUtil systemCountryFromLocale:]
//   0x10011dd7c      80  +[GAIHitUtil userAgentStringWithProduct:version:deviceModel:systemName:systemVersion:systemLanguage:systemCountry:]
//   0x10011ddcc     276  +[GAIHitUtil userAgentString]
//   0x10011dee0      76  +[GAIHitUtil systemLanguage]
//   0x10011df2c      76  +[GAIHitUtil systemCountry]
//   0x10011df78     108  +[GAIHitUtil systemScreenResolution]
//   0x10011dfe4      12  +[GAIHitUtil systemScreenColorDepth]
//   0x10011dff0      52  +[GAIHitUtil millisecondsElapsedFrom:To:]
//   0x10011e024     248  +[GAIHitUtil gaHash:]
//   0x10011e11c     116  +[GAIHitUtil gaHash:]_block_invoke
//   0x10011e190      16  sub_10011e190
//   0x10011e1a0      12  sub_10011e1a0
//   0x10011e1ac     100  +[GAIHitUtil generateClientId]
//   0x10011e210     260  +[GAIHitUtil hashIdfa:clientId:]

; ======================================================================
; -[GAIHitUtil init]
; address 0x10011dc3c  size 128  kind objc
; ======================================================================
  10011dc3c  stp     x29, x30, [sp, #-0x10]!
  10011dc40  mov     x29, sp
  10011dc44  stp     x20, x19, [sp, #-0x10]!
  10011dc48  sub     sp, sp, #0x10
  10011dc4c  mov     x19, x1
  10011dc50  str     x0, [sp]
  10011dc54  adrp    x8, #0x10041f000
  10011dc58  ldr     x8, [x8, #0xf0]
  10011dc5c  str     x8, [sp, #8]
  10011dc60  adrp    x8, #0x100416000
  10011dc64  nop
  10011dc68  ldr     x1, [x8, #0xab8]
  10011dc6c  mov     x0, sp
  10011dc70  bl      _objc_msgSendSuper2                      ; [super init]
  10011dc74  mov     x20, x0
  10011dc78  cbz     x20, loc_10011dca8                       ; if (self == 0)
  10011dc7c  adrp    x8, #0x10041b000
  10011dc80  nop
  10011dc84  ldr     x1, [x8, #0xd68]
  10011dc88  mov     x0, x20
  10011dc8c  mov     x2, x19
  10011dc90  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  10011dc94  adrp    x8, #0x10041b000
  10011dc98  nop
  10011dc9c  ldr     x1, [x8, #0xd70]
  10011dca0  mov     x0, x20
  10011dca4  bl      _objc_msgSend                            ; [self release]
loc_10011dca8:
  10011dca8  mov     x0, #0
  10011dcac  sub     sp, x29, #0x10
  10011dcb0  ldp     x20, x19, [sp], #0x10
  10011dcb4  ldp     x29, x30, [sp], #0x10
  10011dcb8  ret

; ======================================================================
; +[GAIHitUtil systemLanguageFromLanguages:]
; address 0x10011dcbc  size 128  kind objc
; ======================================================================
  10011dcbc  stp     x29, x30, [sp, #-0x10]!
  10011dcc0  mov     x29, sp
  10011dcc4  stp     x20, x19, [sp, #-0x10]!
  10011dcc8  mov     x19, x2
  10011dccc  adrp    x8, #0x100416000
  10011dcd0  nop
  10011dcd4  ldr     x1, [x8, #0xe30]
  10011dcd8  mov     x0, x19
  10011dcdc  bl      _objc_msgSend                            ; [arg1 count]
  10011dce0  cbz     x0, loc_10011dd14                        ; if ([arg1 count] == 0)
  10011dce4  adrp    x8, #0x100416000
  10011dce8  nop
  10011dcec  ldr     x1, [x8, #0xc30]
  10011dcf0  mov     x2, #0
  10011dcf4  mov     x0, x19
  10011dcf8  bl      _objc_msgSend                            ; [arg1 objectAtIndex:0]
  10011dcfc  adrp    x8, #0x10041b000
  10011dd00  nop
  10011dd04  ldr     x1, [x8, #0xa58]
  10011dd08  ldp     x20, x19, [sp], #0x10
  10011dd0c  ldp     x29, x30, [sp], #0x10
  10011dd10  b       _objc_msgSend                            ; [[arg1 objectAtIndex:0] lowercaseString]
loc_10011dd14:
  10011dd14  adrp    x8, #0x10041d000
  10011dd18  ldr     x0, [x8, #0xf78]                         ; class NSString
  10011dd1c  adrp    x8, #0x10041c000
  10011dd20  nop
  10011dd24  ldr     x1, [x8, #0x478]
  10011dd28  adrp    x2, #0x10038f000
  10011dd2c  add     x2, x2, #0x1b9                           ; "en"
  10011dd30  ldp     x20, x19, [sp], #0x10
  10011dd34  ldp     x29, x30, [sp], #0x10
  10011dd38  b       _objc_msgSend                            ; [NSString stringWithUTF8String:"en"]

; ======================================================================
; +[GAIHitUtil systemCountryFromLocale:]
; address 0x10011dd3c  size 64  kind objc
; ======================================================================
  10011dd3c  stp     x29, x30, [sp, #-0x10]!
  10011dd40  mov     x29, sp
  10011dd44  adrp    x8, #0x1003b0000
  10011dd48  ldr     x8, [x8, #0x58]                          ; _NSLocaleCountryCode
  10011dd4c  ldr     x8, [x8]                                 ; x8 = _NSLocaleCountryCode[+0x0]
  10011dd50  adrp    x9, #0x100417000
  10011dd54  nop
  10011dd58  ldr     x1, [x9, #0x40]
  10011dd5c  mov     x0, x2
  10011dd60  mov     x2, x8
  10011dd64  bl      _objc_msgSend                            ; [arg1 objectForKey:_NSLocaleCountryCode[+0x0]]
  10011dd68  adrp    x8, #0x10041b000
  10011dd6c  nop
  10011dd70  ldr     x1, [x8, #0xa58]
  10011dd74  ldp     x29, x30, [sp], #0x10
  10011dd78  b       _objc_msgSend                            ; [[arg1 objectForKey:_NSLocaleCountryCode[+0x0]] lowercaseString]

; ======================================================================
; +[GAIHitUtil userAgentStringWithProduct:version:deviceModel:systemName:systemVersion:systemLanguage:systemCountry:]
; address 0x10011dd7c  size 80  kind objc
; ======================================================================
  10011dd7c  stp     x29, x30, [sp, #-0x10]!
  10011dd80  mov     x29, sp
  10011dd84  sub     sp, sp, #0x40
  10011dd88  ldr     x8, [x29, #0x10]
  10011dd8c  adrp    x9, #0x10041d000
  10011dd90  ldr     x0, [x9, #0xf78]                         ; class NSString
  10011dd94  adrp    x9, #0x100416000
  10011dd98  nop
  10011dd9c  ldr     x1, [x9, #0xee8]
  10011dda0  stp     x7, x8, [sp, #0x28]
  10011dda4  stp     x5, x6, [sp, #0x18]
  10011dda8  stp     x3, x4, [sp, #8]
  10011ddac  adrp    x8, #0x1003c3000
  10011ddb0  add     x8, x8, #0xf90                           ; @"%@/%@ (%@; U; CPU %@ %@ like Mac OS X; %@-%@)"
  10011ddb4  str     x2, [sp]
  10011ddb8  mov     x2, x8
  10011ddbc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@/%@ (%@; U; CPU %@ %@ like Mac OS X; %@-%@)", arg1, arg2, arg3, arg4, arg5, arg6, sp[48]]
  10011ddc0  mov     sp, x29
  10011ddc4  ldp     x29, x30, [sp], #0x10
  10011ddc8  ret

; ======================================================================
; +[GAIHitUtil userAgentString]
; address 0x10011ddcc  size 276  kind objc
; ======================================================================
  10011ddcc  stp     x29, x30, [sp, #-0x10]!
  10011ddd0  mov     x29, sp
  10011ddd4  stp     x20, x19, [sp, #-0x10]!
  10011ddd8  stp     x22, x21, [sp, #-0x10]!
  10011dddc  stp     x24, x23, [sp, #-0x10]!
  10011dde0  stp     x26, x25, [sp, #-0x10]!
  10011dde4  sub     sp, sp, #0x10
  10011dde8  mov     x19, x0
  10011ddec  adrp    x8, #0x10041e000
  10011ddf0  ldr     x0, [x8, #0x50]                          ; class UIDevice
  10011ddf4  adrp    x8, #0x100417000
  10011ddf8  nop
  10011ddfc  ldr     x1, [x8, #0x788]
  10011de00  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  10011de04  mov     x20, x0
  10011de08  adrp    x8, #0x1003b7000
  10011de0c  add     x8, x8, #0xd70                           ; &d_1003b7d70
  10011de10  ldr     x21, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  10011de14  adrp    x8, #0x1003b7000
  10011de18  add     x8, x8, #0xd78                           ; &d_1003b7d78
  10011de1c  ldr     x22, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  10011de20  adrp    x8, #0x100418000
  10011de24  nop
  10011de28  ldr     x1, [x8, #0x9e8]
  10011de2c  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  10011de30  mov     x23, x0
  10011de34  adrp    x8, #0x10041c000
  10011de38  nop
  10011de3c  ldr     x1, [x8, #0x90]
  10011de40  mov     x0, x20
  10011de44  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemName]
  10011de48  mov     x24, x0
  10011de4c  adrp    x8, #0x100418000
  10011de50  nop
  10011de54  ldr     x1, [x8, #0xa90]
  10011de58  mov     x0, x20
  10011de5c  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemVersion]
  10011de60  mov     x20, x0
  10011de64  adrp    x26, #0x10041e000
  10011de68  ldr     x0, [x26, #0x600]                        ; class GAIHitUtil
  10011de6c  adrp    x8, #0x10041c000
  10011de70  nop
  10011de74  ldr     x1, [x8, #0x98]
  10011de78  bl      _objc_msgSend                            ; [GAIHitUtil systemLanguage]
  10011de7c  mov     x25, x0
  10011de80  ldr     x0, [x26, #0x600]                        ; class GAIHitUtil
  10011de84  adrp    x8, #0x10041c000
  10011de88  nop
  10011de8c  ldr     x1, [x8, #0xa0]
  10011de90  bl      _objc_msgSend                            ; [GAIHitUtil systemCountry]
  10011de94  adrp    x8, #0x10041b000
  10011de98  nop
  10011de9c  ldr     x1, [x8, #0xa50]
  10011dea0  str     x0, [sp]
  10011dea4  mov     x0, x19
  10011dea8  mov     x2, x21
  10011deac  mov     x3, x22
  10011deb0  mov     x4, x23
  10011deb4  mov     x5, x24
  10011deb8  mov     x6, x20
  10011debc  mov     x7, x25
  10011dec0  bl      _objc_msgSend                            ; [GAIHitUtil userAgentStringWithProduct:@"GoogleAnalytics" version:@"3.09" deviceModel:[[UIDevice currentDevice] model] systemName:[[UIDevice currentDevice] systemName] systemVersion:[[UIDevice currentDevice] systemVersion] systemLanguage:[GAIHitUtil systemLanguage] systemCountry:&@selector(setWeakerEnemies:)]
  10011dec4  sub     sp, x29, #0x40
  10011dec8  ldp     x26, x25, [sp], #0x10
  10011decc  ldp     x24, x23, [sp], #0x10
  10011ded0  ldp     x22, x21, [sp], #0x10
  10011ded4  ldp     x20, x19, [sp], #0x10
  10011ded8  ldp     x29, x30, [sp], #0x10
  10011dedc  ret

; ======================================================================
; +[GAIHitUtil systemLanguage]
; address 0x10011dee0  size 76  kind objc
; ======================================================================
  10011dee0  stp     x29, x30, [sp, #-0x10]!
  10011dee4  mov     x29, sp
  10011dee8  stp     x20, x19, [sp, #-0x10]!
  10011deec  adrp    x8, #0x10041e000
  10011def0  ldr     x19, [x8, #0x600]                        ; class GAIHitUtil
  10011def4  nop
  10011def8  ldr     x0, [x8, #0x518]                         ; class NSLocale
  10011defc  adrp    x8, #0x10041b000
  10011df00  nop
  10011df04  ldr     x1, [x8, #0xa30]
  10011df08  bl      _objc_msgSend                            ; [NSLocale preferredLanguages]
  10011df0c  mov     x2, x0
  10011df10  adrp    x8, #0x10041b000
  10011df14  nop
  10011df18  ldr     x1, [x8, #0xa38]
  10011df1c  mov     x0, x19
  10011df20  ldp     x20, x19, [sp], #0x10
  10011df24  ldp     x29, x30, [sp], #0x10
  10011df28  b       _objc_msgSend                            ; [GAIHitUtil systemLanguageFromLanguages:[NSLocale preferredLanguages]]

; ======================================================================
; +[GAIHitUtil systemCountry]
; address 0x10011df2c  size 76  kind objc
; ======================================================================
  10011df2c  stp     x29, x30, [sp, #-0x10]!
  10011df30  mov     x29, sp
  10011df34  stp     x20, x19, [sp, #-0x10]!
  10011df38  adrp    x8, #0x10041e000
  10011df3c  ldr     x19, [x8, #0x600]                        ; class GAIHitUtil
  10011df40  nop
  10011df44  ldr     x0, [x8, #0x518]                         ; class NSLocale
  10011df48  adrp    x8, #0x10041b000
  10011df4c  nop
  10011df50  ldr     x1, [x8, #0xa40]
  10011df54  bl      _objc_msgSend                            ; [NSLocale currentLocale]
  10011df58  mov     x2, x0
  10011df5c  adrp    x8, #0x10041b000
  10011df60  nop
  10011df64  ldr     x1, [x8, #0xa48]
  10011df68  mov     x0, x19
  10011df6c  ldp     x20, x19, [sp], #0x10
  10011df70  ldp     x29, x30, [sp], #0x10
  10011df74  b       _objc_msgSend                            ; [GAIHitUtil systemCountryFromLocale:[NSLocale currentLocale]]

; ======================================================================
; +[GAIHitUtil systemScreenResolution]
; address 0x10011df78  size 108  kind objc
; ======================================================================
  10011df78  stp     x29, x30, [sp, #-0x10]!
  10011df7c  mov     x29, sp
  10011df80  sub     sp, sp, #0x10
  10011df84  adrp    x8, #0x10041e000
  10011df88  ldr     x0, [x8, #0x28]                          ; class UIScreen
  10011df8c  adrp    x8, #0x100417000
  10011df90  nop
  10011df94  ldr     x1, [x8, #0x6e8]
  10011df98  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  10011df9c  adrp    x8, #0x100417000
  10011dfa0  nop
  10011dfa4  ldr     x1, [x8, #0x748]
  10011dfa8  bl      _objc_msgSend                            ; [[UIScreen mainScreen] bounds]
  10011dfac  adrp    x8, #0x10041d000
  10011dfb0  fcvtzs  w9, d2
  10011dfb4  ldr     x0, [x8, #0xf78]                         ; class NSString
  10011dfb8  fcvtzs  w8, d3
  10011dfbc  adrp    x10, #0x100416000
  10011dfc0  nop
  10011dfc4  ldr     x1, [x10, #0xee8]
  10011dfc8  stp     x9, x8, [sp]
  10011dfcc  adrp    x2, #0x1003c4000
  10011dfd0  add     x2, x2, #0xfd0                           ; @"%dx%d"
  10011dfd4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%dx%d", (int)[[UIScreen mainScreen] bounds].2, (int)[[UIScreen mainScreen] bounds].3]
  10011dfd8  mov     sp, x29
  10011dfdc  ldp     x29, x30, [sp], #0x10
  10011dfe0  ret

; ======================================================================
; +[GAIHitUtil systemScreenColorDepth]
; address 0x10011dfe4  size 12  kind objc
; ======================================================================
  10011dfe4  adrp    x0, #0x1003c4000
  10011dfe8  add     x0, x0, #0xff0                           ; @"24-bit"
  10011dfec  ret

; ======================================================================
; +[GAIHitUtil millisecondsElapsedFrom:To:]
; address 0x10011dff0  size 52  kind objc
; ======================================================================
  10011dff0  stp     x29, x30, [sp, #-0x10]!
  10011dff4  mov     x29, sp
  10011dff8  adrp    x8, #0x100418000
  10011dffc  nop
  10011e000  ldr     x1, [x8, #0x160]
  10011e004  mov     x0, x3
  10011e008  bl      _objc_msgSend                            ; [arg2 timeIntervalSinceDate:arg1]
  10011e00c  nop
  10011e010  ldr     d1, #0x100181ca8                         ; d1 = 1000.0
  10011e014  fmul    d0, d0, d1
  10011e018  fcvtzs  x0, d0
  10011e01c  ldp     x29, x30, [sp], #0x10
  10011e020  ret

; ======================================================================
; +[GAIHitUtil gaHash:]
; address 0x10011e024  size 248  kind objc
; ======================================================================
  10011e024  stp     x29, x30, [sp, #-0x10]!
  10011e028  mov     x29, sp
  10011e02c  stp     x20, x19, [sp, #-0x10]!
  10011e030  stp     x22, x21, [sp, #-0x10]!
  10011e034  sub     sp, sp, #0x50
  10011e038  mov     x19, x2
  10011e03c  adrp    x8, #0x100417000
  10011e040  nop
  10011e044  ldr     x20, [x8, #0xc58]
  10011e048  mov     x0, x19
  10011e04c  mov     x1, x20
  10011e050  bl      _objc_msgSend                            ; [arg1 length]
  10011e054  cbz     x0, loc_10011e0e4                        ; if ([arg1 length] == 0)
  10011e058  add     x21, sp, #0x30
  10011e05c  stp     xzr, x21, [sp, #0x30]
  10011e060  mov     w8, #0x20000000
  10011e064  str     w8, [sp, #0x40]
  10011e068  mov     w8, #0x20
  10011e06c  stp     w8, wzr, [sp, #0x44]
  10011e070  mov     x0, x19
  10011e074  mov     x1, x20
  10011e078  bl      _objc_msgSend                            ; [arg1 length]
  10011e07c  mov     x3, x0
  10011e080  adrp    x8, #0x1003b0000
  10011e084  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10011e088  adr     x9, #0x10011e11c                         ; &+[GAIHitUtil gaHash:]_block_invoke
  10011e08c  nop
  10011e090  mov     w10, #-0x3e000000
  10011e094  adrp    x11, #0x1003b8000
  10011e098  add     x11, x11, #0x230                         ; &d_1003b8230
  10011e09c  str     x8, [sp, #8]
  10011e0a0  stp     w10, wzr, [sp, #0x10]
  10011e0a4  stp     x9, x11, [sp, #0x18]
  10011e0a8  str     x21, [sp, #0x28]
  10011e0ac  adrp    x8, #0x10041c000
  10011e0b0  nop
  10011e0b4  ldr     x1, [x8, #0xa8]
  10011e0b8  mov     x2, #0
  10011e0bc  add     x5, sp, #8
  10011e0c0  mov     x4, #0x102
  10011e0c4  mov     x0, x19
  10011e0c8  bl      _objc_msgSend                            ; [arg1 enumerateSubstringsInRange:0 options:[arg1 length] usingBlock:258]
  10011e0cc  ldr     x8, [sp, #0x38]
  10011e0d0  ldr     w19, [x8, #0x18]
  10011e0d4  add     x0, sp, #0x30
  10011e0d8  mov     w1, #8
  10011e0dc  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x30], 8)
  10011e0e0  b       loc_10011e0e8
loc_10011e0e4:
  10011e0e4  mov     w19, #1
loc_10011e0e8:
  10011e0e8  mov     x0, x19
  10011e0ec  sub     sp, x29, #0x20
  10011e0f0  ldp     x22, x21, [sp], #0x10
  10011e0f4  ldp     x20, x19, [sp], #0x10
  10011e0f8  ldp     x29, x30, [sp], #0x10
  10011e0fc  ret
  10011e100  mov     x19, x0
  10011e104  add     x8, sp, #0x30
  10011e108  mov     w1, #8
  10011e10c  mov     x0, x8
  10011e110  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x30], 8)
  10011e114  mov     x0, x19
  10011e118  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[GAIHitUtil gaHash:]_block_invoke
; address 0x10011e11c  size 116  kind block
; ======================================================================
  10011e11c  stp     x29, x30, [sp, #-0x10]!
  10011e120  mov     x29, sp
  10011e124  stp     x20, x19, [sp, #-0x10]!
  10011e128  mov     x19, x0
  10011e12c  adrp    x8, #0x10041b000
  10011e130  nop
  10011e134  ldr     x8, [x8, #0x2c0]
  10011e138  mov     x2, #0
  10011e13c  mov     x0, x1
  10011e140  mov     x1, x8
  10011e144  bl      _objc_msgSend                            ; [blockarg1 characterAtIndex:0]
  10011e148  ldr     x8, [x19, #0x20]                         ; x8 = block[+0x20]
  10011e14c  ldr     x8, [x8, #8]                             ; x8 = block[+0x20][+0x8]
  10011e150  ldr     w9, [x8, #0x18]                          ; w9 = block[+0x20][+0x8][+0x18]
  10011e154  lsl     w9, w9, #6
  10011e158  and     w9, w9, #0xfffffc0
  10011e15c  add     w10, w0, w0, lsl #14
  10011e160  add     w9, w10, w9                              ; t1 = (([blockarg1 characterAtIndex:0] + ([blockarg1 characterAtIndex:0] << 14)) + ((block[+0x20][+0x8][+0x18] << 6) & 0xfffffc0))
  10011e164  str     w9, [x8, #0x18]                          ; block[+0x20][+0x8][+0x18] = t1
  10011e168  ldr     x8, [x19, #0x20]                         ; x8 = block[+0x20]
  10011e16c  ldr     x8, [x8, #8]                             ; x8 = block[+0x20][+0x8]
  10011e170  ldr     w9, [x8, #0x18]                          ; w9 = block[+0x20][+0x8][+0x18]
  10011e174  ands    w10, w9, #0xfe00000
  10011e178  eor     w10, w9, w10, lsr #21
  10011e17c  csel    w9, w9, w10, eq                          ; t2 = ((block[+0x20][+0x8][+0x18] & 0xfe00000) == 0 ? block[+0x20][+0x8][+0x18] : (block[+0x20][+0x8][+0x18] ^ ((block[+0x20][+0x8][+0x18] & 0xfe00000) >>> 21)))
  10011e180  str     w9, [x8, #0x18]                          ; block[+0x20][+0x8][+0x18] = t2
  10011e184  ldp     x20, x19, [sp], #0x10
  10011e188  ldp     x29, x30, [sp], #0x10
  10011e18c  ret

; ======================================================================
; sub_10011e190
; address 0x10011e190  size 16  kind sub
; ======================================================================
  10011e190  add     x0, x0, #0x20
  10011e194  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  10011e198  mov     w2, #8
  10011e19c  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 8, a3)

; ======================================================================
; sub_10011e1a0
; address 0x10011e1a0  size 12  kind sub
; ======================================================================
  10011e1a0  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10011e1a4  mov     w1, #8
  10011e1a8  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 8, a2, a3)

; ======================================================================
; +[GAIHitUtil generateClientId]
; address 0x10011e1ac  size 100  kind objc
; ======================================================================
  10011e1ac  stp     x29, x30, [sp, #-0x10]!
  10011e1b0  mov     x29, sp
  10011e1b4  stp     x20, x19, [sp, #-0x10]!
  10011e1b8  stp     x22, x21, [sp, #-0x10]!
  10011e1bc  mov     x0, #0
  10011e1c0  bl      _CFUUIDCreate                            ; CFUUIDCreate(0, _cmd)
  10011e1c4  mov     x19, x0
  10011e1c8  mov     x0, #0
  10011e1cc  mov     x1, x19
  10011e1d0  bl      _CFUUIDCreateString                      ; CFUUIDCreateString(0, CFUUIDCreate(0, _cmd))
  10011e1d4  mov     x20, x0
  10011e1d8  adrp    x8, #0x10041b000
  10011e1dc  nop
  10011e1e0  ldr     x1, [x8, #0xa58]
  10011e1e4  bl      _objc_msgSend                            ; [CFUUIDCreateString(0, CFUUIDCreate(0, _cmd)) lowercaseString]
  10011e1e8  mov     x21, x0
  10011e1ec  mov     x0, x20
  10011e1f0  bl      _CFRelease                               ; CFRelease(CFUUIDCreateString(0, CFUUIDCreate(0, _cmd)))
  10011e1f4  mov     x0, x19
  10011e1f8  bl      _CFRelease                               ; CFRelease(CFUUIDCreate(0, _cmd))
  10011e1fc  mov     x0, x21
  10011e200  ldp     x22, x21, [sp], #0x10
  10011e204  ldp     x20, x19, [sp], #0x10
  10011e208  ldp     x29, x30, [sp], #0x10
  10011e20c  ret

; ======================================================================
; +[GAIHitUtil hashIdfa:clientId:]
; address 0x10011e210  size 260  kind objc
; ======================================================================
  10011e210  stp     x29, x30, [sp, #-0x10]!
  10011e214  mov     x29, sp
  10011e218  stp     x20, x19, [sp, #-0x10]!
  10011e21c  stp     x22, x21, [sp, #-0x10]!
  10011e220  stp     x24, x23, [sp, #-0x10]!
  10011e224  sub     sp, sp, #0x30
  10011e228  adrp    x23, #0x1003b0000
  10011e22c  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  10011e230  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  10011e234  str     x8, [sp, #0x28]
  10011e238  adrp    x8, #0x10041d000
  10011e23c  ldr     x0, [x8, #0xf78]                         ; class NSString
  10011e240  adrp    x8, #0x100416000
  10011e244  nop
  10011e248  ldr     x1, [x8, #0xee8]
  10011e24c  stp     x2, x3, [sp]
  10011e250  adrp    x2, #0x1003c5000
  10011e254  add     x2, x2, #0x10                            ; @"%@:%@"
  10011e258  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@:%@", arg1, arg2]
  10011e25c  adrp    x8, #0x10041a000
  10011e260  nop
  10011e264  ldr     x1, [x8, #0x18]
  10011e268  bl      _objc_msgSend                            ; [[NSString stringWithFormat:@"%@:%@", arg1, arg2] UTF8String]
  10011e26c  mov     x20, x0
  10011e270  bl      _strlen                                  ; strlen([[NSString stringWithFormat:@"%@:%@", arg1, arg2] UTF8String])
  10011e274  mov     x1, x0
  10011e278  add     x19, sp, #0x18
  10011e27c  mov     x0, x20
  10011e280  mov     x2, x19
  10011e284  bl      _CC_MD5                                  ; CC_MD5([[NSString stringWithFormat:@"%@:%@", arg1, arg2] UTF8String], strlen([[NSString stringWithFormat:@"%@:%@", arg1, arg2] UTF8String]), &sp[0x18])
  10011e288  adrp    x8, #0x10041e000
  10011e28c  ldr     x0, [x8, #0xd8]                          ; class NSMutableString
  10011e290  adrp    x8, #0x10041b000
  10011e294  nop
  10011e298  ldr     x1, [x8, #0x210]
  10011e29c  mov     x2, #0x20
  10011e2a0  bl      _objc_msgSend                            ; [NSMutableString stringWithCapacity:32]
  10011e2a4  mov     x20, x0
  10011e2a8  mov     x24, #0
  10011e2ac  adrp    x8, #0x100417000
  10011e2b0  add     x8, x8, #0xd88                           ; &@selector(appendFormat:)
  10011e2b4  ldr     x21, [x8]
  10011e2b8  adrp    x22, #0x1003c5000
  10011e2bc  add     x22, x22, #0x30                          ; @"%02x"
loc_10011e2c0:
  10011e2c0  ldrb    w8, [x19, x24]
  10011e2c4  str     x8, [sp]
  10011e2c8  mov     x0, x20
  10011e2cc  mov     x1, x21
  10011e2d0  mov     x2, x22
  10011e2d4  bl      _objc_msgSend                            ; [[NSMutableString stringWithCapacity:32] appendFormat:@"%02x", sp[0]]
  10011e2d8  add     x24, x24, #1
  10011e2dc  cmp     x24, #0x10
  10011e2e0  b.ne    loc_10011e2c0                            ; if ((x24 + 1) != 16)
  10011e2e4  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  10011e2e8  ldr     x9, [sp, #0x28]
  10011e2ec  sub     x8, x8, x9
  10011e2f0  cbnz    x8, loc_10011e310                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10011e2f4  mov     x0, x20
  10011e2f8  sub     sp, x29, #0x30
  10011e2fc  ldp     x24, x23, [sp], #0x10
  10011e300  ldp     x22, x21, [sp], #0x10
  10011e304  ldp     x20, x19, [sp], #0x10
  10011e308  ldp     x29, x30, [sp], #0x10
  10011e30c  ret
loc_10011e310:
  10011e310  bl      ___stack_chk_fail                        ; stack_chk_fail([[NSMutableString stringWithCapacity:32] appendFormat:@"%02x", sp[0]])
