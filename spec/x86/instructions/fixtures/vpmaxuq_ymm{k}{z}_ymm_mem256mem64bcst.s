.code32
.section .text
  vpmaxuq (%edx){1to4}, %ymm1, %ymm0{%k1}{z}
