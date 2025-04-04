.code32
.section .text
  vpermpd $0x33, (%ecx){1to8}, %zmm0{%k1}{z}
