.code32
.section .text
  vpmaxud (%edx){1to8}, %ymm1, %ymm0{%k1}{z}
