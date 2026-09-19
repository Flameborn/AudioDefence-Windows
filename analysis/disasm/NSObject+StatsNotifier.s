// unit NSObject+StatsNotifier — 1 functions
//   0x1000bda04     760  -[NSObject(StatsNotifier) notifyStatsSystemWithNotificationWithName:AndData:]

; ======================================================================
; -[NSObject(StatsNotifier) notifyStatsSystemWithNotificationWithName:AndData:]
; address 0x1000bda04  size 760  kind objc
; ======================================================================
  1000bda04  stp     x26, x25, [sp, #-0x50]!
  1000bda08  stp     x24, x23, [sp, #0x10]
  1000bda0c  stp     x22, x21, [sp, #0x20]
  1000bda10  stp     x20, x19, [sp, #0x30]
  1000bda14  stp     x29, x30, [sp, #0x40]
  1000bda18  add     x29, sp, #0x40
  1000bda1c  sub     sp, sp, #0x20
  1000bda20  mov     x20, x3
  1000bda24  adrp    x25, #0x1003b0000
  1000bda28  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1000bda2c  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  1000bda30  str     x25, [sp, #0x18]
  1000bda34  mov     x0, x2
  1000bda38  bl      _objc_retain
  1000bda3c  mov     x19, x0
  1000bda40  mov     x0, x20
  1000bda44  bl      _objc_retain
  1000bda48  mov     x20, x0
  1000bda4c  adrp    x8, #0x10041d000
  1000bda50  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000bda54  adrp    x8, #0x100416000
  1000bda58  nop
  1000bda5c  ldr     x1, [x8, #0xac8]
  1000bda60  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000bda64  adrp    x8, #0x100416000
  1000bda68  nop
  1000bda6c  ldr     x1, [x8, #0xab8]
  1000bda70  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000bda74  mov     x21, x0
  1000bda78  cbz     x20, loc_1000bdba8                       ; if (arg2 == 0)
  1000bda7c  adrp    x8, #0x100416000
  1000bda80  nop
  1000bda84  ldr     x22, [x8, #0xd90]
  1000bda88  mov     x0, x21
  1000bda8c  mov     x1, x22
  1000bda90  mov     x2, x20
  1000bda94  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:arg2]
  1000bda98  mov     x23, #0
  1000bda9c  add     x8, x29, #0x10
  1000bdaa0  str     x8, [sp, #8]
loc_1000bdaa4:
  1000bdaa4  mov     x24, x23
  1000bdaa8  ldr     x8, [sp, #8]
  1000bdaac  add     x9, x8, #8
  1000bdab0  str     x9, [sp, #8]
  1000bdab4  ldr     x0, [x8]
  1000bdab8  bl      _objc_retain
  1000bdabc  mov     x23, x0
  1000bdac0  mov     x0, x24
  1000bdac4  bl      _objc_release
  1000bdac8  cbz     x23, loc_1000bdb10                       ; if (x23 == 0)
  1000bdacc  mov     x0, x21
  1000bdad0  mov     x1, x22
  1000bdad4  mov     x2, x23
  1000bdad8  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:x2]
  1000bdadc  b       loc_1000bdaa4
  1000bdae0  mov     x8, x23
  1000bdae4  mov     x23, x0
  1000bdae8  mov     x0, x8
  1000bdaec  bl      _objc_release
loc_1000bdaf0:
  1000bdaf0  mov     x0, x21
  1000bdaf4  bl      _objc_release
loc_1000bdaf8:
  1000bdaf8  mov     x0, x20
  1000bdafc  bl      _objc_release
  1000bdb00  mov     x0, x19
  1000bdb04  bl      _objc_release
  1000bdb08  mov     x0, x23
  1000bdb0c  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000bdb10:
  1000bdb10  adrp    x8, #0x100419000
  1000bdb14  nop
  1000bdb18  ldr     x1, [x8, #0xc08]
  1000bdb1c  mov     x0, x21
  1000bdb20  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] copy]
  1000bdb24  mov     x22, x0
  1000bdb28  adrp    x8, #0x10041d000
  1000bdb2c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bdb30  adrp    x8, #0x100419000
  1000bdb34  nop
  1000bdb38  ldr     x1, [x8, #0x2b8]
  1000bdb3c  adrp    x3, #0x1003bd000
  1000bdb40  add     x3, x3, #0xaf0                           ; @"PARAM_ARRAY"
  1000bdb44  mov     x2, x22
  1000bdb48  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObject:[[[NSMutableArray alloc] init] copy] forKey:@"PARAM_ARRAY"]
  1000bdb4c  mov     x29, x29
  1000bdb50  bl      _objc_retainAutoreleasedReturnValue
  1000bdb54  mov     x23, x0
  1000bdb58  adrp    x8, #0x10041d000
  1000bdb5c  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  1000bdb60  adrp    x8, #0x100416000
  1000bdb64  nop
  1000bdb68  ldr     x1, [x8, #0xe88]
  1000bdb6c  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  1000bdb70  mov     x29, x29
  1000bdb74  bl      _objc_retainAutoreleasedReturnValue
  1000bdb78  mov     x24, x0
  1000bdb7c  adrp    x8, #0x100417000
  1000bdb80  nop
  1000bdb84  ldr     x1, [x8, #0xf98]
  1000bdb88  mov     x3, #0
  1000bdb8c  mov     x2, x19
  1000bdb90  mov     x4, x23
  1000bdb94  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:arg1 object:0 userInfo:[NSDictionary dictionaryWithObject:[[[NSMutableArray alloc] init] copy] forKey:@"PARAM_ARRAY"]]
  1000bdb98  mov     x0, x24
  1000bdb9c  bl      _objc_release
  1000bdba0  mov     x0, x23
  1000bdba4  b       loc_1000bdc4c
loc_1000bdba8:
  1000bdba8  adrp    x8, #0x10041d000
  1000bdbac  ldr     x22, [x8, #0xef8]                        ; class NSDictionary
  1000bdbb0  adrp    x8, #0x1003b9000
  1000bdbb4  add     x8, x8, #0x870                           ; @""
  1000bdbb8  str     x8, [sp, #0x10]
  1000bdbbc  adrp    x8, #0x10041d000
  1000bdbc0  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000bdbc4  adrp    x8, #0x100417000
  1000bdbc8  nop
  1000bdbcc  ldr     x1, [x8, #0x3c8]
  1000bdbd0  add     x2, sp, #0x10
  1000bdbd4  mov     w3, #1
  1000bdbd8  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x10] count:1]
  1000bdbdc  mov     x2, x0
  1000bdbe0  adrp    x8, #0x100419000
  1000bdbe4  nop
  1000bdbe8  ldr     x1, [x8, #0x2b8]
  1000bdbec  adrp    x3, #0x1003bd000
  1000bdbf0  add     x3, x3, #0xaf0                           ; @"PARAM_ARRAY"
  1000bdbf4  mov     x0, x22
  1000bdbf8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObject:[NSArray arrayWithObjects:&sp[0x10] count:1] forKey:@"PARAM_ARRAY"]
  1000bdbfc  mov     x29, x29
  1000bdc00  bl      _objc_retainAutoreleasedReturnValue
  1000bdc04  mov     x22, x0
  1000bdc08  adrp    x8, #0x10041d000
  1000bdc0c  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  1000bdc10  adrp    x8, #0x100416000
  1000bdc14  nop
  1000bdc18  ldr     x1, [x8, #0xe88]
  1000bdc1c  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  1000bdc20  mov     x29, x29
  1000bdc24  bl      _objc_retainAutoreleasedReturnValue
  1000bdc28  mov     x24, x0
  1000bdc2c  adrp    x8, #0x100417000
  1000bdc30  nop
  1000bdc34  ldr     x1, [x8, #0xf98]
  1000bdc38  mov     x3, #0
  1000bdc3c  mov     x2, x19
  1000bdc40  mov     x4, x22
  1000bdc44  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:arg1 object:0 userInfo:[NSDictionary dictionaryWithObject:[NSArray arrayWithObjects:&sp[0x10] count:1] forKey:@"PARAM_ARRAY"]]
  1000bdc48  mov     x0, x24
loc_1000bdc4c:
  1000bdc4c  bl      _objc_release
  1000bdc50  mov     x0, x22
  1000bdc54  bl      _objc_release
  1000bdc58  mov     x0, x21
  1000bdc5c  bl      _objc_release
  1000bdc60  mov     x0, x20
  1000bdc64  bl      _objc_release
  1000bdc68  mov     x0, x19
  1000bdc6c  bl      _objc_release
  1000bdc70  ldr     x8, [sp, #0x18]
  1000bdc74  sub     x8, x25, x8
  1000bdc78  cbnz    x8, loc_1000bdc98                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000bdc7c  sub     sp, x29, #0x40
  1000bdc80  ldp     x29, x30, [sp, #0x40]
  1000bdc84  ldp     x20, x19, [sp, #0x30]
  1000bdc88  ldp     x22, x21, [sp, #0x20]
  1000bdc8c  ldp     x24, x23, [sp, #0x10]
  1000bdc90  ldp     x26, x25, [sp], #0x50
  1000bdc94  ret
loc_1000bdc98:
  1000bdc98  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000bdc9c  mov     x23, x0
  1000bdca0  b       loc_1000bdaf8
  1000bdca4  b       loc_1000bdcd4
  1000bdca8  mov     x23, x0
  1000bdcac  b       loc_1000bdcf0
  1000bdcb0  str     x23, [sp]
  1000bdcb4  mov     x23, x0
  1000bdcb8  b       loc_1000bdccc
  1000bdcbc  str     x23, [sp]
  1000bdcc0  mov     x23, x0
  1000bdcc4  mov     x0, x24
  1000bdcc8  bl      _objc_release
loc_1000bdccc:
  1000bdccc  ldr     x0, [sp]
  1000bdcd0  b       loc_1000bdcec
loc_1000bdcd4:
  1000bdcd4  mov     x23, x0
  1000bdcd8  b       loc_1000bdaf0
  1000bdcdc  mov     x23, x0
  1000bdce0  b       loc_1000bdcf0
  1000bdce4  mov     x23, x0
  1000bdce8  mov     x0, x24
loc_1000bdcec:
  1000bdcec  bl      _objc_release
loc_1000bdcf0:
  1000bdcf0  mov     x0, x22
  1000bdcf4  bl      _objc_release
  1000bdcf8  b       loc_1000bdaf0
