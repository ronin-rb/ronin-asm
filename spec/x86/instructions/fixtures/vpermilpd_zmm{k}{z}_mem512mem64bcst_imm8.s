.code32
.section .text
  vpermilpd $0x33, (%ecx){1to8}, %zmm0{%k1}{z}
