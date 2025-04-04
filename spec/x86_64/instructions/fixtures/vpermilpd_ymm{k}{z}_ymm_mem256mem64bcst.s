.code64
.section .text
  vpermilpd (%rdx){1to4}, %ymm1, %ymm0{%k1}{z}
