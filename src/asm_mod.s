.include "macro.inc"

/* simple mod which makes J-Bomb more floaty */
/* only for demoing purposes */

.set noat
.set noreorder

.section .recomp_patch, "axR" /* do not forget to include R for retain here */

glabel func_hd_code_802C617C
    /* 87CCDC 802C617C 27BDFFF0 */  addiu      $sp, $sp, -0x10
    /* 87CCE0 802C6180 FFB70008 */  sd         $s7, 0x8($sp)
    /* 87CCE4 802C6184 3C178037 */  lui        $s7, %hi(D_hd_code_80370C35)
    /* 87CCE8 802C6188 92F70C35 */  lbu        $s7, %lo(D_hd_code_80370C35)($s7)
    /* 87CCEC 802C618C FFBF0000 */  sd         $ra, 0x0($sp)
    /* 87CCF0 802C6190 16E00012 */  bnez       $s7, .Lhd_code_802C61DC
    /* 87CCF4 802C6194 00000000 */   nop
    /* 87CCF8 802C6198 3C178037 */  lui        $s7, %hi(D_hd_code_80370C2D)
    /* 87CCFC 802C619C 82F70C2D */  lb         $s7, %lo(D_hd_code_80370C2D)($s7)
    /* 87CD00 802C61A0 16E0000E */  bnez       $s7, .Lhd_code_802C61DC
    /* 87CD04 802C61A4 00000000 */   nop
    /* 87CD08 802C61A8 87970076 */  lh         $s7, 0x76($gp)
    /* 87CD0C 802C61AC 06E00006 */  bltz       $s7, .Lhd_code_802C61C8
    /* 87CD10 802C61B0 00000000 */   nop
    /* 87CD14 802C61B4 26F7FFF8 */  addiu      $s7, $s7, -0x1
    /* 87CD18 802C61B8 06E10007 */  bgez       $s7, .Lhd_code_802C61D8
    /* 87CD1C 802C61BC 00000000 */   nop
    /* 87CD20 802C61C0 10000005 */  b          .Lhd_code_802C61D8
    /* 87CD24 802C61C4 24170000 */   addiu     $s7, $zero, 0x0
  .Lhd_code_802C61C8:
    /* 87CD28 802C61C8 22F70008 */  addi       $s7, $s7, 0x1
    /* 87CD2C 802C61CC 1AE00002 */  blez       $s7, .Lhd_code_802C61D8
    /* 87CD30 802C61D0 00000000 */   nop
    /* 87CD34 802C61D4 24170000 */  addiu      $s7, $zero, 0x0
  .Lhd_code_802C61D8:
    /* 87CD38 802C61D8 A7970076 */  sh         $s7, 0x76($gp)
  .Lhd_code_802C61DC:
    /* 87CD3C 802C61DC DFBF0000 */  ld         $ra, 0x0($sp)
    /* 87CD40 802C61E0 DFB70008 */  ld         $s7, 0x8($sp)
    /* 87CD44 802C61E4 27BD0010 */  addiu      $sp, $sp, 0x10
    /* 87CD48 802C61E8 03E00008 */  jr         $ra
    /* 87CD4C 802C61EC 00000000 */   nop
endlabel func_hd_code_802C617C
