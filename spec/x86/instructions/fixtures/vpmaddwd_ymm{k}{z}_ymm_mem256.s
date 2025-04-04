.code32
.section .text
  vpmaddwd (%edx), %ymm1, %ymm0{%k1}{z}
