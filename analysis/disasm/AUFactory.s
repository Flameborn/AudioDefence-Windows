// unit AUFactory — 6 functions
//   0x1000e31a0      20  +[AUFactory defaultACD]
//   0x1000e31b4      84  +[AUFactory remoteIO]
//   0x1000e3208      84  +[AUFactory mixer]
//   0x1000e325c      84  +[AUFactory mixer3d]
//   0x1000e32b0      84  +[AUFactory sampler]
//   0x1000e3304      12  +[AUFactory audioComponent:]

; ======================================================================
; +[AUFactory defaultACD]
; address 0x1000e31a0  size 20  kind objc
; ======================================================================
  1000e31a0  mov     w9, #0x61700000
  1000e31a4  movk    w9, #0x706c
  1000e31a8  str     x9, [x8, #8]
  1000e31ac  str     wzr, [x8, #0x10]
  1000e31b0  ret

; ======================================================================
; +[AUFactory remoteIO]
; address 0x1000e31b4  size 84  kind objc
; ======================================================================
  1000e31b4  stp     x20, x19, [sp, #-0x20]!
  1000e31b8  stp     x29, x30, [sp, #0x10]
  1000e31bc  add     x29, sp, #0x10
  1000e31c0  mov     x19, x8
  1000e31c4  cbz     x0, loc_1000e31e0                        ; if (AUFactory == 0)
  1000e31c8  adrp    x8, #0x10041b000
  1000e31cc  nop
  1000e31d0  ldr     x1, [x8, #0x398]
  1000e31d4  mov     x8, x19
  1000e31d8  bl      _objc_msgSend                            ; [AUFactory defaultACD]
  1000e31dc  b       loc_1000e31e8
loc_1000e31e0:
  1000e31e0  str     wzr, [x19, #0x10]
  1000e31e4  stp     xzr, xzr, [x19]
loc_1000e31e8:
  1000e31e8  mov     x8, #0x7269000000000000
  1000e31ec  movk    x8, #0x6f63, lsl #32
  1000e31f0  movk    x8, #0x6175, lsl #16
  1000e31f4  movk    x8, #0x6f75
  1000e31f8  str     x8, [x19]
  1000e31fc  ldp     x29, x30, [sp, #0x10]
  1000e3200  ldp     x20, x19, [sp], #0x20
  1000e3204  ret

; ======================================================================
; +[AUFactory mixer]
; address 0x1000e3208  size 84  kind objc
; ======================================================================
  1000e3208  stp     x20, x19, [sp, #-0x20]!
  1000e320c  stp     x29, x30, [sp, #0x10]
  1000e3210  add     x29, sp, #0x10
  1000e3214  mov     x19, x8
  1000e3218  cbz     x0, loc_1000e3234                        ; if (AUFactory == 0)
  1000e321c  adrp    x8, #0x10041b000
  1000e3220  nop
  1000e3224  ldr     x1, [x8, #0x398]
  1000e3228  mov     x8, x19
  1000e322c  bl      _objc_msgSend                            ; [AUFactory defaultACD]
  1000e3230  b       loc_1000e323c
loc_1000e3234:
  1000e3234  str     wzr, [x19, #0x10]
  1000e3238  stp     xzr, xzr, [x19]
loc_1000e323c:
  1000e323c  mov     x8, #0x6d63000000000000
  1000e3240  movk    x8, #0x6d78, lsl #32
  1000e3244  movk    x8, #0x6175, lsl #16
  1000e3248  movk    x8, #0x6d78
  1000e324c  str     x8, [x19]
  1000e3250  ldp     x29, x30, [sp, #0x10]
  1000e3254  ldp     x20, x19, [sp], #0x20
  1000e3258  ret

; ======================================================================
; +[AUFactory mixer3d]
; address 0x1000e325c  size 84  kind objc
; ======================================================================
  1000e325c  stp     x20, x19, [sp, #-0x20]!
  1000e3260  stp     x29, x30, [sp, #0x10]
  1000e3264  add     x29, sp, #0x10
  1000e3268  mov     x19, x8
  1000e326c  cbz     x0, loc_1000e3288                        ; if (AUFactory == 0)
  1000e3270  adrp    x8, #0x10041b000
  1000e3274  nop
  1000e3278  ldr     x1, [x8, #0x398]
  1000e327c  mov     x8, x19
  1000e3280  bl      _objc_msgSend                            ; [AUFactory defaultACD]
  1000e3284  b       loc_1000e3290
loc_1000e3288:
  1000e3288  str     wzr, [x19, #0x10]
  1000e328c  stp     xzr, xzr, [x19]
loc_1000e3290:
  1000e3290  mov     x8, #0x3364000000000000
  1000e3294  movk    x8, #0x656d, lsl #32
  1000e3298  movk    x8, #0x6175, lsl #16
  1000e329c  movk    x8, #0x6d78
  1000e32a0  str     x8, [x19]
  1000e32a4  ldp     x29, x30, [sp, #0x10]
  1000e32a8  ldp     x20, x19, [sp], #0x20
  1000e32ac  ret

; ======================================================================
; +[AUFactory sampler]
; address 0x1000e32b0  size 84  kind objc
; ======================================================================
  1000e32b0  stp     x20, x19, [sp, #-0x20]!
  1000e32b4  stp     x29, x30, [sp, #0x10]
  1000e32b8  add     x29, sp, #0x10
  1000e32bc  mov     x19, x8
  1000e32c0  cbz     x0, loc_1000e32dc                        ; if (AUFactory == 0)
  1000e32c4  adrp    x8, #0x10041b000
  1000e32c8  nop
  1000e32cc  ldr     x1, [x8, #0x398]
  1000e32d0  mov     x8, x19
  1000e32d4  bl      _objc_msgSend                            ; [AUFactory defaultACD]
  1000e32d8  b       loc_1000e32e4
loc_1000e32dc:
  1000e32dc  str     wzr, [x19, #0x10]
  1000e32e0  stp     xzr, xzr, [x19]
loc_1000e32e4:
  1000e32e4  mov     x8, #0x7361000000000000
  1000e32e8  movk    x8, #0x6d70, lsl #32
  1000e32ec  movk    x8, #0x6175, lsl #16
  1000e32f0  movk    x8, #0x6d75
  1000e32f4  str     x8, [x19]
  1000e32f8  ldp     x29, x30, [sp, #0x10]
  1000e32fc  ldp     x20, x19, [sp], #0x20
  1000e3300  ret

; ======================================================================
; +[AUFactory audioComponent:]
; address 0x1000e3304  size 12  kind objc
; ======================================================================
  1000e3304  mov     x0, #0
  1000e3308  mov     x1, x2
  1000e330c  b       _AudioComponentFindNext                  ; AudioComponentFindNext(0, arg1, arg1)
