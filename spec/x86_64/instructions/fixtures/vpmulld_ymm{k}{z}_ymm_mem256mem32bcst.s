.code64
.section .text
  vpmulld (%rdx){1to8}, %ymm1, %ymm0{%k1}{z}
