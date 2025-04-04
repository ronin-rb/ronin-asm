.code64
.section .text
  vshuff32x4 $0x44, (%rdx){1to8}, %ymm1, %ymm0{%k1}{z}
