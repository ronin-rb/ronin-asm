.code32
.section .text
  vsubps (%edx){1to8}, %ymm1, %ymm0{%k1}{z}
