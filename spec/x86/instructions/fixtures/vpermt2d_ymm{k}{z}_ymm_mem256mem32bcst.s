.code32
.section .text
  vpermt2d (%edx){1to8}, %ymm1, %ymm0{%k1}{z}
