.code64
.section .text
  vpermilps $0x33, (%rcx){1to8}, %ymm0{%k1}{z}
