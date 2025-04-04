.code32
.section .text
  vpord (%edx){1to8}, %ymm1, %ymm0{%k1}{z}
