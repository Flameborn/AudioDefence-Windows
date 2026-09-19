// unit ADMission — 43 functions
//   0x1000449b0     976  -[ADMission initWithDictionary:]
//   0x100044d80     176  -[ADMission startGameplay]
//   0x100044e30     112  -[ADMission update:]
//   0x100044ea0      16  -[ADMission setObjective:]
//   0x100044eb0     352  -[ADMission playerShotWithWeapon:hitEnemi:]
//   0x100045010     560  -[ADMission enemiKilled:withWeapon:]
//   0x100045240     180  -[ADMission playerDied]
//   0x1000452f4     180  -[ADMission playerUpgradedWeapon]
//   0x1000453a8      16  -[ADMission endGameplay]
//   0x1000453b8       4  -[ADMission playerSwappedWeapon]
//   0x1000453bc       4  -[ADMission playerMissedAShot]
//   0x1000453c0     848  -[ADMission isMissionCompleted]
//   0x100045710     924  -[ADMission completionToString]
//   0x100045aac     608  -[ADMission completionToFloat]
//   0x100045d0c    1056  -[ADMission cellViewForMissionWithCellIdentifier:]
//   0x10004612c     916  -[ADMission initWithCoder:]
//   0x1000464c0     744  -[ADMission encodeWithCoder:]
//   0x1000467a8      16  -[ADMission objective]
//   0x1000467b8      16  -[ADMission objective_zombies]
//   0x1000467c8      16  -[ADMission setObjective_zombies:]
//   0x1000467d8      16  -[ADMission description]
//   0x1000467e8      12  -[ADMission setDescription:]
//   0x1000467f4      16  -[ADMission type]
//   0x100046804      12  -[ADMission setType:]
//   0x100046810      16  -[ADMission skipCost]
//   0x100046820      16  -[ADMission setSkipCost:]
//   0x100046830      16  -[ADMission reward]
//   0x100046840      16  -[ADMission setReward:]
//   0x100046850      16  -[ADMission enemi]
//   0x100046860      12  -[ADMission setEnemi:]
//   0x10004686c      16  -[ADMission weapon]
//   0x10004687c      12  -[ADMission setWeapon:]
//   0x100046888      20  -[ADMission survivalTime]
//   0x10004689c      20  -[ADMission setSurvivalTime:]
//   0x1000468b0      20  -[ADMission singleLife]
//   0x1000468c4      16  -[ADMission setSingleLife:]
//   0x1000468d4      16  -[ADMission progression]
//   0x1000468e4      16  -[ADMission setProgression:]
//   0x1000468f4      16  -[ADMission progression_zombies]
//   0x100046904      16  -[ADMission setProgression_zombies:]
//   0x100046914      16  -[ADMission attempts]
//   0x100046924      16  -[ADMission setAttempts:]
//   0x100046934     104  -[ADMission .cxx_destruct]

; ======================================================================
; -[ADMission initWithDictionary:]
; address 0x1000449b0  size 976  kind objc
; ======================================================================
  1000449b0  stp     x24, x23, [sp, #-0x40]!
  1000449b4  stp     x22, x21, [sp, #0x10]
  1000449b8  stp     x20, x19, [sp, #0x20]
  1000449bc  stp     x29, x30, [sp, #0x30]
  1000449c0  add     x29, sp, #0x30
  1000449c4  sub     sp, sp, #0x10
  1000449c8  mov     x20, x0
  1000449cc  mov     x0, x2
  1000449d0  bl      _objc_retain
  1000449d4  mov     x19, x0
  1000449d8  str     x20, [sp]
  1000449dc  adrp    x8, #0x10041e000
  1000449e0  ldr     x8, [x8, #0xd10]
  1000449e4  str     x8, [sp, #8]
  1000449e8  adrp    x8, #0x100416000
  1000449ec  nop
  1000449f0  ldr     x1, [x8, #0xab8]
  1000449f4  mov     x23, #0
  1000449f8  mov     x0, sp
  1000449fc  bl      _objc_msgSendSuper2                      ; [super init]
  100044a00  mov     x20, x0
  100044a04  cbz     x20, loc_100044d00                       ; if (self == 0)
  100044a08  mov     x23, x20
  100044a0c  adrp    x8, #0x100417000
  100044a10  nop
  100044a14  ldr     x21, [x8, #0x40]
  100044a18  adrp    x2, #0x1003bc000
  100044a1c  add     x2, x2, #0xd90                           ; @"objective_zombie"
  100044a20  mov     x0, x19
  100044a24  mov     x1, x21
  100044a28  bl      _objc_msgSend                            ; [arg1 objectForKey:@"objective_zombie"]
  100044a2c  mov     x29, x29
  100044a30  bl      _objc_retainAutoreleasedReturnValue
  100044a34  mov     x24, x0
  100044a38  adrp    x8, #0x100417000
  100044a3c  nop
  100044a40  ldr     x22, [x8, #0x110]
  100044a44  mov     x1, x22
  100044a48  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"objective_zombie"] intValue]
  100044a4c  mov     x2, x0
  100044a50  adrp    x8, #0x100418000
  100044a54  nop
  100044a58  ldr     x1, [x8, #0x8b8]
  100044a5c  mov     x0, x20
  100044a60  bl      _objc_msgSend                            ; [self setObjective_zombies:[[arg1 objectForKey:@"objective_zombie"] intValue]]
  100044a64  mov     x23, x20
  100044a68  mov     x0, x24
  100044a6c  bl      _objc_release
  100044a70  adrp    x2, #0x1003bc000
  100044a74  add     x2, x2, #0x990                           ; @"objective"
  100044a78  mov     x0, x19
  100044a7c  mov     x1, x21
  100044a80  bl      _objc_msgSend                            ; [arg1 objectForKey:@"objective"]
  100044a84  mov     x29, x29
  100044a88  bl      _objc_retainAutoreleasedReturnValue
  100044a8c  mov     x24, x0
  100044a90  mov     x1, x22
  100044a94  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"objective"] intValue]
  100044a98  mov     x2, x0
  100044a9c  adrp    x8, #0x100418000
  100044aa0  nop
  100044aa4  ldr     x1, [x8, #0x8c0]
  100044aa8  mov     x0, x20
  100044aac  bl      _objc_msgSend                            ; [self setObjective:[[arg1 objectForKey:@"objective"] intValue]]
  100044ab0  mov     x23, x20
  100044ab4  mov     x0, x24
  100044ab8  bl      _objc_release
  100044abc  adrp    x2, #0x1003bc000
  100044ac0  add     x2, x2, #0xdb0                           ; @"skipCost"
  100044ac4  mov     x0, x19
  100044ac8  mov     x1, x21
  100044acc  bl      _objc_msgSend                            ; [arg1 objectForKey:@"skipCost"]
  100044ad0  mov     x29, x29
  100044ad4  bl      _objc_retainAutoreleasedReturnValue
  100044ad8  mov     x24, x0
  100044adc  mov     x1, x22
  100044ae0  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"skipCost"] intValue]
  100044ae4  mov     x2, x0
  100044ae8  adrp    x8, #0x100418000
  100044aec  nop
  100044af0  ldr     x1, [x8, #0x8c8]
  100044af4  mov     x0, x20
  100044af8  bl      _objc_msgSend                            ; [self setSkipCost:[[arg1 objectForKey:@"skipCost"] intValue]]
  100044afc  mov     x23, x20
  100044b00  mov     x0, x24
  100044b04  bl      _objc_release
  100044b08  adrp    x2, #0x1003bc000
  100044b0c  add     x2, x2, #0xad0                           ; @"reward"
  100044b10  mov     x0, x19
  100044b14  mov     x1, x21
  100044b18  bl      _objc_msgSend                            ; [arg1 objectForKey:@"reward"]
  100044b1c  mov     x29, x29
  100044b20  bl      _objc_retainAutoreleasedReturnValue
  100044b24  mov     x24, x0
  100044b28  mov     x1, x22
  100044b2c  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"reward"] intValue]
  100044b30  mov     x2, x0
  100044b34  adrp    x8, #0x100418000
  100044b38  nop
  100044b3c  ldr     x1, [x8, #0x8d0]
  100044b40  mov     x0, x20
  100044b44  bl      _objc_msgSend                            ; [self setReward:[[arg1 objectForKey:@"reward"] intValue]]
  100044b48  mov     x23, x20
  100044b4c  mov     x0, x24
  100044b50  bl      _objc_release
  100044b54  adrp    x2, #0x1003bc000
  100044b58  add     x2, x2, #0xdd0                           ; @"type"
  100044b5c  mov     x0, x19
  100044b60  mov     x1, x21
  100044b64  bl      _objc_msgSend                            ; [arg1 objectForKey:@"type"]
  100044b68  mov     x29, x29
  100044b6c  bl      _objc_retainAutoreleasedReturnValue
  100044b70  mov     x24, x0
  100044b74  adrp    x8, #0x100417000
  100044b78  nop
  100044b7c  ldr     x1, [x8, #0x9a0]
  100044b80  mov     x0, x20
  100044b84  mov     x2, x24
  100044b88  bl      _objc_msgSend                            ; [self setType:[arg1 objectForKey:@"type"]]
  100044b8c  mov     x23, x20
  100044b90  mov     x0, x24
  100044b94  bl      _objc_release
  100044b98  adrp    x2, #0x1003bc000
  100044b9c  add     x2, x2, #0xdf0                           ; @"description"
  100044ba0  mov     x0, x19
  100044ba4  mov     x1, x21
  100044ba8  bl      _objc_msgSend                            ; [arg1 objectForKey:@"description"]
  100044bac  mov     x29, x29
  100044bb0  bl      _objc_retainAutoreleasedReturnValue
  100044bb4  mov     x24, x0
  100044bb8  adrp    x8, #0x100418000
  100044bbc  nop
  100044bc0  ldr     x1, [x8, #0x8d8]
  100044bc4  mov     x0, x20
  100044bc8  mov     x2, x24
  100044bcc  bl      _objc_msgSend                            ; [self setDescription:[arg1 objectForKey:@"description"]]
  100044bd0  mov     x23, x20
  100044bd4  mov     x0, x24
  100044bd8  bl      _objc_release
  100044bdc  adrp    x2, #0x1003bc000
  100044be0  add     x2, x2, #0xe10                           ; @"enemi"
  100044be4  mov     x0, x19
  100044be8  mov     x1, x21
  100044bec  bl      _objc_msgSend                            ; [arg1 objectForKey:@"enemi"]
  100044bf0  mov     x29, x29
  100044bf4  bl      _objc_retainAutoreleasedReturnValue
  100044bf8  mov     x24, x0
  100044bfc  adrp    x8, #0x100418000
  100044c00  nop
  100044c04  ldr     x1, [x8, #0x8e0]
  100044c08  mov     x0, x20
  100044c0c  mov     x2, x24
  100044c10  bl      _objc_msgSend                            ; [self setEnemi:[arg1 objectForKey:@"enemi"]]
  100044c14  mov     x23, x20
  100044c18  mov     x0, x24
  100044c1c  bl      _objc_release
  100044c20  adrp    x2, #0x1003bc000
  100044c24  add     x2, x2, #0xe30                           ; @"weapon"
  100044c28  mov     x0, x19
  100044c2c  mov     x1, x21
  100044c30  bl      _objc_msgSend                            ; [arg1 objectForKey:@"weapon"]
  100044c34  mov     x29, x29
  100044c38  bl      _objc_retainAutoreleasedReturnValue
  100044c3c  mov     x24, x0
  100044c40  adrp    x8, #0x100418000
  100044c44  nop
  100044c48  ldr     x1, [x8, #0x8e8]
  100044c4c  mov     x0, x20
  100044c50  mov     x2, x24
  100044c54  bl      _objc_msgSend                            ; [self setWeapon:[arg1 objectForKey:@"weapon"]]
  100044c58  mov     x23, x20
  100044c5c  mov     x0, x24
  100044c60  bl      _objc_release
  100044c64  adrp    x2, #0x1003bc000
  100044c68  add     x2, x2, #0xe50                           ; @"singleLife"
  100044c6c  mov     x0, x19
  100044c70  mov     x1, x21
  100044c74  bl      _objc_msgSend                            ; [arg1 objectForKey:@"singleLife"]
  100044c78  mov     x29, x29
  100044c7c  bl      _objc_retainAutoreleasedReturnValue
  100044c80  mov     x24, x0
  100044c84  adrp    x8, #0x100417000
  100044c88  nop
  100044c8c  ldr     x1, [x8, #0xd8]
  100044c90  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"singleLife"] boolValue]
  100044c94  mov     x2, x0
  100044c98  adrp    x8, #0x100418000
  100044c9c  nop
  100044ca0  ldr     x1, [x8, #0x8f0]
  100044ca4  mov     x0, x20
  100044ca8  bl      _objc_msgSend                            ; [self setSingleLife:[[arg1 objectForKey:@"singleLife"] boolValue]]
  100044cac  mov     x23, x20
  100044cb0  mov     x0, x24
  100044cb4  bl      _objc_release
  100044cb8  adrp    x2, #0x1003bc000
  100044cbc  add     x2, x2, #0xe70                           ; @"attempts"
  100044cc0  mov     x0, x19
  100044cc4  mov     x1, x21
  100044cc8  bl      _objc_msgSend                            ; [arg1 objectForKey:@"attempts"]
  100044ccc  mov     x29, x29
  100044cd0  bl      _objc_retainAutoreleasedReturnValue
  100044cd4  mov     x23, x0
  100044cd8  mov     x1, x22
  100044cdc  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"attempts"] intValue]
  100044ce0  mov     x2, x0
  100044ce4  adrp    x8, #0x100418000
  100044ce8  nop
  100044cec  ldr     x1, [x8, #0x8f8]
  100044cf0  mov     x0, x20
  100044cf4  bl      _objc_msgSend                            ; [self setAttempts:[[arg1 objectForKey:@"attempts"] intValue]]
  100044cf8  mov     x0, x23
  100044cfc  bl      _objc_release
loc_100044d00:
  100044d00  mov     x0, x19
  100044d04  bl      _objc_release
  100044d08  mov     x0, x20
  100044d0c  sub     sp, x29, #0x30
  100044d10  ldp     x29, x30, [sp, #0x30]
  100044d14  ldp     x20, x19, [sp, #0x20]
  100044d18  ldp     x22, x21, [sp, #0x10]
  100044d1c  ldp     x24, x23, [sp], #0x40
  100044d20  ret
  100044d24  mov     x21, x0
  100044d28  b       loc_100044d68
  100044d2c  b       loc_100044d58
  100044d30  b       loc_100044d58
  100044d34  b       loc_100044d58
  100044d38  b       loc_100044d58
  100044d3c  b       loc_100044d58
  100044d40  mov     x21, x0
  100044d44  mov     x0, x23
  100044d48  b       loc_100044d60
  100044d4c  b       loc_100044d58
  100044d50  b       loc_100044d58
  100044d54  b       loc_100044d58
loc_100044d58:
  100044d58  mov     x21, x0
  100044d5c  mov     x0, x24
loc_100044d60:
  100044d60  bl      _objc_release
  100044d64  mov     x23, x20
loc_100044d68:
  100044d68  mov     x0, x19
  100044d6c  bl      _objc_release
  100044d70  mov     x0, x23
  100044d74  bl      _objc_release
  100044d78  mov     x0, x21
  100044d7c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMission startGameplay]
; address 0x100044d80  size 176  kind objc
; ======================================================================
  100044d80  stp     x20, x19, [sp, #-0x20]!
  100044d84  stp     x29, x30, [sp, #0x10]
  100044d88  add     x29, sp, #0x10
  100044d8c  mov     x19, x0
  100044d90  adrp    x8, #0x10041f000
  100044d94  ldrsw   x8, [x8, #0x990]                         ; ivar offset ADMission.playerIsAlive (+0x8)
  100044d98  mov     w9, #1
  100044d9c  strb    w9, [x19, x8]                            ; self->playerIsAlive = 1
  100044da0  adrp    x8, #0x100418000
  100044da4  nop
  100044da8  ldr     x1, [x8, #0x900]
  100044dac  bl      _objc_msgSend                            ; [self singleLife]
  100044db0  cbz     w0, loc_100044dfc                        ; if ([self singleLife] == 0)
  100044db4  adrp    x8, #0x100418000
  100044db8  nop
  100044dbc  ldr     x1, [x8, #0x908]
  100044dc0  movi    v0.16b, #0
  100044dc4  mov     x0, x19
  100044dc8  bl      _objc_msgSend                            ; [self setSurvivalTime:0]
  100044dcc  adrp    x8, #0x100418000
  100044dd0  nop
  100044dd4  ldr     x1, [x8, #0x910]
  100044dd8  mov     w2, #0
  100044ddc  mov     x0, x19
  100044de0  bl      _objc_msgSend                            ; [self setProgression:0]
  100044de4  adrp    x8, #0x100418000
  100044de8  nop
  100044dec  ldr     x1, [x8, #0x918]
  100044df0  mov     w2, #0
  100044df4  mov     x0, x19
  100044df8  bl      _objc_msgSend                            ; [self setProgression_zombies:0]
loc_100044dfc:
  100044dfc  adrp    x8, #0x100418000
  100044e00  nop
  100044e04  ldr     x1, [x8, #0x920]
  100044e08  mov     x0, x19
  100044e0c  bl      _objc_msgSend                            ; [self attempts]
  100044e10  add     w2, w0, #1
  100044e14  adrp    x8, #0x100418000
  100044e18  nop
  100044e1c  ldr     x1, [x8, #0x8f8]
  100044e20  mov     x0, x19
  100044e24  ldp     x29, x30, [sp, #0x10]
  100044e28  ldp     x20, x19, [sp], #0x20
  100044e2c  b       _objc_msgSend                            ; [self setAttempts:([self attempts] + 1)]

; ======================================================================
; -[ADMission update:]
; address 0x100044e30  size 112  kind objc
; ======================================================================
  100044e30  stp     d9, d8, [sp, #-0x30]!
  100044e34  stp     x20, x19, [sp, #0x10]
  100044e38  stp     x29, x30, [sp, #0x20]
  100044e3c  add     x29, sp, #0x20
  100044e40  mov     v8.16b, v0.16b
  100044e44  mov     x19, x0
  100044e48  adrp    x8, #0x10041f000
  100044e4c  ldrsw   x8, [x8, #0x990]                         ; ivar offset ADMission.playerIsAlive (+0x8)
  100044e50  ldrb    w8, [x19, x8]                            ; w8 = self->playerIsAlive
  100044e54  cbz     w8, loc_100044e90                        ; if (self->playerIsAlive == 0)
  100044e58  adrp    x8, #0x100418000
  100044e5c  nop
  100044e60  ldr     x1, [x8, #0x928]
  100044e64  mov     x0, x19
  100044e68  bl      _objc_msgSend                            ; [self survivalTime]
  100044e6c  fadd    s0, s0, s8
  100044e70  adrp    x8, #0x100418000
  100044e74  nop
  100044e78  ldr     x1, [x8, #0x908]
  100044e7c  mov     x0, x19
  100044e80  ldp     x29, x30, [sp, #0x20]
  100044e84  ldp     x20, x19, [sp, #0x10]
  100044e88  ldp     d9, d8, [sp], #0x30
  100044e8c  b       _objc_msgSend                            ; [self setSurvivalTime:([self survivalTime] + arg1)]
loc_100044e90:
  100044e90  ldp     x29, x30, [sp, #0x20]
  100044e94  ldp     x20, x19, [sp, #0x10]
  100044e98  ldp     d9, d8, [sp], #0x30
  100044e9c  ret

; ======================================================================
; -[ADMission setObjective:]
; address 0x100044ea0  size 16  kind objc
; ======================================================================
  100044ea0  adrp    x8, #0x10041f000
  100044ea4  ldrsw   x8, [x8, #0x994]                         ; ivar offset ADMission.objective (+0xc)
  100044ea8  str     w2, [x0, x8]                             ; self->objective = arg1
  100044eac  ret

; ======================================================================
; -[ADMission playerShotWithWeapon:hitEnemi:]
; address 0x100044eb0  size 352  kind objc
; ======================================================================
  100044eb0  stp     x24, x23, [sp, #-0x40]!
  100044eb4  stp     x22, x21, [sp, #0x10]
  100044eb8  stp     x20, x19, [sp, #0x20]
  100044ebc  stp     x29, x30, [sp, #0x30]
  100044ec0  add     x29, sp, #0x30
  100044ec4  mov     x20, x0
  100044ec8  mov     x0, x2
  100044ecc  bl      _objc_retain
  100044ed0  mov     x19, x0
  100044ed4  adrp    x8, #0x100417000
  100044ed8  nop
  100044edc  ldr     x1, [x8, #0x9a8]
  100044ee0  mov     x0, x20
  100044ee4  bl      _objc_msgSend                            ; [self type]
  100044ee8  mov     x29, x29
  100044eec  bl      _objc_retainAutoreleasedReturnValue
  100044ef0  mov     x22, x0
  100044ef4  adrp    x8, #0x100416000
  100044ef8  nop
  100044efc  ldr     x21, [x8, #0xf58]
  100044f00  adrp    x2, #0x1003bc000
  100044f04  add     x2, x2, #0xe90                           ; @"shoot"
  100044f08  mov     x1, x21
  100044f0c  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"shoot"]
  100044f10  mov     x23, x0
  100044f14  mov     x0, x22
  100044f18  bl      _objc_release
  100044f1c  cbz     w23, loc_100044fbc                       ; if ([[self type] isEqualToString:@"shoot"] == 0)
  100044f20  adrp    x8, #0x100418000
  100044f24  nop
  100044f28  ldr     x23, [x8, #0x930]
  100044f2c  mov     x0, x20
  100044f30  mov     x1, x23
  100044f34  bl      _objc_msgSend                            ; [self weapon]
  100044f38  mov     x29, x29
  100044f3c  bl      _objc_retainAutoreleasedReturnValue
  100044f40  mov     x22, x0
  100044f44  cbz     x22, loc_100044f88                       ; if ([self weapon] == 0)
  100044f48  mov     x0, x20
  100044f4c  mov     x1, x23
  100044f50  bl      _objc_msgSend                            ; [self weapon]
  100044f54  mov     x29, x29
  100044f58  bl      _objc_retainAutoreleasedReturnValue
  100044f5c  mov     x23, x0
  100044f60  mov     x1, x21
  100044f64  mov     x2, x19
  100044f68  bl      _objc_msgSend                            ; [[self weapon] isEqualToString:arg1]
  100044f6c  mov     x21, x0
  100044f70  mov     x0, x23
  100044f74  bl      _objc_release
  100044f78  mov     x0, x22
  100044f7c  bl      _objc_release
  100044f80  tbz     w21, #0, loc_100044fbc                   ; if (!([[self weapon] isEqualToString:arg1] & 1))
  100044f84  b       loc_100044f90
loc_100044f88:
  100044f88  mov     x0, x22
  100044f8c  bl      _objc_release
loc_100044f90:
  100044f90  adrp    x8, #0x100418000
  100044f94  nop
  100044f98  ldr     x1, [x8, #0x938]
  100044f9c  mov     x0, x20
  100044fa0  bl      _objc_msgSend                            ; [self progression]
  100044fa4  add     w2, w0, #1
  100044fa8  adrp    x8, #0x100418000
  100044fac  nop
  100044fb0  ldr     x1, [x8, #0x910]
  100044fb4  mov     x0, x20
  100044fb8  bl      _objc_msgSend                            ; [self setProgression:([self progression] + 1)]
loc_100044fbc:
  100044fbc  mov     x0, x19
  100044fc0  ldp     x29, x30, [sp, #0x30]
  100044fc4  ldp     x20, x19, [sp, #0x20]
  100044fc8  ldp     x22, x21, [sp, #0x10]
  100044fcc  ldp     x24, x23, [sp], #0x40
  100044fd0  b       _objc_release
  100044fd4  mov     x20, x0
  100044fd8  b       loc_100045000
  100044fdc  mov     x20, x0
  100044fe0  b       loc_100044ff8
  100044fe4  mov     x20, x0
  100044fe8  b       loc_100044ff8
  100044fec  mov     x20, x0
  100044ff0  mov     x0, x23
  100044ff4  bl      _objc_release
loc_100044ff8:
  100044ff8  mov     x0, x22
  100044ffc  bl      _objc_release
loc_100045000:
  100045000  mov     x0, x19
  100045004  bl      _objc_release
  100045008  mov     x0, x20
  10004500c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMission enemiKilled:withWeapon:]
; address 0x100045010  size 560  kind objc
; ======================================================================
  100045010  stp     x26, x25, [sp, #-0x50]!
  100045014  stp     x24, x23, [sp, #0x10]
  100045018  stp     x22, x21, [sp, #0x20]
  10004501c  stp     x20, x19, [sp, #0x30]
  100045020  stp     x29, x30, [sp, #0x40]
  100045024  add     x29, sp, #0x40
  100045028  mov     x20, x3
  10004502c  mov     x21, x0
  100045030  mov     x0, x2
  100045034  bl      _objc_retain
  100045038  mov     x19, x0
  10004503c  mov     x0, x20
  100045040  bl      _objc_retain
  100045044  mov     x20, x0
  100045048  adrp    x8, #0x100417000
  10004504c  nop
  100045050  ldr     x1, [x8, #0x9a8]
  100045054  mov     x0, x21
  100045058  bl      _objc_msgSend                            ; [self type]
  10004505c  mov     x29, x29
  100045060  bl      _objc_retainAutoreleasedReturnValue
  100045064  mov     x23, x0
  100045068  adrp    x8, #0x100416000
  10004506c  nop
  100045070  ldr     x22, [x8, #0xf58]
  100045074  adrp    x2, #0x1003bb000
  100045078  add     x2, x2, #0xc30                           ; @"kill"
  10004507c  mov     x1, x22
  100045080  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"kill"]
  100045084  mov     x24, x0
  100045088  mov     x0, x23
  10004508c  bl      _objc_release
  100045090  cbz     w24, loc_100045198                       ; if ([[self type] isEqualToString:@"kill"] == 0)
  100045094  adrp    x8, #0x100418000
  100045098  nop
  10004509c  ldr     x23, [x8, #0x930]
  1000450a0  mov     x0, x21
  1000450a4  mov     x1, x23
  1000450a8  bl      _objc_msgSend                            ; [self weapon]
  1000450ac  mov     x29, x29
  1000450b0  bl      _objc_retainAutoreleasedReturnValue
  1000450b4  mov     x24, x0
  1000450b8  cbz     x24, loc_1000450f0                       ; if ([self weapon] == 0)
  1000450bc  mov     x0, x21
  1000450c0  mov     x1, x23
  1000450c4  bl      _objc_msgSend                            ; [self weapon]
  1000450c8  mov     x29, x29
  1000450cc  bl      _objc_retainAutoreleasedReturnValue
  1000450d0  mov     x25, x0
  1000450d4  mov     x1, x22
  1000450d8  mov     x2, x20
  1000450dc  bl      _objc_msgSend                            ; [[self weapon] isEqualToString:arg2]
  1000450e0  mov     x23, x0
  1000450e4  mov     x0, x25
  1000450e8  bl      _objc_release
  1000450ec  b       loc_1000450f4
loc_1000450f0:
  1000450f0  mov     w23, #1
loc_1000450f4:
  1000450f4  mov     x0, x24
  1000450f8  bl      _objc_release
  1000450fc  adrp    x8, #0x100418000
  100045100  nop
  100045104  ldr     x25, [x8, #0x940]
  100045108  mov     x0, x21
  10004510c  mov     x1, x25
  100045110  bl      _objc_msgSend                            ; [self enemi]
  100045114  mov     x29, x29
  100045118  bl      _objc_retainAutoreleasedReturnValue
  10004511c  mov     x24, x0
  100045120  cbz     x24, loc_100045158                       ; if ([self enemi] == 0)
  100045124  mov     x0, x21
  100045128  mov     x1, x25
  10004512c  bl      _objc_msgSend                            ; [self enemi]
  100045130  mov     x29, x29
  100045134  bl      _objc_retainAutoreleasedReturnValue
  100045138  mov     x25, x0
  10004513c  mov     x1, x22
  100045140  mov     x2, x19
  100045144  bl      _objc_msgSend                            ; [[self enemi] isEqualToString:arg1]
  100045148  mov     x22, x0
  10004514c  mov     x0, x25
  100045150  bl      _objc_release
  100045154  b       loc_10004515c
loc_100045158:
  100045158  mov     w22, #1
loc_10004515c:
  10004515c  mov     x0, x24
  100045160  bl      _objc_release
  100045164  and     w8, w23, w22
  100045168  tbz     w8, #0, loc_100045198                    ; if (!((w23 & w22) & 1))
  10004516c  adrp    x8, #0x100418000
  100045170  nop
  100045174  ldr     x1, [x8, #0x938]
  100045178  mov     x0, x21
  10004517c  bl      _objc_msgSend                            ; [self progression]
  100045180  add     w2, w0, #1
  100045184  adrp    x8, #0x100418000
  100045188  nop
  10004518c  ldr     x1, [x8, #0x910]
  100045190  mov     x0, x21
  100045194  bl      _objc_msgSend                            ; [self setProgression:([self progression] + 1)]
loc_100045198:
  100045198  adrp    x8, #0x100418000
  10004519c  nop
  1000451a0  ldr     x1, [x8, #0x948]
  1000451a4  mov     x0, x21
  1000451a8  bl      _objc_msgSend                            ; [self progression_zombies]
  1000451ac  add     w2, w0, #1
  1000451b0  adrp    x8, #0x100418000
  1000451b4  nop
  1000451b8  ldr     x1, [x8, #0x918]
  1000451bc  mov     x0, x21
  1000451c0  bl      _objc_msgSend                            ; [self setProgression_zombies:([self progression_zombies] + 1)]
  1000451c4  mov     x0, x20
  1000451c8  bl      _objc_release
  1000451cc  mov     x0, x19
  1000451d0  ldp     x29, x30, [sp, #0x40]
  1000451d4  ldp     x20, x19, [sp, #0x30]
  1000451d8  ldp     x22, x21, [sp, #0x20]
  1000451dc  ldp     x24, x23, [sp, #0x10]
  1000451e0  ldp     x26, x25, [sp], #0x50
  1000451e4  b       _objc_release
  1000451e8  mov     x21, x0
  1000451ec  b       loc_100045228
  1000451f0  mov     x21, x0
  1000451f4  mov     x0, x23
  1000451f8  bl      _objc_release
  1000451fc  b       loc_100045228
  100045200  mov     x21, x0
  100045204  b       loc_100045220
  100045208  b       loc_100045214
  10004520c  mov     x21, x0
  100045210  b       loc_100045220
loc_100045214:
  100045214  mov     x21, x0
  100045218  mov     x0, x25
  10004521c  bl      _objc_release
loc_100045220:
  100045220  mov     x0, x24
  100045224  bl      _objc_release
loc_100045228:
  100045228  mov     x0, x20
  10004522c  bl      _objc_release
  100045230  mov     x0, x19
  100045234  bl      _objc_release
  100045238  mov     x0, x21
  10004523c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMission playerDied]
; address 0x100045240  size 180  kind objc
; ======================================================================
  100045240  stp     x22, x21, [sp, #-0x30]!
  100045244  stp     x20, x19, [sp, #0x10]
  100045248  stp     x29, x30, [sp, #0x20]
  10004524c  add     x29, sp, #0x20
  100045250  mov     x19, x0
  100045254  adrp    x8, #0x100417000
  100045258  nop
  10004525c  ldr     x1, [x8, #0x9a8]
  100045260  bl      _objc_msgSend                            ; [self type]
  100045264  mov     x29, x29
  100045268  bl      _objc_retainAutoreleasedReturnValue
  10004526c  mov     x20, x0
  100045270  adrp    x8, #0x100416000
  100045274  nop
  100045278  ldr     x1, [x8, #0xf58]
  10004527c  adrp    x2, #0x1003bc000
  100045280  add     x2, x2, #0xeb0                           ; @"die"
  100045284  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"die"]
  100045288  mov     x21, x0
  10004528c  mov     x0, x20
  100045290  bl      _objc_release
  100045294  cbz     w21, loc_1000452d0                       ; if ([[self type] isEqualToString:@"die"] == 0)
  100045298  adrp    x8, #0x100418000
  10004529c  nop
  1000452a0  ldr     x1, [x8, #0x938]
  1000452a4  mov     x0, x19
  1000452a8  bl      _objc_msgSend                            ; [self progression]
  1000452ac  add     w2, w0, #1
  1000452b0  adrp    x8, #0x100418000
  1000452b4  nop
  1000452b8  ldr     x1, [x8, #0x910]
  1000452bc  mov     x0, x19
  1000452c0  ldp     x29, x30, [sp, #0x20]
  1000452c4  ldp     x20, x19, [sp, #0x10]
  1000452c8  ldp     x22, x21, [sp], #0x30
  1000452cc  b       _objc_msgSend                            ; [self setProgression:([self progression] + 1)]
loc_1000452d0:
  1000452d0  ldp     x29, x30, [sp, #0x20]
  1000452d4  ldp     x20, x19, [sp, #0x10]
  1000452d8  ldp     x22, x21, [sp], #0x30
  1000452dc  ret
  1000452e0  mov     x19, x0
  1000452e4  mov     x0, x20
  1000452e8  bl      _objc_release
  1000452ec  mov     x0, x19
  1000452f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMission playerUpgradedWeapon]
; address 0x1000452f4  size 180  kind objc
; ======================================================================
  1000452f4  stp     x22, x21, [sp, #-0x30]!
  1000452f8  stp     x20, x19, [sp, #0x10]
  1000452fc  stp     x29, x30, [sp, #0x20]
  100045300  add     x29, sp, #0x20
  100045304  mov     x19, x0
  100045308  adrp    x8, #0x100417000
  10004530c  nop
  100045310  ldr     x1, [x8, #0x9a8]
  100045314  bl      _objc_msgSend                            ; [self type]
  100045318  mov     x29, x29
  10004531c  bl      _objc_retainAutoreleasedReturnValue
  100045320  mov     x20, x0
  100045324  adrp    x8, #0x100416000
  100045328  nop
  10004532c  ldr     x1, [x8, #0xf58]
  100045330  adrp    x2, #0x1003bc000
  100045334  add     x2, x2, #0xed0                           ; @"upgrade"
  100045338  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"upgrade"]
  10004533c  mov     x21, x0
  100045340  mov     x0, x20
  100045344  bl      _objc_release
  100045348  cbz     w21, loc_100045384                       ; if ([[self type] isEqualToString:@"upgrade"] == 0)
  10004534c  adrp    x8, #0x100418000
  100045350  nop
  100045354  ldr     x1, [x8, #0x938]
  100045358  mov     x0, x19
  10004535c  bl      _objc_msgSend                            ; [self progression]
  100045360  add     w2, w0, #1
  100045364  adrp    x8, #0x100418000
  100045368  nop
  10004536c  ldr     x1, [x8, #0x910]
  100045370  mov     x0, x19
  100045374  ldp     x29, x30, [sp, #0x20]
  100045378  ldp     x20, x19, [sp, #0x10]
  10004537c  ldp     x22, x21, [sp], #0x30
  100045380  b       _objc_msgSend                            ; [self setProgression:([self progression] + 1)]
loc_100045384:
  100045384  ldp     x29, x30, [sp, #0x20]
  100045388  ldp     x20, x19, [sp, #0x10]
  10004538c  ldp     x22, x21, [sp], #0x30
  100045390  ret
  100045394  mov     x19, x0
  100045398  mov     x0, x20
  10004539c  bl      _objc_release
  1000453a0  mov     x0, x19
  1000453a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMission endGameplay]
; address 0x1000453a8  size 16  kind objc
; ======================================================================
  1000453a8  adrp    x8, #0x10041f000
  1000453ac  ldrsw   x8, [x8, #0x990]                         ; ivar offset ADMission.playerIsAlive (+0x8)
  1000453b0  strb    wzr, [x0, x8]                            ; self->playerIsAlive = 0
  1000453b4  ret

; ======================================================================
; -[ADMission playerSwappedWeapon]
; address 0x1000453b8  size 4  kind objc
; ======================================================================
  1000453b8  ret

; ======================================================================
; -[ADMission playerMissedAShot]
; address 0x1000453bc  size 4  kind objc
; ======================================================================
  1000453bc  ret

; ======================================================================
; -[ADMission isMissionCompleted]
; address 0x1000453c0  size 848  kind objc
; ======================================================================
  1000453c0  stp     d9, d8, [sp, #-0x60]!
  1000453c4  stp     x26, x25, [sp, #0x10]
  1000453c8  stp     x24, x23, [sp, #0x20]
  1000453cc  stp     x22, x21, [sp, #0x30]
  1000453d0  stp     x20, x19, [sp, #0x40]
  1000453d4  stp     x29, x30, [sp, #0x50]
  1000453d8  add     x29, sp, #0x50
  1000453dc  mov     x19, x0
  1000453e0  adrp    x8, #0x100417000
  1000453e4  nop
  1000453e8  ldr     x20, [x8, #0x9a8]
  1000453ec  mov     x1, x20
  1000453f0  bl      _objc_msgSend                            ; [self type]
  1000453f4  mov     x29, x29
  1000453f8  bl      _objc_retainAutoreleasedReturnValue
  1000453fc  mov     x22, x0
  100045400  adrp    x8, #0x100416000
  100045404  nop
  100045408  ldr     x21, [x8, #0xf58]
  10004540c  adrp    x2, #0x1003bb000
  100045410  add     x2, x2, #0xc30                           ; @"kill"
  100045414  mov     x1, x21
  100045418  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"kill"]
  10004541c  cbnz    w0, loc_100045454                        ; if ([[self type] isEqualToString:@"kill"] != 0)
  100045420  mov     x0, x19
  100045424  mov     x1, x20
  100045428  bl      _objc_msgSend                            ; [self type]
  10004542c  mov     x29, x29
  100045430  bl      _objc_retainAutoreleasedReturnValue
  100045434  mov     x23, x0
  100045438  adrp    x2, #0x1003bc000
  10004543c  add     x2, x2, #0xe90                           ; @"shoot"
  100045440  mov     x1, x21
  100045444  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"shoot"]
  100045448  tbz     w0, #0, loc_100045494                    ; if (!([[self type] isEqualToString:@"shoot"] & 1))
  10004544c  mov     x0, x23
  100045450  bl      _objc_release
loc_100045454:
  100045454  mov     x0, x22
  100045458  bl      _objc_release
loc_10004545c:
  10004545c  adrp    x8, #0x100418000
  100045460  nop
  100045464  ldr     x1, [x8, #0x938]
  100045468  mov     x0, x19
  10004546c  bl      _objc_msgSend                            ; [self progression]
  100045470  mov     x22, x0
  100045474  adrp    x8, #0x100418000
  100045478  nop
  10004547c  ldr     x1, [x8, #0x950]
  100045480  mov     x0, x19
  100045484  bl      _objc_msgSend                            ; [self objective]
  100045488  cmp     w22, w0
  10004548c  b.lt    loc_1000454dc                            ; if ([self progression] < [self objective])
  100045490  b       loc_100045628
loc_100045494:
  100045494  mov     x0, x19
  100045498  mov     x1, x20
  10004549c  bl      _objc_msgSend                            ; [self type]
  1000454a0  mov     x29, x29
  1000454a4  bl      _objc_retainAutoreleasedReturnValue
  1000454a8  mov     x24, x0
  1000454ac  adrp    x2, #0x1003bc000
  1000454b0  add     x2, x2, #0xeb0                           ; @"die"
  1000454b4  mov     x1, x21
  1000454b8  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"die"]
  1000454bc  mov     x25, x0
  1000454c0  mov     x0, x24
  1000454c4  bl      _objc_release
  1000454c8  mov     x0, x23
  1000454cc  bl      _objc_release
  1000454d0  mov     x0, x22
  1000454d4  bl      _objc_release
  1000454d8  tbnz    w25, #0, loc_10004545c                   ; if (([[self type] isEqualToString:@"die"] & 1))
loc_1000454dc:
  1000454dc  mov     x0, x19
  1000454e0  mov     x1, x20
  1000454e4  bl      _objc_msgSend                            ; [self type]
  1000454e8  mov     x29, x29
  1000454ec  bl      _objc_retainAutoreleasedReturnValue
  1000454f0  mov     x22, x0
  1000454f4  adrp    x2, #0x1003bc000
  1000454f8  add     x2, x2, #0xef0                           ; @"survive"
  1000454fc  mov     x1, x21
  100045500  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"survive"]
  100045504  mov     x23, x0
  100045508  mov     x0, x22
  10004550c  bl      _objc_release
  100045510  cbz     w23, loc_10004554c                       ; if ([[self type] isEqualToString:@"survive"] == 0)
  100045514  adrp    x8, #0x100418000
  100045518  nop
  10004551c  ldr     x1, [x8, #0x928]
  100045520  mov     x0, x19
  100045524  bl      _objc_msgSend                            ; [self survivalTime]
  100045528  mov     v8.16b, v0.16b
  10004552c  adrp    x8, #0x100418000
  100045530  nop
  100045534  ldr     x1, [x8, #0x950]
  100045538  mov     x0, x19
  10004553c  bl      _objc_msgSend                            ; [self objective]
  100045540  scvtf   s0, w0
  100045544  fcmp    s8, s0
  100045548  b.ge    loc_100045628                            ; if ([self survivalTime] >= (float)[self objective])
loc_10004554c:
  10004554c  mov     x0, x19
  100045550  mov     x1, x20
  100045554  bl      _objc_msgSend                            ; [self type]
  100045558  mov     x29, x29
  10004555c  bl      _objc_retainAutoreleasedReturnValue
  100045560  mov     x22, x0
  100045564  adrp    x2, #0x1003bb000
  100045568  add     x2, x2, #0xdb0                           ; @"accuracy"
  10004556c  mov     x1, x21
  100045570  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"accuracy"]
  100045574  mov     x23, x0
  100045578  mov     x0, x22
  10004557c  bl      _objc_release
  100045580  cbz     w23, loc_100045630                       ; if ([[self type] isEqualToString:@"accuracy"] == 0)
  100045584  adrp    x8, #0x100418000
  100045588  nop
  10004558c  ldr     x1, [x8, #0x948]
  100045590  mov     x0, x19
  100045594  bl      _objc_msgSend                            ; [self progression_zombies]
  100045598  mov     x20, x0
  10004559c  adrp    x8, #0x100418000
  1000455a0  nop
  1000455a4  ldr     x1, [x8, #0x958]
  1000455a8  mov     x0, x19
  1000455ac  bl      _objc_msgSend                            ; [self objective_zombies]
  1000455b0  cmp     w20, w0
  1000455b4  b.lt    loc_1000456a0                            ; if ([self progression_zombies] < [self objective_zombies])
  1000455b8  adrp    x8, #0x10041d000
  1000455bc  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  1000455c0  adrp    x8, #0x100417000
  1000455c4  nop
  1000455c8  ldr     x1, [x8, #0x228]
  1000455cc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000455d0  mov     x29, x29
  1000455d4  bl      _objc_retainAutoreleasedReturnValue
  1000455d8  mov     x20, x0
  1000455dc  adrp    x8, #0x100417000
  1000455e0  nop
  1000455e4  ldr     x1, [x8, #0xdc8]
  1000455e8  bl      _objc_msgSend                            ; [[ADInGameStats singleton] currentAccuracy]
  1000455ec  mov     v8.16b, v0.16b
  1000455f0  adrp    x8, #0x100418000
  1000455f4  nop
  1000455f8  ldr     x1, [x8, #0x950]
  1000455fc  mov     x0, x19
  100045600  bl      _objc_msgSend                            ; [self objective]
  100045604  adrp    x8, #0x100181000
  100045608  ldr     s0, [x8, #0xa10]                         ; s0 = 100.0
  10004560c  fmul    s0, s8, s0
  100045610  scvtf   s1, w0
  100045614  fcmp    s0, s1
  100045618  cset    w19, gt
  10004561c  mov     x0, x20
  100045620  bl      _objc_release
  100045624  b       loc_1000456a4
loc_100045628:
  100045628  mov     w19, #1
  10004562c  b       loc_1000456a4
loc_100045630:
  100045630  mov     x0, x19
  100045634  mov     x1, x20
  100045638  bl      _objc_msgSend                            ; [self type]
  10004563c  mov     x29, x29
  100045640  bl      _objc_retainAutoreleasedReturnValue
  100045644  mov     x20, x0
  100045648  adrp    x2, #0x1003bc000
  10004564c  add     x2, x2, #0xed0                           ; @"upgrade"
  100045650  mov     x1, x21
  100045654  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"upgrade"]
  100045658  mov     x21, x0
  10004565c  mov     x0, x20
  100045660  bl      _objc_release
  100045664  cbz     w21, loc_1000456a0                       ; if ([[self type] isEqualToString:@"upgrade"] == 0)
  100045668  adrp    x8, #0x100418000
  10004566c  nop
  100045670  ldr     x1, [x8, #0x938]
  100045674  mov     x0, x19
  100045678  bl      _objc_msgSend                            ; [self progression]
  10004567c  mov     x20, x0
  100045680  adrp    x8, #0x100418000
  100045684  nop
  100045688  ldr     x1, [x8, #0x950]
  10004568c  mov     x0, x19
  100045690  bl      _objc_msgSend                            ; [self objective]
  100045694  cmp     w20, w0
  100045698  cset    w19, ge
  10004569c  b       loc_1000456a4
loc_1000456a0:
  1000456a0  mov     w19, #0
loc_1000456a4:
  1000456a4  mov     x0, x19
  1000456a8  ldp     x29, x30, [sp, #0x50]
  1000456ac  ldp     x20, x19, [sp, #0x40]
  1000456b0  ldp     x22, x21, [sp, #0x30]
  1000456b4  ldp     x24, x23, [sp, #0x20]
  1000456b8  ldp     x26, x25, [sp, #0x10]
  1000456bc  ldp     d9, d8, [sp], #0x60
  1000456c0  ret
  1000456c4  b       loc_1000456d4
  1000456c8  mov     x19, x0
  1000456cc  b       loc_1000456e8
  1000456d0  b       loc_1000456d4
loc_1000456d4:
  1000456d4  mov     x19, x0
  1000456d8  b       loc_1000456f0
  1000456dc  mov     x19, x0
  1000456e0  mov     x0, x24
  1000456e4  bl      _objc_release
loc_1000456e8:
  1000456e8  mov     x0, x23
  1000456ec  bl      _objc_release
loc_1000456f0:
  1000456f0  mov     x0, x22
loc_1000456f4:
  1000456f4  bl      _objc_release
  1000456f8  mov     x0, x19
  1000456fc  bl      __Unwind_Resume                          ; Unwind_Resume()
  100045700  b       loc_100045704
loc_100045704:
  100045704  mov     x19, x0
  100045708  mov     x0, x20
  10004570c  b       loc_1000456f4

; ======================================================================
; -[ADMission completionToString]
; address 0x100045710  size 924  kind objc
; ======================================================================
  100045710  stp     x26, x25, [sp, #-0x50]!
  100045714  stp     x24, x23, [sp, #0x10]
  100045718  stp     x22, x21, [sp, #0x20]
  10004571c  stp     x20, x19, [sp, #0x30]
  100045720  stp     x29, x30, [sp, #0x40]
  100045724  add     x29, sp, #0x40
  100045728  sub     sp, sp, #0x20
  10004572c  mov     x19, x0
  100045730  adrp    x8, #0x100418000
  100045734  nop
  100045738  ldr     x1, [x8, #0x920]
  10004573c  bl      _objc_msgSend                            ; [self attempts]
  100045740  cbz     w0, loc_100045a0c                        ; if ([self attempts] == 0)
  100045744  adrp    x8, #0x100417000
  100045748  nop
  10004574c  ldr     x20, [x8, #0x9a8]
  100045750  mov     x0, x19
  100045754  mov     x1, x20
  100045758  bl      _objc_msgSend                            ; [self type]
  10004575c  mov     x29, x29
  100045760  bl      _objc_retainAutoreleasedReturnValue
  100045764  mov     x22, x0
  100045768  adrp    x8, #0x100416000
  10004576c  nop
  100045770  ldr     x21, [x8, #0xf58]
  100045774  adrp    x2, #0x1003bb000
  100045778  add     x2, x2, #0xc30                           ; @"kill"
  10004577c  mov     x1, x21
  100045780  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"kill"]
  100045784  cbnz    w0, loc_1000457bc                        ; if ([[self type] isEqualToString:@"kill"] != 0)
  100045788  mov     x0, x19
  10004578c  mov     x1, x20
  100045790  bl      _objc_msgSend                            ; [self type]
  100045794  mov     x29, x29
  100045798  bl      _objc_retainAutoreleasedReturnValue
  10004579c  mov     x23, x0
  1000457a0  adrp    x2, #0x1003bc000
  1000457a4  add     x2, x2, #0xe90                           ; @"shoot"
  1000457a8  mov     x1, x21
  1000457ac  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"shoot"]
  1000457b0  tbz     w0, #0, loc_100045828                    ; if (!([[self type] isEqualToString:@"shoot"] & 1))
  1000457b4  mov     x0, x23
  1000457b8  bl      _objc_release
loc_1000457bc:
  1000457bc  mov     x0, x22
  1000457c0  bl      _objc_release
loc_1000457c4:
  1000457c4  adrp    x8, #0x10041d000
  1000457c8  ldr     x20, [x8, #0xf78]                        ; class NSString
  1000457cc  adrp    x8, #0x100418000
  1000457d0  nop
  1000457d4  ldr     x1, [x8, #0x938]
  1000457d8  mov     x0, x19
  1000457dc  bl      _objc_msgSend                            ; [self progression]
  1000457e0  mov     x21, x0
  1000457e4  adrp    x8, #0x100418000
  1000457e8  nop
  1000457ec  ldr     x1, [x8, #0x950]
  1000457f0  mov     x0, x19
  1000457f4  bl      _objc_msgSend                            ; [self objective]
  1000457f8  adrp    x8, #0x100416000
  1000457fc  nop
  100045800  ldr     x1, [x8, #0xee8]
  100045804  stp     x21, x0, [sp]
  100045808  adrp    x2, #0x1003bc000
  10004580c  add     x2, x2, #0xf10                           ; @"%i/%i"
  100045810  mov     x0, x20
  100045814  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i/%i", [self progression], [self objective]]
  100045818  mov     x29, x29
loc_10004581c:
  10004581c  bl      _objc_retainAutoreleasedReturnValue
  100045820  mov     x19, x0
  100045824  b       loc_100045a1c
loc_100045828:
  100045828  mov     x0, x19
  10004582c  mov     x1, x20
  100045830  bl      _objc_msgSend                            ; [self type]
  100045834  mov     x29, x29
  100045838  bl      _objc_retainAutoreleasedReturnValue
  10004583c  mov     x24, x0
  100045840  adrp    x2, #0x1003bc000
  100045844  add     x2, x2, #0xeb0                           ; @"die"
  100045848  mov     x1, x21
  10004584c  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"die"]
  100045850  mov     x25, x0
  100045854  mov     x0, x24
  100045858  bl      _objc_release
  10004585c  mov     x0, x23
  100045860  bl      _objc_release
  100045864  mov     x0, x22
  100045868  bl      _objc_release
  10004586c  tbnz    w25, #0, loc_1000457c4                   ; if (([[self type] isEqualToString:@"die"] & 1))
  100045870  mov     x0, x19
  100045874  mov     x1, x20
  100045878  bl      _objc_msgSend                            ; [self type]
  10004587c  mov     x29, x29
  100045880  bl      _objc_retainAutoreleasedReturnValue
  100045884  mov     x22, x0
  100045888  adrp    x2, #0x1003bc000
  10004588c  add     x2, x2, #0xef0                           ; @"survive"
  100045890  mov     x1, x21
  100045894  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"survive"]
  100045898  mov     x23, x0
  10004589c  mov     x0, x22
  1000458a0  bl      _objc_release
  1000458a4  cbz     w23, loc_100045904                       ; if ([[self type] isEqualToString:@"survive"] == 0)
  1000458a8  adrp    x8, #0x10041d000
  1000458ac  ldr     x20, [x8, #0xf78]                        ; class NSString
  1000458b0  adrp    x8, #0x100418000
  1000458b4  nop
  1000458b8  ldr     x1, [x8, #0x928]
  1000458bc  mov     x0, x19
  1000458c0  bl      _objc_msgSend                            ; [self survivalTime]
  1000458c4  fcvtzs  w21, s0
  1000458c8  adrp    x8, #0x100418000
  1000458cc  nop
  1000458d0  ldr     x1, [x8, #0x950]
  1000458d4  mov     x0, x19
  1000458d8  bl      _objc_msgSend                            ; [self objective]
  1000458dc  adrp    x8, #0x100416000
  1000458e0  nop
  1000458e4  ldr     x1, [x8, #0xee8]
  1000458e8  stp     x21, x0, [sp]
  1000458ec  adrp    x2, #0x1003bc000
  1000458f0  add     x2, x2, #0xf10                           ; @"%i/%i"
  1000458f4  mov     x0, x20
  1000458f8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i/%i", (int)[self survivalTime], [self objective]]
  1000458fc  mov     x29, x29
  100045900  b       loc_10004581c
loc_100045904:
  100045904  mov     x0, x19
  100045908  mov     x1, x20
  10004590c  bl      _objc_msgSend                            ; [self type]
  100045910  mov     x29, x29
  100045914  bl      _objc_retainAutoreleasedReturnValue
  100045918  mov     x20, x0
  10004591c  adrp    x2, #0x1003bb000
  100045920  add     x2, x2, #0xdb0                           ; @"accuracy"
  100045924  mov     x1, x21
  100045928  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"accuracy"]
  10004592c  mov     x21, x0
  100045930  mov     x0, x20
  100045934  bl      _objc_release
  100045938  cbz     w21, loc_100045a0c                       ; if ([[self type] isEqualToString:@"accuracy"] == 0)
  10004593c  adrp    x8, #0x100418000
  100045940  nop
  100045944  ldr     x21, [x8, #0x948]
  100045948  mov     x0, x19
  10004594c  mov     x1, x21
  100045950  bl      _objc_msgSend                            ; [self progression_zombies]
  100045954  mov     x22, x0
  100045958  adrp    x8, #0x10041d000
  10004595c  ldr     x20, [x8, #0xf78]                        ; class NSString
  100045960  mov     x0, x19
  100045964  mov     x1, x21
  100045968  bl      _objc_msgSend                            ; [self progression_zombies]
  10004596c  mov     x21, x0
  100045970  adrp    x8, #0x100418000
  100045974  nop
  100045978  ldr     x1, [x8, #0x958]
  10004597c  mov     x0, x19
  100045980  bl      _objc_msgSend                            ; [self objective_zombies]
  100045984  mov     x19, x0
  100045988  cbz     w22, loc_100045a3c                       ; if ([self progression_zombies] == 0)
  10004598c  adrp    x8, #0x10041d000
  100045990  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  100045994  adrp    x8, #0x100417000
  100045998  nop
  10004599c  ldr     x1, [x8, #0x228]
  1000459a0  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000459a4  mov     x29, x29
  1000459a8  bl      _objc_retainAutoreleasedReturnValue
  1000459ac  mov     x22, x0
  1000459b0  adrp    x8, #0x100417000
  1000459b4  nop
  1000459b8  ldr     x1, [x8, #0xdc8]
  1000459bc  bl      _objc_msgSend                            ; [[ADInGameStats singleton] currentAccuracy]
  1000459c0  fcvt    d0, s0
  1000459c4  adrp    x8, #0x100181000
  1000459c8  ldr     d1, [x8, #0xbb8]                         ; d1 = 100.0
  1000459cc  fmul    d0, d0, d1
  1000459d0  adrp    x8, #0x100416000
  1000459d4  nop
  1000459d8  ldr     x1, [x8, #0xee8]
  1000459dc  str     d0, [sp, #0x10]
  1000459e0  stp     x21, x19, [sp]
  1000459e4  adrp    x2, #0x1003bc000
  1000459e8  add     x2, x2, #0xf30                           ; @"%i/%i    %.1f%%"
  1000459ec  mov     x0, x20
  1000459f0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i/%i    %.1f%%", [self progression_zombies], [self objective_zombies], ([[ADInGameStats singleton] currentAccuracy] * 100)]
  1000459f4  mov     x29, x29
  1000459f8  bl      _objc_retainAutoreleasedReturnValue
  1000459fc  mov     x19, x0
  100045a00  mov     x0, x22
  100045a04  bl      _objc_release
  100045a08  b       loc_100045a1c
loc_100045a0c:
  100045a0c  adrp    x19, #0x1003b9000
  100045a10  add     x19, x19, #0x870                         ; @""
  100045a14  mov     x0, x19
  100045a18  bl      _objc_retain
loc_100045a1c:
  100045a1c  mov     x0, x19
  100045a20  sub     sp, x29, #0x40
  100045a24  ldp     x29, x30, [sp, #0x40]
  100045a28  ldp     x20, x19, [sp, #0x30]
  100045a2c  ldp     x22, x21, [sp, #0x20]
  100045a30  ldp     x24, x23, [sp, #0x10]
  100045a34  ldp     x26, x25, [sp], #0x50
  100045a38  b       _objc_autoreleaseReturnValue
loc_100045a3c:
  100045a3c  adrp    x8, #0x100416000
  100045a40  nop
  100045a44  ldr     x1, [x8, #0xee8]
  100045a48  stp     x21, x19, [sp]
  100045a4c  adrp    x2, #0x1003bc000
  100045a50  add     x2, x2, #0xf10                           ; @"%i/%i"
  100045a54  mov     x0, x20
  100045a58  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i/%i", [self progression_zombies], [self objective_zombies]]
  100045a5c  mov     x29, x29
  100045a60  b       loc_10004581c
loc_100045a64:
  100045a64  mov     x19, x0
  100045a68  b       loc_100045a88
  100045a6c  mov     x19, x0
  100045a70  b       loc_100045a80
  100045a74  mov     x19, x0
  100045a78  mov     x0, x24
  100045a7c  bl      _objc_release
loc_100045a80:
  100045a80  mov     x0, x23
  100045a84  bl      _objc_release
loc_100045a88:
  100045a88  mov     x0, x22
loc_100045a8c:
  100045a8c  bl      _objc_release
  100045a90  mov     x0, x19
  100045a94  bl      __Unwind_Resume                          ; Unwind_Resume()
  100045a98  b       loc_100045a64
  100045a9c  mov     x19, x0
  100045aa0  mov     x0, x20
  100045aa4  b       loc_100045a8c
  100045aa8  b       loc_100045a64

; ======================================================================
; -[ADMission completionToFloat]
; address 0x100045aac  size 608  kind objc
; ======================================================================
  100045aac  stp     d9, d8, [sp, #-0x60]!
  100045ab0  stp     x26, x25, [sp, #0x10]
  100045ab4  stp     x24, x23, [sp, #0x20]
  100045ab8  stp     x22, x21, [sp, #0x30]
  100045abc  stp     x20, x19, [sp, #0x40]
  100045ac0  stp     x29, x30, [sp, #0x50]
  100045ac4  add     x29, sp, #0x50
  100045ac8  sub     sp, sp, #0x10
  100045acc  mov     x19, x0
  100045ad0  adrp    x8, #0x100417000
  100045ad4  nop
  100045ad8  ldr     x20, [x8, #0x9a8]
  100045adc  mov     x1, x20
  100045ae0  bl      _objc_msgSend                            ; [self type]
  100045ae4  mov     x29, x29
  100045ae8  bl      _objc_retainAutoreleasedReturnValue
  100045aec  mov     x22, x0
  100045af0  adrp    x8, #0x100416000
  100045af4  nop
  100045af8  ldr     x21, [x8, #0xf58]
  100045afc  adrp    x2, #0x1003bb000
  100045b00  add     x2, x2, #0xc30                           ; @"kill"
  100045b04  mov     x1, x21
  100045b08  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"kill"]
  100045b0c  cbnz    w0, loc_100045b44                        ; if ([[self type] isEqualToString:@"kill"] != 0)
  100045b10  mov     x0, x19
  100045b14  mov     x1, x20
  100045b18  bl      _objc_msgSend                            ; [self type]
  100045b1c  mov     x29, x29
  100045b20  bl      _objc_retainAutoreleasedReturnValue
  100045b24  mov     x23, x0
  100045b28  adrp    x2, #0x1003bc000
  100045b2c  add     x2, x2, #0xe90                           ; @"shoot"
  100045b30  mov     x1, x21
  100045b34  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"shoot"]
  100045b38  tbz     w0, #0, loc_100045c74                    ; if (!([[self type] isEqualToString:@"shoot"] & 1))
  100045b3c  mov     x0, x23
  100045b40  bl      _objc_release
loc_100045b44:
  100045b44  mov     x0, x22
  100045b48  bl      _objc_release
loc_100045b4c:
  100045b4c  adrp    x8, #0x100418000
  100045b50  nop
  100045b54  ldr     x1, [x8, #0x938]
  100045b58  mov     x0, x19
  100045b5c  bl      _objc_msgSend                            ; [self progression]
  100045b60  scvtf   s8, w0
  100045b64  adrp    x8, #0x100418000
  100045b68  nop
  100045b6c  ldr     x1, [x8, #0x950]
  100045b70  mov     x0, x19
  100045b74  bl      _objc_msgSend                            ; [self objective]
  100045b78  scvtf   s0, w0
  100045b7c  fdiv    s0, s8, s0
loc_100045b80:
  100045b80  str     q0, [sp]
  100045b84  mov     x0, x19
  100045b88  mov     x1, x20
  100045b8c  bl      _objc_msgSend                            ; [self type]
  100045b90  mov     x29, x29
  100045b94  bl      _objc_retainAutoreleasedReturnValue
  100045b98  mov     x22, x0
  100045b9c  adrp    x2, #0x1003bc000
  100045ba0  add     x2, x2, #0xef0                           ; @"survive"
  100045ba4  mov     x1, x21
  100045ba8  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"survive"]
  100045bac  mov     x23, x0
  100045bb0  mov     x0, x22
  100045bb4  bl      _objc_release
  100045bb8  cbz     w23, loc_100045bf4                       ; if ([[self type] isEqualToString:@"survive"] == 0)
  100045bbc  adrp    x8, #0x100418000
  100045bc0  nop
  100045bc4  ldr     x1, [x8, #0x928]
  100045bc8  mov     x0, x19
  100045bcc  bl      _objc_msgSend                            ; [self survivalTime]
  100045bd0  mov     v8.16b, v0.16b
  100045bd4  adrp    x8, #0x100418000
  100045bd8  nop
  100045bdc  ldr     x1, [x8, #0x950]
  100045be0  mov     x0, x19
  100045be4  bl      _objc_msgSend                            ; [self objective]
  100045be8  scvtf   s0, w0
  100045bec  fdiv    s0, s8, s0
  100045bf0  str     q0, [sp]
loc_100045bf4:
  100045bf4  mov     x0, x19
  100045bf8  mov     x1, x20
  100045bfc  bl      _objc_msgSend                            ; [self type]
  100045c00  mov     x29, x29
  100045c04  bl      _objc_retainAutoreleasedReturnValue
  100045c08  mov     x20, x0
  100045c0c  adrp    x2, #0x1003bb000
  100045c10  add     x2, x2, #0xdb0                           ; @"accuracy"
  100045c14  mov     x1, x21
  100045c18  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"accuracy"]
  100045c1c  mov     x21, x0
  100045c20  mov     x0, x20
  100045c24  bl      _objc_release
  100045c28  ldr     q1, [sp]
  100045c2c  cbz     w21, loc_100045c48                       ; if ([[self type] isEqualToString:@"accuracy"] == 0)
  100045c30  adrp    x8, #0x100418000
  100045c34  nop
  100045c38  ldr     x1, [x8, #0x948]
  100045c3c  mov     x0, x19
  100045c40  bl      _objc_msgSend                            ; [self progression_zombies]
  100045c44  movi    v1.16b, #0
loc_100045c48:
  100045c48  fmov    s0, #1.00000000
  100045c4c  fcmp    s1, s0
  100045c50  fcsel   s0, s0, s1, gt
  100045c54  sub     sp, x29, #0x50
  100045c58  ldp     x29, x30, [sp, #0x50]
  100045c5c  ldp     x20, x19, [sp, #0x40]
  100045c60  ldp     x22, x21, [sp, #0x30]
  100045c64  ldp     x24, x23, [sp, #0x20]
  100045c68  ldp     x26, x25, [sp, #0x10]
  100045c6c  ldp     d9, d8, [sp], #0x60
  100045c70  ret
loc_100045c74:
  100045c74  mov     x0, x19
  100045c78  mov     x1, x20
  100045c7c  bl      _objc_msgSend                            ; [self type]
  100045c80  mov     x29, x29
  100045c84  bl      _objc_retainAutoreleasedReturnValue
  100045c88  mov     x24, x0
  100045c8c  adrp    x2, #0x1003bc000
  100045c90  add     x2, x2, #0xeb0                           ; @"die"
  100045c94  mov     x1, x21
  100045c98  bl      _objc_msgSend                            ; [[self type] isEqualToString:@"die"]
  100045c9c  mov     x25, x0
  100045ca0  mov     x0, x24
  100045ca4  bl      _objc_release
  100045ca8  mov     x0, x23
  100045cac  bl      _objc_release
  100045cb0  mov     x0, x22
  100045cb4  bl      _objc_release
  100045cb8  tbnz    w25, #0, loc_100045b4c                   ; if (([[self type] isEqualToString:@"die"] & 1))
  100045cbc  movi    v0.16b, #0
  100045cc0  b       loc_100045b80
  100045cc4  mov     x19, x0
  100045cc8  b       loc_100045cfc
  100045ccc  mov     x19, x0
  100045cd0  b       loc_100045cfc
  100045cd4  mov     x19, x0
  100045cd8  mov     x0, x20
  100045cdc  b       loc_100045d00
  100045ce0  mov     x19, x0
  100045ce4  b       loc_100045cf4
  100045ce8  mov     x19, x0
  100045cec  mov     x0, x24
  100045cf0  bl      _objc_release
loc_100045cf4:
  100045cf4  mov     x0, x23
  100045cf8  bl      _objc_release
loc_100045cfc:
  100045cfc  mov     x0, x22
loc_100045d00:
  100045d00  bl      _objc_release
  100045d04  mov     x0, x19
  100045d08  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMission cellViewForMissionWithCellIdentifier:]
; address 0x100045d0c  size 1056  kind objc
; ======================================================================
  100045d0c  stp     x26, x25, [sp, #-0x50]!
  100045d10  stp     x24, x23, [sp, #0x10]
  100045d14  stp     x22, x21, [sp, #0x20]
  100045d18  stp     x20, x19, [sp, #0x30]
  100045d1c  stp     x29, x30, [sp, #0x40]
  100045d20  add     x29, sp, #0x40
  100045d24  sub     sp, sp, #0x10
  100045d28  mov     x20, x0
  100045d2c  mov     x0, x2
  100045d30  bl      _objc_retain
  100045d34  mov     x19, x0
  100045d38  mov     x22, #0
  100045d3c  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  100045d40  cbz     w0, loc_100045ebc                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  100045d44  adrp    x8, #0x10041e000
  100045d48  ldr     x0, [x8, #0x198]                         ; class UITableViewCell
  100045d4c  adrp    x8, #0x100416000
  100045d50  nop
  100045d54  ldr     x1, [x8, #0xac8]
  100045d58  mov     x22, #0
  100045d5c  bl      _objc_msgSend                            ; [UITableViewCell alloc]
  100045d60  adrp    x8, #0x100417000
  100045d64  nop
  100045d68  ldr     x1, [x8, #0x3c0]
  100045d6c  mov     x22, #0
  100045d70  mov     w2, #3
  100045d74  mov     x3, x19
  100045d78  bl      _objc_msgSend                            ; [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:arg1]
  100045d7c  mov     x21, x0
  100045d80  mov     x22, x21
  100045d84  adrp    x8, #0x100417000
  100045d88  nop
  100045d8c  ldr     x1, [x8, #0x320]
  100045d90  mov     x0, x21
  100045d94  bl      _objc_msgSend                            ; [[[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:arg1] textLabel]
  100045d98  mov     x29, x29
  100045d9c  bl      _objc_retainAutoreleasedReturnValue
  100045da0  mov     x23, x0
  100045da4  adrp    x8, #0x10041d000
  100045da8  ldr     x22, [x8, #0xf78]                        ; class NSString
  100045dac  adrp    x8, #0x100418000
  100045db0  nop
  100045db4  ldr     x1, [x8, #0x648]
  100045db8  mov     x0, x20
  100045dbc  bl      _objc_msgSend                            ; [self description]
  100045dc0  mov     x29, x29
  100045dc4  bl      _objc_retainAutoreleasedReturnValue
  100045dc8  mov     x25, x0
  100045dcc  adrp    x8, #0x100418000
  100045dd0  nop
  100045dd4  ldr     x1, [x8, #0x650]
  100045dd8  mov     x0, x20
  100045ddc  bl      _objc_msgSend                            ; [self reward]
  100045de0  adrp    x8, #0x100416000
  100045de4  nop
  100045de8  ldr     x1, [x8, #0xee8]
  100045dec  stp     x25, x0, [sp]
  100045df0  adrp    x2, #0x1003bc000
  100045df4  add     x2, x2, #0xf50                           ; @"%@ ; reward : %i coins"
  100045df8  mov     x0, x22
  100045dfc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ ; reward : %i coins", [self description], [self reward]]
  100045e00  mov     x29, x29
  100045e04  bl      _objc_retainAutoreleasedReturnValue
  100045e08  mov     x26, x0
  100045e0c  adrp    x8, #0x100416000
  100045e10  nop
  100045e14  ldr     x24, [x8, #0xb68]
  100045e18  mov     x0, x23
  100045e1c  mov     x1, x24
  100045e20  mov     x2, x26
  100045e24  bl      _objc_msgSend                            ; [[[[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:arg1] textLabel] setText:[NSString stringWithFormat:@"%@ ; reward : %i coins", [self description], [self reward]]]
  100045e28  mov     x22, x21
  100045e2c  mov     x0, x26
  100045e30  bl      _objc_release
  100045e34  mov     x0, x25
  100045e38  bl      _objc_release
  100045e3c  mov     x0, x23
  100045e40  bl      _objc_release
  100045e44  adrp    x8, #0x100418000
  100045e48  nop
  100045e4c  ldr     x1, [x8, #0x920]
  100045e50  mov     x0, x20
  100045e54  bl      _objc_msgSend                            ; [self attempts]
  100045e58  adrp    x8, #0x100417000
  100045e5c  add     x8, x8, #0x338                           ; &@selector(detailTextLabel)
  100045e60  ldr     x1, [x8]
  100045e64  cmp     w0, #1
  100045e68  b.lt    loc_100046018                            ; if ([self attempts] < 1)
  100045e6c  mov     x22, x21
  100045e70  mov     x0, x21
  100045e74  bl      _objc_msgSend                            ; [[[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:arg1] detailTextLabel]
  100045e78  mov     x29, x29
  100045e7c  bl      _objc_retainAutoreleasedReturnValue
  100045e80  mov     x22, x0
  100045e84  adrp    x8, #0x100418000
  100045e88  nop
  100045e8c  ldr     x1, [x8, #0x660]
  100045e90  mov     x0, x20
  100045e94  bl      _objc_msgSend                            ; [self completionToString]
  100045e98  mov     x29, x29
  100045e9c  bl      _objc_retainAutoreleasedReturnValue
  100045ea0  mov     x23, x0
  100045ea4  mov     x0, x22
  100045ea8  mov     x1, x24
  100045eac  mov     x2, x23
  100045eb0  bl      _objc_msgSend                            ; [[[[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:arg1] detailTextLabel] setText:[self completionToString]]
  100045eb4  b       loc_10004600c
  100045eb8  b       loc_1000460ec
loc_100045ebc:
  100045ebc  adrp    x8, #0x10041e000
  100045ec0  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  100045ec4  adrp    x8, #0x100416000
  100045ec8  nop
  100045ecc  ldr     x1, [x8, #0xac8]
  100045ed0  mov     x22, #0
  100045ed4  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  100045ed8  adrp    x8, #0x100417000
  100045edc  nop
  100045ee0  ldr     x1, [x8, #0x3c0]
  100045ee4  mov     x22, #0
  100045ee8  mov     w2, #3
  100045eec  mov     x3, x19
  100045ef0  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:arg1]
  100045ef4  mov     x21, x0
  100045ef8  mov     x22, x21
  100045efc  adrp    x8, #0x100417000
  100045f00  nop
  100045f04  ldr     x1, [x8, #0x320]
  100045f08  mov     x0, x21
  100045f0c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:arg1] textLabel]
  100045f10  mov     x29, x29
  100045f14  bl      _objc_retainAutoreleasedReturnValue
  100045f18  mov     x23, x0
  100045f1c  adrp    x8, #0x10041d000
  100045f20  ldr     x22, [x8, #0xf78]                        ; class NSString
  100045f24  adrp    x8, #0x100418000
  100045f28  nop
  100045f2c  ldr     x1, [x8, #0x648]
  100045f30  mov     x0, x20
  100045f34  bl      _objc_msgSend                            ; [self description]
  100045f38  mov     x29, x29
  100045f3c  bl      _objc_retainAutoreleasedReturnValue
  100045f40  mov     x24, x0
  100045f44  adrp    x8, #0x100418000
  100045f48  nop
  100045f4c  ldr     x1, [x8, #0x650]
  100045f50  mov     x0, x20
  100045f54  bl      _objc_msgSend                            ; [self reward]
  100045f58  adrp    x8, #0x100416000
  100045f5c  nop
  100045f60  ldr     x1, [x8, #0xee8]
  100045f64  stp     x24, x0, [sp]
  100045f68  adrp    x2, #0x1003bc000
  100045f6c  add     x2, x2, #0xf50                           ; @"%@ ; reward : %i coins"
  100045f70  mov     x0, x22
  100045f74  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ ; reward : %i coins", [self description], [self reward]]
  100045f78  mov     x29, x29
  100045f7c  bl      _objc_retainAutoreleasedReturnValue
  100045f80  mov     x26, x0
  100045f84  adrp    x8, #0x100416000
  100045f88  nop
  100045f8c  ldr     x25, [x8, #0xb68]
  100045f90  mov     x0, x23
  100045f94  mov     x1, x25
  100045f98  mov     x2, x26
  100045f9c  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:arg1] textLabel] setText:[NSString stringWithFormat:@"%@ ; reward : %i coins", [self description], [self reward]]]
  100045fa0  mov     x22, x21
  100045fa4  mov     x0, x26
  100045fa8  bl      _objc_release
  100045fac  mov     x0, x24
  100045fb0  bl      _objc_release
  100045fb4  mov     x0, x23
  100045fb8  bl      _objc_release
  100045fbc  adrp    x8, #0x100417000
  100045fc0  nop
  100045fc4  ldr     x1, [x8, #0x338]
  100045fc8  mov     x0, x21
  100045fcc  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:arg1] detailTextLabel]
  100045fd0  mov     x29, x29
  100045fd4  bl      _objc_retainAutoreleasedReturnValue
  100045fd8  mov     x22, x0
  100045fdc  adrp    x8, #0x100418000
  100045fe0  nop
  100045fe4  ldr     x1, [x8, #0x660]
  100045fe8  mov     x0, x20
  100045fec  bl      _objc_msgSend                            ; [self completionToString]
  100045ff0  mov     x29, x29
  100045ff4  bl      _objc_retainAutoreleasedReturnValue
  100045ff8  mov     x23, x0
  100045ffc  mov     x0, x22
  100046000  mov     x1, x25
  100046004  mov     x2, x23
  100046008  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:arg1] detailTextLabel] setText:[self completionToString]]
loc_10004600c:
  10004600c  mov     x0, x23
  100046010  bl      _objc_release
  100046014  b       loc_100046040
loc_100046018:
  100046018  mov     x22, x21
  10004601c  mov     x0, x21
  100046020  bl      _objc_msgSend                            ; [[[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:arg1] detailTextLabel]
  100046024  mov     x29, x29
  100046028  bl      _objc_retainAutoreleasedReturnValue
  10004602c  mov     x22, x0
  100046030  adrp    x2, #0x1003bc000
  100046034  add     x2, x2, #0xf70                           ; @"New mission"
  100046038  mov     x1, x24
  10004603c  bl      _objc_msgSend                            ; [[[[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:arg1] detailTextLabel] setText:@"New mission"]
loc_100046040:
  100046040  mov     x0, x22
  100046044  bl      _objc_release
  100046048  mov     x22, x21
  10004604c  adrp    x8, #0x100417000
  100046050  nop
  100046054  ldr     x1, [x8, #0x3b0]
  100046058  mov     x2, #0
  10004605c  mov     x0, x22
  100046060  bl      _objc_msgSend                            ; [x0 setSelectionStyle:0]
  100046064  mov     x0, x19
  100046068  bl      _objc_release
  10004606c  mov     x0, x22
  100046070  sub     sp, x29, #0x40
  100046074  ldp     x29, x30, [sp, #0x40]
  100046078  ldp     x20, x19, [sp, #0x30]
  10004607c  ldp     x22, x21, [sp, #0x20]
  100046080  ldp     x24, x23, [sp, #0x10]
  100046084  ldp     x26, x25, [sp], #0x50
  100046088  b       _objc_autoreleaseReturnValue
  10004608c  mov     x20, x0
  100046090  b       loc_100046114
  100046094  mov     x20, x0
  100046098  b       loc_1000460b8
  10004609c  mov     x20, x0
  1000460a0  b       loc_1000460d4
  1000460a4  mov     x20, x0
  1000460a8  b       loc_1000460dc
  1000460ac  mov     x20, x0
  1000460b0  mov     x0, x26
  1000460b4  bl      _objc_release
loc_1000460b8:
  1000460b8  mov     x0, x25
  1000460bc  b       loc_1000460d8
  1000460c0  mov     x20, x0
  1000460c4  b       loc_1000460dc
  1000460c8  mov     x20, x0
  1000460cc  mov     x0, x26
  1000460d0  bl      _objc_release
loc_1000460d4:
  1000460d4  mov     x0, x24
loc_1000460d8:
  1000460d8  bl      _objc_release
loc_1000460dc:
  1000460dc  mov     x0, x23
  1000460e0  b       loc_10004610c
  1000460e4  mov     x20, x0
  1000460e8  b       loc_100046108
loc_1000460ec:
  1000460ec  mov     x20, x0
  1000460f0  mov     x0, x23
  1000460f4  bl      _objc_release
  1000460f8  b       loc_100046108
  1000460fc  mov     x20, x0
  100046100  b       loc_100046108
  100046104  mov     x20, x0
loc_100046108:
  100046108  mov     x0, x22
loc_10004610c:
  10004610c  bl      _objc_release
  100046110  mov     x22, x21
loc_100046114:
  100046114  mov     x0, x22
  100046118  bl      _objc_release
  10004611c  mov     x0, x19
  100046120  bl      _objc_release
  100046124  mov     x0, x20
  100046128  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMission initWithCoder:]
; address 0x10004612c  size 916  kind objc
; ======================================================================
  10004612c  stp     x24, x23, [sp, #-0x40]!
  100046130  stp     x22, x21, [sp, #0x10]
  100046134  stp     x20, x19, [sp, #0x20]
  100046138  stp     x29, x30, [sp, #0x30]
  10004613c  add     x29, sp, #0x30
  100046140  sub     sp, sp, #0x10
  100046144  mov     x20, x0
  100046148  mov     x0, x2
  10004614c  bl      _objc_retain
  100046150  mov     x19, x0
  100046154  str     x20, [sp]
  100046158  adrp    x8, #0x10041e000
  10004615c  ldr     x8, [x8, #0xd10]
  100046160  str     x8, [sp, #8]
  100046164  adrp    x8, #0x100416000
  100046168  nop
  10004616c  ldr     x1, [x8, #0xab8]
  100046170  mov     x22, #0
  100046174  mov     x0, sp
  100046178  bl      _objc_msgSendSuper2                      ; [super init]
  10004617c  mov     x20, x0
  100046180  cbz     x20, loc_100046458                       ; if (self == 0)
  100046184  mov     x22, x20
  100046188  adrp    x8, #0x100418000
  10004618c  nop
  100046190  ldr     x21, [x8, #0x960]
  100046194  adrp    x2, #0x1003bc000
  100046198  add     x2, x2, #0x990                           ; @"objective"
  10004619c  mov     x0, x19
  1000461a0  mov     x1, x21
  1000461a4  bl      _objc_msgSend                            ; [arg1 decodeIntForKey:@"objective"]
  1000461a8  mov     x2, x0
  1000461ac  mov     x22, x20
  1000461b0  adrp    x8, #0x100418000
  1000461b4  nop
  1000461b8  ldr     x1, [x8, #0x8c0]
  1000461bc  mov     x0, x20
  1000461c0  bl      _objc_msgSend                            ; [self setObjective:[arg1 decodeIntForKey:@"objective"]]
  1000461c4  mov     x22, x20
  1000461c8  adrp    x2, #0x1003bc000
  1000461cc  add     x2, x2, #0xf90                           ; @"objective_zombies"
  1000461d0  mov     x0, x19
  1000461d4  mov     x1, x21
  1000461d8  bl      _objc_msgSend                            ; [arg1 decodeIntForKey:@"objective_zombies"]
  1000461dc  mov     x2, x0
  1000461e0  mov     x22, x20
  1000461e4  adrp    x8, #0x100418000
  1000461e8  nop
  1000461ec  ldr     x1, [x8, #0x8b8]
  1000461f0  mov     x0, x20
  1000461f4  bl      _objc_msgSend                            ; [self setObjective_zombies:[arg1 decodeIntForKey:@"objective_zombies"]]
  1000461f8  mov     x22, x20
  1000461fc  adrp    x8, #0x100418000
  100046200  nop
  100046204  ldr     x23, [x8, #0x968]
  100046208  adrp    x2, #0x1003bc000
  10004620c  add     x2, x2, #0xdf0                           ; @"description"
  100046210  mov     x0, x19
  100046214  mov     x1, x23
  100046218  bl      _objc_msgSend                            ; [arg1 decodeObjectForKey:@"description"]
  10004621c  mov     x29, x29
  100046220  bl      _objc_retainAutoreleasedReturnValue
  100046224  mov     x24, x0
  100046228  adrp    x8, #0x100418000
  10004622c  nop
  100046230  ldr     x1, [x8, #0x8d8]
  100046234  mov     x0, x20
  100046238  mov     x2, x24
  10004623c  bl      _objc_msgSend                            ; [self setDescription:[arg1 decodeObjectForKey:@"description"]]
  100046240  mov     x22, x20
  100046244  mov     x0, x24
  100046248  bl      _objc_release
  10004624c  adrp    x2, #0x1003bc000
  100046250  add     x2, x2, #0xdd0                           ; @"type"
  100046254  mov     x0, x19
  100046258  mov     x1, x23
  10004625c  bl      _objc_msgSend                            ; [arg1 decodeObjectForKey:@"type"]
  100046260  mov     x29, x29
  100046264  bl      _objc_retainAutoreleasedReturnValue
  100046268  mov     x24, x0
  10004626c  adrp    x8, #0x100417000
  100046270  nop
  100046274  ldr     x1, [x8, #0x9a0]
  100046278  mov     x0, x20
  10004627c  mov     x2, x24
  100046280  bl      _objc_msgSend                            ; [self setType:[arg1 decodeObjectForKey:@"type"]]
  100046284  mov     x22, x20
  100046288  mov     x0, x24
  10004628c  bl      _objc_release
  100046290  adrp    x2, #0x1003bc000
  100046294  add     x2, x2, #0xe10                           ; @"enemi"
  100046298  mov     x0, x19
  10004629c  mov     x1, x23
  1000462a0  bl      _objc_msgSend                            ; [arg1 decodeObjectForKey:@"enemi"]
  1000462a4  mov     x29, x29
  1000462a8  bl      _objc_retainAutoreleasedReturnValue
  1000462ac  mov     x24, x0
  1000462b0  adrp    x8, #0x100418000
  1000462b4  nop
  1000462b8  ldr     x1, [x8, #0x8e0]
  1000462bc  mov     x0, x20
  1000462c0  mov     x2, x24
  1000462c4  bl      _objc_msgSend                            ; [self setEnemi:[arg1 decodeObjectForKey:@"enemi"]]
  1000462c8  mov     x22, x20
  1000462cc  mov     x0, x24
  1000462d0  bl      _objc_release
  1000462d4  adrp    x2, #0x1003bc000
  1000462d8  add     x2, x2, #0xe30                           ; @"weapon"
  1000462dc  mov     x0, x19
  1000462e0  mov     x1, x23
  1000462e4  bl      _objc_msgSend                            ; [arg1 decodeObjectForKey:@"weapon"]
  1000462e8  mov     x29, x29
  1000462ec  bl      _objc_retainAutoreleasedReturnValue
  1000462f0  mov     x23, x0
  1000462f4  adrp    x8, #0x100418000
  1000462f8  nop
  1000462fc  ldr     x1, [x8, #0x8e8]
  100046300  mov     x0, x20
  100046304  mov     x2, x23
  100046308  bl      _objc_msgSend                            ; [self setWeapon:[arg1 decodeObjectForKey:@"weapon"]]
  10004630c  mov     x22, x20
  100046310  mov     x0, x23
  100046314  bl      _objc_release
  100046318  adrp    x2, #0x1003bc000
  10004631c  add     x2, x2, #0xdb0                           ; @"skipCost"
  100046320  mov     x0, x19
  100046324  mov     x1, x21
  100046328  bl      _objc_msgSend                            ; [arg1 decodeIntForKey:@"skipCost"]
  10004632c  mov     x2, x0
  100046330  mov     x22, x20
  100046334  adrp    x8, #0x100418000
  100046338  nop
  10004633c  ldr     x1, [x8, #0x8c8]
  100046340  mov     x0, x20
  100046344  bl      _objc_msgSend                            ; [self setSkipCost:[arg1 decodeIntForKey:@"skipCost"]]
  100046348  mov     x22, x20
  10004634c  adrp    x2, #0x1003bc000
  100046350  add     x2, x2, #0xad0                           ; @"reward"
  100046354  mov     x0, x19
  100046358  mov     x1, x21
  10004635c  bl      _objc_msgSend                            ; [arg1 decodeIntForKey:@"reward"]
  100046360  mov     x2, x0
  100046364  mov     x22, x20
  100046368  adrp    x8, #0x100418000
  10004636c  nop
  100046370  ldr     x1, [x8, #0x8d0]
  100046374  mov     x0, x20
  100046378  bl      _objc_msgSend                            ; [self setReward:[arg1 decodeIntForKey:@"reward"]]
  10004637c  mov     x22, x20
  100046380  adrp    x2, #0x1003bc000
  100046384  add     x2, x2, #0xfb0                           ; @"progression"
  100046388  mov     x0, x19
  10004638c  mov     x1, x21
  100046390  bl      _objc_msgSend                            ; [arg1 decodeIntForKey:@"progression"]
  100046394  mov     x2, x0
  100046398  mov     x22, x20
  10004639c  adrp    x8, #0x100418000
  1000463a0  nop
  1000463a4  ldr     x1, [x8, #0x910]
  1000463a8  mov     x0, x20
  1000463ac  bl      _objc_msgSend                            ; [self setProgression:[arg1 decodeIntForKey:@"progression"]]
  1000463b0  mov     x22, x20
  1000463b4  adrp    x2, #0x1003bc000
  1000463b8  add     x2, x2, #0xe70                           ; @"attempts"
  1000463bc  mov     x0, x19
  1000463c0  mov     x1, x21
  1000463c4  bl      _objc_msgSend                            ; [arg1 decodeIntForKey:@"attempts"]
  1000463c8  mov     x2, x0
  1000463cc  mov     x22, x20
  1000463d0  adrp    x8, #0x100418000
  1000463d4  nop
  1000463d8  ldr     x1, [x8, #0x8f8]
  1000463dc  mov     x0, x20
  1000463e0  bl      _objc_msgSend                            ; [self setAttempts:[arg1 decodeIntForKey:@"attempts"]]
  1000463e4  mov     x22, x20
  1000463e8  adrp    x8, #0x100418000
  1000463ec  nop
  1000463f0  ldr     x1, [x8, #0x970]
  1000463f4  adrp    x2, #0x1003bc000
  1000463f8  add     x2, x2, #0xe50                           ; @"singleLife"
  1000463fc  mov     x0, x19
  100046400  bl      _objc_msgSend                            ; [arg1 decodeBoolForKey:@"singleLife"]
  100046404  mov     x2, x0
  100046408  mov     x22, x20
  10004640c  adrp    x8, #0x100418000
  100046410  nop
  100046414  ldr     x1, [x8, #0x8f0]
  100046418  mov     x0, x20
  10004641c  bl      _objc_msgSend                            ; [self setSingleLife:[arg1 decodeBoolForKey:@"singleLife"]]
  100046420  mov     x22, x20
  100046424  adrp    x8, #0x100418000
  100046428  nop
  10004642c  ldr     x1, [x8, #0x978]
  100046430  adrp    x2, #0x1003bc000
  100046434  add     x2, x2, #0xfd0                           ; @"survivalTime"
  100046438  mov     x0, x19
  10004643c  bl      _objc_msgSend                            ; [arg1 decodeFloatForKey:@"survivalTime"]
  100046440  mov     x22, x20
  100046444  adrp    x8, #0x100418000
  100046448  nop
  10004644c  ldr     x1, [x8, #0x908]
  100046450  mov     x0, x20
  100046454  bl      _objc_msgSend                            ; [self setSurvivalTime:[arg1 decodeFloatForKey:@"survivalTime"]]
loc_100046458:
  100046458  mov     x0, x19
  10004645c  bl      _objc_release
  100046460  mov     x0, x20
  100046464  sub     sp, x29, #0x30
  100046468  ldp     x29, x30, [sp, #0x30]
  10004646c  ldp     x20, x19, [sp, #0x20]
  100046470  ldp     x22, x21, [sp, #0x10]
  100046474  ldp     x24, x23, [sp], #0x40
  100046478  ret
  10004647c  mov     x21, x0
loc_100046480:
  100046480  mov     x0, x19
  100046484  bl      _objc_release
  100046488  mov     x0, x22
  10004648c  bl      _objc_release
  100046490  mov     x0, x21
  100046494  bl      __Unwind_Resume                          ; Unwind_Resume()
  100046498  b       loc_1000464a0
  10004649c  b       loc_1000464a0
loc_1000464a0:
  1000464a0  mov     x21, x0
  1000464a4  mov     x0, x24
  1000464a8  b       loc_1000464b4
  1000464ac  mov     x21, x0
  1000464b0  mov     x0, x23
loc_1000464b4:
  1000464b4  bl      _objc_release
  1000464b8  mov     x22, x20
  1000464bc  b       loc_100046480

; ======================================================================
; -[ADMission encodeWithCoder:]
; address 0x1000464c0  size 744  kind objc
; ======================================================================
  1000464c0  stp     x22, x21, [sp, #-0x30]!
  1000464c4  stp     x20, x19, [sp, #0x10]
  1000464c8  stp     x29, x30, [sp, #0x20]
  1000464cc  add     x29, sp, #0x20
  1000464d0  mov     x20, x0
  1000464d4  mov     x0, x2
  1000464d8  bl      _objc_retain
  1000464dc  mov     x19, x0
  1000464e0  adrp    x8, #0x100418000
  1000464e4  nop
  1000464e8  ldr     x1, [x8, #0x648]
  1000464ec  mov     x0, x20
  1000464f0  bl      _objc_msgSend                            ; [self description]
  1000464f4  mov     x29, x29
  1000464f8  bl      _objc_retainAutoreleasedReturnValue
  1000464fc  mov     x22, x0
  100046500  adrp    x8, #0x100418000
  100046504  nop
  100046508  ldr     x21, [x8, #0x980]
  10004650c  adrp    x3, #0x1003bc000
  100046510  add     x3, x3, #0xdf0                           ; @"description"
  100046514  mov     x0, x19
  100046518  mov     x1, x21
  10004651c  mov     x2, x22
  100046520  bl      _objc_msgSend                            ; [arg1 encodeObject:[self description] forKey:@"description"]
  100046524  mov     x0, x22
  100046528  bl      _objc_release
  10004652c  adrp    x8, #0x100417000
  100046530  nop
  100046534  ldr     x1, [x8, #0x9a8]
  100046538  mov     x0, x20
  10004653c  bl      _objc_msgSend                            ; [self type]
  100046540  mov     x29, x29
  100046544  bl      _objc_retainAutoreleasedReturnValue
  100046548  mov     x22, x0
  10004654c  adrp    x3, #0x1003bc000
  100046550  add     x3, x3, #0xdd0                           ; @"type"
  100046554  mov     x0, x19
  100046558  mov     x1, x21
  10004655c  mov     x2, x22
  100046560  bl      _objc_msgSend                            ; [arg1 encodeObject:[self type] forKey:@"type"]
  100046564  mov     x0, x22
  100046568  bl      _objc_release
  10004656c  adrp    x8, #0x100418000
  100046570  nop
  100046574  ldr     x1, [x8, #0x940]
  100046578  mov     x0, x20
  10004657c  bl      _objc_msgSend                            ; [self enemi]
  100046580  mov     x29, x29
  100046584  bl      _objc_retainAutoreleasedReturnValue
  100046588  mov     x22, x0
  10004658c  adrp    x3, #0x1003bc000
  100046590  add     x3, x3, #0xe10                           ; @"enemi"
  100046594  mov     x0, x19
  100046598  mov     x1, x21
  10004659c  mov     x2, x22
  1000465a0  bl      _objc_msgSend                            ; [arg1 encodeObject:[self enemi] forKey:@"enemi"]
  1000465a4  mov     x0, x22
  1000465a8  bl      _objc_release
  1000465ac  adrp    x8, #0x100418000
  1000465b0  nop
  1000465b4  ldr     x1, [x8, #0x930]
  1000465b8  mov     x0, x20
  1000465bc  bl      _objc_msgSend                            ; [self weapon]
  1000465c0  mov     x29, x29
  1000465c4  bl      _objc_retainAutoreleasedReturnValue
  1000465c8  mov     x22, x0
  1000465cc  adrp    x3, #0x1003bc000
  1000465d0  add     x3, x3, #0xe30                           ; @"weapon"
  1000465d4  mov     x0, x19
  1000465d8  mov     x1, x21
  1000465dc  mov     x2, x22
  1000465e0  bl      _objc_msgSend                            ; [arg1 encodeObject:[self weapon] forKey:@"weapon"]
  1000465e4  mov     x0, x22
  1000465e8  bl      _objc_release
  1000465ec  adrp    x8, #0x100418000
  1000465f0  nop
  1000465f4  ldr     x1, [x8, #0x950]
  1000465f8  mov     x0, x20
  1000465fc  bl      _objc_msgSend                            ; [self objective]
  100046600  mov     x2, x0
  100046604  adrp    x8, #0x100418000
  100046608  nop
  10004660c  ldr     x21, [x8, #0x988]
  100046610  adrp    x3, #0x1003bc000
  100046614  add     x3, x3, #0x990                           ; @"objective"
  100046618  mov     x0, x19
  10004661c  mov     x1, x21
  100046620  bl      _objc_msgSend                            ; [arg1 encodeInt:[self objective] forKey:@"objective"]
  100046624  adrp    x8, #0x100418000
  100046628  nop
  10004662c  ldr     x1, [x8, #0x958]
  100046630  mov     x0, x20
  100046634  bl      _objc_msgSend                            ; [self objective_zombies]
  100046638  mov     x2, x0
  10004663c  adrp    x3, #0x1003bc000
  100046640  add     x3, x3, #0xf90                           ; @"objective_zombies"
  100046644  mov     x0, x19
  100046648  mov     x1, x21
  10004664c  bl      _objc_msgSend                            ; [arg1 encodeInt:[self objective_zombies] forKey:@"objective_zombies"]
  100046650  adrp    x8, #0x100418000
  100046654  nop
  100046658  ldr     x1, [x8, #0x670]
  10004665c  mov     x0, x20
  100046660  bl      _objc_msgSend                            ; [self skipCost]
  100046664  mov     x2, x0
  100046668  adrp    x3, #0x1003bc000
  10004666c  add     x3, x3, #0xdb0                           ; @"skipCost"
  100046670  mov     x0, x19
  100046674  mov     x1, x21
  100046678  bl      _objc_msgSend                            ; [arg1 encodeInt:[self skipCost] forKey:@"skipCost"]
  10004667c  adrp    x8, #0x100418000
  100046680  nop
  100046684  ldr     x1, [x8, #0x650]
  100046688  mov     x0, x20
  10004668c  bl      _objc_msgSend                            ; [self reward]
  100046690  mov     x2, x0
  100046694  adrp    x3, #0x1003bc000
  100046698  add     x3, x3, #0xad0                           ; @"reward"
  10004669c  mov     x0, x19
  1000466a0  mov     x1, x21
  1000466a4  bl      _objc_msgSend                            ; [arg1 encodeInt:[self reward] forKey:@"reward"]
  1000466a8  adrp    x8, #0x100418000
  1000466ac  nop
  1000466b0  ldr     x1, [x8, #0x938]
  1000466b4  mov     x0, x20
  1000466b8  bl      _objc_msgSend                            ; [self progression]
  1000466bc  mov     x2, x0
  1000466c0  adrp    x3, #0x1003bc000
  1000466c4  add     x3, x3, #0xfb0                           ; @"progression"
  1000466c8  mov     x0, x19
  1000466cc  mov     x1, x21
  1000466d0  bl      _objc_msgSend                            ; [arg1 encodeInt:[self progression] forKey:@"progression"]
  1000466d4  adrp    x8, #0x100418000
  1000466d8  nop
  1000466dc  ldr     x1, [x8, #0x920]
  1000466e0  mov     x0, x20
  1000466e4  bl      _objc_msgSend                            ; [self attempts]
  1000466e8  mov     x2, x0
  1000466ec  adrp    x3, #0x1003bc000
  1000466f0  add     x3, x3, #0xe70                           ; @"attempts"
  1000466f4  mov     x0, x19
  1000466f8  mov     x1, x21
  1000466fc  bl      _objc_msgSend                            ; [arg1 encodeInt:[self attempts] forKey:@"attempts"]
  100046700  adrp    x8, #0x100418000
  100046704  nop
  100046708  ldr     x1, [x8, #0x900]
  10004670c  mov     x0, x20
  100046710  bl      _objc_msgSend                            ; [self singleLife]
  100046714  mov     x2, x0
  100046718  adrp    x8, #0x100418000
  10004671c  nop
  100046720  ldr     x1, [x8, #0x990]
  100046724  adrp    x3, #0x1003bc000
  100046728  add     x3, x3, #0xe50                           ; @"singleLife"
  10004672c  mov     x0, x19
  100046730  bl      _objc_msgSend                            ; [arg1 encodeBool:[self singleLife] forKey:@"singleLife"]
  100046734  adrp    x8, #0x100418000
  100046738  nop
  10004673c  ldr     x1, [x8, #0x928]
  100046740  mov     x0, x20
  100046744  bl      _objc_msgSend                            ; [self survivalTime]
  100046748  adrp    x8, #0x100418000
  10004674c  nop
  100046750  ldr     x1, [x8, #0x998]
  100046754  adrp    x2, #0x1003bc000
  100046758  add     x2, x2, #0xfd0                           ; @"survivalTime"
  10004675c  mov     x0, x19
  100046760  bl      _objc_msgSend                            ; [arg1 encodeFloat:[self survivalTime] forKey:@"survivalTime"]
  100046764  mov     x0, x19
  100046768  ldp     x29, x30, [sp, #0x20]
  10004676c  ldp     x20, x19, [sp, #0x10]
  100046770  ldp     x22, x21, [sp], #0x30
  100046774  b       _objc_release
  100046778  mov     x20, x0
  10004677c  b       loc_100046798
  100046780  b       loc_10004678c
  100046784  b       loc_10004678c
  100046788  b       loc_10004678c
loc_10004678c:
  10004678c  mov     x20, x0
  100046790  mov     x0, x22
  100046794  bl      _objc_release
loc_100046798:
  100046798  mov     x0, x19
  10004679c  bl      _objc_release
  1000467a0  mov     x0, x20
  1000467a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMission objective]
; address 0x1000467a8  size 16  kind objc
; ======================================================================
  1000467a8  adrp    x8, #0x10041f000
  1000467ac  ldrsw   x8, [x8, #0x994]                         ; ivar offset ADMission.objective (+0xc)
  1000467b0  ldr     w0, [x0, x8]                             ; w0 = self->objective
  1000467b4  ret

; ======================================================================
; -[ADMission objective_zombies]
; address 0x1000467b8  size 16  kind objc
; ======================================================================
  1000467b8  adrp    x8, #0x10041f000
  1000467bc  ldrsw   x8, [x8, #0x998]                         ; ivar offset ADMission.objective_zombies (+0x10)
  1000467c0  ldr     w0, [x0, x8]                             ; w0 = self->objective_zombies
  1000467c4  ret

; ======================================================================
; -[ADMission setObjective_zombies:]
; address 0x1000467c8  size 16  kind objc
; ======================================================================
  1000467c8  adrp    x8, #0x10041f000
  1000467cc  ldrsw   x8, [x8, #0x998]                         ; ivar offset ADMission.objective_zombies (+0x10)
  1000467d0  str     w2, [x0, x8]                             ; self->objective_zombies = arg1
  1000467d4  ret

; ======================================================================
; -[ADMission description]
; address 0x1000467d8  size 16  kind objc
; ======================================================================
  1000467d8  adrp    x8, #0x10041f000
  1000467dc  ldrsw   x2, [x8, #0x99c]                         ; ivar offset ADMission.description (+0x30)
  1000467e0  mov     w3, #1
  1000467e4  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADMission setDescription:]
; address 0x1000467e8  size 12  kind objc
; ======================================================================
  1000467e8  adrp    x8, #0x10041f000
  1000467ec  ldrsw   x3, [x8, #0x99c]                         ; ivar offset ADMission.description (+0x30)
  1000467f0  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADMission type]
; address 0x1000467f4  size 16  kind objc
; ======================================================================
  1000467f4  adrp    x8, #0x10041f000
  1000467f8  ldrsw   x2, [x8, #0x9a0]                         ; ivar offset ADMission.type (+0x38)
  1000467fc  mov     w3, #1
  100046800  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADMission setType:]
; address 0x100046804  size 12  kind objc
; ======================================================================
  100046804  adrp    x8, #0x10041f000
  100046808  ldrsw   x3, [x8, #0x9a0]                         ; ivar offset ADMission.type (+0x38)
  10004680c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADMission skipCost]
; address 0x100046810  size 16  kind objc
; ======================================================================
  100046810  adrp    x8, #0x10041f000
  100046814  ldrsw   x8, [x8, #0x9a4]                         ; ivar offset ADMission.skipCost (+0x14)
  100046818  ldr     w0, [x0, x8]                             ; w0 = self->skipCost
  10004681c  ret

; ======================================================================
; -[ADMission setSkipCost:]
; address 0x100046820  size 16  kind objc
; ======================================================================
  100046820  adrp    x8, #0x10041f000
  100046824  ldrsw   x8, [x8, #0x9a4]                         ; ivar offset ADMission.skipCost (+0x14)
  100046828  str     w2, [x0, x8]                             ; self->skipCost = arg1
  10004682c  ret

; ======================================================================
; -[ADMission reward]
; address 0x100046830  size 16  kind objc
; ======================================================================
  100046830  adrp    x8, #0x10041f000
  100046834  ldrsw   x8, [x8, #0x9a8]                         ; ivar offset ADMission.reward (+0x18)
  100046838  ldr     w0, [x0, x8]                             ; w0 = self->reward
  10004683c  ret

; ======================================================================
; -[ADMission setReward:]
; address 0x100046840  size 16  kind objc
; ======================================================================
  100046840  adrp    x8, #0x10041f000
  100046844  ldrsw   x8, [x8, #0x9a8]                         ; ivar offset ADMission.reward (+0x18)
  100046848  str     w2, [x0, x8]                             ; self->reward = arg1
  10004684c  ret

; ======================================================================
; -[ADMission enemi]
; address 0x100046850  size 16  kind objc
; ======================================================================
  100046850  adrp    x8, #0x10041f000
  100046854  ldrsw   x2, [x8, #0x9ac]                         ; ivar offset ADMission.enemi (+0x40)
  100046858  mov     w3, #1
  10004685c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADMission setEnemi:]
; address 0x100046860  size 12  kind objc
; ======================================================================
  100046860  adrp    x8, #0x10041f000
  100046864  ldrsw   x3, [x8, #0x9ac]                         ; ivar offset ADMission.enemi (+0x40)
  100046868  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADMission weapon]
; address 0x10004686c  size 16  kind objc
; ======================================================================
  10004686c  adrp    x8, #0x10041f000
  100046870  ldrsw   x2, [x8, #0x9b0]                         ; ivar offset ADMission.weapon (+0x48)
  100046874  mov     w3, #1
  100046878  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADMission setWeapon:]
; address 0x10004687c  size 12  kind objc
; ======================================================================
  10004687c  adrp    x8, #0x10041f000
  100046880  ldrsw   x3, [x8, #0x9b0]                         ; ivar offset ADMission.weapon (+0x48)
  100046884  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADMission survivalTime]
; address 0x100046888  size 20  kind objc
; ======================================================================
  100046888  adrp    x8, #0x10041f000
  10004688c  ldrsw   x8, [x8, #0x9b4]                         ; ivar offset ADMission.survivalTime (+0x1c)
  100046890  ldr     w8, [x0, x8]                             ; w8 = self->survivalTime
  100046894  fmov    s0, w8
  100046898  ret

; ======================================================================
; -[ADMission setSurvivalTime:]
; address 0x10004689c  size 20  kind objc
; ======================================================================
  10004689c  fmov    w8, s0
  1000468a0  adrp    x9, #0x10041f000
  1000468a4  ldrsw   x9, [x9, #0x9b4]                         ; ivar offset ADMission.survivalTime (+0x1c)
  1000468a8  str     w8, [x0, x9]                             ; self->survivalTime = arg1
  1000468ac  ret

; ======================================================================
; -[ADMission singleLife]
; address 0x1000468b0  size 20  kind objc
; ======================================================================
  1000468b0  adrp    x8, #0x10041f000
  1000468b4  ldrsw   x8, [x8, #0x9b8]                         ; ivar offset ADMission.singleLife (+0x9)
  1000468b8  ldrb    w8, [x0, x8]                             ; w8 = self->singleLife
  1000468bc  and     w0, w8, #1
  1000468c0  ret

; ======================================================================
; -[ADMission setSingleLife:]
; address 0x1000468c4  size 16  kind objc
; ======================================================================
  1000468c4  adrp    x8, #0x10041f000
  1000468c8  ldrsw   x8, [x8, #0x9b8]                         ; ivar offset ADMission.singleLife (+0x9)
  1000468cc  strb    w2, [x0, x8]                             ; self->singleLife = arg1
  1000468d0  ret

; ======================================================================
; -[ADMission progression]
; address 0x1000468d4  size 16  kind objc
; ======================================================================
  1000468d4  adrp    x8, #0x10041f000
  1000468d8  ldrsw   x8, [x8, #0x9bc]                         ; ivar offset ADMission.progression (+0x20)
  1000468dc  ldr     w0, [x0, x8]                             ; w0 = self->progression
  1000468e0  ret

; ======================================================================
; -[ADMission setProgression:]
; address 0x1000468e4  size 16  kind objc
; ======================================================================
  1000468e4  adrp    x8, #0x10041f000
  1000468e8  ldrsw   x8, [x8, #0x9bc]                         ; ivar offset ADMission.progression (+0x20)
  1000468ec  str     w2, [x0, x8]                             ; self->progression = arg1
  1000468f0  ret

; ======================================================================
; -[ADMission progression_zombies]
; address 0x1000468f4  size 16  kind objc
; ======================================================================
  1000468f4  adrp    x8, #0x10041f000
  1000468f8  ldrsw   x8, [x8, #0x9c0]                         ; ivar offset ADMission.progression_zombies (+0x24)
  1000468fc  ldr     w0, [x0, x8]                             ; w0 = self->progression_zombies
  100046900  ret

; ======================================================================
; -[ADMission setProgression_zombies:]
; address 0x100046904  size 16  kind objc
; ======================================================================
  100046904  adrp    x8, #0x10041f000
  100046908  ldrsw   x8, [x8, #0x9c0]                         ; ivar offset ADMission.progression_zombies (+0x24)
  10004690c  str     w2, [x0, x8]                             ; self->progression_zombies = arg1
  100046910  ret

; ======================================================================
; -[ADMission attempts]
; address 0x100046914  size 16  kind objc
; ======================================================================
  100046914  adrp    x8, #0x10041f000
  100046918  ldrsw   x8, [x8, #0x9c4]                         ; ivar offset ADMission.attempts (+0x28)
  10004691c  ldr     w0, [x0, x8]                             ; w0 = self->attempts
  100046920  ret

; ======================================================================
; -[ADMission setAttempts:]
; address 0x100046924  size 16  kind objc
; ======================================================================
  100046924  adrp    x8, #0x10041f000
  100046928  ldrsw   x8, [x8, #0x9c4]                         ; ivar offset ADMission.attempts (+0x28)
  10004692c  str     w2, [x0, x8]                             ; self->attempts = arg1
  100046930  ret

; ======================================================================
; -[ADMission .cxx_destruct]
; address 0x100046934  size 104  kind objc
; ======================================================================
  100046934  stp     x20, x19, [sp, #-0x20]!
  100046938  stp     x29, x30, [sp, #0x10]
  10004693c  add     x29, sp, #0x10
  100046940  mov     x19, x0
  100046944  adrp    x8, #0x10041f000
  100046948  ldrsw   x8, [x8, #0x9b0]                         ; ivar offset ADMission.weapon (+0x48)
  10004694c  add     x0, x19, x8
  100046950  mov     x1, #0
  100046954  bl      _objc_storeStrong
  100046958  adrp    x8, #0x10041f000
  10004695c  ldrsw   x8, [x8, #0x9ac]                         ; ivar offset ADMission.enemi (+0x40)
  100046960  add     x0, x19, x8
  100046964  mov     x1, #0
  100046968  bl      _objc_storeStrong
  10004696c  adrp    x8, #0x10041f000
  100046970  ldrsw   x8, [x8, #0x9a0]                         ; ivar offset ADMission.type (+0x38)
  100046974  add     x0, x19, x8
  100046978  mov     x1, #0
  10004697c  bl      _objc_storeStrong
  100046980  mov     x1, #0
  100046984  adrp    x8, #0x10041f000
  100046988  ldrsw   x8, [x8, #0x99c]                         ; ivar offset ADMission.description (+0x30)
  10004698c  add     x0, x19, x8
  100046990  ldp     x29, x30, [sp, #0x10]
  100046994  ldp     x20, x19, [sp], #0x20
  100046998  b       _objc_storeStrong
