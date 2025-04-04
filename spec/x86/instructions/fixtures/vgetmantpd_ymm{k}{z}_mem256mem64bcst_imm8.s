.code32
.section .text
  vgetmantpd $0x33, (%ecx){1to4}, %ymm0{%k1}{z}
