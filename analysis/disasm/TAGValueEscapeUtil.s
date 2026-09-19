// unit TAGValueEscapeUtil — 6 functions
//   0x10017241c     284  +[TAGValueEscapeUtil applyEscapings:toValue:]
//   0x100172538     380  +[TAGValueEscapeUtil applyEscaping:toValue:]
//   0x1001726b4      48  +[TAGValueEscapeUtil urlEncode:]
//   0x1001726e4      48  +[TAGValueEscapeUtil urlDecode:]
//   0x100172714     380  +[TAGValueEscapeUtil escapeUri:]
//   0x100172890     148  +[TAGValueEscapeUtil isValidStringType:]

; ======================================================================
; +[TAGValueEscapeUtil applyEscapings:toValue:]
; address 0x10017241c  size 284  kind objc
; ======================================================================
  10017241c  stp     x29, x30, [sp, #-0x10]!
  100172420  mov     x29, sp
  100172424  stp     x20, x19, [sp, #-0x10]!
  100172428  stp     x22, x21, [sp, #-0x10]!
  10017242c  stp     x24, x23, [sp, #-0x10]!
  100172430  stp     x26, x25, [sp, #-0x10]!
  100172434  stp     x28, x27, [sp, #-0x10]!
  100172438  mov     x21, x3
  10017243c  mov     x20, x0
  100172440  mov     x0, x2
  100172444  bl      _objc_retain
  100172448  mov     x19, x0
  10017244c  mov     x0, x21
  100172450  bl      _objc_retain
  100172454  bl      _objc_retain
  100172458  mov     x21, x0
  10017245c  mov     x22, #0
  100172460  adrp    x8, #0x100416000
  100172464  nop
  100172468  adrp    x9, #0x10041c000
  10017246c  add     x9, x9, #0x7b8                           ; &@selector(int32AtIndex:)
  100172470  ldr     x23, [x8, #0xe30]
  100172474  ldr     x24, [x9]
  100172478  adrp    x8, #0x10041d000
  10017247c  add     x8, x8, #0xbb0                           ; &@selector(applyEscaping:toValue:)
  100172480  ldr     x26, [x8]
  100172484  mov     x25, x21
  100172488  b       loc_1001724a8
loc_10017248c:
  10017248c  mov     x29, x29
  100172490  bl      _objc_retainAutoreleasedReturnValue
  100172494  mov     x27, x0
  100172498  mov     x0, x25
  10017249c  bl      _objc_release
  1001724a0  add     x22, x22, #1
  1001724a4  mov     x25, x27
loc_1001724a8:
  1001724a8  mov     x0, x19
  1001724ac  mov     x1, x23
  1001724b0  bl      _objc_msgSend                            ; [arg1 count]
  1001724b4  cmp     x22, x0
  1001724b8  b.hs    loc_100172508                            ; if (x22 >=u [arg1 count])
  1001724bc  mov     x0, x19
  1001724c0  mov     x1, x24
  1001724c4  mov     x2, x22
  1001724c8  bl      _objc_msgSend                            ; [arg1 int32AtIndex:x2]
  1001724cc  sxtw    x2, w0
  1001724d0  mov     x0, x20
  1001724d4  mov     x1, x26
  1001724d8  mov     x3, x25
  1001724dc  bl      _objc_msgSend                            ; [TAGValueEscapeUtil applyEscaping:[arg1 int32AtIndex:x2] toValue:x3]
  1001724e0  b       loc_10017248c
  1001724e4  mov     x20, x0
  1001724e8  mov     x0, x25
  1001724ec  bl      _objc_release
  1001724f0  mov     x0, x21
  1001724f4  bl      _objc_release
  1001724f8  mov     x0, x19
  1001724fc  bl      _objc_release
  100172500  mov     x0, x20
  100172504  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_100172508:
  100172508  mov     x0, x21
  10017250c  bl      _objc_release
  100172510  mov     x0, x19
  100172514  bl      _objc_release
  100172518  mov     x0, x25
  10017251c  ldp     x28, x27, [sp], #0x10
  100172520  ldp     x26, x25, [sp], #0x10
  100172524  ldp     x24, x23, [sp], #0x10
  100172528  ldp     x22, x21, [sp], #0x10
  10017252c  ldp     x20, x19, [sp], #0x10
  100172530  ldp     x29, x30, [sp], #0x10
  100172534  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[TAGValueEscapeUtil applyEscaping:toValue:]
; address 0x100172538  size 380  kind objc
; ======================================================================
  100172538  stp     x29, x30, [sp, #-0x10]!
  10017253c  mov     x29, sp
  100172540  stp     x20, x19, [sp, #-0x10]!
  100172544  stp     x22, x21, [sp, #-0x10]!
  100172548  stp     x24, x23, [sp, #-0x10]!
  10017254c  sub     sp, sp, #0x10
  100172550  mov     x20, x2
  100172554  mov     x21, x0
  100172558  mov     x0, x3
  10017255c  bl      _objc_retain
  100172560  mov     x19, x0
  100172564  adrp    x8, #0x100418000
  100172568  nop
  10017256c  ldr     x1, [x8, #0x800]
  100172570  bl      _objc_msgSend                            ; [arg2 value]
  100172574  mov     x29, x29
  100172578  bl      _objc_retainAutoreleasedReturnValue
  10017257c  mov     x22, x0
  100172580  adrp    x8, #0x10041d000
  100172584  nop
  100172588  ldr     x1, [x8, #0xbb8]
  10017258c  mov     x0, x21
  100172590  mov     x2, x22
  100172594  bl      _objc_msgSend                            ; [TAGValueEscapeUtil isValidStringType:[arg2 value]]
  100172598  mov     x23, x0
  10017259c  mov     x0, x22
  1001725a0  bl      _objc_release
  1001725a4  tbz     w23, #0, loc_1001725d4                   ; if (!([TAGValueEscapeUtil isValidStringType:[arg2 value]] & 1))
  1001725a8  cmp     x20, #0xc
  1001725ac  b.ne    loc_1001725f8                            ; if (arg1 != 12)
  1001725b0  adrp    x8, #0x10041d000
  1001725b4  nop
  1001725b8  ldr     x1, [x8, #0xbc0]
  1001725bc  mov     x0, x21
  1001725c0  mov     x2, x19
  1001725c4  bl      _objc_msgSend                            ; [TAGValueEscapeUtil escapeUri:arg2]
  1001725c8  mov     x29, x29
  1001725cc  bl      _objc_retainAutoreleasedReturnValue
  1001725d0  b       loc_100172658
loc_1001725d4:
  1001725d4  adrp    x8, #0x10041e000
  1001725d8  ldr     x0, [x8, #0x538]                         ; class TAGLog
  1001725dc  adrp    x8, #0x10041b000
  1001725e0  nop
  1001725e4  ldr     x1, [x8, #0xdd0]
  1001725e8  adrp    x2, #0x1003c8000
  1001725ec  add     x2, x2, #0xfb0                           ; @"Escaping can only be applied to strings."
  1001725f0  bl      _objc_msgSend                            ; [TAGLog error:@"Escaping can only be applied to strings."]
  1001725f4  b       loc_100172650
loc_1001725f8:
  1001725f8  adrp    x8, #0x10041e000
  1001725fc  ldr     x21, [x8, #0x538]                        ; class TAGLog
  100172600  adrp    x8, #0x10041d000
  100172604  ldr     x0, [x8, #0xf78]                         ; class NSString
  100172608  adrp    x8, #0x100416000
  10017260c  nop
  100172610  ldr     x1, [x8, #0xee8]
  100172614  str     x20, [sp]
  100172618  adrp    x2, #0x1003c8000
  10017261c  add     x2, x2, #0xfd0                           ; @"Unsupported Value Escaping: %ld"
  100172620  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Unsupported Value Escaping: %ld", arg1]
  100172624  mov     x29, x29
  100172628  bl      _objc_retainAutoreleasedReturnValue
  10017262c  mov     x20, x0
  100172630  adrp    x8, #0x10041b000
  100172634  nop
  100172638  ldr     x1, [x8, #0xdd0]
  10017263c  mov     x0, x21
  100172640  mov     x2, x20
  100172644  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Unsupported Value Escaping: %ld", arg1]]
  100172648  mov     x0, x20
  10017264c  bl      _objc_release
loc_100172650:
  100172650  mov     x0, x19
  100172654  bl      _objc_retain
loc_100172658:
  100172658  mov     x20, x0
  10017265c  mov     x0, x19
  100172660  bl      _objc_release
  100172664  mov     x0, x20
  100172668  sub     sp, x29, #0x30
  10017266c  ldp     x24, x23, [sp], #0x10
  100172670  ldp     x22, x21, [sp], #0x10
  100172674  ldp     x20, x19, [sp], #0x10
  100172678  ldp     x29, x30, [sp], #0x10
  10017267c  b       _objc_autoreleaseReturnValue
  100172680  mov     x21, x0
  100172684  mov     x0, x22
  100172688  bl      _objc_release
  10017268c  b       loc_1001726a4
  100172690  mov     x21, x0
  100172694  b       loc_1001726a4
  100172698  mov     x21, x0
  10017269c  mov     x0, x20
  1001726a0  bl      _objc_release
loc_1001726a4:
  1001726a4  mov     x0, x19
  1001726a8  bl      _objc_release
  1001726ac  mov     x0, x21
  1001726b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGValueEscapeUtil urlEncode:]
; address 0x1001726b4  size 48  kind objc
; ======================================================================
  1001726b4  stp     x29, x30, [sp, #-0x10]!
  1001726b8  mov     x29, sp
  1001726bc  mov     x0, #0
  1001726c0  adrp    x3, #0x1003c8000
  1001726c4  add     x3, x3, #0xff0                           ; @"!*'();:@&=+$,/?%#[]"
  1001726c8  mov     w4, #0x8000000
  1001726cc  movk    w4, #0x100
  1001726d0  mov     x1, x2
  1001726d4  mov     x2, #0
  1001726d8  bl      _CFURLCreateStringByAddingPercentEscapes ; CFURLCreateStringByAddingPercentEscapes(0, arg1, 0, @"!*'();:@&=+$,/?%#[]")
  1001726dc  ldp     x29, x30, [sp], #0x10
  1001726e0  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[TAGValueEscapeUtil urlDecode:]
; address 0x1001726e4  size 48  kind objc
; ======================================================================
  1001726e4  stp     x29, x30, [sp, #-0x10]!
  1001726e8  mov     x29, sp
  1001726ec  adrp    x8, #0x1003b9000
  1001726f0  add     x8, x8, #0x870                           ; @""
  1001726f4  mov     w3, #0x8000000
  1001726f8  movk    w3, #0x100
  1001726fc  mov     x0, #0
  100172700  mov     x1, x2
  100172704  mov     x2, x8
  100172708  bl      _CFURLCreateStringByReplacingPercentEscapesUsingEncoding ; CFURLCreateStringByReplacingPercentEscapesUsingEncoding(0, arg1, @"", 0x8000100)
  10017270c  ldp     x29, x30, [sp], #0x10
  100172710  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[TAGValueEscapeUtil escapeUri:]
; address 0x100172714  size 380  kind objc
; ======================================================================
  100172714  stp     x29, x30, [sp, #-0x10]!
  100172718  mov     x29, sp
  10017271c  stp     x20, x19, [sp, #-0x10]!
  100172720  stp     x22, x21, [sp, #-0x10]!
  100172724  stp     x24, x23, [sp, #-0x10]!
  100172728  mov     x20, x0
  10017272c  mov     x0, x2
  100172730  bl      _objc_retain
  100172734  mov     x19, x0
  100172738  adrp    x8, #0x100418000
  10017273c  nop
  100172740  ldr     x1, [x8, #0x800]
  100172744  bl      _objc_msgSend                            ; [arg1 value]
  100172748  mov     x29, x29
  10017274c  bl      _objc_retainAutoreleasedReturnValue
  100172750  mov     x21, x0
  100172754  adrp    x8, #0x10041b000
  100172758  nop
  10017275c  ldr     x1, [x8, #0x1f0]
  100172760  bl      _objc_msgSend                            ; [[arg1 value] string]
  100172764  mov     x29, x29
  100172768  bl      _objc_retainAutoreleasedReturnValue
  10017276c  mov     x22, x0
  100172770  adrp    x8, #0x10041b000
  100172774  nop
  100172778  ldr     x1, [x8, #0xb58]
  10017277c  mov     x0, x20
  100172780  mov     x2, x22
  100172784  bl      _objc_msgSend                            ; [TAGValueEscapeUtil urlEncode:[[arg1 value] string]]
  100172788  mov     x29, x29
  10017278c  bl      _objc_retainAutoreleasedReturnValue
  100172790  mov     x20, x0
  100172794  mov     x0, x22
  100172798  bl      _objc_release
  10017279c  mov     x0, x21
  1001727a0  bl      _objc_release
  1001727a4  adrp    x8, #0x10041e000
  1001727a8  ldr     x22, [x8, #0x9a8]                        ; class TAGPValueAndStatic
  1001727ac  nop
  1001727b0  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  1001727b4  adrp    x8, #0x10041d000
  1001727b8  nop
  1001727bc  ldr     x1, [x8, #0xc30]
  1001727c0  mov     x2, x20
  1001727c4  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[TAGValueEscapeUtil urlEncode:[[arg1 value] string]]]
  1001727c8  mov     x29, x29
  1001727cc  bl      _objc_retainAutoreleasedReturnValue
  1001727d0  mov     x21, x0
  1001727d4  adrp    x8, #0x10041d000
  1001727d8  nop
  1001727dc  ldr     x1, [x8, #0x8f0]
  1001727e0  mov     x0, x19
  1001727e4  bl      _objc_msgSend                            ; [arg1 isStatic]
  1001727e8  mov     x3, x0
  1001727ec  adrp    x8, #0x10041d000
  1001727f0  nop
  1001727f4  ldr     x1, [x8, #0x810]
  1001727f8  mov     x0, x22
  1001727fc  mov     x2, x21
  100172800  bl      _objc_msgSend                            ; [TAGPValueAndStatic valueWithValue:[TAGTypes objectToValue:[TAGValueEscapeUtil urlEncode:[[arg1 value] string]]] isStatic:[arg1 isStatic]]
  100172804  mov     x29, x29
  100172808  bl      _objc_retainAutoreleasedReturnValue
  10017280c  mov     x22, x0
  100172810  mov     x0, x21
  100172814  bl      _objc_release
  100172818  mov     x0, x20
  10017281c  bl      _objc_release
  100172820  mov     x0, x19
  100172824  bl      _objc_release
  100172828  mov     x0, x22
  10017282c  ldp     x24, x23, [sp], #0x10
  100172830  ldp     x22, x21, [sp], #0x10
  100172834  ldp     x20, x19, [sp], #0x10
  100172838  ldp     x29, x30, [sp], #0x10
  10017283c  b       _objc_autoreleaseReturnValue
  100172840  mov     x23, x0
  100172844  b       loc_100172880
  100172848  mov     x23, x0
  10017284c  b       loc_10017285c
  100172850  mov     x23, x0
  100172854  mov     x0, x22
  100172858  bl      _objc_release
loc_10017285c:
  10017285c  mov     x0, x21
  100172860  b       loc_10017287c
  100172864  mov     x23, x0
  100172868  b       loc_100172878
  10017286c  mov     x23, x0
  100172870  mov     x0, x21
  100172874  bl      _objc_release
loc_100172878:
  100172878  mov     x0, x20
loc_10017287c:
  10017287c  bl      _objc_release
loc_100172880:
  100172880  mov     x0, x19
  100172884  bl      _objc_release
  100172888  mov     x0, x23
  10017288c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGValueEscapeUtil isValidStringType:]
; address 0x100172890  size 148  kind objc
; ======================================================================
  100172890  stp     x29, x30, [sp, #-0x10]!
  100172894  mov     x29, sp
  100172898  stp     x20, x19, [sp, #-0x10]!
  10017289c  mov     x0, x2
  1001728a0  bl      _objc_retain
  1001728a4  mov     x19, x0
  1001728a8  adrp    x8, #0x10041d000
  1001728ac  nop
  1001728b0  ldr     x1, [x8, #0xbc8]
  1001728b4  bl      _objc_msgSend                            ; [arg1 hasType]
  1001728b8  cbz     w0, loc_100172908                        ; if ([arg1 hasType] == 0)
  1001728bc  adrp    x8, #0x100417000
  1001728c0  nop
  1001728c4  ldr     x1, [x8, #0x9a8]
  1001728c8  mov     x0, x19
  1001728cc  bl      _objc_msgSend                            ; [arg1 type]
  1001728d0  cmp     x0, #1
  1001728d4  b.ne    loc_100172908                            ; if ([arg1 type] != 1)
  1001728d8  adrp    x8, #0x10041d000
  1001728dc  nop
  1001728e0  ldr     x1, [x8, #0xbd0]
  1001728e4  mov     x0, x19
  1001728e8  bl      _objc_msgSend                            ; [arg1 hasString]
  1001728ec  mov     x20, x0
  1001728f0  b       loc_10017290c
  1001728f4  mov     x20, x0
  1001728f8  mov     x0, x19
  1001728fc  bl      _objc_release
  100172900  mov     x0, x20
  100172904  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_100172908:
  100172908  mov     w20, #0
loc_10017290c:
  10017290c  mov     x0, x19
  100172910  bl      _objc_release
  100172914  mov     x0, x20
  100172918  ldp     x20, x19, [sp], #0x10
  10017291c  ldp     x29, x30, [sp], #0x10
  100172920  ret
