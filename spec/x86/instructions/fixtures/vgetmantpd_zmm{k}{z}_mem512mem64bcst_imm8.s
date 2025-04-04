.code32
.section .text
  vgetmantpd $0x33, (%ecx){1to8}, %zmm0{%k1}{z}
