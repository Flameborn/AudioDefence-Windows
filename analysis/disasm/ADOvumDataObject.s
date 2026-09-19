// unit ADOvumDataObject — 5 functions
//   0x100016fa8      16  -[ADOvumDataObject objName]
//   0x100016fb8      12  -[ADOvumDataObject setObjName:]
//   0x100016fc4      16  -[ADOvumDataObject objTag]
//   0x100016fd4      16  -[ADOvumDataObject setObjTag:]
//   0x100016fe4      20  -[ADOvumDataObject .cxx_destruct]

; ======================================================================
; -[ADOvumDataObject objName]
; address 0x100016fa8  size 16  kind objc
; ======================================================================
  100016fa8  adrp    x8, #0x10041f000
  100016fac  ldrsw   x2, [x8, #0x5ec]                         ; ivar offset ADOvumDataObject._objName (+0x8)
  100016fb0  mov     w3, #1
  100016fb4  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADOvumDataObject setObjName:]
; address 0x100016fb8  size 12  kind objc
; ======================================================================
  100016fb8  adrp    x8, #0x10041f000
  100016fbc  ldrsw   x3, [x8, #0x5ec]                         ; ivar offset ADOvumDataObject._objName (+0x8)
  100016fc0  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADOvumDataObject objTag]
; address 0x100016fc4  size 16  kind objc
; ======================================================================
  100016fc4  adrp    x8, #0x10041f000
  100016fc8  ldrsw   x8, [x8, #0x5f0]                         ; ivar offset ADOvumDataObject._objTag (+0x10)
  100016fcc  ldr     x0, [x0, x8]                             ; x0 = self->_objTag
  100016fd0  ret

; ======================================================================
; -[ADOvumDataObject setObjTag:]
; address 0x100016fd4  size 16  kind objc
; ======================================================================
  100016fd4  adrp    x8, #0x10041f000
  100016fd8  ldrsw   x8, [x8, #0x5f0]                         ; ivar offset ADOvumDataObject._objTag (+0x10)
  100016fdc  str     x2, [x0, x8]                             ; self->_objTag = arg1
  100016fe0  ret

; ======================================================================
; -[ADOvumDataObject .cxx_destruct]
; address 0x100016fe4  size 20  kind objc
; ======================================================================
  100016fe4  mov     x1, #0
  100016fe8  adrp    x8, #0x10041f000
  100016fec  ldrsw   x8, [x8, #0x5ec]                         ; ivar offset ADOvumDataObject._objName (+0x8)
  100016ff0  add     x0, x0, x8
  100016ff4  b       _objc_storeStrong
