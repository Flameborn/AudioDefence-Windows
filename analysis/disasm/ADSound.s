// unit ADSound — 43 functions
//   0x1000b2d68    2092  -[ADSound initWithDictionary:]
//   0x1000b3594     896  -[ADSound initSound]
//   0x1000b3914    1848  -[ADSound update:]
//   0x1000b404c      20  -[ADSound skip]
//   0x1000b4060     268  -[ADSound finishSoundWithSkip:]
//   0x1000b416c     716  -[ADSound play]
//   0x1000b4438     184  -[ADSound stopWithNoCallback]
//   0x1000b44f0     208  -[ADSound setState:]
//   0x1000b45c0     180  -[ADSound pause]
//   0x1000b4674     120  -[ADSound resume]
//   0x1000b46ec      16  -[ADSound speed]
//   0x1000b46fc      16  -[ADSound setSpeed:]
//   0x1000b470c      16  -[ADSound name]
//   0x1000b471c      56  -[ADSound setName:]
//   0x1000b4754      16  -[ADSound spawn_time]
//   0x1000b4764      16  -[ADSound setSpawn_time:]
//   0x1000b4774      16  -[ADSound gain]
//   0x1000b4784      16  -[ADSound setGain:]
//   0x1000b4794      20  -[ADSound position]
//   0x1000b47a8      20  -[ADSound setPosition:]
//   0x1000b47bc      20  -[ADSound finalPosition]
//   0x1000b47d0      20  -[ADSound setFinalPosition:]
//   0x1000b47e4      20  -[ADSound orientation]
//   0x1000b47f8      20  -[ADSound setOrientation:]
//   0x1000b480c      20  -[ADSound timeInState]
//   0x1000b4820      20  -[ADSound setTimeInState:]
//   0x1000b4834      16  -[ADSound spawn_after]
//   0x1000b4844      56  -[ADSound setSpawn_after:]
//   0x1000b487c      16  -[ADSound state]
//   0x1000b488c      16  -[ADSound loop]
//   0x1000b489c      16  -[ADSound setLoop:]
//   0x1000b48ac      16  -[ADSound blocker]
//   0x1000b48bc      16  -[ADSound setBlocker:]
//   0x1000b48cc      16  -[ADSound stopsOtherSounds]
//   0x1000b48dc      16  -[ADSound setStopsOtherSounds:]
//   0x1000b48ec      16  -[ADSound sound]
//   0x1000b48fc      56  -[ADSound setSound:]
//   0x1000b4934      16  -[ADSound skippable]
//   0x1000b4944      16  -[ADSound setSkippable:]
//   0x1000b4954      16  -[ADSound startMusicBeforeEnd]
//   0x1000b4964      16  -[ADSound setStartMusicBeforeEnd:]
//   0x1000b4974     104  -[ADSound .cxx_destruct]
//   0x1000b49dc       4  -[ADSound .cxx_construct]

; ======================================================================
; -[ADSound initWithDictionary:]
; address 0x1000b2d68  size 2092  kind objc
; ======================================================================
  1000b2d68  stp     d11, d10, [sp, #-0x70]!
  1000b2d6c  stp     d9, d8, [sp, #0x10]
  1000b2d70  stp     x26, x25, [sp, #0x20]
  1000b2d74  stp     x24, x23, [sp, #0x30]
  1000b2d78  stp     x22, x21, [sp, #0x40]
  1000b2d7c  stp     x20, x19, [sp, #0x50]
  1000b2d80  stp     x29, x30, [sp, #0x60]
  1000b2d84  add     x29, sp, #0x60
  1000b2d88  sub     sp, sp, #0x10
  1000b2d8c  mov     x20, x0
  1000b2d90  mov     x0, x2
  1000b2d94  bl      _objc_retain
  1000b2d98  mov     x19, x0
  1000b2d9c  str     x20, [sp]
  1000b2da0  adrp    x8, #0x10041e000
  1000b2da4  ldr     x8, [x8, #0xf50]
  1000b2da8  str     x8, [sp, #8]
  1000b2dac  adrp    x8, #0x100416000
  1000b2db0  nop
  1000b2db4  ldr     x1, [x8, #0xab8]
  1000b2db8  mov     x23, #0
  1000b2dbc  mov     x0, sp
  1000b2dc0  bl      _objc_msgSendSuper2                      ; [super init]
  1000b2dc4  mov     x20, x0
  1000b2dc8  cbz     x20, loc_1000b34b8                       ; if (self == 0)
  1000b2dcc  mov     x23, x20
  1000b2dd0  adrp    x8, #0x100420000
  1000b2dd4  ldrsw   x8, [x8, #0x1f0]                         ; ivar offset ADSound.squaredDistanceFromFinalPosition (+0x10)
  1000b2dd8  mov     w9, #0x7f800000
  1000b2ddc  str     w9, [x20, x8]                            ; self->squaredDistanceFromFinalPosition = 0x7f800000
  1000b2de0  adrp    x8, #0x100417000
  1000b2de4  nop
  1000b2de8  ldr     x21, [x8, #0x40]
  1000b2dec  adrp    x2, #0x1003b9000
  1000b2df0  add     x2, x2, #0xdb0                           ; @"name"
  1000b2df4  mov     x0, x19
  1000b2df8  mov     x1, x21
  1000b2dfc  bl      _objc_msgSend                            ; [arg1 objectForKey:@"name"]
  1000b2e00  mov     x29, x29
  1000b2e04  bl      _objc_retainAutoreleasedReturnValue
  1000b2e08  mov     x22, x0
  1000b2e0c  adrp    x8, #0x100417000
  1000b2e10  nop
  1000b2e14  ldr     x1, [x8, #0x428]
  1000b2e18  mov     x0, x20
  1000b2e1c  mov     x2, x22
  1000b2e20  bl      _objc_msgSend                            ; [self setName:[arg1 objectForKey:@"name"]]
  1000b2e24  mov     x23, x20
  1000b2e28  mov     x0, x22
  1000b2e2c  bl      _objc_release
  1000b2e30  adrp    x2, #0x1003c0000
  1000b2e34  add     x2, x2, #0x750                           ; @"spawn_after"
  1000b2e38  mov     x0, x19
  1000b2e3c  mov     x1, x21
  1000b2e40  bl      _objc_msgSend                            ; [arg1 objectForKey:@"spawn_after"]
  1000b2e44  mov     x29, x29
  1000b2e48  bl      _objc_retainAutoreleasedReturnValue
  1000b2e4c  mov     x22, x0
  1000b2e50  adrp    x8, #0x10041a000
  1000b2e54  nop
  1000b2e58  ldr     x1, [x8, #0x2a0]
  1000b2e5c  mov     x0, x20
  1000b2e60  mov     x2, x22
  1000b2e64  bl      _objc_msgSend                            ; [self setSpawn_after:[arg1 objectForKey:@"spawn_after"]]
  1000b2e68  mov     x23, x20
  1000b2e6c  mov     x0, x22
  1000b2e70  bl      _objc_release
  1000b2e74  adrp    x2, #0x1003c0000
  1000b2e78  add     x2, x2, #0x6d0                           ; @"spawn_time"
  1000b2e7c  mov     x0, x19
  1000b2e80  mov     x1, x21
  1000b2e84  bl      _objc_msgSend                            ; [arg1 objectForKey:@"spawn_time"]
  1000b2e88  mov     x29, x29
  1000b2e8c  bl      _objc_retainAutoreleasedReturnValue
  1000b2e90  mov     x24, x0
  1000b2e94  adrp    x8, #0x100417000
  1000b2e98  nop
  1000b2e9c  ldr     x22, [x8, #0x48]
  1000b2ea0  mov     x1, x22
  1000b2ea4  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"spawn_time"] floatValue]
  1000b2ea8  adrp    x8, #0x100418000
  1000b2eac  nop
  1000b2eb0  ldr     x1, [x8, #0xb98]
  1000b2eb4  mov     x0, x20
  1000b2eb8  bl      _objc_msgSend                            ; [self setSpawn_time:[[arg1 objectForKey:@"spawn_time"] floatValue]]
  1000b2ebc  mov     x23, x20
  1000b2ec0  mov     x0, x24
  1000b2ec4  bl      _objc_release
  1000b2ec8  adrp    x2, #0x1003be000
  1000b2ecc  add     x2, x2, #0x10                            ; @"speed"
  1000b2ed0  mov     x0, x19
  1000b2ed4  mov     x1, x21
  1000b2ed8  bl      _objc_msgSend                            ; [arg1 objectForKey:@"speed"]
  1000b2edc  mov     x29, x29
  1000b2ee0  bl      _objc_retainAutoreleasedReturnValue
  1000b2ee4  mov     x25, x0
  1000b2ee8  mov     x1, x22
  1000b2eec  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"speed"] floatValue]
  1000b2ef0  adrp    x8, #0x100417000
  1000b2ef4  nop
  1000b2ef8  ldr     x24, [x8, #0x8d0]
  1000b2efc  mov     x0, x20
  1000b2f00  mov     x1, x24
  1000b2f04  bl      _objc_msgSend                            ; [self setSpeed:[[arg1 objectForKey:@"speed"] floatValue]]
  1000b2f08  mov     x23, x20
  1000b2f0c  mov     x0, x25
  1000b2f10  bl      _objc_release
  1000b2f14  adrp    x2, #0x1003c1000
  1000b2f18  add     x2, x2, #0x2b0                           ; @"gain"
  1000b2f1c  mov     x0, x19
  1000b2f20  mov     x1, x21
  1000b2f24  bl      _objc_msgSend                            ; [arg1 objectForKey:@"gain"]
  1000b2f28  mov     x29, x29
  1000b2f2c  bl      _objc_retainAutoreleasedReturnValue
  1000b2f30  mov     x25, x0
  1000b2f34  mov     x1, x22
  1000b2f38  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"gain"] floatValue]
  1000b2f3c  adrp    x8, #0x100416000
  1000b2f40  nop
  1000b2f44  ldr     x1, [x8, #0xcb0]
  1000b2f48  mov     x0, x20
  1000b2f4c  bl      _objc_msgSend                            ; [self setGain:[[arg1 objectForKey:@"gain"] floatValue]]
  1000b2f50  mov     x23, x20
  1000b2f54  mov     x0, x25
  1000b2f58  bl      _objc_release
  1000b2f5c  adrp    x2, #0x1003bd000
  1000b2f60  add     x2, x2, #0x570                           ; @"loop"
  1000b2f64  mov     x0, x19
  1000b2f68  mov     x1, x21
  1000b2f6c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"loop"]
  1000b2f70  mov     x29, x29
  1000b2f74  bl      _objc_retainAutoreleasedReturnValue
  1000b2f78  mov     x26, x0
  1000b2f7c  adrp    x8, #0x100417000
  1000b2f80  nop
  1000b2f84  ldr     x25, [x8, #0xd8]
  1000b2f88  mov     x1, x25
  1000b2f8c  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"loop"] boolValue]
  1000b2f90  mov     x2, x0
  1000b2f94  adrp    x8, #0x10041a000
  1000b2f98  nop
  1000b2f9c  ldr     x1, [x8, #0x6a0]
  1000b2fa0  mov     x0, x20
  1000b2fa4  bl      _objc_msgSend                            ; [self setLoop:[[arg1 objectForKey:@"loop"] boolValue]]
  1000b2fa8  mov     x23, x20
  1000b2fac  mov     x0, x26
  1000b2fb0  bl      _objc_release
  1000b2fb4  adrp    x2, #0x1003c1000
  1000b2fb8  add     x2, x2, #0x2d0                           ; @"blocker"
  1000b2fbc  mov     x0, x19
  1000b2fc0  mov     x1, x21
  1000b2fc4  bl      _objc_msgSend                            ; [arg1 objectForKey:@"blocker"]
  1000b2fc8  mov     x29, x29
  1000b2fcc  bl      _objc_retainAutoreleasedReturnValue
  1000b2fd0  mov     x26, x0
  1000b2fd4  mov     x1, x25
  1000b2fd8  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"blocker"] boolValue]
  1000b2fdc  mov     x2, x0
  1000b2fe0  adrp    x8, #0x10041a000
  1000b2fe4  nop
  1000b2fe8  ldr     x1, [x8, #0x6a8]
  1000b2fec  mov     x0, x20
  1000b2ff0  bl      _objc_msgSend                            ; [self setBlocker:[[arg1 objectForKey:@"blocker"] boolValue]]
  1000b2ff4  mov     x23, x20
  1000b2ff8  mov     x0, x26
  1000b2ffc  bl      _objc_release
  1000b3000  adrp    x2, #0x1003c1000
  1000b3004  add     x2, x2, #0x2f0                           ; @"skippable"
  1000b3008  mov     x0, x19
  1000b300c  mov     x1, x21
  1000b3010  bl      _objc_msgSend                            ; [arg1 objectForKey:@"skippable"]
  1000b3014  mov     x29, x29
  1000b3018  bl      _objc_retainAutoreleasedReturnValue
  1000b301c  mov     x26, x0
  1000b3020  mov     x1, x25
  1000b3024  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"skippable"] boolValue]
  1000b3028  mov     x2, x0
  1000b302c  adrp    x8, #0x10041a000
  1000b3030  nop
  1000b3034  ldr     x1, [x8, #0x6b0]
  1000b3038  mov     x0, x20
  1000b303c  bl      _objc_msgSend                            ; [self setSkippable:[[arg1 objectForKey:@"skippable"] boolValue]]
  1000b3040  mov     x23, x20
  1000b3044  mov     x0, x26
  1000b3048  bl      _objc_release
  1000b304c  adrp    x2, #0x1003c1000
  1000b3050  add     x2, x2, #0x310                           ; @"stopsOtherSounds"
  1000b3054  mov     x0, x19
  1000b3058  mov     x1, x21
  1000b305c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"stopsOtherSounds"]
  1000b3060  mov     x29, x29
  1000b3064  bl      _objc_retainAutoreleasedReturnValue
  1000b3068  mov     x26, x0
  1000b306c  mov     x1, x25
  1000b3070  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"stopsOtherSounds"] boolValue]
  1000b3074  mov     x2, x0
  1000b3078  adrp    x8, #0x10041a000
  1000b307c  nop
  1000b3080  ldr     x1, [x8, #0x6b8]
  1000b3084  mov     x0, x20
  1000b3088  bl      _objc_msgSend                            ; [self setStopsOtherSounds:[[arg1 objectForKey:@"stopsOtherSounds"] boolValue]]
  1000b308c  mov     x23, x20
  1000b3090  mov     x0, x26
  1000b3094  bl      _objc_release
  1000b3098  adrp    x2, #0x1003c1000
  1000b309c  add     x2, x2, #0x330                           ; @"startMusicBeforeEnd"
  1000b30a0  mov     x0, x19
  1000b30a4  mov     x1, x21
  1000b30a8  bl      _objc_msgSend                            ; [arg1 objectForKey:@"startMusicBeforeEnd"]
  1000b30ac  mov     x29, x29
  1000b30b0  bl      _objc_retainAutoreleasedReturnValue
  1000b30b4  mov     x25, x0
  1000b30b8  mov     x1, x22
  1000b30bc  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"startMusicBeforeEnd"] floatValue]
  1000b30c0  adrp    x8, #0x10041a000
  1000b30c4  nop
  1000b30c8  ldr     x1, [x8, #0x6c0]
  1000b30cc  mov     x0, x20
  1000b30d0  bl      _objc_msgSend                            ; [self setStartMusicBeforeEnd:[[arg1 objectForKey:@"startMusicBeforeEnd"] floatValue]]
  1000b30d4  mov     x23, x20
  1000b30d8  mov     x0, x25
  1000b30dc  bl      _objc_release
  1000b30e0  fmov    s0, #2.00000000
  1000b30e4  mov     x0, x20
  1000b30e8  mov     x1, x24
  1000b30ec  bl      _objc_msgSend                            ; [self setSpeed:2]
  1000b30f0  mov     x23, x20
  1000b30f4  adrp    x2, #0x1003b9000
  1000b30f8  add     x2, x2, #0xc70                           ; @"spawn_distance"
  1000b30fc  mov     x0, x19
  1000b3100  mov     x1, x21
  1000b3104  bl      _objc_msgSend                            ; [arg1 objectForKey:@"spawn_distance"]
  1000b3108  mov     x29, x29
  1000b310c  bl      _objc_retainAutoreleasedReturnValue
  1000b3110  mov     x23, x0
  1000b3114  cbz     x23, loc_1000b320c                       ; if ([arg1 objectForKey:@"spawn_distance"] == 0)
  1000b3118  adrp    x2, #0x1003b9000
  1000b311c  add     x2, x2, #0xc50                           ; @"spawn_angle"
  1000b3120  mov     x0, x19
  1000b3124  mov     x1, x21
  1000b3128  bl      _objc_msgSend                            ; [arg1 objectForKey:@"spawn_angle"]
  1000b312c  mov     x29, x29
  1000b3130  bl      _objc_retainAutoreleasedReturnValue
  1000b3134  mov     x24, x0
  1000b3138  bl      _objc_release
  1000b313c  mov     x0, x23
  1000b3140  bl      _objc_release
  1000b3144  cbz     x24, loc_1000b320c                       ; if ([arg1 objectForKey:@"spawn_angle"] == 0)
  1000b3148  mov     x23, x20
  1000b314c  adrp    x2, #0x1003b9000
  1000b3150  add     x2, x2, #0xc50                           ; @"spawn_angle"
  1000b3154  mov     x0, x19
  1000b3158  mov     x1, x21
  1000b315c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"spawn_angle"]
  1000b3160  mov     x29, x29
  1000b3164  bl      _objc_retainAutoreleasedReturnValue
  1000b3168  mov     x24, x0
  1000b316c  mov     x1, x22
  1000b3170  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"spawn_angle"] floatValue]
  1000b3174  mov     v8.16b, v0.16b
  1000b3178  mov     x23, x20
  1000b317c  mov     x0, x24
  1000b3180  bl      _objc_release
  1000b3184  adrp    x2, #0x1003b9000
  1000b3188  add     x2, x2, #0xc70                           ; @"spawn_distance"
  1000b318c  mov     x0, x19
  1000b3190  mov     x1, x21
  1000b3194  bl      _objc_msgSend                            ; [arg1 objectForKey:@"spawn_distance"]
  1000b3198  mov     x29, x29
  1000b319c  bl      _objc_retainAutoreleasedReturnValue
  1000b31a0  mov     x24, x0
  1000b31a4  mov     x1, x22
  1000b31a8  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"spawn_distance"] floatValue]
  1000b31ac  mov     v9.16b, v0.16b
  1000b31b0  fcvt    d0, s8
  1000b31b4  nop
  1000b31b8  ldr     d1, #0x1001819e8                         ; d1 = 3.14159265
  1000b31bc  fmul    d0, d0, d1
  1000b31c0  nop
  1000b31c4  ldr     d1, #0x1001819f0                         ; d1 = 180.0
  1000b31c8  fdiv    d0, d0, d1
  1000b31cc  fcvt    s8, d0
  1000b31d0  mov     x23, x20
  1000b31d4  mov     x0, x24
  1000b31d8  bl      _objc_release
  1000b31dc  mov     v0.16b, v8.16b
  1000b31e0  bl      ___sincosf_stret                         ; d0 = sin((([[arg1 objectForKey:@"spawn_angle"] floatValue] * 3.14159) / 180)), d1 = cos((([[arg1 objectForKey:@"spawn_angle"] floatValue] * 3.14159) / 180))
  1000b31e4  fmul    s0, s9, s0                               ; t1 = ([[arg1 objectForKey:@"spawn_distance"] floatValue] * sin((([[arg1 objectForKey:@"spawn_angle"] floatValue] * 3.14159) / 180)))
  1000b31e8  fcvt    d0, s0
  1000b31ec  fmul    s1, s9, s1                               ; t2 = ([[arg1 objectForKey:@"spawn_distance"] floatValue] * cos((([[arg1 objectForKey:@"spawn_angle"] floatValue] * 3.14159) / 180)))
  1000b31f0  fcvt    d1, s1
  1000b31f4  adrp    x8, #0x100417000
  1000b31f8  nop
  1000b31fc  ldr     x1, [x8, #0x20]
  1000b3200  mov     x0, x20
  1000b3204  bl      _objc_msgSend                            ; [self setPosition:{t1, t2}]
  1000b3208  b       loc_1000b3398
loc_1000b320c:
  1000b320c  mov     x23, x20
  1000b3210  adrp    x2, #0x1003c1000
  1000b3214  add     x2, x2, #0x350                           ; @"position"
  1000b3218  mov     x0, x19
  1000b321c  mov     x1, x21
  1000b3220  bl      _objc_msgSend                            ; [arg1 objectForKey:@"position"]
  1000b3224  mov     x29, x29
  1000b3228  bl      _objc_retainAutoreleasedReturnValue
  1000b322c  mov     x22, x0
  1000b3230  bl      _objc_release
  1000b3234  cbz     x22, loc_1000b3398                       ; if ([arg1 objectForKey:@"position"] == 0)
  1000b3238  mov     x23, x20
  1000b323c  adrp    x2, #0x1003c1000
  1000b3240  add     x2, x2, #0x350                           ; @"position"
  1000b3244  mov     x0, x19
  1000b3248  mov     x1, x21
  1000b324c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"position"]
  1000b3250  mov     x29, x29
  1000b3254  bl      _objc_retainAutoreleasedReturnValue
  1000b3258  mov     x22, x0
  1000b325c  bl      _CGPointFromString                       ; CGPointFromString([arg1 objectForKey:@"position"])
  1000b3260  adrp    x8, #0x100417000
  1000b3264  nop
  1000b3268  ldr     x1, [x8, #0x20]
  1000b326c  mov     x0, x20
  1000b3270  bl      _objc_msgSend                            ; [self setPosition:{d0, d1}]
  1000b3274  mov     x23, x20
  1000b3278  mov     x0, x22
  1000b327c  bl      _objc_release
  1000b3280  adrp    x2, #0x1003c1000
  1000b3284  add     x2, x2, #0x370                           ; @"finalPosition"
  1000b3288  mov     x0, x19
  1000b328c  mov     x1, x21
  1000b3290  bl      _objc_msgSend                            ; [arg1 objectForKey:@"finalPosition"]
  1000b3294  mov     x29, x29
  1000b3298  bl      _objc_retainAutoreleasedReturnValue
  1000b329c  mov     x22, x0
  1000b32a0  bl      _objc_release
  1000b32a4  cbz     x22, loc_1000b3398                       ; if ([arg1 objectForKey:@"finalPosition"] == 0)
  1000b32a8  mov     x23, x20
  1000b32ac  adrp    x2, #0x1003c1000
  1000b32b0  add     x2, x2, #0x370                           ; @"finalPosition"
  1000b32b4  mov     x0, x19
  1000b32b8  mov     x1, x21
  1000b32bc  bl      _objc_msgSend                            ; [arg1 objectForKey:@"finalPosition"]
  1000b32c0  mov     x29, x29
  1000b32c4  bl      _objc_retainAutoreleasedReturnValue
  1000b32c8  mov     x22, x0
  1000b32cc  bl      _CGPointFromString                       ; CGPointFromString([arg1 objectForKey:@"finalPosition"])
  1000b32d0  adrp    x8, #0x10041a000
  1000b32d4  nop
  1000b32d8  ldr     x1, [x8, #0x6c8]
  1000b32dc  mov     x0, x20
  1000b32e0  bl      _objc_msgSend                            ; [self setFinalPosition:{d0, d1}]
  1000b32e4  mov     x23, x20
  1000b32e8  mov     x0, x22
  1000b32ec  bl      _objc_release
  1000b32f0  adrp    x8, #0x10041a000
  1000b32f4  nop
  1000b32f8  ldr     x21, [x8, #0x6d0]
  1000b32fc  mov     x0, x20
  1000b3300  mov     x1, x21
  1000b3304  bl      _objc_msgSend                            ; [self finalPosition]
  1000b3308  mov     v8.16b, v0.16b
  1000b330c  mov     x23, x20
  1000b3310  adrp    x8, #0x100417000
  1000b3314  nop
  1000b3318  ldr     x22, [x8, #8]
  1000b331c  mov     x0, x20
  1000b3320  mov     x1, x22
  1000b3324  bl      _objc_msgSend                            ; [self position]
  1000b3328  mov     v9.16b, v0.16b
  1000b332c  mov     x23, x20
  1000b3330  mov     x0, x20
  1000b3334  mov     x1, x21
  1000b3338  bl      _objc_msgSend                            ; [self finalPosition]
  1000b333c  mov     v10.16b, v1.16b
  1000b3340  mov     x23, x20
  1000b3344  mov     x0, x20
  1000b3348  mov     x1, x22
  1000b334c  bl      _objc_msgSend                            ; [self position]
  1000b3350  fsub    d0, d8, d9
  1000b3354  fcvt    s0, d0
  1000b3358  mov     x23, x20
  1000b335c  fsub    d1, d10, d1
  1000b3360  fcvt    s1, d1
  1000b3364  fmul    s2, s0, s0                               ; t3 = (([self finalPosition].0 - [self position].0) * ([self finalPosition].0 - [self position].0))
  1000b3368  fmul    s3, s1, s1                               ; t4 = (([self finalPosition].1 - [self position].1) * ([self finalPosition].1 - [self position].1))
  1000b336c  fadd    s2, s2, s3
  1000b3370  fsqrt   s2, s2
  1000b3374  fdiv    s0, s0, s2
  1000b3378  fcvt    d0, s0
  1000b337c  fdiv    s1, s1, s2
  1000b3380  fcvt    d1, s1
  1000b3384  adrp    x8, #0x10041a000
  1000b3388  nop
  1000b338c  ldr     x1, [x8, #0x6d8]
  1000b3390  mov     x0, x20
  1000b3394  bl      _objc_msgSend                            ; [self setOrientation:{(([self finalPosition].0 - [self position].0) / sqrt((t3 + t4))), (([self finalPosition].1 - [self position].1) / sqrt((t3 + t4)))}]
loc_1000b3398:
  1000b3398  mov     x23, x20
  1000b339c  adrp    x8, #0x10041d000
  1000b33a0  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000b33a4  adrp    x8, #0x100417000
  1000b33a8  nop
  1000b33ac  ldr     x1, [x8, #0x4f0]
  1000b33b0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000b33b4  mov     x29, x29
  1000b33b8  bl      _objc_retainAutoreleasedReturnValue
  1000b33bc  mov     x22, x0
  1000b33c0  adrp    x8, #0x10041e000
  1000b33c4  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000b33c8  adrp    x8, #0x100417000
  1000b33cc  nop
  1000b33d0  ldr     x1, [x8, #0xaa8]
  1000b33d4  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000b33d8  mov     x29, x29
  1000b33dc  bl      _objc_retainAutoreleasedReturnValue
  1000b33e0  mov     x24, x0
  1000b33e4  adrp    x8, #0x10041a000
  1000b33e8  nop
  1000b33ec  ldr     x1, [x8, #0x6e0]
  1000b33f0  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] currentBrickName]
  1000b33f4  mov     x29, x29
  1000b33f8  bl      _objc_retainAutoreleasedReturnValue
  1000b33fc  mov     x25, x0
  1000b3400  adrp    x8, #0x100417000
  1000b3404  nop
  1000b3408  ldr     x1, [x8, #0x4f8]
  1000b340c  mov     x0, x22
  1000b3410  mov     x2, x25
  1000b3414  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:[[ADBrickManager sharedBrickManager] currentBrickName]]
  1000b3418  mov     x23, x20
  1000b341c  mov     x29, x29
  1000b3420  bl      _objc_retainAutoreleasedReturnValue
  1000b3424  adrp    x8, #0x100420000
  1000b3428  ldrsw   x9, [x8, #0x1f4]                         ; ivar offset ADSound.playlist (+0x8)
  1000b342c  ldr     x8, [x20, x9]                            ; x8 = self->playlist
  1000b3430  str     x0, [x20, x9]                            ; self->playlist = [[S3DEngine engine] playListWithName:[[ADBrickManager sharedBrickManager] currentBrickName]]
  1000b3434  mov     x0, x8
  1000b3438  bl      _objc_release
  1000b343c  mov     x0, x25
  1000b3440  bl      _objc_release
  1000b3444  mov     x0, x24
  1000b3448  bl      _objc_release
  1000b344c  mov     x0, x22
  1000b3450  bl      _objc_release
  1000b3454  adrp    x8, #0x100416000
  1000b3458  nop
  1000b345c  ldr     x1, [x8, #0xfd0]
  1000b3460  mov     x0, x20
  1000b3464  bl      _objc_msgSend                            ; [self spawn_time]
  1000b3468  adrp    x8, #0x100416000
  1000b346c  add     x8, x8, #0xc78                           ; &@selector(setState:)
  1000b3470  ldr     x1, [x8]
  1000b3474  fcmp    s0, #0.0
  1000b3478  b.eq    loc_1000b3490                            ; if ([self spawn_time] == 0.0)
  1000b347c  mov     x23, x20
  1000b3480  mov     w2, #1
  1000b3484  mov     x0, x20
  1000b3488  bl      _objc_msgSend                            ; [self setState:1]
  1000b348c  b       loc_1000b34a0
loc_1000b3490:
  1000b3490  mov     x23, x20
  1000b3494  mov     w2, #0
  1000b3498  mov     x0, x20
  1000b349c  bl      _objc_msgSend                            ; [self setState:0]
loc_1000b34a0:
  1000b34a0  mov     x23, x20
  1000b34a4  adrp    x8, #0x10041a000
  1000b34a8  nop
  1000b34ac  ldr     x1, [x8, #0x6e8]
  1000b34b0  mov     x0, x20
  1000b34b4  bl      _objc_msgSend                            ; [self initSound]
loc_1000b34b8:
  1000b34b8  mov     x0, x19
  1000b34bc  bl      _objc_release
  1000b34c0  mov     x0, x20
  1000b34c4  sub     sp, x29, #0x60
  1000b34c8  ldp     x29, x30, [sp, #0x60]
  1000b34cc  ldp     x20, x19, [sp, #0x50]
  1000b34d0  ldp     x22, x21, [sp, #0x40]
  1000b34d4  ldp     x24, x23, [sp, #0x30]
  1000b34d8  ldp     x26, x25, [sp, #0x20]
  1000b34dc  ldp     d9, d8, [sp, #0x10]
  1000b34e0  ldp     d11, d10, [sp], #0x70
  1000b34e4  ret
  1000b34e8  mov     x21, x0
  1000b34ec  b       loc_1000b357c
  1000b34f0  b       loc_1000b356c
  1000b34f4  b       loc_1000b3514
  1000b34f8  b       loc_1000b3514
  1000b34fc  b       loc_1000b3508
  1000b3500  b       loc_1000b3508
  1000b3504  b       loc_1000b3508
loc_1000b3508:
  1000b3508  mov     x21, x0
  1000b350c  mov     x0, x26
  1000b3510  b       loc_1000b3574
loc_1000b3514:
  1000b3514  mov     x21, x0
  1000b3518  mov     x0, x25
  1000b351c  b       loc_1000b3574
  1000b3520  b       loc_1000b355c
  1000b3524  b       loc_1000b355c
  1000b3528  b       loc_1000b355c
  1000b352c  mov     x21, x0
  1000b3530  b       loc_1000b3540
  1000b3534  mov     x21, x0
  1000b3538  mov     x0, x25
  1000b353c  bl      _objc_release
loc_1000b3540:
  1000b3540  mov     x0, x24
  1000b3544  bl      _objc_release
  1000b3548  b       loc_1000b3560
  1000b354c  b       loc_1000b355c
  1000b3550  mov     x21, x0
  1000b3554  mov     x0, x23
  1000b3558  b       loc_1000b3574
loc_1000b355c:
  1000b355c  mov     x21, x0
loc_1000b3560:
  1000b3560  mov     x0, x22
  1000b3564  b       loc_1000b3574
  1000b3568  b       loc_1000b356c
loc_1000b356c:
  1000b356c  mov     x21, x0
  1000b3570  mov     x0, x24
loc_1000b3574:
  1000b3574  bl      _objc_release
  1000b3578  mov     x23, x20
loc_1000b357c:
  1000b357c  mov     x0, x19
  1000b3580  bl      _objc_release
  1000b3584  mov     x0, x23
  1000b3588  bl      _objc_release
  1000b358c  mov     x0, x21
  1000b3590  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSound initSound]
; address 0x1000b3594  size 896  kind objc
; ======================================================================
  1000b3594  stp     x26, x25, [sp, #-0x50]!
  1000b3598  stp     x24, x23, [sp, #0x10]
  1000b359c  stp     x22, x21, [sp, #0x20]
  1000b35a0  stp     x20, x19, [sp, #0x30]
  1000b35a4  stp     x29, x30, [sp, #0x40]
  1000b35a8  add     x29, sp, #0x40
  1000b35ac  mov     x20, x0
  1000b35b0  adrp    x8, #0x100417000
  1000b35b4  nop
  1000b35b8  ldr     x21, [x8, #0x450]
  1000b35bc  mov     x1, x21
  1000b35c0  bl      _objc_msgSend                            ; [self name]
  1000b35c4  mov     x29, x29
  1000b35c8  bl      _objc_retainAutoreleasedReturnValue
  1000b35cc  mov     x19, x0
  1000b35d0  mov     x0, x20
  1000b35d4  mov     x1, x21
  1000b35d8  bl      _objc_msgSend                            ; [self name]
  1000b35dc  mov     x29, x29
  1000b35e0  bl      _objc_retainAutoreleasedReturnValue
  1000b35e4  mov     x23, x0
  1000b35e8  adrp    x8, #0x100417000
  1000b35ec  nop
  1000b35f0  ldr     x22, [x8, #0x58]
  1000b35f4  adrp    x2, #0x1003c1000
  1000b35f8  add     x2, x2, #0x390                           ; @"BUTTONMODE"
  1000b35fc  mov     x1, x22
  1000b3600  bl      _objc_msgSend                            ; [[self name] rangeOfString:@"BUTTONMODE"]
  1000b3604  mov     x24, x0
  1000b3608  mov     x0, x23
  1000b360c  bl      _objc_release
  1000b3610  mov     x8, #0x7fffffffffffffff
  1000b3614  cmp     x24, x8
  1000b3618  b.eq    loc_1000b36bc                            ; if ([[self name] rangeOfString:@"BUTTONMODE"] == 0x7fffffffffffffff)
  1000b361c  adrp    x8, #0x10041d000
  1000b3620  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000b3624  adrp    x8, #0x100416000
  1000b3628  nop
  1000b362c  ldr     x1, [x8, #0xc00]
  1000b3630  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b3634  mov     x29, x29
  1000b3638  bl      _objc_retainAutoreleasedReturnValue
  1000b363c  mov     x23, x0
  1000b3640  adrp    x8, #0x100417000
  1000b3644  nop
  1000b3648  ldr     x1, [x8, #0xc90]
  1000b364c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  1000b3650  mov     x24, x0
  1000b3654  mov     x0, x23
  1000b3658  bl      _objc_release
  1000b365c  adrp    x8, #0x10041a000
  1000b3660  add     x8, x8, #0x6f0                           ; &@selector(stringByReplacingOccurrencesOfString:withString:)
  1000b3664  ldr     x1, [x8]
  1000b3668  cbz     w24, loc_1000b368c                       ; if ([[ADGameParameters sharedParameters] buttonMode] == 0)
  1000b366c  adrp    x2, #0x1003c1000
  1000b3670  add     x2, x2, #0x390                           ; @"BUTTONMODE"
  1000b3674  adrp    x3, #0x1003c0000
  1000b3678  add     x3, x3, #0x9f0                           ; @"buttonMode"
  1000b367c  mov     x0, x19
  1000b3680  bl      _objc_msgSend                            ; [[self name] stringByReplacingOccurrencesOfString:@"BUTTONMODE" withString:@"buttonMode"]
  1000b3684  mov     x29, x29
  1000b3688  b       loc_1000b36a8
loc_1000b368c:
  1000b368c  adrp    x2, #0x1003c1000
  1000b3690  add     x2, x2, #0x390                           ; @"BUTTONMODE"
  1000b3694  adrp    x3, #0x1003c1000
  1000b3698  add     x3, x3, #0x3b0                           ; @"gestureMode"
  1000b369c  mov     x0, x19
  1000b36a0  bl      _objc_msgSend                            ; [[self name] stringByReplacingOccurrencesOfString:@"BUTTONMODE" withString:@"gestureMode"]
  1000b36a4  mov     x29, x29
loc_1000b36a8:
  1000b36a8  bl      _objc_retainAutoreleasedReturnValue
  1000b36ac  mov     x23, x0
  1000b36b0  mov     x0, x19
  1000b36b4  bl      _objc_release
  1000b36b8  mov     x19, x23
loc_1000b36bc:
  1000b36bc  mov     x0, x20
  1000b36c0  mov     x1, x21
  1000b36c4  bl      _objc_msgSend                            ; [self name]
  1000b36c8  mov     x29, x29
  1000b36cc  bl      _objc_retainAutoreleasedReturnValue
  1000b36d0  mov     x21, x0
  1000b36d4  adrp    x2, #0x1003c1000
  1000b36d8  add     x2, x2, #0x3d0                           ; @"CONTROLMODE"
  1000b36dc  mov     x1, x22
  1000b36e0  bl      _objc_msgSend                            ; [[self name] rangeOfString:@"CONTROLMODE"]
  1000b36e4  mov     x22, x0
  1000b36e8  mov     x0, x21
  1000b36ec  bl      _objc_release
  1000b36f0  mov     x8, #0x7fffffffffffffff
  1000b36f4  cmp     x22, x8
  1000b36f8  b.eq    loc_1000b3868                            ; if ([[self name] rangeOfString:@"CONTROLMODE"] == 0x7fffffffffffffff)
  1000b36fc  adrp    x25, #0x10041d000
  1000b3700  ldr     x0, [x25, #0xef0]                        ; class ADGameParameters
  1000b3704  adrp    x8, #0x100416000
  1000b3708  nop
  1000b370c  ldr     x21, [x8, #0xc00]
  1000b3710  mov     x1, x21
  1000b3714  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b3718  mov     x29, x29
  1000b371c  bl      _objc_retainAutoreleasedReturnValue
  1000b3720  mov     x23, x0
  1000b3724  adrp    x8, #0x100417000
  1000b3728  nop
  1000b372c  ldr     x22, [x8, #0xc80]
  1000b3730  mov     x1, x22
  1000b3734  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  1000b3738  mov     x24, x0
  1000b373c  mov     x0, x23
  1000b3740  bl      _objc_release
  1000b3744  cmp     w24, #1
  1000b3748  b.ne    loc_1000b3788                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 1)
  1000b374c  adrp    x8, #0x10041a000
  1000b3750  nop
  1000b3754  ldr     x1, [x8, #0x6f0]
  1000b3758  adrp    x2, #0x1003c1000
  1000b375c  add     x2, x2, #0x3d0                           ; @"CONTROLMODE"
  1000b3760  adrp    x3, #0x1003c1000
  1000b3764  add     x3, x3, #0x3f0                           ; @"gyroMode"
  1000b3768  mov     x0, x19
  1000b376c  bl      _objc_msgSend                            ; [x0 stringByReplacingOccurrencesOfString:@"CONTROLMODE" withString:@"gyroMode"]
  1000b3770  mov     x29, x29
  1000b3774  bl      _objc_retainAutoreleasedReturnValue
  1000b3778  mov     x23, x0
  1000b377c  mov     x0, x19
  1000b3780  bl      _objc_release
  1000b3784  mov     x19, x23
loc_1000b3788:
  1000b3788  ldr     x0, [x25, #0xef0]                        ; class ADGameParameters
  1000b378c  mov     x1, x21
  1000b3790  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b3794  mov     x29, x29
  1000b3798  bl      _objc_retainAutoreleasedReturnValue
  1000b379c  mov     x23, x0
  1000b37a0  mov     x1, x22
  1000b37a4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  1000b37a8  mov     x24, x0
  1000b37ac  mov     x0, x23
  1000b37b0  bl      _objc_release
  1000b37b4  cmp     w24, #2
  1000b37b8  b.ne    loc_1000b37f8                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 2)
  1000b37bc  adrp    x8, #0x10041a000
  1000b37c0  nop
  1000b37c4  ldr     x1, [x8, #0x6f0]
  1000b37c8  adrp    x2, #0x1003c1000
  1000b37cc  add     x2, x2, #0x3d0                           ; @"CONTROLMODE"
  1000b37d0  adrp    x3, #0x1003c1000
  1000b37d4  add     x3, x3, #0x410                           ; @"swipeMode"
  1000b37d8  mov     x0, x19
  1000b37dc  bl      _objc_msgSend                            ; [x0 stringByReplacingOccurrencesOfString:@"CONTROLMODE" withString:@"swipeMode"]
  1000b37e0  mov     x29, x29
  1000b37e4  bl      _objc_retainAutoreleasedReturnValue
  1000b37e8  mov     x23, x0
  1000b37ec  mov     x0, x19
  1000b37f0  bl      _objc_release
  1000b37f4  mov     x19, x23
loc_1000b37f8:
  1000b37f8  ldr     x0, [x25, #0xef0]                        ; class ADGameParameters
  1000b37fc  mov     x1, x21
  1000b3800  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000b3804  mov     x29, x29
  1000b3808  bl      _objc_retainAutoreleasedReturnValue
  1000b380c  mov     x21, x0
  1000b3810  mov     x1, x22
  1000b3814  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  1000b3818  mov     x22, x0
  1000b381c  mov     x0, x21
  1000b3820  bl      _objc_release
  1000b3824  cmp     w22, #3
  1000b3828  b.ne    loc_1000b3868                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 3)
  1000b382c  adrp    x8, #0x10041a000
  1000b3830  nop
  1000b3834  ldr     x1, [x8, #0x6f0]
  1000b3838  adrp    x2, #0x1003c1000
  1000b383c  add     x2, x2, #0x3d0                           ; @"CONTROLMODE"
  1000b3840  adrp    x3, #0x1003c1000
  1000b3844  add     x3, x3, #0x430                           ; @"tiltMode"
  1000b3848  mov     x0, x19
  1000b384c  bl      _objc_msgSend                            ; [x0 stringByReplacingOccurrencesOfString:@"CONTROLMODE" withString:@"tiltMode"]
  1000b3850  mov     x29, x29
  1000b3854  bl      _objc_retainAutoreleasedReturnValue
  1000b3858  mov     x21, x0
  1000b385c  mov     x0, x19
  1000b3860  bl      _objc_release
  1000b3864  mov     x19, x21
loc_1000b3868:
  1000b3868  adrp    x8, #0x100420000
  1000b386c  ldrsw   x8, [x8, #0x1f4]                         ; ivar offset ADSound.playlist (+0x8)
  1000b3870  ldr     x0, [x20, x8]                            ; x0 = self->playlist
  1000b3874  adrp    x8, #0x100417000
  1000b3878  nop
  1000b387c  ldr     x1, [x8, #0x990]
  1000b3880  mov     x2, x19
  1000b3884  bl      _objc_msgSend                            ; [self->playlist S3DSound:x2]
  1000b3888  mov     x29, x29
  1000b388c  bl      _objc_retainAutoreleasedReturnValue
  1000b3890  mov     x21, x0
  1000b3894  adrp    x8, #0x100419000
  1000b3898  nop
  1000b389c  ldr     x1, [x8, #0x418]
  1000b38a0  mov     x0, x20
  1000b38a4  mov     x2, x21
  1000b38a8  bl      _objc_msgSend                            ; [self setSound:[self->playlist S3DSound:x2]]
  1000b38ac  mov     x0, x21
  1000b38b0  bl      _objc_release
  1000b38b4  mov     x0, x19
  1000b38b8  ldp     x29, x30, [sp, #0x40]
  1000b38bc  ldp     x20, x19, [sp, #0x30]
  1000b38c0  ldp     x22, x21, [sp, #0x20]
  1000b38c4  ldp     x24, x23, [sp, #0x10]
  1000b38c8  ldp     x26, x25, [sp], #0x50
  1000b38cc  b       _objc_release
  1000b38d0  mov     x20, x0
  1000b38d4  b       loc_1000b3904
  1000b38d8  b       loc_1000b38ec
  1000b38dc  b       loc_1000b38f8
  1000b38e0  b       loc_1000b38f8
  1000b38e4  b       loc_1000b38ec
  1000b38e8  b       loc_1000b38ec
loc_1000b38ec:
  1000b38ec  mov     x20, x0
  1000b38f0  mov     x0, x23
  1000b38f4  b       loc_1000b3900
loc_1000b38f8:
  1000b38f8  mov     x20, x0
  1000b38fc  mov     x0, x21
loc_1000b3900:
  1000b3900  bl      _objc_release
loc_1000b3904:
  1000b3904  mov     x0, x19
  1000b3908  bl      _objc_release
  1000b390c  mov     x0, x20
  1000b3910  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSound update:]
; address 0x1000b3914  size 1848  kind objc
; ======================================================================
  1000b3914  stp     d13, d12, [sp, #-0x80]!
  1000b3918  stp     d11, d10, [sp, #0x10]
  1000b391c  stp     d9, d8, [sp, #0x20]
  1000b3920  stp     x26, x25, [sp, #0x30]
  1000b3924  stp     x24, x23, [sp, #0x40]
  1000b3928  stp     x22, x21, [sp, #0x50]
  1000b392c  stp     x20, x19, [sp, #0x60]
  1000b3930  stp     x29, x30, [sp, #0x70]
  1000b3934  add     x29, sp, #0x70
  1000b3938  sub     sp, sp, #0x10
  1000b393c  mov     v8.16b, v0.16b
  1000b3940  mov     x19, x0
  1000b3944  adrp    x8, #0x100416000
  1000b3948  nop
  1000b394c  ldr     x1, [x8, #0xc60]
  1000b3950  bl      _objc_msgSend                            ; [self state]
  1000b3954  cmp     w0, #2
  1000b3958  b.ne    loc_1000b3b34                            ; if ([self state] != 2)
  1000b395c  adrp    x8, #0x10041a000
  1000b3960  nop
  1000b3964  ldr     x24, [x8, #0x6f8]
  1000b3968  mov     x0, x19
  1000b396c  mov     x1, x24
  1000b3970  bl      _objc_msgSend                            ; [self startMusicBeforeEnd]
  1000b3974  fcmp    s0, #0.0
  1000b3978  b.le    loc_1000b3b90                            ; if ([self startMusicBeforeEnd] <= (or unordered) 0.0)
  1000b397c  adrp    x8, #0x100420000
  1000b3980  ldrsw   x25, [x8, #0x1f8]                        ; ivar offset ADSound.startedMainMenuMusic (+0x15)
  1000b3984  ldrb    w8, [x19, x25]                           ; w8 = self->startedMainMenuMusic
  1000b3988  cbnz    w8, loc_1000b3b90                        ; if (self->startedMainMenuMusic != 0)
  1000b398c  adrp    x8, #0x100416000
  1000b3990  nop
  1000b3994  ldr     x20, [x8, #0xc68]
  1000b3998  mov     x0, x19
  1000b399c  mov     x1, x20
  1000b39a0  bl      _objc_msgSend                            ; [self timeInState]
  1000b39a4  mov     v9.16b, v0.16b
  1000b39a8  adrp    x8, #0x100416000
  1000b39ac  nop
  1000b39b0  ldr     x21, [x8, #0xff0]
  1000b39b4  mov     x0, x19
  1000b39b8  mov     x1, x21
  1000b39bc  bl      _objc_msgSend                            ; [self sound]
  1000b39c0  mov     x29, x29
  1000b39c4  bl      _objc_retainAutoreleasedReturnValue
  1000b39c8  mov     x23, x0
  1000b39cc  adrp    x8, #0x100416000
  1000b39d0  nop
  1000b39d4  ldr     x22, [x8, #0xff8]
  1000b39d8  mov     x1, x22
  1000b39dc  bl      _objc_msgSend                            ; [[self sound] duration]
  1000b39e0  mov     v10.16b, v0.16b
  1000b39e4  mov     x0, x19
  1000b39e8  mov     x1, x24
  1000b39ec  bl      _objc_msgSend                            ; [self startMusicBeforeEnd]
  1000b39f0  fsub    s0, s10, s0
  1000b39f4  fcmp    s9, s0
  1000b39f8  b.le    loc_1000b3b88                            ; if ([self timeInState] <= (or unordered) ([[self sound] duration] - [self startMusicBeforeEnd]))
  1000b39fc  mov     x0, x19
  1000b3a00  mov     x1, x21
  1000b3a04  bl      _objc_msgSend                            ; [self sound]
  1000b3a08  mov     x29, x29
  1000b3a0c  bl      _objc_retainAutoreleasedReturnValue
  1000b3a10  mov     x24, x0
  1000b3a14  mov     x1, x22
  1000b3a18  bl      _objc_msgSend                            ; [[self sound] duration]
  1000b3a1c  mov     v9.16b, v0.16b
  1000b3a20  mov     x0, x24
  1000b3a24  bl      _objc_release
  1000b3a28  mov     x0, x23
  1000b3a2c  bl      _objc_release
  1000b3a30  fcmp    s9, #0.0
  1000b3a34  b.le    loc_1000b3b90                            ; if ([[self sound] duration] <= (or unordered) 0.0)
  1000b3a38  adrp    x8, #0x10041d000
  1000b3a3c  ldr     x23, [x8, #0xf78]                        ; class NSString
  1000b3a40  mov     x0, x19
  1000b3a44  mov     x1, x20
  1000b3a48  bl      _objc_msgSend                            ; [self timeInState]
  1000b3a4c  mov     v9.16b, v0.16b
  1000b3a50  mov     x0, x19
  1000b3a54  mov     x1, x21
  1000b3a58  bl      _objc_msgSend                            ; [self sound]
  1000b3a5c  mov     x29, x29
  1000b3a60  bl      _objc_retainAutoreleasedReturnValue
  1000b3a64  mov     x20, x0
  1000b3a68  mov     x1, x22
  1000b3a6c  bl      _objc_msgSend                            ; [[self sound] duration]
  1000b3a70  fcvt    d1, s9
  1000b3a74  fcvt    d0, s0
  1000b3a78  adrp    x8, #0x100416000
  1000b3a7c  nop
  1000b3a80  ldr     x1, [x8, #0xee8]
  1000b3a84  stp     d1, d0, [sp]
  1000b3a88  adrp    x2, #0x1003c1000
  1000b3a8c  add     x2, x2, #0x450                           ; @"Start music before end : %f / %f"
  1000b3a90  mov     x0, x23
  1000b3a94  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Start music before end : %f / %f", [self timeInState], [[self sound] duration]]
  1000b3a98  mov     x29, x29
  1000b3a9c  bl      _objc_retainAutoreleasedReturnValue
  1000b3aa0  mov     x21, x0
  1000b3aa4  str     x21, [sp]
  1000b3aa8  adrp    x0, #0x1003ba000
  1000b3aac  add     x0, x0, #0x190                           ; @"%@"
  1000b3ab0  bl      _NSLog                                   ; NSLog(@"%@", [NSString stringWithFormat:@"Start music before end : %f / %f", [self timeInStat…)
  1000b3ab4  mov     x0, x21
  1000b3ab8  bl      _objc_release
  1000b3abc  mov     x0, x20
  1000b3ac0  bl      _objc_release
  1000b3ac4  mov     w8, #1
  1000b3ac8  strb    w8, [x19, x25]                           ; self->startedMainMenuMusic = 1
  1000b3acc  adrp    x8, #0x10041d000
  1000b3ad0  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000b3ad4  adrp    x8, #0x100416000
  1000b3ad8  nop
  1000b3adc  ldr     x1, [x8, #0xb28]
  1000b3ae0  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000b3ae4  mov     x29, x29
  1000b3ae8  bl      _objc_retainAutoreleasedReturnValue
  1000b3aec  mov     x20, x0
  1000b3af0  adrp    x8, #0x100416000
  1000b3af4  nop
  1000b3af8  ldr     x1, [x8, #0xc18]
  1000b3afc  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000b3b00  mov     x29, x29
  1000b3b04  bl      _objc_retainAutoreleasedReturnValue
  1000b3b08  mov     x21, x0
  1000b3b0c  adrp    x8, #0x100419000
  1000b3b10  nop
  1000b3b14  ldr     x1, [x8, #0xd88]
  1000b3b18  adrp    x2, #0x1003bf000
  1000b3b1c  add     x2, x2, #0x870                           ; @"main_menu_theme"
  1000b3b20  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] startMenuMusic:@"main_menu_theme"]
  1000b3b24  mov     x0, x21
  1000b3b28  bl      _objc_release
  1000b3b2c  mov     x0, x20
  1000b3b30  b       loc_1000b3b8c
loc_1000b3b34:
  1000b3b34  cmp     w0, #1
  1000b3b38  b.ne    loc_1000b3f3c                            ; if ([self state] != 1)
  1000b3b3c  adrp    x8, #0x100416000
  1000b3b40  nop
  1000b3b44  ldr     x1, [x8, #0xc68]
  1000b3b48  mov     x0, x19
  1000b3b4c  bl      _objc_msgSend                            ; [self timeInState]
  1000b3b50  mov     v9.16b, v0.16b
  1000b3b54  adrp    x8, #0x100416000
  1000b3b58  nop
  1000b3b5c  ldr     x1, [x8, #0xfd0]
  1000b3b60  mov     x0, x19
  1000b3b64  bl      _objc_msgSend                            ; [self spawn_time]
  1000b3b68  fcmp    s9, s0
  1000b3b6c  b.le    loc_1000b3f3c                            ; if ([self timeInState] <= (or unordered) [self spawn_time])
  1000b3b70  adrp    x8, #0x100417000
  1000b3b74  nop
  1000b3b78  ldr     x1, [x8, #0x600]
  1000b3b7c  mov     x0, x19
  1000b3b80  bl      _objc_msgSend                            ; [self play]
  1000b3b84  b       loc_1000b3f3c
loc_1000b3b88:
  1000b3b88  mov     x0, x23
loc_1000b3b8c:
  1000b3b8c  bl      _objc_release
loc_1000b3b90:
  1000b3b90  adrp    x8, #0x100416000
  1000b3b94  nop
  1000b3b98  ldr     x20, [x8, #0xff0]
  1000b3b9c  mov     x0, x19
  1000b3ba0  mov     x1, x20
  1000b3ba4  bl      _objc_msgSend                            ; [self sound]
  1000b3ba8  mov     x29, x29
  1000b3bac  bl      _objc_retainAutoreleasedReturnValue
  1000b3bb0  mov     x22, x0
  1000b3bb4  adrp    x8, #0x100416000
  1000b3bb8  nop
  1000b3bbc  ldr     x21, [x8, #0xff8]
  1000b3bc0  mov     x1, x21
  1000b3bc4  bl      _objc_msgSend                            ; [[self sound] duration]
  1000b3bc8  fcmp    s0, #0.0
  1000b3bcc  b.eq    loc_1000b3bd8                            ; if ([[self sound] duration] == 0.0)
  1000b3bd0  mov     w25, #0
  1000b3bd4  b       loc_1000b3c18
loc_1000b3bd8:
  1000b3bd8  adrp    x8, #0x100417000
  1000b3bdc  nop
  1000b3be0  ldr     x1, [x8, #0x450]
  1000b3be4  mov     x0, x19
  1000b3be8  bl      _objc_msgSend                            ; [self name]
  1000b3bec  mov     x29, x29
  1000b3bf0  bl      _objc_retainAutoreleasedReturnValue
  1000b3bf4  mov     x23, x0
  1000b3bf8  adrp    x8, #0x100416000
  1000b3bfc  nop
  1000b3c00  ldr     x1, [x8, #0xf58]
  1000b3c04  adrp    x2, #0x1003c1000
  1000b3c08  add     x2, x2, #0x470                           ; @"silence"
  1000b3c0c  bl      _objc_msgSend                            ; [[self name] isEqualToString:@"silence"]
  1000b3c10  cbz     w0, loc_1000b3d54                        ; if ([[self name] isEqualToString:@"silence"] == 0)
  1000b3c14  mov     w25, #1
loc_1000b3c18:
  1000b3c18  adrp    x8, #0x100416000
  1000b3c1c  nop
  1000b3c20  ldr     x1, [x8, #0xc68]
  1000b3c24  mov     x0, x19
  1000b3c28  bl      _objc_msgSend                            ; [self timeInState]
  1000b3c2c  mov     v9.16b, v0.16b
  1000b3c30  mov     x0, x19
  1000b3c34  mov     x1, x20
  1000b3c38  bl      _objc_msgSend                            ; [self sound]
  1000b3c3c  mov     x29, x29
  1000b3c40  bl      _objc_retainAutoreleasedReturnValue
  1000b3c44  mov     x24, x0
  1000b3c48  mov     x1, x21
  1000b3c4c  bl      _objc_msgSend                            ; [[self sound] duration]
  1000b3c50  mov     v10.16b, v0.16b
  1000b3c54  mov     x0, x24
  1000b3c58  bl      _objc_release
  1000b3c5c  cbz     w25, loc_1000b3c68                       ; if (one of {0, 1} == 0)
  1000b3c60  mov     x0, x23
  1000b3c64  bl      _objc_release
loc_1000b3c68:
  1000b3c68  mov     x0, x22
  1000b3c6c  bl      _objc_release
  1000b3c70  fcmp    s9, s10
  1000b3c74  b.le    loc_1000b3d64                            ; if ([self timeInState] <= (or unordered) [[self sound] duration])
  1000b3c78  adrp    x8, #0x10041d000
  1000b3c7c  ldr     x24, [x8, #0xf78]                        ; class NSString
  1000b3c80  mov     x0, x19
  1000b3c84  mov     x1, x20
  1000b3c88  bl      _objc_msgSend                            ; [self sound]
  1000b3c8c  mov     x29, x29
  1000b3c90  bl      _objc_retainAutoreleasedReturnValue
  1000b3c94  mov     x22, x0
  1000b3c98  adrp    x8, #0x100419000
  1000b3c9c  nop
  1000b3ca0  ldr     x1, [x8, #0x3e8]
  1000b3ca4  bl      _objc_msgSend                            ; [[self sound] key]
  1000b3ca8  mov     x29, x29
  1000b3cac  bl      _objc_retainAutoreleasedReturnValue
  1000b3cb0  mov     x23, x0
  1000b3cb4  mov     x0, x19
  1000b3cb8  mov     x1, x20
  1000b3cbc  bl      _objc_msgSend                            ; [self sound]
  1000b3cc0  mov     x29, x29
  1000b3cc4  bl      _objc_retainAutoreleasedReturnValue
  1000b3cc8  mov     x20, x0
  1000b3ccc  mov     x1, x21
  1000b3cd0  bl      _objc_msgSend                            ; [[self sound] duration]
  1000b3cd4  fcvt    d0, s0
  1000b3cd8  adrp    x8, #0x100416000
  1000b3cdc  nop
  1000b3ce0  ldr     x1, [x8, #0xee8]
  1000b3ce4  str     d0, [sp, #8]
  1000b3ce8  str     x23, [sp]
  1000b3cec  adrp    x2, #0x1003c1000
  1000b3cf0  add     x2, x2, #0x490                           ; @"[%@] sound finished after %f"
  1000b3cf4  mov     x0, x24
  1000b3cf8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"[%@] sound finished after %f", [[self sound] key], [[self sound] duration]]
  1000b3cfc  mov     x29, x29
  1000b3d00  bl      _objc_retainAutoreleasedReturnValue
  1000b3d04  mov     x21, x0
  1000b3d08  str     x21, [sp]
  1000b3d0c  adrp    x0, #0x1003ba000
  1000b3d10  add     x0, x0, #0x190                           ; @"%@"
  1000b3d14  bl      _NSLog                                   ; NSLog(@"%@", [NSString stringWithFormat:@"[%@] sound finished after %f", [[self sound] key], …)
  1000b3d18  mov     x0, x21
  1000b3d1c  bl      _objc_release
  1000b3d20  mov     x0, x20
  1000b3d24  bl      _objc_release
  1000b3d28  mov     x0, x23
  1000b3d2c  bl      _objc_release
  1000b3d30  mov     x0, x22
  1000b3d34  bl      _objc_release
  1000b3d38  adrp    x8, #0x10041a000
  1000b3d3c  nop
  1000b3d40  ldr     x1, [x8, #0x700]
  1000b3d44  mov     w2, #0
  1000b3d48  mov     x0, x19
  1000b3d4c  bl      _objc_msgSend                            ; [self finishSoundWithSkip:0]
  1000b3d50  b       loc_1000b3f3c
loc_1000b3d54:
  1000b3d54  mov     x0, x23
  1000b3d58  bl      _objc_release
  1000b3d5c  mov     x0, x22
  1000b3d60  bl      _objc_release
loc_1000b3d64:
  1000b3d64  adrp    x8, #0x10041a000
  1000b3d68  nop
  1000b3d6c  ldr     x22, [x8, #0x708]
  1000b3d70  mov     x0, x19
  1000b3d74  mov     x1, x22
  1000b3d78  bl      _objc_msgSend                            ; [self orientation]
  1000b3d7c  fcmp    d0, #0.0
  1000b3d80  b.ne    loc_1000b3d98                            ; if ([self orientation].0 != 0.0)
  1000b3d84  mov     x0, x19
  1000b3d88  mov     x1, x22
  1000b3d8c  bl      _objc_msgSend                            ; [self orientation]
  1000b3d90  fcmp    d1, #0.0
  1000b3d94  b.eq    loc_1000b3f3c                            ; if ([self orientation].1 == 0.0)
loc_1000b3d98:
  1000b3d98  adrp    x8, #0x100417000
  1000b3d9c  nop
  1000b3da0  ldr     x21, [x8, #8]
  1000b3da4  mov     x0, x19
  1000b3da8  mov     x1, x21
  1000b3dac  bl      _objc_msgSend                            ; [self position]
  1000b3db0  mov     v9.16b, v0.16b
  1000b3db4  mov     x0, x19
  1000b3db8  mov     x1, x22
  1000b3dbc  bl      _objc_msgSend                            ; [self orientation]
  1000b3dc0  mov     v10.16b, v0.16b
  1000b3dc4  adrp    x8, #0x100417000
  1000b3dc8  nop
  1000b3dcc  ldr     x23, [x8, #0x18]
  1000b3dd0  mov     x0, x19
  1000b3dd4  mov     x1, x23
  1000b3dd8  bl      _objc_msgSend                            ; [self speed]
  1000b3ddc  fcvt    d0, s0
  1000b3de0  fmul    d0, d10, d0
  1000b3de4  fcvt    d12, s8
  1000b3de8  fmul    d0, d12, d0
  1000b3dec  fadd    d9, d9, d0
  1000b3df0  mov     x0, x19
  1000b3df4  mov     x1, x21
  1000b3df8  bl      _objc_msgSend                            ; [self position]
  1000b3dfc  mov     v10.16b, v1.16b
  1000b3e00  mov     x0, x19
  1000b3e04  mov     x1, x22
  1000b3e08  bl      _objc_msgSend                            ; [self orientation]
  1000b3e0c  mov     v11.16b, v1.16b
  1000b3e10  mov     x0, x19
  1000b3e14  mov     x1, x23
  1000b3e18  bl      _objc_msgSend                            ; [self speed]
  1000b3e1c  fcvt    d0, s0
  1000b3e20  fmul    d0, d11, d0
  1000b3e24  fmul    d0, d12, d0
  1000b3e28  fadd    d1, d10, d0
  1000b3e2c  adrp    x8, #0x100417000
  1000b3e30  nop
  1000b3e34  ldr     x1, [x8, #0x20]
  1000b3e38  mov     x0, x19
  1000b3e3c  mov     v0.16b, v9.16b
  1000b3e40  bl      _objc_msgSend                            ; [self setPosition:{([self position].0 + (arg1 * ([self orientation].0 * [self speed]))), ([self position].1 + (arg1 * ([self orientation].1 * [self speed])))}]
  1000b3e44  adrp    x8, #0x10041a000
  1000b3e48  nop
  1000b3e4c  ldr     x22, [x8, #0x6d0]
  1000b3e50  mov     x0, x19
  1000b3e54  mov     x1, x22
  1000b3e58  bl      _objc_msgSend                            ; [self finalPosition]
  1000b3e5c  mov     v9.16b, v0.16b
  1000b3e60  mov     x0, x19
  1000b3e64  mov     x1, x21
  1000b3e68  bl      _objc_msgSend                            ; [self position]
  1000b3e6c  mov     v10.16b, v0.16b
  1000b3e70  mov     x0, x19
  1000b3e74  mov     x1, x22
  1000b3e78  bl      _objc_msgSend                            ; [self finalPosition]
  1000b3e7c  mov     v11.16b, v1.16b
  1000b3e80  mov     x0, x19
  1000b3e84  mov     x1, x21
  1000b3e88  bl      _objc_msgSend                            ; [self position]
  1000b3e8c  mov     v12.16b, v1.16b
  1000b3e90  mov     x0, x19
  1000b3e94  mov     x1, x20
  1000b3e98  bl      _objc_msgSend                            ; [self sound]
  1000b3e9c  mov     x29, x29
  1000b3ea0  bl      _objc_retainAutoreleasedReturnValue
  1000b3ea4  mov     x20, x0
  1000b3ea8  mov     x0, x19
  1000b3eac  mov     x1, x21
  1000b3eb0  bl      _objc_msgSend                            ; [self position]
  1000b3eb4  mov     v13.16b, v0.16b
  1000b3eb8  mov     x0, x19
  1000b3ebc  mov     x1, x21
  1000b3ec0  bl      _objc_msgSend                            ; [self position]
  1000b3ec4  fcvt    s0, d13
  1000b3ec8  fcvt    s1, d1
  1000b3ecc  adrp    x8, #0x100417000
  1000b3ed0  nop
  1000b3ed4  ldr     x1, [x8, #0x38]
  1000b3ed8  movi    v2.16b, #0
  1000b3edc  mov     x0, x20
  1000b3ee0  bl      _objc_msgSend                            ; [[self sound] setPlanar:{[self position].0, [self position].1, 0}]
  1000b3ee4  fsub    d0, d9, d10
  1000b3ee8  fcvt    s9, d0
  1000b3eec  fsub    d0, d11, d12
  1000b3ef0  fcvt    s10, d0
  1000b3ef4  mov     x0, x20
  1000b3ef8  bl      _objc_release
  1000b3efc  fmul    s0, s9, s9                               ; t1 = (([self finalPosition].0 - [self position].0) * ([self finalPosition].0 - [self position].0))
  1000b3f00  fmul    s1, s10, s10                             ; t2 = (([self finalPosition].1 - [self position].1) * ([self finalPosition].1 - [self position].1))
  1000b3f04  fadd    s0, s0, s1
  1000b3f08  adrp    x8, #0x100420000
  1000b3f0c  ldrsw   x8, [x8, #0x1f0]                         ; ivar offset ADSound.squaredDistanceFromFinalPosition (+0x10)
  1000b3f10  ldr     s1, [x19, x8]                            ; s1 = self->squaredDistanceFromFinalPosition
  1000b3f14  fcmp    s0, s1
  1000b3f18  b.pl    loc_1000b3f24                            ; if ((t1 + t2) >= (or unordered) self->squaredDistanceFromFinalPosition)
  1000b3f1c  str     s0, [x19, x8]                            ; self->squaredDistanceFromFinalPosition = (t1 + t2)
  1000b3f20  b       loc_1000b3f3c
loc_1000b3f24:
  1000b3f24  adrp    x8, #0x100417000
  1000b3f28  nop
  1000b3f2c  ldr     x1, [x8, #0x8d0]
  1000b3f30  movi    v0.16b, #0
  1000b3f34  mov     x0, x19
  1000b3f38  bl      _objc_msgSend                            ; [self setSpeed:0]
loc_1000b3f3c:
  1000b3f3c  adrp    x8, #0x100416000
  1000b3f40  nop
  1000b3f44  ldr     x1, [x8, #0xc68]
  1000b3f48  mov     x0, x19
  1000b3f4c  bl      _objc_msgSend                            ; [self timeInState]
  1000b3f50  fadd    s0, s0, s8
  1000b3f54  adrp    x8, #0x100416000
  1000b3f58  nop
  1000b3f5c  ldr     x1, [x8, #0xc80]
  1000b3f60  mov     x0, x19
  1000b3f64  sub     sp, x29, #0x70
  1000b3f68  ldp     x29, x30, [sp, #0x70]
  1000b3f6c  ldp     x20, x19, [sp, #0x60]
  1000b3f70  ldp     x22, x21, [sp, #0x50]
  1000b3f74  ldp     x24, x23, [sp, #0x40]
  1000b3f78  ldp     x26, x25, [sp, #0x30]
  1000b3f7c  ldp     d9, d8, [sp, #0x20]
  1000b3f80  ldp     d11, d10, [sp, #0x10]
  1000b3f84  ldp     d13, d12, [sp], #0x80
  1000b3f88  b       _objc_msgSend                            ; [self setTimeInState:([self timeInState] + arg1)]
  1000b3f8c  mov     x19, x0
  1000b3f90  cbz     w25, loc_1000b4004                       ; if (w25 == 0)
  1000b3f94  b       loc_1000b3ffc
  1000b3f98  mov     x19, x0
loc_1000b3f9c:
  1000b3f9c  mov     x0, x20
  1000b3fa0  b       loc_1000b4008
  1000b3fa4  mov     x19, x0
  1000b3fa8  b       loc_1000b4004
  1000b3fac  mov     x19, x0
  1000b3fb0  mov     x0, x24
  1000b3fb4  bl      _objc_release
  1000b3fb8  tbnz    w25, #0, loc_1000b3ffc                   ; if ((w25 & 1))
  1000b3fbc  b       loc_1000b4004
  1000b3fc0  mov     x19, x0
  1000b3fc4  b       loc_1000b3fec
  1000b3fc8  mov     x19, x0
  1000b3fcc  b       loc_1000b4020
  1000b3fd0  mov     x19, x0
  1000b3fd4  b       loc_1000b4004
  1000b3fd8  mov     x19, x0
  1000b3fdc  b       loc_1000b3ffc
  1000b3fe0  mov     x19, x0
  1000b3fe4  mov     x0, x21
  1000b3fe8  bl      _objc_release
loc_1000b3fec:
  1000b3fec  mov     x0, x20
  1000b3ff0  bl      _objc_release
  1000b3ff4  b       loc_1000b3ffc
  1000b3ff8  mov     x19, x0
loc_1000b3ffc:
  1000b3ffc  mov     x0, x23
  1000b4000  bl      _objc_release
loc_1000b4004:
  1000b4004  mov     x0, x22
loc_1000b4008:
  1000b4008  bl      _objc_release
  1000b400c  mov     x0, x19
  1000b4010  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000b4014  mov     x19, x0
  1000b4018  mov     x0, x24
  1000b401c  bl      _objc_release
loc_1000b4020:
  1000b4020  mov     x0, x23
  1000b4024  b       loc_1000b4008
  1000b4028  mov     x19, x0
  1000b402c  b       loc_1000b3f9c
  1000b4030  b       loc_1000b403c
  1000b4034  mov     x19, x0
  1000b4038  b       loc_1000b3f9c
loc_1000b403c:
  1000b403c  mov     x19, x0
  1000b4040  mov     x0, x21
  1000b4044  bl      _objc_release
  1000b4048  b       loc_1000b3f9c

; ======================================================================
; -[ADSound skip]
; address 0x1000b404c  size 20  kind objc
; ======================================================================
  1000b404c  adrp    x8, #0x10041a000
  1000b4050  nop
  1000b4054  ldr     x1, [x8, #0x700]
  1000b4058  mov     w2, #1
  1000b405c  b       _objc_msgSend                            ; [self finishSoundWithSkip:1]

; ======================================================================
; -[ADSound finishSoundWithSkip:]
; address 0x1000b4060  size 268  kind objc
; ======================================================================
  1000b4060  stp     x22, x21, [sp, #-0x30]!
  1000b4064  stp     x20, x19, [sp, #0x10]
  1000b4068  stp     x29, x30, [sp, #0x20]
  1000b406c  add     x29, sp, #0x20
  1000b4070  mov     x19, x2
  1000b4074  mov     x20, x0
  1000b4078  adrp    x8, #0x100416000
  1000b407c  nop
  1000b4080  ldr     x1, [x8, #0xff0]
  1000b4084  bl      _objc_msgSend                            ; [self sound]
  1000b4088  mov     x29, x29
  1000b408c  bl      _objc_retainAutoreleasedReturnValue
  1000b4090  mov     x21, x0
  1000b4094  adrp    x8, #0x100417000
  1000b4098  nop
  1000b409c  ldr     x1, [x8, #0x568]
  1000b40a0  bl      _objc_msgSend                            ; [[self sound] stop]
  1000b40a4  mov     x0, x21
  1000b40a8  bl      _objc_release
  1000b40ac  adrp    x8, #0x100416000
  1000b40b0  nop
  1000b40b4  ldr     x1, [x8, #0xc78]
  1000b40b8  mov     w2, #3
  1000b40bc  mov     x0, x20
  1000b40c0  bl      _objc_msgSend                            ; [self setState:3]
  1000b40c4  adrp    x8, #0x10041e000
  1000b40c8  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000b40cc  adrp    x8, #0x100417000
  1000b40d0  nop
  1000b40d4  ldr     x1, [x8, #0xaa8]
  1000b40d8  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000b40dc  mov     x29, x29
  1000b40e0  bl      _objc_retainAutoreleasedReturnValue
  1000b40e4  mov     x21, x0
  1000b40e8  adrp    x8, #0x100417000
  1000b40ec  nop
  1000b40f0  ldr     x1, [x8, #0x450]
  1000b40f4  mov     x0, x20
  1000b40f8  bl      _objc_msgSend                            ; [self name]
  1000b40fc  mov     x29, x29
  1000b4100  bl      _objc_retainAutoreleasedReturnValue
  1000b4104  mov     x20, x0
  1000b4108  adrp    x8, #0x10041a000
  1000b410c  nop
  1000b4110  ldr     x1, [x8, #0x710]
  1000b4114  mov     x0, x21
  1000b4118  mov     x2, x20
  1000b411c  mov     x3, x19
  1000b4120  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] soundOrEnemyWithNameWasDeactivated:[self name] withSkip:arg1]
  1000b4124  mov     x0, x20
  1000b4128  bl      _objc_release
  1000b412c  mov     x0, x21
  1000b4130  ldp     x29, x30, [sp, #0x20]
  1000b4134  ldp     x20, x19, [sp, #0x10]
  1000b4138  ldp     x22, x21, [sp], #0x30
  1000b413c  b       _objc_release
  1000b4140  mov     x19, x0
  1000b4144  b       loc_1000b415c
  1000b4148  mov     x19, x0
  1000b414c  b       loc_1000b415c
  1000b4150  mov     x19, x0
  1000b4154  mov     x0, x20
  1000b4158  bl      _objc_release
loc_1000b415c:
  1000b415c  mov     x0, x21
  1000b4160  bl      _objc_release
  1000b4164  mov     x0, x19
  1000b4168  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSound play]
; address 0x1000b416c  size 716  kind objc
; ======================================================================
  1000b416c  stp     d9, d8, [sp, #-0x40]!
  1000b4170  stp     x22, x21, [sp, #0x10]
  1000b4174  stp     x20, x19, [sp, #0x20]
  1000b4178  stp     x29, x30, [sp, #0x30]
  1000b417c  add     x29, sp, #0x30
  1000b4180  mov     x19, x0
  1000b4184  adrp    x8, #0x10041a000
  1000b4188  nop
  1000b418c  ldr     x1, [x8, #0x718]
  1000b4190  bl      _objc_msgSend                            ; [self stopsOtherSounds]
  1000b4194  cbz     w0, loc_1000b41d4                        ; if ([self stopsOtherSounds] == 0)
  1000b4198  adrp    x8, #0x10041e000
  1000b419c  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000b41a0  adrp    x8, #0x100417000
  1000b41a4  nop
  1000b41a8  ldr     x1, [x8, #0xaa8]
  1000b41ac  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000b41b0  mov     x29, x29
  1000b41b4  bl      _objc_retainAutoreleasedReturnValue
  1000b41b8  mov     x20, x0
  1000b41bc  adrp    x8, #0x10041a000
  1000b41c0  nop
  1000b41c4  ldr     x1, [x8, #0x720]
  1000b41c8  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] stopAllSoundsInCurrentBrick]
  1000b41cc  mov     x0, x20
  1000b41d0  bl      _objc_release
loc_1000b41d4:
  1000b41d4  adrp    x8, #0x100417000
  1000b41d8  nop
  1000b41dc  ldr     x20, [x8, #8]
  1000b41e0  mov     x0, x19
  1000b41e4  mov     x1, x20
  1000b41e8  bl      _objc_msgSend                            ; [self position]
  1000b41ec  fcmp    d0, #0.0
  1000b41f0  b.ne    loc_1000b4208                            ; if ([self position].0 != 0.0)
  1000b41f4  mov     x0, x19
  1000b41f8  mov     x1, x20
  1000b41fc  bl      _objc_msgSend                            ; [self position]
  1000b4200  fcmp    d1, #0.0
  1000b4204  b.eq    loc_1000b42a4                            ; if ([self position].1 == 0.0)
loc_1000b4208:
  1000b4208  adrp    x8, #0x100416000
  1000b420c  nop
  1000b4210  ldr     x21, [x8, #0xff0]
  1000b4214  mov     x0, x19
  1000b4218  mov     x1, x21
  1000b421c  bl      _objc_msgSend                            ; [self sound]
  1000b4220  mov     x29, x29
  1000b4224  bl      _objc_retainAutoreleasedReturnValue
  1000b4228  mov     x22, x0
  1000b422c  adrp    x8, #0x100416000
  1000b4230  nop
  1000b4234  ldr     x1, [x8, #0xca8]
  1000b4238  mov     w2, #1
  1000b423c  bl      _objc_msgSend                            ; [[self sound] setSpatialized:1]
  1000b4240  mov     x0, x22
  1000b4244  bl      _objc_release
  1000b4248  mov     x0, x19
  1000b424c  mov     x1, x21
  1000b4250  bl      _objc_msgSend                            ; [self sound]
  1000b4254  mov     x29, x29
  1000b4258  bl      _objc_retainAutoreleasedReturnValue
  1000b425c  mov     x21, x0
  1000b4260  mov     x0, x19
  1000b4264  mov     x1, x20
  1000b4268  bl      _objc_msgSend                            ; [self position]
  1000b426c  mov     v8.16b, v0.16b
  1000b4270  mov     x0, x19
  1000b4274  mov     x1, x20
  1000b4278  bl      _objc_msgSend                            ; [self position]
  1000b427c  fcvt    s0, d8
  1000b4280  fcvt    s1, d1
  1000b4284  adrp    x8, #0x100417000
  1000b4288  nop
  1000b428c  ldr     x1, [x8, #0x38]
  1000b4290  movi    v2.16b, #0
  1000b4294  mov     x0, x21
  1000b4298  bl      _objc_msgSend                            ; [[self sound] setPlanar:{[self position].0, [self position].1, 0}]
  1000b429c  mov     x0, x21
  1000b42a0  bl      _objc_release
loc_1000b42a4:
  1000b42a4  adrp    x8, #0x100416000
  1000b42a8  nop
  1000b42ac  ldr     x20, [x8, #0xff0]
  1000b42b0  mov     x0, x19
  1000b42b4  mov     x1, x20
  1000b42b8  bl      _objc_msgSend                            ; [self sound]
  1000b42bc  mov     x29, x29
  1000b42c0  bl      _objc_retainAutoreleasedReturnValue
  1000b42c4  mov     x21, x0
  1000b42c8  adrp    x8, #0x10041a000
  1000b42cc  nop
  1000b42d0  ldr     x1, [x8, #0x728]
  1000b42d4  mov     x0, x19
  1000b42d8  bl      _objc_msgSend                            ; [self loop]
  1000b42dc  mov     x2, x0
  1000b42e0  adrp    x8, #0x100416000
  1000b42e4  nop
  1000b42e8  ldr     x1, [x8, #0xcb8]
  1000b42ec  mov     x0, x21
  1000b42f0  bl      _objc_msgSend                            ; [[self sound] play:[self loop]]
  1000b42f4  mov     x0, x21
  1000b42f8  bl      _objc_release
  1000b42fc  adrp    x8, #0x100419000
  1000b4300  nop
  1000b4304  ldr     x21, [x8, #0xe28]
  1000b4308  mov     x0, x19
  1000b430c  mov     x1, x21
  1000b4310  bl      _objc_msgSend                            ; [self gain]
  1000b4314  fcmp    s0, #0.0
  1000b4318  b.le    loc_1000b435c                            ; if ([self gain] <= (or unordered) 0.0)
  1000b431c  mov     x0, x19
  1000b4320  mov     x1, x20
  1000b4324  bl      _objc_msgSend                            ; [self sound]
  1000b4328  mov     x29, x29
  1000b432c  bl      _objc_retainAutoreleasedReturnValue
  1000b4330  mov     x20, x0
  1000b4334  mov     x0, x19
  1000b4338  mov     x1, x21
  1000b433c  bl      _objc_msgSend                            ; [self gain]
  1000b4340  adrp    x8, #0x100416000
  1000b4344  nop
  1000b4348  ldr     x1, [x8, #0xcb0]
  1000b434c  mov     x0, x20
  1000b4350  bl      _objc_msgSend                            ; [[self sound] setGain:[self gain]]
  1000b4354  mov     x0, x20
  1000b4358  bl      _objc_release
loc_1000b435c:
  1000b435c  adrp    x8, #0x100416000
  1000b4360  nop
  1000b4364  ldr     x1, [x8, #0xc78]
  1000b4368  mov     w2, #2
  1000b436c  mov     x0, x19
  1000b4370  bl      _objc_msgSend                            ; [self setState:2]
  1000b4374  adrp    x8, #0x10041e000
  1000b4378  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000b437c  adrp    x8, #0x100417000
  1000b4380  nop
  1000b4384  ldr     x1, [x8, #0xaa8]
  1000b4388  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000b438c  mov     x29, x29
  1000b4390  bl      _objc_retainAutoreleasedReturnValue
  1000b4394  mov     x20, x0
  1000b4398  adrp    x8, #0x100417000
  1000b439c  nop
  1000b43a0  ldr     x1, [x8, #0x450]
  1000b43a4  mov     x0, x19
  1000b43a8  bl      _objc_msgSend                            ; [self name]
  1000b43ac  mov     x29, x29
  1000b43b0  bl      _objc_retainAutoreleasedReturnValue
  1000b43b4  mov     x21, x0
  1000b43b8  adrp    x8, #0x100419000
  1000b43bc  nop
  1000b43c0  ldr     x1, [x8, #0x310]
  1000b43c4  mov     x0, x20
  1000b43c8  mov     x2, x21
  1000b43cc  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] checkSpawnOnStart:[self name]]
  1000b43d0  mov     x0, x21
  1000b43d4  bl      _objc_release
  1000b43d8  mov     x0, x20
  1000b43dc  ldp     x29, x30, [sp, #0x30]
  1000b43e0  ldp     x20, x19, [sp, #0x20]
  1000b43e4  ldp     x22, x21, [sp, #0x10]
  1000b43e8  ldp     d9, d8, [sp], #0x40
  1000b43ec  b       _objc_release
  1000b43f0  b       loc_1000b43f4
loc_1000b43f4:
  1000b43f4  mov     x19, x0
  1000b43f8  mov     x0, x21
  1000b43fc  b       loc_1000b442c
  1000b4400  b       loc_1000b4424
  1000b4404  b       loc_1000b4424
  1000b4408  mov     x19, x0
  1000b440c  mov     x0, x21
  1000b4410  bl      _objc_release
  1000b4414  b       loc_1000b4428
  1000b4418  mov     x19, x0
  1000b441c  mov     x0, x22
  1000b4420  b       loc_1000b442c
loc_1000b4424:
  1000b4424  mov     x19, x0
loc_1000b4428:
  1000b4428  mov     x0, x20
loc_1000b442c:
  1000b442c  bl      _objc_release
  1000b4430  mov     x0, x19
  1000b4434  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSound stopWithNoCallback]
; address 0x1000b4438  size 184  kind objc
; ======================================================================
  1000b4438  stp     x20, x19, [sp, #-0x20]!
  1000b443c  stp     x29, x30, [sp, #0x10]
  1000b4440  add     x29, sp, #0x10
  1000b4444  mov     x19, x0
  1000b4448  adrp    x8, #0x100416000
  1000b444c  nop
  1000b4450  ldr     x20, [x8, #0xc60]
  1000b4454  mov     x1, x20
  1000b4458  bl      _objc_msgSend                            ; [self state]
  1000b445c  cmp     w0, #2
  1000b4460  b.eq    loc_1000b4478                            ; if ([self state] == 2)
  1000b4464  mov     x0, x19
  1000b4468  mov     x1, x20
  1000b446c  bl      _objc_msgSend                            ; [self state]
  1000b4470  cmp     w0, #1
  1000b4474  b.ne    loc_1000b44d0                            ; if ([self state] != 1)
loc_1000b4478:
  1000b4478  adrp    x8, #0x100416000
  1000b447c  nop
  1000b4480  ldr     x1, [x8, #0xc78]
  1000b4484  mov     w2, #3
  1000b4488  mov     x0, x19
  1000b448c  bl      _objc_msgSend                            ; [self setState:3]
  1000b4490  adrp    x8, #0x100416000
  1000b4494  nop
  1000b4498  ldr     x1, [x8, #0xff0]
  1000b449c  mov     x0, x19
  1000b44a0  bl      _objc_msgSend                            ; [self sound]
  1000b44a4  mov     x29, x29
  1000b44a8  bl      _objc_retainAutoreleasedReturnValue
  1000b44ac  mov     x19, x0
  1000b44b0  adrp    x8, #0x100417000
  1000b44b4  nop
  1000b44b8  ldr     x1, [x8, #0x568]
  1000b44bc  bl      _objc_msgSend                            ; [[self sound] stop]
  1000b44c0  mov     x0, x19
  1000b44c4  ldp     x29, x30, [sp, #0x10]
  1000b44c8  ldp     x20, x19, [sp], #0x20
  1000b44cc  b       _objc_release
loc_1000b44d0:
  1000b44d0  ldp     x29, x30, [sp, #0x10]
  1000b44d4  ldp     x20, x19, [sp], #0x20
  1000b44d8  ret
  1000b44dc  mov     x20, x0
  1000b44e0  mov     x0, x19
  1000b44e4  bl      _objc_release
  1000b44e8  mov     x0, x20
  1000b44ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSound setState:]
; address 0x1000b44f0  size 208  kind objc
; ======================================================================
  1000b44f0  stp     x22, x21, [sp, #-0x30]!
  1000b44f4  stp     x20, x19, [sp, #0x10]
  1000b44f8  stp     x29, x30, [sp, #0x20]
  1000b44fc  add     x29, sp, #0x20
  1000b4500  sub     sp, sp, #0x10
  1000b4504  mov     x20, x2
  1000b4508  mov     x19, x0
  1000b450c  adrp    x8, #0x100420000
  1000b4510  ldrsw   x22, [x8, #0x1fc]                        ; ivar offset ADSound._state (+0x2c)
  1000b4514  ldr     w8, [x19, x22]                           ; w8 = self->_state
  1000b4518  cmp     w8, w20
  1000b451c  b.ne    loc_1000b4534                            ; if (self->_state != arg1)
  1000b4520  sub     sp, x29, #0x20
  1000b4524  ldp     x29, x30, [sp, #0x20]
  1000b4528  ldp     x20, x19, [sp, #0x10]
  1000b452c  ldp     x22, x21, [sp], #0x30
  1000b4530  ret
loc_1000b4534:
  1000b4534  adrp    x8, #0x100417000
  1000b4538  nop
  1000b453c  ldr     x1, [x8, #0x450]
  1000b4540  mov     x0, x19
  1000b4544  bl      _objc_msgSend                            ; [self name]
  1000b4548  mov     x29, x29
  1000b454c  bl      _objc_retainAutoreleasedReturnValue
  1000b4550  mov     x21, x0
  1000b4554  adrp    x8, #0x100416000
  1000b4558  nop
  1000b455c  ldr     x1, [x8, #0xc60]
  1000b4560  mov     x0, x19
  1000b4564  bl      _objc_msgSend                            ; [self state]
  1000b4568  stp     x21, x0, [sp]
  1000b456c  adrp    x0, #0x1003c1000
  1000b4570  add     x0, x0, #0x4b0                           ; @"[%@] Change ADSound state to : %i"
  1000b4574  bl      _NSLog                                   ; NSLog(@"[%@] Change ADSound state to : %i", [self name], [self state])
  1000b4578  mov     x0, x21
  1000b457c  bl      _objc_release
  1000b4580  str     w20, [x19, x22]                          ; self->_state = arg1
  1000b4584  adrp    x8, #0x100416000
  1000b4588  nop
  1000b458c  ldr     x1, [x8, #0xc80]
  1000b4590  movi    v0.16b, #0
  1000b4594  mov     x0, x19
  1000b4598  sub     sp, x29, #0x20
  1000b459c  ldp     x29, x30, [sp, #0x20]
  1000b45a0  ldp     x20, x19, [sp, #0x10]
  1000b45a4  ldp     x22, x21, [sp], #0x30
  1000b45a8  b       _objc_msgSend                            ; [self setTimeInState:0]
  1000b45ac  mov     x19, x0
  1000b45b0  mov     x0, x21
  1000b45b4  bl      _objc_release
  1000b45b8  mov     x0, x19
  1000b45bc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSound pause]
; address 0x1000b45c0  size 180  kind objc
; ======================================================================
  1000b45c0  stp     x22, x21, [sp, #-0x30]!
  1000b45c4  stp     x20, x19, [sp, #0x10]
  1000b45c8  stp     x29, x30, [sp, #0x20]
  1000b45cc  add     x29, sp, #0x20
  1000b45d0  mov     x19, x0
  1000b45d4  adrp    x8, #0x100416000
  1000b45d8  nop
  1000b45dc  ldr     x20, [x8, #0xff0]
  1000b45e0  mov     x1, x20
  1000b45e4  bl      _objc_msgSend                            ; [self sound]
  1000b45e8  mov     x29, x29
  1000b45ec  bl      _objc_retainAutoreleasedReturnValue
  1000b45f0  mov     x21, x0
  1000b45f4  adrp    x8, #0x100417000
  1000b45f8  nop
  1000b45fc  ldr     x1, [x8, #0x598]
  1000b4600  bl      _objc_msgSend                            ; [[self sound] playing]
  1000b4604  adrp    x8, #0x100420000
  1000b4608  ldrsw   x8, [x8, #0x200]                         ; ivar offset ADSound.soundWasPlaying (+0x14)
  1000b460c  strb    w0, [x19, x8]                            ; self->soundWasPlaying = [[self sound] playing]
  1000b4610  mov     x0, x21
  1000b4614  bl      _objc_release
  1000b4618  mov     x0, x19
  1000b461c  mov     x1, x20
  1000b4620  bl      _objc_msgSend                            ; [self sound]
  1000b4624  mov     x29, x29
  1000b4628  bl      _objc_retainAutoreleasedReturnValue
  1000b462c  mov     x19, x0
  1000b4630  adrp    x8, #0x100419000
  1000b4634  nop
  1000b4638  ldr     x1, [x8, #0x110]
  1000b463c  bl      _objc_msgSend                            ; [[self sound] pause]
  1000b4640  mov     x0, x19
  1000b4644  ldp     x29, x30, [sp, #0x20]
  1000b4648  ldp     x20, x19, [sp, #0x10]
  1000b464c  ldp     x22, x21, [sp], #0x30
  1000b4650  b       _objc_release
  1000b4654  mov     x20, x0
  1000b4658  mov     x0, x21
  1000b465c  b       loc_1000b4668
  1000b4660  mov     x20, x0
  1000b4664  mov     x0, x19
loc_1000b4668:
  1000b4668  bl      _objc_release
  1000b466c  mov     x0, x20
  1000b4670  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSound resume]
; address 0x1000b4674  size 120  kind objc
; ======================================================================
  1000b4674  stp     x20, x19, [sp, #-0x20]!
  1000b4678  stp     x29, x30, [sp, #0x10]
  1000b467c  add     x29, sp, #0x10
  1000b4680  adrp    x8, #0x100420000
  1000b4684  ldrsw   x8, [x8, #0x200]                         ; ivar offset ADSound.soundWasPlaying (+0x14)
  1000b4688  ldrb    w8, [x0, x8]                             ; w8 = self->soundWasPlaying
  1000b468c  cbz     w8, loc_1000b46cc                        ; if (self->soundWasPlaying == 0)
  1000b4690  adrp    x8, #0x100416000
  1000b4694  nop
  1000b4698  ldr     x1, [x8, #0xff0]
  1000b469c  bl      _objc_msgSend                            ; [self sound]
  1000b46a0  mov     x29, x29
  1000b46a4  bl      _objc_retainAutoreleasedReturnValue
  1000b46a8  mov     x19, x0
  1000b46ac  adrp    x8, #0x100419000
  1000b46b0  nop
  1000b46b4  ldr     x1, [x8, #0x128]
  1000b46b8  bl      _objc_msgSend                            ; [[self sound] resume]
  1000b46bc  mov     x0, x19
  1000b46c0  ldp     x29, x30, [sp, #0x10]
  1000b46c4  ldp     x20, x19, [sp], #0x20
  1000b46c8  b       _objc_release
loc_1000b46cc:
  1000b46cc  ldp     x29, x30, [sp, #0x10]
  1000b46d0  ldp     x20, x19, [sp], #0x20
  1000b46d4  ret
  1000b46d8  mov     x20, x0
  1000b46dc  mov     x0, x19
  1000b46e0  bl      _objc_release
  1000b46e4  mov     x0, x20
  1000b46e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSound speed]
; address 0x1000b46ec  size 16  kind objc
; ======================================================================
  1000b46ec  adrp    x8, #0x100420000
  1000b46f0  ldrsw   x8, [x8, #0x204]                         ; ivar offset ADSound._speed (+0x1c)
  1000b46f4  ldr     s0, [x0, x8]                             ; s0 = self->_speed
  1000b46f8  ret

; ======================================================================
; -[ADSound setSpeed:]
; address 0x1000b46fc  size 16  kind objc
; ======================================================================
  1000b46fc  adrp    x8, #0x100420000
  1000b4700  ldrsw   x8, [x8, #0x204]                         ; ivar offset ADSound._speed (+0x1c)
  1000b4704  str     s0, [x0, x8]                             ; self->_speed = arg1
  1000b4708  ret

; ======================================================================
; -[ADSound name]
; address 0x1000b470c  size 16  kind objc
; ======================================================================
  1000b470c  adrp    x8, #0x100420000
  1000b4710  ldrsw   x8, [x8, #0x208]                         ; ivar offset ADSound._name (+0x38)
  1000b4714  ldr     x0, [x0, x8]                             ; x0 = self->_name
  1000b4718  ret

; ======================================================================
; -[ADSound setName:]
; address 0x1000b471c  size 56  kind objc
; ======================================================================
  1000b471c  stp     x20, x19, [sp, #-0x20]!
  1000b4720  stp     x29, x30, [sp, #0x10]
  1000b4724  add     x29, sp, #0x10
  1000b4728  mov     x19, x0
  1000b472c  adrp    x8, #0x100420000
  1000b4730  ldrsw   x20, [x8, #0x208]                        ; ivar offset ADSound._name (+0x38)
  1000b4734  mov     x0, x2
  1000b4738  bl      _objc_retain
  1000b473c  ldr     x8, [x19, x20]                           ; x8 = self->_name
  1000b4740  str     x0, [x19, x20]                           ; self->_name = arg1
  1000b4744  mov     x0, x8
  1000b4748  ldp     x29, x30, [sp, #0x10]
  1000b474c  ldp     x20, x19, [sp], #0x20
  1000b4750  b       _objc_release

; ======================================================================
; -[ADSound spawn_time]
; address 0x1000b4754  size 16  kind objc
; ======================================================================
  1000b4754  adrp    x8, #0x100420000
  1000b4758  ldrsw   x8, [x8, #0x20c]                         ; ivar offset ADSound._spawn_time (+0x20)
  1000b475c  ldr     s0, [x0, x8]                             ; s0 = self->_spawn_time
  1000b4760  ret

; ======================================================================
; -[ADSound setSpawn_time:]
; address 0x1000b4764  size 16  kind objc
; ======================================================================
  1000b4764  adrp    x8, #0x100420000
  1000b4768  ldrsw   x8, [x8, #0x20c]                         ; ivar offset ADSound._spawn_time (+0x20)
  1000b476c  str     s0, [x0, x8]                             ; self->_spawn_time = arg1
  1000b4770  ret

; ======================================================================
; -[ADSound gain]
; address 0x1000b4774  size 16  kind objc
; ======================================================================
  1000b4774  adrp    x8, #0x100420000
  1000b4778  ldrsw   x8, [x8, #0x210]                         ; ivar offset ADSound._gain (+0x24)
  1000b477c  ldr     s0, [x0, x8]                             ; s0 = self->_gain
  1000b4780  ret

; ======================================================================
; -[ADSound setGain:]
; address 0x1000b4784  size 16  kind objc
; ======================================================================
  1000b4784  adrp    x8, #0x100420000
  1000b4788  ldrsw   x8, [x8, #0x210]                         ; ivar offset ADSound._gain (+0x24)
  1000b478c  str     s0, [x0, x8]                             ; self->_gain = arg1
  1000b4790  ret

; ======================================================================
; -[ADSound position]
; address 0x1000b4794  size 20  kind objc
; ======================================================================
  1000b4794  adrp    x8, #0x100420000
  1000b4798  ldrsw   x8, [x8, #0x214]                         ; ivar offset ADSound._position (+0x50)
  1000b479c  add     x8, x0, x8
  1000b47a0  ldp     d0, d1, [x8]
  1000b47a4  ret

; ======================================================================
; -[ADSound setPosition:]
; address 0x1000b47a8  size 20  kind objc
; ======================================================================
  1000b47a8  adrp    x8, #0x100420000
  1000b47ac  ldrsw   x8, [x8, #0x214]                         ; ivar offset ADSound._position (+0x50)
  1000b47b0  add     x8, x0, x8
  1000b47b4  stp     d0, d1, [x8]
  1000b47b8  ret

; ======================================================================
; -[ADSound finalPosition]
; address 0x1000b47bc  size 20  kind objc
; ======================================================================
  1000b47bc  adrp    x8, #0x100420000
  1000b47c0  ldrsw   x8, [x8, #0x218]                         ; ivar offset ADSound._finalPosition (+0x60)
  1000b47c4  add     x8, x0, x8
  1000b47c8  ldp     d0, d1, [x8]
  1000b47cc  ret

; ======================================================================
; -[ADSound setFinalPosition:]
; address 0x1000b47d0  size 20  kind objc
; ======================================================================
  1000b47d0  adrp    x8, #0x100420000
  1000b47d4  ldrsw   x8, [x8, #0x218]                         ; ivar offset ADSound._finalPosition (+0x60)
  1000b47d8  add     x8, x0, x8
  1000b47dc  stp     d0, d1, [x8]
  1000b47e0  ret

; ======================================================================
; -[ADSound orientation]
; address 0x1000b47e4  size 20  kind objc
; ======================================================================
  1000b47e4  adrp    x8, #0x100420000
  1000b47e8  ldrsw   x8, [x8, #0x21c]                         ; ivar offset ADSound._orientation (+0x70)
  1000b47ec  add     x8, x0, x8
  1000b47f0  ldp     d0, d1, [x8]
  1000b47f4  ret

; ======================================================================
; -[ADSound setOrientation:]
; address 0x1000b47f8  size 20  kind objc
; ======================================================================
  1000b47f8  adrp    x8, #0x100420000
  1000b47fc  ldrsw   x8, [x8, #0x21c]                         ; ivar offset ADSound._orientation (+0x70)
  1000b4800  add     x8, x0, x8
  1000b4804  stp     d0, d1, [x8]
  1000b4808  ret

; ======================================================================
; -[ADSound timeInState]
; address 0x1000b480c  size 20  kind objc
; ======================================================================
  1000b480c  adrp    x8, #0x100420000
  1000b4810  ldrsw   x8, [x8, #0x220]                         ; ivar offset ADSound._timeInState (+0x28)
  1000b4814  ldr     w8, [x0, x8]                             ; w8 = self->_timeInState
  1000b4818  fmov    s0, w8
  1000b481c  ret

; ======================================================================
; -[ADSound setTimeInState:]
; address 0x1000b4820  size 20  kind objc
; ======================================================================
  1000b4820  fmov    w8, s0
  1000b4824  adrp    x9, #0x100420000
  1000b4828  ldrsw   x9, [x9, #0x220]                         ; ivar offset ADSound._timeInState (+0x28)
  1000b482c  str     w8, [x0, x9]                             ; self->_timeInState = arg1
  1000b4830  ret

; ======================================================================
; -[ADSound spawn_after]
; address 0x1000b4834  size 16  kind objc
; ======================================================================
  1000b4834  adrp    x8, #0x100420000
  1000b4838  ldrsw   x8, [x8, #0x224]                         ; ivar offset ADSound._spawn_after (+0x40)
  1000b483c  ldr     x0, [x0, x8]                             ; x0 = self->_spawn_after
  1000b4840  ret

; ======================================================================
; -[ADSound setSpawn_after:]
; address 0x1000b4844  size 56  kind objc
; ======================================================================
  1000b4844  stp     x20, x19, [sp, #-0x20]!
  1000b4848  stp     x29, x30, [sp, #0x10]
  1000b484c  add     x29, sp, #0x10
  1000b4850  mov     x19, x0
  1000b4854  adrp    x8, #0x100420000
  1000b4858  ldrsw   x20, [x8, #0x224]                        ; ivar offset ADSound._spawn_after (+0x40)
  1000b485c  mov     x0, x2
  1000b4860  bl      _objc_retain
  1000b4864  ldr     x8, [x19, x20]                           ; x8 = self->_spawn_after
  1000b4868  str     x0, [x19, x20]                           ; self->_spawn_after = arg1
  1000b486c  mov     x0, x8
  1000b4870  ldp     x29, x30, [sp, #0x10]
  1000b4874  ldp     x20, x19, [sp], #0x20
  1000b4878  b       _objc_release

; ======================================================================
; -[ADSound state]
; address 0x1000b487c  size 16  kind objc
; ======================================================================
  1000b487c  adrp    x8, #0x100420000
  1000b4880  ldrsw   x8, [x8, #0x1fc]                         ; ivar offset ADSound._state (+0x2c)
  1000b4884  ldr     w0, [x0, x8]                             ; w0 = self->_state
  1000b4888  ret

; ======================================================================
; -[ADSound loop]
; address 0x1000b488c  size 16  kind objc
; ======================================================================
  1000b488c  adrp    x8, #0x100420000
  1000b4890  ldrsw   x8, [x8, #0x228]                         ; ivar offset ADSound._loop (+0x16)
  1000b4894  ldrb    w0, [x0, x8]                             ; w0 = self->_loop
  1000b4898  ret

; ======================================================================
; -[ADSound setLoop:]
; address 0x1000b489c  size 16  kind objc
; ======================================================================
  1000b489c  adrp    x8, #0x100420000
  1000b48a0  ldrsw   x8, [x8, #0x228]                         ; ivar offset ADSound._loop (+0x16)
  1000b48a4  strb    w2, [x0, x8]                             ; self->_loop = arg1
  1000b48a8  ret

; ======================================================================
; -[ADSound blocker]
; address 0x1000b48ac  size 16  kind objc
; ======================================================================
  1000b48ac  adrp    x8, #0x100420000
  1000b48b0  ldrsw   x8, [x8, #0x22c]                         ; ivar offset ADSound._blocker (+0x17)
  1000b48b4  ldrb    w0, [x0, x8]                             ; w0 = self->_blocker
  1000b48b8  ret

; ======================================================================
; -[ADSound setBlocker:]
; address 0x1000b48bc  size 16  kind objc
; ======================================================================
  1000b48bc  adrp    x8, #0x100420000
  1000b48c0  ldrsw   x8, [x8, #0x22c]                         ; ivar offset ADSound._blocker (+0x17)
  1000b48c4  strb    w2, [x0, x8]                             ; self->_blocker = arg1
  1000b48c8  ret

; ======================================================================
; -[ADSound stopsOtherSounds]
; address 0x1000b48cc  size 16  kind objc
; ======================================================================
  1000b48cc  adrp    x8, #0x100420000
  1000b48d0  ldrsw   x8, [x8, #0x230]                         ; ivar offset ADSound._stopsOtherSounds (+0x18)
  1000b48d4  ldrb    w0, [x0, x8]                             ; w0 = self->_stopsOtherSounds
  1000b48d8  ret

; ======================================================================
; -[ADSound setStopsOtherSounds:]
; address 0x1000b48dc  size 16  kind objc
; ======================================================================
  1000b48dc  adrp    x8, #0x100420000
  1000b48e0  ldrsw   x8, [x8, #0x230]                         ; ivar offset ADSound._stopsOtherSounds (+0x18)
  1000b48e4  strb    w2, [x0, x8]                             ; self->_stopsOtherSounds = arg1
  1000b48e8  ret

; ======================================================================
; -[ADSound sound]
; address 0x1000b48ec  size 16  kind objc
; ======================================================================
  1000b48ec  adrp    x8, #0x100420000
  1000b48f0  ldrsw   x8, [x8, #0x234]                         ; ivar offset ADSound._sound (+0x48)
  1000b48f4  ldr     x0, [x0, x8]                             ; x0 = self->_sound
  1000b48f8  ret

; ======================================================================
; -[ADSound setSound:]
; address 0x1000b48fc  size 56  kind objc
; ======================================================================
  1000b48fc  stp     x20, x19, [sp, #-0x20]!
  1000b4900  stp     x29, x30, [sp, #0x10]
  1000b4904  add     x29, sp, #0x10
  1000b4908  mov     x19, x0
  1000b490c  adrp    x8, #0x100420000
  1000b4910  ldrsw   x20, [x8, #0x234]                        ; ivar offset ADSound._sound (+0x48)
  1000b4914  mov     x0, x2
  1000b4918  bl      _objc_retain
  1000b491c  ldr     x8, [x19, x20]                           ; x8 = self->_sound
  1000b4920  str     x0, [x19, x20]                           ; self->_sound = arg1
  1000b4924  mov     x0, x8
  1000b4928  ldp     x29, x30, [sp, #0x10]
  1000b492c  ldp     x20, x19, [sp], #0x20
  1000b4930  b       _objc_release

; ======================================================================
; -[ADSound skippable]
; address 0x1000b4934  size 16  kind objc
; ======================================================================
  1000b4934  adrp    x8, #0x100420000
  1000b4938  ldrsw   x8, [x8, #0x238]                         ; ivar offset ADSound._skippable (+0x19)
  1000b493c  ldrb    w0, [x0, x8]                             ; w0 = self->_skippable
  1000b4940  ret

; ======================================================================
; -[ADSound setSkippable:]
; address 0x1000b4944  size 16  kind objc
; ======================================================================
  1000b4944  adrp    x8, #0x100420000
  1000b4948  ldrsw   x8, [x8, #0x238]                         ; ivar offset ADSound._skippable (+0x19)
  1000b494c  strb    w2, [x0, x8]                             ; self->_skippable = arg1
  1000b4950  ret

; ======================================================================
; -[ADSound startMusicBeforeEnd]
; address 0x1000b4954  size 16  kind objc
; ======================================================================
  1000b4954  adrp    x8, #0x100420000
  1000b4958  ldrsw   x8, [x8, #0x23c]                         ; ivar offset ADSound._startMusicBeforeEnd (+0x30)
  1000b495c  ldr     s0, [x0, x8]                             ; s0 = self->_startMusicBeforeEnd
  1000b4960  ret

; ======================================================================
; -[ADSound setStartMusicBeforeEnd:]
; address 0x1000b4964  size 16  kind objc
; ======================================================================
  1000b4964  adrp    x8, #0x100420000
  1000b4968  ldrsw   x8, [x8, #0x23c]                         ; ivar offset ADSound._startMusicBeforeEnd (+0x30)
  1000b496c  str     s0, [x0, x8]                             ; self->_startMusicBeforeEnd = arg1
  1000b4970  ret

; ======================================================================
; -[ADSound .cxx_destruct]
; address 0x1000b4974  size 104  kind objc
; ======================================================================
  1000b4974  stp     x20, x19, [sp, #-0x20]!
  1000b4978  stp     x29, x30, [sp, #0x10]
  1000b497c  add     x29, sp, #0x10
  1000b4980  mov     x19, x0
  1000b4984  adrp    x8, #0x100420000
  1000b4988  ldrsw   x8, [x8, #0x234]                         ; ivar offset ADSound._sound (+0x48)
  1000b498c  add     x0, x19, x8
  1000b4990  mov     x1, #0
  1000b4994  bl      _objc_storeStrong
  1000b4998  adrp    x8, #0x100420000
  1000b499c  ldrsw   x8, [x8, #0x224]                         ; ivar offset ADSound._spawn_after (+0x40)
  1000b49a0  add     x0, x19, x8
  1000b49a4  mov     x1, #0
  1000b49a8  bl      _objc_storeStrong
  1000b49ac  adrp    x8, #0x100420000
  1000b49b0  ldrsw   x8, [x8, #0x208]                         ; ivar offset ADSound._name (+0x38)
  1000b49b4  add     x0, x19, x8
  1000b49b8  mov     x1, #0
  1000b49bc  bl      _objc_storeStrong
  1000b49c0  mov     x1, #0
  1000b49c4  adrp    x8, #0x100420000
  1000b49c8  ldrsw   x8, [x8, #0x1f4]                         ; ivar offset ADSound.playlist (+0x8)
  1000b49cc  add     x0, x19, x8
  1000b49d0  ldp     x29, x30, [sp, #0x10]
  1000b49d4  ldp     x20, x19, [sp], #0x20
  1000b49d8  b       _objc_storeStrong

; ======================================================================
; -[ADSound .cxx_construct]
; address 0x1000b49dc  size 4  kind objc
; ======================================================================
  1000b49dc  ret
