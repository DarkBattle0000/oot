.rdata
glabel D_8013C280
    .asciz "\x1b[41;37m\nend_frameとstart_frameのフレーム関係がおかしい!!!\x1b[m"
    # EUC-JP: とstart_frameのフレーム関係がおかしい!!! | The frame relation between end_frame and start_frame is wrong
    .balign 4

glabel D_8013C2C0
    .asciz "\x1b[41;37m\nby get_parcent_forAccelBrake!!!!!!!!!\x1b[m"
    .balign 4

.text
glabel func_8006F9BC
/* AE6B5C 8006F9BC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AE6B60 8006F9C0 30A3FFFF */  andi  $v1, $a1, 0xffff
/* AE6B64 8006F9C4 30C2FFFF */  andi  $v0, $a2, 0xffff
/* AE6B68 8006F9C8 AFA7004C */  sw    $a3, 0x4c($sp)
/* AE6B6C 8006F9CC 0062082A */  slt   $at, $v1, $v0
/* AE6B70 8006F9D0 30E7FFFF */  andi  $a3, $a3, 0xffff
/* AE6B74 8006F9D4 AFBF001C */  sw    $ra, 0x1c($sp)
/* AE6B78 8006F9D8 F7B40010 */  sdc1  $f20, 0x10($sp)
/* AE6B7C 8006F9DC AFA40040 */  sw    $a0, 0x40($sp)
/* AE6B80 8006F9E0 AFA50044 */  sw    $a1, 0x44($sp)
/* AE6B84 8006F9E4 14200004 */  bnez  $at, .L8006F9F8
/* AE6B88 8006F9E8 AFA60048 */   sw    $a2, 0x48($sp)
/* AE6B8C 8006F9EC 44800000 */  mtc1  $zero, $f0
/* AE6B90 8006F9F0 10000064 */  b     .L8006FB84
/* AE6B94 8006F9F4 8FBF001C */   lw    $ra, 0x1c($sp)
.L8006F9F8:
/* AE6B98 8006F9F8 97A40042 */  lhu   $a0, 0x42($sp)
/* AE6B9C 8006F9FC 0044082A */  slt   $at, $v0, $a0
/* AE6BA0 8006FA00 14200004 */  bnez  $at, .L8006FA14
/* AE6BA4 8006FA04 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* AE6BA8 8006FA08 44810000 */  mtc1  $at, $f0
/* AE6BAC 8006FA0C 1000005D */  b     .L8006FB84
/* AE6BB0 8006FA10 8FBF001C */   lw    $ra, 0x1c($sp)
.L8006FA14:
/* AE6BB4 8006FA14 44832000 */  mtc1  $v1, $f4
/* AE6BB8 8006FA18 44843000 */  mtc1  $a0, $f6
/* AE6BBC 8006FA1C 3C048014 */  lui   $a0, %hi(D_8013C280)
/* AE6BC0 8006FA20 46802020 */  cvt.s.w $f0, $f4
/* AE6BC4 8006FA24 468030A0 */  cvt.s.w $f2, $f6
/* AE6BC8 8006FA28 4600103E */  c.le.s $f2, $f0
/* AE6BCC 8006FA2C 00000000 */  nop   
/* AE6BD0 8006FA30 4501000C */  bc1t  .L8006FA64
/* AE6BD4 8006FA34 00000000 */   nop   
/* AE6BD8 8006FA38 97AE0052 */  lhu   $t6, 0x52($sp)
/* AE6BDC 8006FA3C 44874000 */  mtc1  $a3, $f8
/* AE6BE0 8006FA40 46001481 */  sub.s $f18, $f2, $f0
/* AE6BE4 8006FA44 448E5000 */  mtc1  $t6, $f10
/* AE6BE8 8006FA48 468043A0 */  cvt.s.w $f14, $f8
/* AE6BEC 8006FA4C 46805520 */  cvt.s.w $f20, $f10
/* AE6BF0 8006FA50 46147100 */  add.s $f4, $f14, $f20
/* AE6BF4 8006FA54 4604903C */  c.lt.s $f18, $f4
/* AE6BF8 8006FA58 00000000 */  nop   
/* AE6BFC 8006FA5C 4502000A */  bc1fl .L8006FA88
/* AE6C00 8006FA60 46129200 */   add.s $f8, $f18, $f18
.L8006FA64:
/* AE6C04 8006FA64 0C00084C */  jal   osSyncPrintf
/* AE6C08 8006FA68 2484C280 */   addiu $a0, %lo(D_8013C280)
/* AE6C0C 8006FA6C 3C048014 */  lui   $a0, %hi(D_8013C2C0)
/* AE6C10 8006FA70 0C00084C */  jal   osSyncPrintf
/* AE6C14 8006FA74 2484C2C0 */   addiu $a0, %lo(D_8013C2C0) # addiu $a0, $a0, -0x3d40
/* AE6C18 8006FA78 44800000 */  mtc1  $zero, $f0
/* AE6C1C 8006FA7C 10000041 */  b     .L8006FB84
/* AE6C20 8006FA80 8FBF001C */   lw    $ra, 0x1c($sp)
/* AE6C24 8006FA84 46129200 */  add.s $f8, $f18, $f18
.L8006FA88:
/* AE6C28 8006FA88 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AE6C2C 8006FA8C 44813000 */  mtc1  $at, $f6
/* AE6C30 8006FA90 460E4281 */  sub.s $f10, $f8, $f14
/* AE6C34 8006FA94 44804000 */  mtc1  $zero, $f8
/* AE6C38 8006FA98 46145101 */  sub.s $f4, $f10, $f20
/* AE6C3C 8006FA9C 46087032 */  c.eq.s $f14, $f8
/* AE6C40 8006FAA0 46043403 */  div.s $f16, $f6, $f4
/* AE6C44 8006FAA4 45010011 */  bc1t  .L8006FAEC
/* AE6C48 8006FAA8 E7B00024 */   swc1  $f16, 0x24($sp)
/* AE6C4C 8006FAAC 44825000 */  mtc1  $v0, $f10
/* AE6C50 8006FAB0 00000000 */  nop   
/* AE6C54 8006FAB4 468051A0 */  cvt.s.w $f6, $f10
/* AE6C58 8006FAB8 46003301 */  sub.s $f12, $f6, $f0
/* AE6C5C 8006FABC 460E603E */  c.le.s $f12, $f14
/* AE6C60 8006FAC0 00000000 */  nop   
/* AE6C64 8006FAC4 45000006 */  bc1f  .L8006FAE0
/* AE6C68 8006FAC8 00000000 */   nop   
/* AE6C6C 8006FACC 460C8102 */  mul.s $f4, $f16, $f12
/* AE6C70 8006FAD0 00000000 */  nop   
/* AE6C74 8006FAD4 460C2202 */  mul.s $f8, $f4, $f12
/* AE6C78 8006FAD8 10000029 */  b     .L8006FB80
/* AE6C7C 8006FADC 460E4003 */   div.s $f0, $f8, $f14
.L8006FAE0:
/* AE6C80 8006FAE0 460E8082 */  mul.s $f2, $f16, $f14
/* AE6C84 8006FAE4 10000006 */  b     .L8006FB00
/* AE6C88 8006FAE8 46149101 */   sub.s $f4, $f18, $f20
.L8006FAEC:
/* AE6C8C 8006FAEC 44825000 */  mtc1  $v0, $f10
/* AE6C90 8006FAF0 44801000 */  mtc1  $zero, $f2
/* AE6C94 8006FAF4 468051A0 */  cvt.s.w $f6, $f10
/* AE6C98 8006FAF8 46003301 */  sub.s $f12, $f6, $f0
/* AE6C9C 8006FAFC 46149101 */  sub.s $f4, $f18, $f20
.L8006FB00:
/* AE6CA0 8006FB00 4604603E */  c.le.s $f12, $f4
/* AE6CA4 8006FB04 00000000 */  nop   
/* AE6CA8 8006FB08 45020008 */  bc1fl .L8006FB2C
/* AE6CAC 8006FB0C 460E9201 */   sub.s $f8, $f18, $f14
/* AE6CB0 8006FB10 46108200 */  add.s $f8, $f16, $f16
/* AE6CB4 8006FB14 460E6281 */  sub.s $f10, $f12, $f14
/* AE6CB8 8006FB18 460A4182 */  mul.s $f6, $f8, $f10
/* AE6CBC 8006FB1C 46061080 */  add.s $f2, $f2, $f6
/* AE6CC0 8006FB20 10000017 */  b     .L8006FB80
/* AE6CC4 8006FB24 46001006 */   mov.s $f0, $f2
/* AE6CC8 8006FB28 460E9201 */  sub.s $f8, $f18, $f14
.L8006FB2C:
/* AE6CCC 8006FB2C 46108100 */  add.s $f4, $f16, $f16
/* AE6CD0 8006FB30 46144281 */  sub.s $f10, $f8, $f20
/* AE6CD4 8006FB34 44804000 */  mtc1  $zero, $f8
/* AE6CD8 8006FB38 460A2182 */  mul.s $f6, $f4, $f10
/* AE6CDC 8006FB3C 4608A032 */  c.eq.s $f20, $f8
/* AE6CE0 8006FB40 00000000 */  nop   
/* AE6CE4 8006FB44 4501000D */  bc1t  .L8006FB7C
/* AE6CE8 8006FB48 46061080 */   add.s $f2, $f2, $f6
/* AE6CEC 8006FB4C 46148102 */  mul.s $f4, $f16, $f20
/* AE6CF0 8006FB50 4612603C */  c.lt.s $f12, $f18
/* AE6CF4 8006FB54 00000000 */  nop   
/* AE6CF8 8006FB58 45000008 */  bc1f  .L8006FB7C
/* AE6CFC 8006FB5C 46041080 */   add.s $f2, $f2, $f4
/* AE6D00 8006FB60 460C9001 */  sub.s $f0, $f18, $f12
/* AE6D04 8006FB64 C7AA0024 */  lwc1  $f10, 0x24($sp)
/* AE6D08 8006FB68 46005182 */  mul.s $f6, $f10, $f0
/* AE6D0C 8006FB6C 00000000 */  nop   
/* AE6D10 8006FB70 46003202 */  mul.s $f8, $f6, $f0
/* AE6D14 8006FB74 46144103 */  div.s $f4, $f8, $f20
/* AE6D18 8006FB78 46041081 */  sub.s $f2, $f2, $f4
.L8006FB7C:
/* AE6D1C 8006FB7C 46001006 */  mov.s $f0, $f2
.L8006FB80:
/* AE6D20 8006FB80 8FBF001C */  lw    $ra, 0x1c($sp)
.L8006FB84:
/* AE6D24 8006FB84 D7B40010 */  ldc1  $f20, 0x10($sp)
/* AE6D28 8006FB88 27BD0040 */  addiu $sp, $sp, 0x40
/* AE6D2C 8006FB8C 03E00008 */  jr    $ra
/* AE6D30 8006FB90 00000000 */   nop   

