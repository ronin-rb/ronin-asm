.code32
.section .text
  vpermilps $0x33, (%ecx){1to8}, %ymm0{%k1}{z}
