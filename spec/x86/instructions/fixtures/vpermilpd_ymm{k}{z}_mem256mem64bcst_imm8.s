.code32
.section .text
  vpermilpd $0x33, (%ecx){1to4}, %ymm0{%k1}{z}
