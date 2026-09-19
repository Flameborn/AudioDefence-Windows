// unit GAIEcommerceProduct — 19 functions
//   0x100121078     140  -[GAIEcommerceProduct init]
//   0x100121104     304  -[GAIEcommerceProduct setString:forKey:]
//   0x100121234     304  -[GAIEcommerceProduct setNumber:forKey:]
//   0x100121364      72  -[GAIEcommerceProduct setId:]
//   0x1001213ac      72  -[GAIEcommerceProduct setName:]
//   0x1001213f4      72  -[GAIEcommerceProduct setBrand:]
//   0x10012143c      72  -[GAIEcommerceProduct setCategory:]
//   0x100121484      72  -[GAIEcommerceProduct setVariant:]
//   0x1001214cc      72  -[GAIEcommerceProduct setPrice:]
//   0x100121514      72  -[GAIEcommerceProduct setQuantity:]
//   0x10012155c      72  -[GAIEcommerceProduct setCouponCode:]
//   0x1001215a4      72  -[GAIEcommerceProduct setPosition:]
//   0x1001215ec     172  -[GAIEcommerceProduct setCustomDimension:value:]
//   0x100121698     172  -[GAIEcommerceProduct setCustomMetric:value:]
//   0x100121744     540  -[GAIEcommerceProduct buildWithIndex:]
//   0x100121960     604  -[GAIEcommerceProduct buildWithListIndex:index:]
//   0x100121bbc      16  -[GAIEcommerceProduct parameters]
//   0x100121bcc      56  -[GAIEcommerceProduct setParameters:]
//   0x100121c04      20  -[GAIEcommerceProduct .cxx_destruct]

; ======================================================================
; -[GAIEcommerceProduct init]
; address 0x100121078  size 140  kind objc
; ======================================================================
  100121078  stp     x29, x30, [sp, #-0x10]!
  10012107c  mov     x29, sp
  100121080  stp     x20, x19, [sp, #-0x10]!
  100121084  sub     sp, sp, #0x10
  100121088  str     x0, [sp]
  10012108c  adrp    x8, #0x10041f000
  100121090  ldr     x8, [x8, #0x120]
  100121094  str     x8, [sp, #8]
  100121098  adrp    x8, #0x100416000
  10012109c  nop
  1001210a0  ldr     x1, [x8, #0xab8]
  1001210a4  mov     x0, sp
  1001210a8  bl      _objc_msgSendSuper2                      ; [super init]
  1001210ac  mov     x19, x0
  1001210b0  cbz     x19, loc_1001210f0                       ; if (self == 0)
  1001210b4  adrp    x8, #0x10041d000
  1001210b8  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1001210bc  adrp    x8, #0x10041b000
  1001210c0  nop
  1001210c4  ldr     x1, [x8, #0x828]
  1001210c8  mov     x2, #8
  1001210cc  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:8]
  1001210d0  mov     x29, x29
  1001210d4  bl      _objc_retainAutoreleasedReturnValue
  1001210d8  adrp    x8, #0x100420000
  1001210dc  ldrsw   x9, [x8, #0x888]                         ; ivar offset GAIEcommerceProduct._parameters (+0x8)
  1001210e0  ldr     x8, [x19, x9]                            ; x8 = self->_parameters
  1001210e4  str     x0, [x19, x9]                            ; self->_parameters = [NSMutableDictionary dictionaryWithCapacity:8]
  1001210e8  mov     x0, x8
  1001210ec  bl      _objc_release
loc_1001210f0:
  1001210f0  mov     x0, x19
  1001210f4  sub     sp, x29, #0x10
  1001210f8  ldp     x20, x19, [sp], #0x10
  1001210fc  ldp     x29, x30, [sp], #0x10
  100121100  ret

; ======================================================================
; -[GAIEcommerceProduct setString:forKey:]
; address 0x100121104  size 304  kind objc
; ======================================================================
  100121104  stp     x29, x30, [sp, #-0x10]!
  100121108  mov     x29, sp
  10012110c  stp     x20, x19, [sp, #-0x10]!
  100121110  stp     x22, x21, [sp, #-0x10]!
  100121114  stp     x24, x23, [sp, #-0x10]!
  100121118  mov     x21, x3
  10012111c  mov     x19, x0
  100121120  mov     x0, x2
  100121124  bl      _objc_retain
  100121128  mov     x20, x0
  10012112c  mov     x0, x21
  100121130  bl      _objc_retain
  100121134  mov     x21, x0
  100121138  cbz     x21, loc_1001211a4                       ; if (arg2 == 0)
  10012113c  adrp    x8, #0x10041c000
  100121140  nop
  100121144  ldr     x1, [x8, #0x188]
  100121148  mov     x0, x19
  10012114c  bl      _objc_msgSend                            ; [self parameters]
  100121150  mov     x29, x29
  100121154  bl      _objc_retainAutoreleasedReturnValue
  100121158  mov     x22, x0
  10012115c  adrp    x8, #0x10041e000
  100121160  ldr     x0, [x8, #0x5d8]                         ; class GAIUtil
  100121164  adrp    x8, #0x10041c000
  100121168  nop
  10012116c  ldr     x1, [x8, #0x190]
  100121170  mov     x2, x20
  100121174  bl      _objc_msgSend                            ; [GAIUtil valueForString:arg1]
  100121178  mov     x29, x29
  10012117c  bl      _objc_retainAutoreleasedReturnValue
  100121180  mov     x23, x0
  100121184  adrp    x8, #0x100416000
  100121188  nop
  10012118c  ldr     x1, [x8, #0xdc8]
  100121190  mov     x0, x22
  100121194  mov     x2, x23
  100121198  mov     x3, x21
  10012119c  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIUtil valueForString:arg1] forKey:arg2]
  1001211a0  b       loc_1001211fc
loc_1001211a4:
  1001211a4  adrp    x8, #0x10041d000
  1001211a8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1001211ac  adrp    x8, #0x100416000
  1001211b0  nop
  1001211b4  ldr     x1, [x8, #0xac0]
  1001211b8  bl      _objc_msgSend                            ; [GAI sharedInstance]
  1001211bc  mov     x29, x29
  1001211c0  bl      _objc_retainAutoreleasedReturnValue
  1001211c4  mov     x22, x0
  1001211c8  adrp    x8, #0x100419000
  1001211cc  nop
  1001211d0  ldr     x1, [x8, #0xd20]
  1001211d4  bl      _objc_msgSend                            ; [[GAI sharedInstance] logger]
  1001211d8  mov     x29, x29
  1001211dc  bl      _objc_retainAutoreleasedReturnValue
  1001211e0  mov     x23, x0
  1001211e4  adrp    x8, #0x10041b000
  1001211e8  nop
  1001211ec  ldr     x1, [x8, #0xe90]
  1001211f0  adrp    x2, #0x1003c5000
  1001211f4  add     x2, x2, #0x550                           ; @"nil key not allowed in setString"
  1001211f8  bl      _objc_msgSend                            ; [[[GAI sharedInstance] logger] warning:@"nil key not allowed in setString"]
loc_1001211fc:
  1001211fc  mov     x0, x23
  100121200  bl      _objc_release
  100121204  mov     x0, x22
  100121208  bl      _objc_release
  10012120c  mov     x0, x21
  100121210  bl      _objc_release
  100121214  mov     x0, x20
  100121218  bl      _objc_release
  10012121c  mov     x0, x19
  100121220  ldp     x24, x23, [sp], #0x10
  100121224  ldp     x22, x21, [sp], #0x10
  100121228  ldp     x20, x19, [sp], #0x10
  10012122c  ldp     x29, x30, [sp], #0x10
  100121230  ret

; ======================================================================
; -[GAIEcommerceProduct setNumber:forKey:]
; address 0x100121234  size 304  kind objc
; ======================================================================
  100121234  stp     x29, x30, [sp, #-0x10]!
  100121238  mov     x29, sp
  10012123c  stp     x20, x19, [sp, #-0x10]!
  100121240  stp     x22, x21, [sp, #-0x10]!
  100121244  stp     x24, x23, [sp, #-0x10]!
  100121248  mov     x21, x3
  10012124c  mov     x19, x0
  100121250  mov     x0, x2
  100121254  bl      _objc_retain
  100121258  mov     x20, x0
  10012125c  mov     x0, x21
  100121260  bl      _objc_retain
  100121264  mov     x21, x0
  100121268  cbz     x21, loc_1001212d4                       ; if (arg2 == 0)
  10012126c  adrp    x8, #0x10041c000
  100121270  nop
  100121274  ldr     x1, [x8, #0x188]
  100121278  mov     x0, x19
  10012127c  bl      _objc_msgSend                            ; [self parameters]
  100121280  mov     x29, x29
  100121284  bl      _objc_retainAutoreleasedReturnValue
  100121288  mov     x22, x0
  10012128c  adrp    x8, #0x10041e000
  100121290  ldr     x0, [x8, #0x5d8]                         ; class GAIUtil
  100121294  adrp    x8, #0x10041c000
  100121298  nop
  10012129c  ldr     x1, [x8, #0x198]
  1001212a0  mov     x2, x20
  1001212a4  bl      _objc_msgSend                            ; [GAIUtil valueForNumber:arg1]
  1001212a8  mov     x29, x29
  1001212ac  bl      _objc_retainAutoreleasedReturnValue
  1001212b0  mov     x23, x0
  1001212b4  adrp    x8, #0x100416000
  1001212b8  nop
  1001212bc  ldr     x1, [x8, #0xdc8]
  1001212c0  mov     x0, x22
  1001212c4  mov     x2, x23
  1001212c8  mov     x3, x21
  1001212cc  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIUtil valueForNumber:arg1] forKey:arg2]
  1001212d0  b       loc_10012132c
loc_1001212d4:
  1001212d4  adrp    x8, #0x10041d000
  1001212d8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1001212dc  adrp    x8, #0x100416000
  1001212e0  nop
  1001212e4  ldr     x1, [x8, #0xac0]
  1001212e8  bl      _objc_msgSend                            ; [GAI sharedInstance]
  1001212ec  mov     x29, x29
  1001212f0  bl      _objc_retainAutoreleasedReturnValue
  1001212f4  mov     x22, x0
  1001212f8  adrp    x8, #0x100419000
  1001212fc  nop
  100121300  ldr     x1, [x8, #0xd20]
  100121304  bl      _objc_msgSend                            ; [[GAI sharedInstance] logger]
  100121308  mov     x29, x29
  10012130c  bl      _objc_retainAutoreleasedReturnValue
  100121310  mov     x23, x0
  100121314  adrp    x8, #0x10041b000
  100121318  nop
  10012131c  ldr     x1, [x8, #0xe90]
  100121320  adrp    x2, #0x1003c5000
  100121324  add     x2, x2, #0x570                           ; @"nil key not allowed in setNumber"
  100121328  bl      _objc_msgSend                            ; [[[GAI sharedInstance] logger] warning:@"nil key not allowed in setNumber"]
loc_10012132c:
  10012132c  mov     x0, x23
  100121330  bl      _objc_release
  100121334  mov     x0, x22
  100121338  bl      _objc_release
  10012133c  mov     x0, x21
  100121340  bl      _objc_release
  100121344  mov     x0, x20
  100121348  bl      _objc_release
  10012134c  mov     x0, x19
  100121350  ldp     x24, x23, [sp], #0x10
  100121354  ldp     x22, x21, [sp], #0x10
  100121358  ldp     x20, x19, [sp], #0x10
  10012135c  ldp     x29, x30, [sp], #0x10
  100121360  ret

; ======================================================================
; -[GAIEcommerceProduct setId:]
; address 0x100121364  size 72  kind objc
; ======================================================================
  100121364  stp     x29, x30, [sp, #-0x10]!
  100121368  mov     x29, sp
  10012136c  stp     x20, x19, [sp, #-0x10]!
  100121370  mov     x19, x0
  100121374  adrp    x8, #0x1003b7000
  100121378  add     x8, x8, #0xc90                           ; &d_1003b7c90
  10012137c  ldr     x3, [x8]                                 ; [&d_1003b7c90] -> @"id"
  100121380  adrp    x8, #0x10041c000
  100121384  nop
  100121388  ldr     x1, [x8, #0x1a0]
  10012138c  bl      _objc_msgSend                            ; [self setString:arg1 forKey:@"id"]
  100121390  mov     x29, x29
  100121394  bl      _objc_retainAutoreleasedReturnValue
  100121398  bl      _objc_release
  10012139c  mov     x0, x19
  1001213a0  ldp     x20, x19, [sp], #0x10
  1001213a4  ldp     x29, x30, [sp], #0x10
  1001213a8  ret

; ======================================================================
; -[GAIEcommerceProduct setName:]
; address 0x1001213ac  size 72  kind objc
; ======================================================================
  1001213ac  stp     x29, x30, [sp, #-0x10]!
  1001213b0  mov     x29, sp
  1001213b4  stp     x20, x19, [sp, #-0x10]!
  1001213b8  mov     x19, x0
  1001213bc  adrp    x8, #0x1003b7000
  1001213c0  add     x8, x8, #0xc98                           ; &d_1003b7c98
  1001213c4  ldr     x3, [x8]                                 ; [&d_1003b7c98] -> @"nm"
  1001213c8  adrp    x8, #0x10041c000
  1001213cc  nop
  1001213d0  ldr     x1, [x8, #0x1a0]
  1001213d4  bl      _objc_msgSend                            ; [self setString:arg1 forKey:@"nm"]
  1001213d8  mov     x29, x29
  1001213dc  bl      _objc_retainAutoreleasedReturnValue
  1001213e0  bl      _objc_release
  1001213e4  mov     x0, x19
  1001213e8  ldp     x20, x19, [sp], #0x10
  1001213ec  ldp     x29, x30, [sp], #0x10
  1001213f0  ret

; ======================================================================
; -[GAIEcommerceProduct setBrand:]
; address 0x1001213f4  size 72  kind objc
; ======================================================================
  1001213f4  stp     x29, x30, [sp, #-0x10]!
  1001213f8  mov     x29, sp
  1001213fc  stp     x20, x19, [sp, #-0x10]!
  100121400  mov     x19, x0
  100121404  adrp    x8, #0x1003b7000
  100121408  add     x8, x8, #0xca0                           ; &d_1003b7ca0
  10012140c  ldr     x3, [x8]                                 ; [&d_1003b7ca0] -> @"br"
  100121410  adrp    x8, #0x10041c000
  100121414  nop
  100121418  ldr     x1, [x8, #0x1a0]
  10012141c  bl      _objc_msgSend                            ; [self setString:arg1 forKey:@"br"]
  100121420  mov     x29, x29
  100121424  bl      _objc_retainAutoreleasedReturnValue
  100121428  bl      _objc_release
  10012142c  mov     x0, x19
  100121430  ldp     x20, x19, [sp], #0x10
  100121434  ldp     x29, x30, [sp], #0x10
  100121438  ret

; ======================================================================
; -[GAIEcommerceProduct setCategory:]
; address 0x10012143c  size 72  kind objc
; ======================================================================
  10012143c  stp     x29, x30, [sp, #-0x10]!
  100121440  mov     x29, sp
  100121444  stp     x20, x19, [sp, #-0x10]!
  100121448  mov     x19, x0
  10012144c  adrp    x8, #0x1003b7000
  100121450  add     x8, x8, #0xca8                           ; &d_1003b7ca8
  100121454  ldr     x3, [x8]                                 ; [&d_1003b7ca8] -> @"ca"
  100121458  adrp    x8, #0x10041c000
  10012145c  nop
  100121460  ldr     x1, [x8, #0x1a0]
  100121464  bl      _objc_msgSend                            ; [self setString:arg1 forKey:@"ca"]
  100121468  mov     x29, x29
  10012146c  bl      _objc_retainAutoreleasedReturnValue
  100121470  bl      _objc_release
  100121474  mov     x0, x19
  100121478  ldp     x20, x19, [sp], #0x10
  10012147c  ldp     x29, x30, [sp], #0x10
  100121480  ret

; ======================================================================
; -[GAIEcommerceProduct setVariant:]
; address 0x100121484  size 72  kind objc
; ======================================================================
  100121484  stp     x29, x30, [sp, #-0x10]!
  100121488  mov     x29, sp
  10012148c  stp     x20, x19, [sp, #-0x10]!
  100121490  mov     x19, x0
  100121494  adrp    x8, #0x1003b7000
  100121498  add     x8, x8, #0xcb0                           ; &d_1003b7cb0
  10012149c  ldr     x3, [x8]                                 ; [&d_1003b7cb0] -> @"va"
  1001214a0  adrp    x8, #0x10041c000
  1001214a4  nop
  1001214a8  ldr     x1, [x8, #0x1a0]
  1001214ac  bl      _objc_msgSend                            ; [self setString:arg1 forKey:@"va"]
  1001214b0  mov     x29, x29
  1001214b4  bl      _objc_retainAutoreleasedReturnValue
  1001214b8  bl      _objc_release
  1001214bc  mov     x0, x19
  1001214c0  ldp     x20, x19, [sp], #0x10
  1001214c4  ldp     x29, x30, [sp], #0x10
  1001214c8  ret

; ======================================================================
; -[GAIEcommerceProduct setPrice:]
; address 0x1001214cc  size 72  kind objc
; ======================================================================
  1001214cc  stp     x29, x30, [sp, #-0x10]!
  1001214d0  mov     x29, sp
  1001214d4  stp     x20, x19, [sp, #-0x10]!
  1001214d8  mov     x19, x0
  1001214dc  adrp    x8, #0x1003b7000
  1001214e0  add     x8, x8, #0xcb8                           ; &d_1003b7cb8
  1001214e4  ldr     x3, [x8]                                 ; [&d_1003b7cb8] -> @"pr"
  1001214e8  adrp    x8, #0x10041c000
  1001214ec  nop
  1001214f0  ldr     x1, [x8, #0x1a8]
  1001214f4  bl      _objc_msgSend                            ; [self setNumber:arg1 forKey:@"pr"]
  1001214f8  mov     x29, x29
  1001214fc  bl      _objc_retainAutoreleasedReturnValue
  100121500  bl      _objc_release
  100121504  mov     x0, x19
  100121508  ldp     x20, x19, [sp], #0x10
  10012150c  ldp     x29, x30, [sp], #0x10
  100121510  ret

; ======================================================================
; -[GAIEcommerceProduct setQuantity:]
; address 0x100121514  size 72  kind objc
; ======================================================================
  100121514  stp     x29, x30, [sp, #-0x10]!
  100121518  mov     x29, sp
  10012151c  stp     x20, x19, [sp, #-0x10]!
  100121520  mov     x19, x0
  100121524  adrp    x8, #0x1003b7000
  100121528  add     x8, x8, #0xcc0                           ; &d_1003b7cc0
  10012152c  ldr     x3, [x8]                                 ; [&d_1003b7cc0] -> @"qt"
  100121530  adrp    x8, #0x10041c000
  100121534  nop
  100121538  ldr     x1, [x8, #0x1a8]
  10012153c  bl      _objc_msgSend                            ; [self setNumber:arg1 forKey:@"qt"]
  100121540  mov     x29, x29
  100121544  bl      _objc_retainAutoreleasedReturnValue
  100121548  bl      _objc_release
  10012154c  mov     x0, x19
  100121550  ldp     x20, x19, [sp], #0x10
  100121554  ldp     x29, x30, [sp], #0x10
  100121558  ret

; ======================================================================
; -[GAIEcommerceProduct setCouponCode:]
; address 0x10012155c  size 72  kind objc
; ======================================================================
  10012155c  stp     x29, x30, [sp, #-0x10]!
  100121560  mov     x29, sp
  100121564  stp     x20, x19, [sp, #-0x10]!
  100121568  mov     x19, x0
  10012156c  adrp    x8, #0x1003b7000
  100121570  add     x8, x8, #0xcc8                           ; &d_1003b7cc8
  100121574  ldr     x3, [x8]                                 ; [&d_1003b7cc8] -> @"cc"
  100121578  adrp    x8, #0x10041c000
  10012157c  nop
  100121580  ldr     x1, [x8, #0x1a0]
  100121584  bl      _objc_msgSend                            ; [self setString:arg1 forKey:@"cc"]
  100121588  mov     x29, x29
  10012158c  bl      _objc_retainAutoreleasedReturnValue
  100121590  bl      _objc_release
  100121594  mov     x0, x19
  100121598  ldp     x20, x19, [sp], #0x10
  10012159c  ldp     x29, x30, [sp], #0x10
  1001215a0  ret

; ======================================================================
; -[GAIEcommerceProduct setPosition:]
; address 0x1001215a4  size 72  kind objc
; ======================================================================
  1001215a4  stp     x29, x30, [sp, #-0x10]!
  1001215a8  mov     x29, sp
  1001215ac  stp     x20, x19, [sp, #-0x10]!
  1001215b0  mov     x19, x0
  1001215b4  adrp    x8, #0x1003b7000
  1001215b8  add     x8, x8, #0xcd0                           ; &d_1003b7cd0
  1001215bc  ldr     x3, [x8]                                 ; [&d_1003b7cd0] -> @"ps"
  1001215c0  adrp    x8, #0x10041c000
  1001215c4  nop
  1001215c8  ldr     x1, [x8, #0x1a8]
  1001215cc  bl      _objc_msgSend                            ; [self setNumber:x2 forKey:@"ps"]
  1001215d0  mov     x29, x29
  1001215d4  bl      _objc_retainAutoreleasedReturnValue
  1001215d8  bl      _objc_release
  1001215dc  mov     x0, x19
  1001215e0  ldp     x20, x19, [sp], #0x10
  1001215e4  ldp     x29, x30, [sp], #0x10
  1001215e8  ret

; ======================================================================
; -[GAIEcommerceProduct setCustomDimension:value:]
; address 0x1001215ec  size 172  kind objc
; ======================================================================
  1001215ec  stp     x29, x30, [sp, #-0x10]!
  1001215f0  mov     x29, sp
  1001215f4  stp     x20, x19, [sp, #-0x10]!
  1001215f8  stp     x22, x21, [sp, #-0x10]!
  1001215fc  stp     x24, x23, [sp, #-0x10]!
  100121600  mov     x19, x2
  100121604  mov     x20, x0
  100121608  adrp    x8, #0x10041e000
  10012160c  ldr     x21, [x8, #0xd0]                         ; class GAIFields
  100121610  adrp    x8, #0x100417000
  100121614  nop
  100121618  ldr     x22, [x8, #0xd78]
  10012161c  mov     x0, x3
  100121620  bl      _objc_retain
  100121624  mov     x23, x0
  100121628  mov     x0, x21
  10012162c  mov     x1, x22
  100121630  mov     x2, x19
  100121634  bl      _objc_msgSend                            ; [GAIFields customDimensionForIndex:arg1]
  100121638  mov     x29, x29
  10012163c  bl      _objc_retainAutoreleasedReturnValue
  100121640  mov     x19, x0
  100121644  adrp    x8, #0x10041c000
  100121648  nop
  10012164c  ldr     x1, [x8, #0x1a0]
  100121650  mov     x0, x20
  100121654  mov     x2, x23
  100121658  mov     x3, x19
  10012165c  bl      _objc_msgSend                            ; [self setString:arg2 forKey:[GAIFields customDimensionForIndex:arg1]]
  100121660  mov     x21, x0
  100121664  mov     x0, x23
  100121668  bl      _objc_release
  10012166c  mov     x0, x21
  100121670  bl      _objc_retainAutoreleasedReturnValue
  100121674  bl      _objc_release
  100121678  mov     x0, x19
  10012167c  bl      _objc_release
  100121680  mov     x0, x20
  100121684  ldp     x24, x23, [sp], #0x10
  100121688  ldp     x22, x21, [sp], #0x10
  10012168c  ldp     x20, x19, [sp], #0x10
  100121690  ldp     x29, x30, [sp], #0x10
  100121694  ret

; ======================================================================
; -[GAIEcommerceProduct setCustomMetric:value:]
; address 0x100121698  size 172  kind objc
; ======================================================================
  100121698  stp     x29, x30, [sp, #-0x10]!
  10012169c  mov     x29, sp
  1001216a0  stp     x20, x19, [sp, #-0x10]!
  1001216a4  stp     x22, x21, [sp, #-0x10]!
  1001216a8  stp     x24, x23, [sp, #-0x10]!
  1001216ac  mov     x19, x2
  1001216b0  mov     x20, x0
  1001216b4  adrp    x8, #0x10041e000
  1001216b8  ldr     x21, [x8, #0xd0]                         ; class GAIFields
  1001216bc  adrp    x8, #0x100417000
  1001216c0  nop
  1001216c4  ldr     x22, [x8, #0xd68]
  1001216c8  mov     x0, x3
  1001216cc  bl      _objc_retain
  1001216d0  mov     x23, x0
  1001216d4  mov     x0, x21
  1001216d8  mov     x1, x22
  1001216dc  mov     x2, x19
  1001216e0  bl      _objc_msgSend                            ; [GAIFields customMetricForIndex:arg1]
  1001216e4  mov     x29, x29
  1001216e8  bl      _objc_retainAutoreleasedReturnValue
  1001216ec  mov     x19, x0
  1001216f0  adrp    x8, #0x10041c000
  1001216f4  nop
  1001216f8  ldr     x1, [x8, #0x1a8]
  1001216fc  mov     x0, x20
  100121700  mov     x2, x23
  100121704  mov     x3, x19
  100121708  bl      _objc_msgSend                            ; [self setNumber:arg2 forKey:[GAIFields customMetricForIndex:arg1]]
  10012170c  mov     x21, x0
  100121710  mov     x0, x23
  100121714  bl      _objc_release
  100121718  mov     x0, x21
  10012171c  bl      _objc_retainAutoreleasedReturnValue
  100121720  bl      _objc_release
  100121724  mov     x0, x19
  100121728  bl      _objc_release
  10012172c  mov     x0, x20
  100121730  ldp     x24, x23, [sp], #0x10
  100121734  ldp     x22, x21, [sp], #0x10
  100121738  ldp     x20, x19, [sp], #0x10
  10012173c  ldp     x29, x30, [sp], #0x10
  100121740  ret

; ======================================================================
; -[GAIEcommerceProduct buildWithIndex:]
; address 0x100121744  size 540  kind objc
; ======================================================================
  100121744  stp     x29, x30, [sp, #-0x10]!
  100121748  mov     x29, sp
  10012174c  stp     x20, x19, [sp, #-0x10]!
  100121750  stp     x22, x21, [sp, #-0x10]!
  100121754  stp     x24, x23, [sp, #-0x10]!
  100121758  stp     x26, x25, [sp, #-0x10]!
  10012175c  stp     x28, x27, [sp, #-0x10]!
  100121760  sub     sp, sp, #0x20
  100121764  mov     x21, x2
  100121768  mov     x20, x0
  10012176c  adrp    x8, #0x10041d000
  100121770  ldr     x22, [x8, #0xf90]                        ; class NSMutableDictionary
  100121774  adrp    x8, #0x10041c000
  100121778  nop
  10012177c  ldr     x19, [x8, #0x188]
  100121780  mov     x1, x19
  100121784  bl      _objc_msgSend                            ; [self parameters]
  100121788  mov     x29, x29
  10012178c  bl      _objc_retainAutoreleasedReturnValue
  100121790  mov     x23, x0
  100121794  adrp    x8, #0x100416000
  100121798  nop
  10012179c  ldr     x1, [x8, #0xe30]
  1001217a0  bl      _objc_msgSend                            ; [[self parameters] count]
  1001217a4  mov     x2, x0
  1001217a8  adrp    x8, #0x10041b000
  1001217ac  nop
  1001217b0  ldr     x1, [x8, #0x828]
  1001217b4  mov     x0, x22
  1001217b8  mov     x22, x19
  1001217bc  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:[[self parameters] count]]
  1001217c0  mov     x29, x29
  1001217c4  bl      _objc_retainAutoreleasedReturnValue
  1001217c8  str     x0, [sp, #0x18]
  1001217cc  mov     x0, x23
  1001217d0  bl      _objc_release
  1001217d4  mov     x0, x20
  1001217d8  mov     x1, x22
  1001217dc  bl      _objc_msgSend                            ; [self parameters]
  1001217e0  mov     x29, x29
  1001217e4  bl      _objc_retainAutoreleasedReturnValue
  1001217e8  mov     x24, x0
  1001217ec  adrp    x8, #0x100417000
  1001217f0  nop
  1001217f4  ldr     x1, [x8, #0xa18]
  1001217f8  bl      _objc_msgSend                            ; [[self parameters] keyEnumerator]
  1001217fc  mov     x29, x29
  100121800  bl      _objc_retainAutoreleasedReturnValue
  100121804  mov     x23, x0
  100121808  mov     x0, x24
  10012180c  bl      _objc_release
  100121810  adrp    x8, #0x100417000
  100121814  nop
  100121818  ldr     x24, [x8, #0xa20]
  10012181c  mov     x0, x23
  100121820  mov     x1, x24
  100121824  bl      _objc_msgSend                            ; [[[self parameters] keyEnumerator] nextObject]
  100121828  mov     x29, x29
  10012182c  bl      _objc_retainAutoreleasedReturnValue
  100121830  mov     x25, x0
  100121834  cbz     x25, loc_100121934                       ; if ([[[self parameters] keyEnumerator] nextObject] == 0)
  100121838  adrp    x8, #0x100417000
  10012183c  nop
  100121840  adrp    x9, #0x10041c000
  100121844  add     x9, x9, #0x1b0                           ; &@selector(productFieldForIndex:suffix:)
  100121848  ldr     x8, [x8, #0x40]
  10012184c  str     x8, [sp, #0x10]
  100121850  ldr     x8, [x9]
  100121854  str     x8, [sp, #8]
  100121858  adrp    x8, #0x100416000
  10012185c  add     x8, x8, #0xdc8                           ; &@selector(setObject:forKey:)
  100121860  ldr     x28, [x8]
loc_100121864:
  100121864  mov     x0, x20
  100121868  mov     x1, x22
  10012186c  bl      _objc_msgSend                            ; [self parameters]
  100121870  mov     x29, x29
  100121874  bl      _objc_retainAutoreleasedReturnValue
  100121878  mov     x19, x0
  10012187c  ldr     x1, [sp, #0x10]
  100121880  mov     x2, x25
  100121884  bl      _objc_msgSend                            ; [[self parameters] objectForKey:[[[self parameters] keyEnumerator] nextObject]]
  100121888  mov     x29, x29
  10012188c  bl      _objc_retainAutoreleasedReturnValue
  100121890  mov     x26, x23
  100121894  mov     x23, x20
  100121898  mov     x20, x0
  10012189c  adrp    x8, #0x10041e000
  1001218a0  ldr     x0, [x8, #0x638]                         ; class GAIEcommerceFields
  1001218a4  ldr     x1, [sp, #8]
  1001218a8  mov     x2, x21
  1001218ac  mov     x3, x25
  1001218b0  bl      _objc_msgSend                            ; [GAIEcommerceFields productFieldForIndex:arg1 suffix:[[[self parameters] keyEnumerator] nextObject]]
  1001218b4  mov     x29, x29
  1001218b8  bl      _objc_retainAutoreleasedReturnValue
  1001218bc  mov     x27, x24
  1001218c0  mov     x24, x22
  1001218c4  mov     x22, x21
  1001218c8  mov     x21, x0
  1001218cc  ldr     x0, [sp, #0x18]
  1001218d0  mov     x1, x28
  1001218d4  mov     x2, x20
  1001218d8  mov     x3, x21
  1001218dc  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithCapacity:[[self parameters] count]] setObject:[[self parameters] objectForKey:[[[self parameters] keyEnumerator] nextObject]] forKey:[GAIEcommerceFields productFieldForIndex:arg1 suffix:[[[self parameters] keyEnumerator] nextObject]]]
  1001218e0  mov     x0, x21
  1001218e4  mov     x21, x22
  1001218e8  mov     x22, x24
  1001218ec  mov     x24, x27
  1001218f0  bl      _objc_release
  1001218f4  mov     x0, x20
  1001218f8  mov     x20, x23
  1001218fc  mov     x23, x26
  100121900  bl      _objc_release
  100121904  mov     x0, x19
  100121908  bl      _objc_release
  10012190c  mov     x0, x23
  100121910  mov     x1, x24
  100121914  bl      _objc_msgSend                            ; [[[self parameters] keyEnumerator] nextObject]
  100121918  mov     x29, x29
  10012191c  bl      _objc_retainAutoreleasedReturnValue
  100121920  mov     x19, x0
  100121924  mov     x0, x25
  100121928  bl      _objc_release
  10012192c  mov     x25, x19
  100121930  cbnz    x19, loc_100121864                       ; if ([[[self parameters] keyEnumerator] nextObject] != 0)
loc_100121934:
  100121934  mov     x0, x23
  100121938  bl      _objc_release
  10012193c  ldr     x0, [sp, #0x18]
  100121940  sub     sp, x29, #0x50
  100121944  ldp     x28, x27, [sp], #0x10
  100121948  ldp     x26, x25, [sp], #0x10
  10012194c  ldp     x24, x23, [sp], #0x10
  100121950  ldp     x22, x21, [sp], #0x10
  100121954  ldp     x20, x19, [sp], #0x10
  100121958  ldp     x29, x30, [sp], #0x10
  10012195c  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIEcommerceProduct buildWithListIndex:index:]
; address 0x100121960  size 604  kind objc
; ======================================================================
  100121960  stp     x29, x30, [sp, #-0x10]!
  100121964  mov     x29, sp
  100121968  stp     x20, x19, [sp, #-0x10]!
  10012196c  stp     x22, x21, [sp, #-0x10]!
  100121970  stp     x24, x23, [sp, #-0x10]!
  100121974  stp     x26, x25, [sp, #-0x10]!
  100121978  stp     x28, x27, [sp, #-0x10]!
  10012197c  sub     sp, sp, #0x30
  100121980  str     x3, [sp, #0x20]
  100121984  mov     x19, x2
  100121988  mov     x21, x0
  10012198c  adrp    x8, #0x10041d000
  100121990  ldr     x22, [x8, #0xf90]                        ; class NSMutableDictionary
  100121994  adrp    x8, #0x10041c000
  100121998  nop
  10012199c  ldr     x20, [x8, #0x188]
  1001219a0  mov     x1, x20
  1001219a4  bl      _objc_msgSend                            ; [self parameters]
  1001219a8  mov     x29, x29
  1001219ac  bl      _objc_retainAutoreleasedReturnValue
  1001219b0  mov     x23, x0
  1001219b4  adrp    x8, #0x100416000
  1001219b8  nop
  1001219bc  ldr     x1, [x8, #0xe30]
  1001219c0  bl      _objc_msgSend                            ; [[self parameters] count]
  1001219c4  mov     x2, x0
  1001219c8  adrp    x8, #0x10041b000
  1001219cc  nop
  1001219d0  ldr     x1, [x8, #0x828]
  1001219d4  mov     x0, x22
  1001219d8  mov     x22, x20
  1001219dc  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:[[self parameters] count]]
  1001219e0  mov     x29, x29
  1001219e4  bl      _objc_retainAutoreleasedReturnValue
  1001219e8  str     x0, [sp, #0x28]
  1001219ec  mov     x0, x23
  1001219f0  bl      _objc_release
  1001219f4  adrp    x24, #0x10041e000
  1001219f8  ldr     x0, [x24, #0x638]                        ; class GAIEcommerceFields
  1001219fc  adrp    x8, #0x10041c000
  100121a00  nop
  100121a04  ldr     x1, [x8, #0x1b8]
  100121a08  mov     x2, x19
  100121a0c  bl      _objc_msgSend                            ; [GAIEcommerceFields impressionListForIndex:arg1]
  100121a10  mov     x29, x29
  100121a14  bl      _objc_retainAutoreleasedReturnValue
  100121a18  mov     x25, x0
  100121a1c  mov     x0, x21
  100121a20  mov     x1, x22
  100121a24  bl      _objc_msgSend                            ; [self parameters]
  100121a28  mov     x29, x29
  100121a2c  bl      _objc_retainAutoreleasedReturnValue
  100121a30  mov     x19, x0
  100121a34  adrp    x8, #0x100417000
  100121a38  nop
  100121a3c  ldr     x1, [x8, #0xa18]
  100121a40  bl      _objc_msgSend                            ; [[self parameters] keyEnumerator]
  100121a44  mov     x29, x29
  100121a48  bl      _objc_retainAutoreleasedReturnValue
  100121a4c  mov     x23, x0
  100121a50  mov     x0, x19
  100121a54  bl      _objc_release
  100121a58  adrp    x8, #0x100417000
  100121a5c  nop
  100121a60  ldr     x27, [x8, #0xa20]
  100121a64  mov     x0, x23
  100121a68  mov     x1, x27
  100121a6c  bl      _objc_msgSend                            ; [[[self parameters] keyEnumerator] nextObject]
  100121a70  mov     x29, x29
  100121a74  bl      _objc_retainAutoreleasedReturnValue
  100121a78  mov     x26, x0
  100121a7c  cbz     x26, loc_100121b88                       ; if ([[[self parameters] keyEnumerator] nextObject] == 0)
  100121a80  adrp    x8, #0x100417000
  100121a84  nop
  100121a88  ldr     x8, [x8, #0x40]
  100121a8c  str     x8, [sp, #0x18]
  100121a90  adrp    x8, #0x10041c000
  100121a94  nop
  100121a98  ldr     x8, [x8, #0x1c0]
  100121a9c  str     x8, [sp, #0x10]
  100121aa0  adrp    x8, #0x100416000
  100121aa4  nop
  100121aa8  ldr     x8, [x8, #0xdc8]
  100121aac  str     x8, [sp, #8]
loc_100121ab0:
  100121ab0  mov     x0, x21
  100121ab4  mov     x1, x22
  100121ab8  bl      _objc_msgSend                            ; [self parameters]
  100121abc  mov     x29, x29
  100121ac0  bl      _objc_retainAutoreleasedReturnValue
  100121ac4  mov     x20, x0
  100121ac8  ldr     x1, [sp, #0x18]
  100121acc  mov     x2, x26
  100121ad0  bl      _objc_msgSend                            ; [[self parameters] objectForKey:[[[self parameters] keyEnumerator] nextObject]]
  100121ad4  mov     x29, x29
  100121ad8  bl      _objc_retainAutoreleasedReturnValue
  100121adc  mov     x28, x23
  100121ae0  mov     x23, x21
  100121ae4  mov     x21, x0
  100121ae8  ldr     x0, [x24, #0x638]                        ; class GAIEcommerceFields
  100121aec  ldr     x1, [sp, #0x10]
  100121af0  mov     x2, x25
  100121af4  ldr     x3, [sp, #0x20]
  100121af8  mov     x4, x26
  100121afc  bl      _objc_msgSend                            ; [GAIEcommerceFields productImpressionForList:[GAIEcommerceFields impressionListForIndex:arg1] index:arg2 suffix:[[[self parameters] keyEnumerator] nextObject]]
  100121b00  mov     x29, x29
  100121b04  bl      _objc_retainAutoreleasedReturnValue
  100121b08  mov     x19, x27
  100121b0c  mov     x27, x25
  100121b10  mov     x25, x24
  100121b14  mov     x24, x22
  100121b18  mov     x22, x0
  100121b1c  ldr     x0, [sp, #0x28]
  100121b20  ldr     x1, [sp, #8]
  100121b24  mov     x2, x21
  100121b28  mov     x3, x22
  100121b2c  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithCapacity:[[self parameters] count]] setObject:[[self parameters] objectForKey:[[[self parameters] keyEnumerator] nextObject]] forKey:[GAIEcommerceFields productImpressionForList:[GAIEcommerceFields impressionListForIndex:arg1] index:arg2 suffix:[[[self parameters] keyEnumerator] nextObject]]]
  100121b30  mov     x0, x22
  100121b34  mov     x22, x24
  100121b38  mov     x24, x25
  100121b3c  mov     x25, x27
  100121b40  mov     x27, x19
  100121b44  bl      _objc_release
  100121b48  mov     x0, x21
  100121b4c  mov     x21, x23
  100121b50  mov     x23, x28
  100121b54  bl      _objc_release
  100121b58  mov     x0, x20
  100121b5c  bl      _objc_release
  100121b60  mov     x0, x23
  100121b64  mov     x1, x27
  100121b68  bl      _objc_msgSend                            ; [[[self parameters] keyEnumerator] nextObject]
  100121b6c  mov     x29, x29
  100121b70  bl      _objc_retainAutoreleasedReturnValue
  100121b74  mov     x20, x0
  100121b78  mov     x0, x26
  100121b7c  bl      _objc_release
  100121b80  mov     x26, x20
  100121b84  cbnz    x20, loc_100121ab0                       ; if ([[[self parameters] keyEnumerator] nextObject] != 0)
loc_100121b88:
  100121b88  mov     x0, x23
  100121b8c  bl      _objc_release
  100121b90  mov     x0, x25
  100121b94  bl      _objc_release
  100121b98  ldr     x0, [sp, #0x28]
  100121b9c  sub     sp, x29, #0x50
  100121ba0  ldp     x28, x27, [sp], #0x10
  100121ba4  ldp     x26, x25, [sp], #0x10
  100121ba8  ldp     x24, x23, [sp], #0x10
  100121bac  ldp     x22, x21, [sp], #0x10
  100121bb0  ldp     x20, x19, [sp], #0x10
  100121bb4  ldp     x29, x30, [sp], #0x10
  100121bb8  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIEcommerceProduct parameters]
; address 0x100121bbc  size 16  kind objc
; ======================================================================
  100121bbc  adrp    x8, #0x100420000
  100121bc0  ldrsw   x8, [x8, #0x888]                         ; ivar offset GAIEcommerceProduct._parameters (+0x8)
  100121bc4  ldr     x0, [x0, x8]                             ; x0 = self->_parameters
  100121bc8  ret

; ======================================================================
; -[GAIEcommerceProduct setParameters:]
; address 0x100121bcc  size 56  kind objc
; ======================================================================
  100121bcc  stp     x29, x30, [sp, #-0x10]!
  100121bd0  mov     x29, sp
  100121bd4  stp     x20, x19, [sp, #-0x10]!
  100121bd8  mov     x19, x0
  100121bdc  adrp    x8, #0x100420000
  100121be0  ldrsw   x20, [x8, #0x888]                        ; ivar offset GAIEcommerceProduct._parameters (+0x8)
  100121be4  mov     x0, x2
  100121be8  bl      _objc_retain
  100121bec  ldr     x8, [x19, x20]                           ; x8 = self->_parameters
  100121bf0  str     x0, [x19, x20]                           ; self->_parameters = arg1
  100121bf4  mov     x0, x8
  100121bf8  ldp     x20, x19, [sp], #0x10
  100121bfc  ldp     x29, x30, [sp], #0x10
  100121c00  b       _objc_release

; ======================================================================
; -[GAIEcommerceProduct .cxx_destruct]
; address 0x100121c04  size 20  kind objc
; ======================================================================
  100121c04  mov     x1, #0
  100121c08  adrp    x8, #0x100420000
  100121c0c  ldrsw   x8, [x8, #0x888]                         ; ivar offset GAIEcommerceProduct._parameters (+0x8)
  100121c10  add     x0, x0, x8
  100121c14  b       _objc_storeStrong
