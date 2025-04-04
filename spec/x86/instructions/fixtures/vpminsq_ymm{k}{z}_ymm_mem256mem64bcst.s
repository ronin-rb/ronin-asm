.code32
.section .text
  vpminsq (%edx){1to4}, %ymm1, %ymm0{%k1}{z}
